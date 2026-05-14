#include "jpm/search_algorithm.hpp"

#include "jpm/search_option_utils.hpp"
#include "jpm/search_support.hpp"
#include "jpm/transition.hpp"

#include <algorithm>
#include <chrono>
#include <memory>
#include <optional>
#include <queue>
#include <random>
#include <string>
#include <tuple>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace {

using RankedPriority = std::tuple<int, int, int, int, int>;

struct BeamCandidate {
    int node_id = -1;
    RankedPriority rank;
    std::string action_name;
};

struct ReplayState {
    std::vector<SearchNode> nodes;
    int node_id = -1;
    GoalEvaluation goals;
};

struct RepairOutcome {
    std::string status;
    std::vector<std::string> actions;
};

SearchResult make_result(
    bool solvable,
    const std::string &running,
    std::vector<std::string> plan,
    int path_length,
    const SearchStats &stats,
    const std::string &search_name) {
    SearchResult result;
    result.solvable = solvable;
    result.running = running;
    result.plan = std::move(plan);
    result.path_length = path_length;
    result.expanded = stats.expanded;
    result.generated = stats.generated;
    result.pruned = stats.pruned();
    result.pruned_by_unknown = stats.pruned_by_unknown;
    result.pruned_by_visited = stats.pruned_by_visited;
    result.goal_checked = stats.goal_checked;
    result.search = search_name;
    return result;
}

std::optional<int> select_prefix_length(
    int plan_length,
    const std::unordered_set<int> &attempted_prefix_lengths,
    bool use_cost_weight,
    std::mt19937 &rng) {
    std::vector<int> candidates;
    for (int prefix_length = 0; prefix_length < plan_length; ++prefix_length) {
        if (!attempted_prefix_lengths.contains(prefix_length)) {
            candidates.push_back(prefix_length);
        }
    }
    if (candidates.empty()) {
        return std::nullopt;
    }

    if (use_cost_weight) {
        std::vector<double> weights;
        weights.reserve(candidates.size());
        for (int prefix_length : candidates) {
            weights.push_back(static_cast<double>(plan_length - prefix_length));
        }
        std::discrete_distribution<std::size_t> distribution(weights.begin(), weights.end());
        return candidates[distribution(rng)];
    }

    return candidates.back();
}

int next_beam_size(int beam_size, const std::optional<int> &max_beam_size) {
    const int doubled = beam_size * 2;
    if (!max_beam_size) {
        return doubled;
    }
    return std::min(doubled, *max_beam_size);
}

std::optional<ReplayState> replay_prefix(
    Task &task,
    const std::vector<std::string> &actions,
    int prefix_length,
    const std::unordered_map<std::string, int> &action_id_by_name,
    SearchStats &stats) {
    ReplayState replayed;

    SearchNode root;
    root.state = task.initial_state;
    StateSequence initial_sequence{task.initial_state};
    replayed.goals = evaluate_goals(task, initial_sequence, root.context);
    ++stats.goal_checked;
    root.remaining_goal = replayed.goals.remaining;
    replayed.nodes.push_back(root);
    replayed.node_id = 0;

    for (int index = 0; index < prefix_length; ++index) {
        auto action_it = action_id_by_name.find(actions[index]);
        if (action_it == action_id_by_name.end()) {
            return std::nullopt;
        }

        const int current_node_id = replayed.node_id;
        const int action_id = action_it->second;
        StateSequence state_sequence = reconstruct_state_sequence(replayed.nodes, current_node_id);
        EvalContext applicability_context = replayed.nodes[current_node_id].context;
        if (!is_applicable(task, state_sequence, task.actions[action_id], applicability_context)) {
            return std::nullopt;
        }

        EvalContext successor_context;
        auto maybe_successor =
            successor(task, state_sequence, task.actions[action_id], successor_context);
        if (!maybe_successor) {
            return std::nullopt;
        }

        SearchNode successor_node;
        successor_node.state = std::move(*maybe_successor);
        successor_node.parent = current_node_id;
        successor_node.action = action_id;
        successor_node.g = replayed.nodes[current_node_id].g + 1;

        StateSequence successor_sequence = state_sequence;
        successor_sequence.push_back(successor_node.state);
        replayed.goals = evaluate_goals(task, successor_sequence, successor_node.context);
        ++stats.goal_checked;
        successor_node.remaining_goal = replayed.goals.remaining;

        replayed.node_id = static_cast<int>(replayed.nodes.size());
        replayed.nodes.push_back(std::move(successor_node));
    }

    return replayed;
}

RepairOutcome repair_with_beam(
    Task &task,
    const SearchOptions &options,
    ReplayState replayed,
    int max_total_depth,
    int beam_size,
    bool keep_all_layers,
    const std::vector<bool> &unknown_sensitive,
    const std::unordered_set<std::string> &goal_agents,
    SearchStats &stats,
    const std::chrono::steady_clock::time_point &overall_start_time) {
    std::unordered_map<std::string, int> best_cost_by_state;
    std::unordered_map<std::string, int> global_best_by_state;
    std::unordered_map<std::string, std::unordered_map<std::string, int>> novelty_dict;

    auto novelty_score = [&](const GoalEvaluation &goals, const std::vector<int> &state) {
        const std::string signature = novelty_signature(goals);
        auto &counts = novelty_dict[signature];
        int max_count = 0;
        for (const std::string &item : novelty_state_items(task, state)) {
            int &count = counts[item];
            ++count;
            if (count > max_count) {
                max_count = count;
            }
        }
        return max_count;
    };

    std::vector<int> current_beam{replayed.node_id};
    while (!current_beam.empty()) {
        std::unordered_map<std::string, BeamCandidate> next_beam_by_state;

        for (int node_id : current_beam) {
            const int current_remaining_goal = replayed.nodes[node_id].remaining_goal;
            const int current_depth = replayed.nodes[node_id].g;
            const std::vector<int> current_state = replayed.nodes[node_id].state;

            if (current_remaining_goal == 0) {
                return {"SUCC", extract_plan(replayed.nodes, task, node_id)};
            }
            if (current_depth >= max_total_depth) {
                continue;
            }

            auto now = std::chrono::steady_clock::now();
            if (std::chrono::duration_cast<std::chrono::seconds>(now - overall_start_time).count() >=
                options.timeout_seconds) {
                return {"TIMEOUT", {}};
            }

            StateSequence state_sequence = reconstruct_state_sequence(replayed.nodes, node_id);
            EvalContext expansion_context = replayed.nodes[node_id].context;

            std::vector<int> legal_actions;
            legal_actions.reserve(task.actions.size());
            for (int action_id = 0; action_id < static_cast<int>(task.actions.size()); ++action_id) {
                if (is_applicable(task, state_sequence, task.actions[action_id], expansion_context)) {
                    legal_actions.push_back(action_id);
                }
            }

            std::sort(
                legal_actions.begin(),
                legal_actions.end(),
                [&](int lhs, int rhs) {
                    return task.actions[lhs].name < task.actions[rhs].name;
                });
            legal_actions = ordered_action_ids(task, legal_actions, goal_agents);

            if (keep_all_layers) {
                const std::string current_key = duplicate_key(current_state, expansion_context);
                auto best_cost = global_best_by_state.find(current_key);
                if (best_cost != global_best_by_state.end() && best_cost->second <= current_depth) {
                    ++stats.pruned_by_visited;
                    continue;
                }
                global_best_by_state[current_key] = current_depth;
            }

            const std::string state_key = duplicate_key(current_state, expansion_context);
            auto best_cost = best_cost_by_state.find(state_key);
            if (best_cost != best_cost_by_state.end() && best_cost->second <= current_depth) {
                ++stats.pruned_by_visited;
                continue;
            }
            best_cost_by_state[state_key] = current_depth;

            ++stats.expanded;
            for (int action_id : legal_actions) {
                EvalContext successor_context;
                auto maybe_successor =
                    successor(task, state_sequence, task.actions[action_id], successor_context);
                if (!maybe_successor) {
                    continue;
                }

                const int successor_depth = current_depth + 1;
                if (successor_depth > max_total_depth) {
                    continue;
                }

                SearchNode successor_node;
                successor_node.state = std::move(*maybe_successor);
                successor_node.parent = node_id;
                successor_node.action = action_id;
                successor_node.g = successor_depth;

                StateSequence successor_sequence = state_sequence;
                successor_sequence.push_back(successor_node.state);
                GoalEvaluation successor_goals =
                    evaluate_goals(task, successor_sequence, successor_node.context);
                ++stats.goal_checked;
                successor_node.remaining_goal = successor_goals.remaining;

                if (!passes_unknown_pruning(successor_goals, unknown_sensitive)) {
                    ++stats.pruned_by_unknown;
                    continue;
                }

                const int goal_distance = successor_goals.remaining;
                const int novelty = novelty_score(successor_goals, successor_node.state);
                const RankedPriority rank = {
                    goal_distance,
                    novelty,
                    goal_distance + successor_depth,
                    successor_depth,
                    successor_depth};
                ++stats.generated;

                const std::string successor_key =
                    duplicate_key(successor_node.state, successor_node.context);
                auto incumbent = next_beam_by_state.find(successor_key);
                if (incumbent != next_beam_by_state.end() && incumbent->second.rank <= rank) {
                    ++stats.pruned_by_visited;
                    continue;
                }

                const int successor_id = static_cast<int>(replayed.nodes.size());
                replayed.nodes.push_back(std::move(successor_node));
                next_beam_by_state[successor_key] = {
                    successor_id,
                    rank,
                    task.actions[action_id].name};
            }
        }

        if (next_beam_by_state.empty()) {
            break;
        }

        std::vector<BeamCandidate> next_beam;
        next_beam.reserve(next_beam_by_state.size());
        for (const auto &[key, candidate] : next_beam_by_state) {
            static_cast<void>(key);
            next_beam.push_back(candidate);
        }
        std::sort(
            next_beam.begin(),
            next_beam.end(),
            [](const BeamCandidate &lhs, const BeamCandidate &rhs) {
                if (lhs.rank != rhs.rank) {
                    return lhs.rank < rhs.rank;
                }
                return lhs.action_name < rhs.action_name;
            });

        current_beam.clear();
        for (std::size_t index = 0;
             index < next_beam.size() && index < static_cast<std::size_t>(beam_size);
             ++index) {
            current_beam.push_back(next_beam[index].node_id);
        }
    }

    return {"UNSOLVED", {}};
}

class Lnbs final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "lnbs";
        return value;
    }

    SearchResult search(Task &task, const SearchOptions &options) const override {
        const int initial_beam_size =
            read_int_option(options.search_options, "initial_beam_size", 4, 1);
        const std::optional<int> max_beam_size = read_optional_int_option(
            options.search_options,
            "max_beam_size",
            std::optional<int>(32),
            initial_beam_size);
        const bool keep_all_layers =
            read_bool_option(options.search_options, "keep_all_layers", true);
        const int seed = read_int_option(options.search_options, "seed", 2023);
        const bool use_cost_weight =
            read_bool_option(options.search_options, "use_cost_weight", false);
        const int max_repair_attempts =
            read_int_option(options.search_options, "max_repair_attempts", 8, 1);
        const int cabs_initial_beam_size =
            read_int_option(options.search_options, "cabs_initial_beam_size", 1, 1);
        const int cabs_max_beam_size = read_int_option(
            options.search_options,
            "cabs_max_beam_size",
            32,
            cabs_initial_beam_size);

        SearchStats stats;
        stats.generated = 0;

        std::mt19937 rng(seed);
        const auto overall_start_time = std::chrono::steady_clock::now();

        SearchOptions warm_start_options = options;
        warm_start_options.algorithm = "cabs";
        warm_start_options.search_options["initial_beam_size"] =
            json::Value{static_cast<double>(cabs_initial_beam_size)};
        warm_start_options.search_options["max_beam_size"] =
            json::Value{static_cast<double>(cabs_max_beam_size)};
        warm_start_options.search_options["keep_all_layers"] = json::Value{keep_all_layers};

        std::unique_ptr<SearchAlgorithm> warm_start_solver = make_search_algorithm("cabs");
        SearchResult warm_start_result = warm_start_solver->search(task, warm_start_options);
        stats.expanded += warm_start_result.expanded;
        stats.goal_checked += warm_start_result.goal_checked;
        stats.generated += warm_start_result.generated;
        stats.pruned_by_unknown += warm_start_result.pruned_by_unknown;
        stats.pruned_by_visited += warm_start_result.pruned_by_visited;

        std::vector<std::string> best_actions = warm_start_result.plan;
        if (warm_start_result.running != "SUCC" || best_actions.empty()) {
            return make_result(
                warm_start_result.solvable,
                warm_start_result.running,
                best_actions,
                warm_start_result.path_length,
                stats,
                name());
        }

        std::unordered_map<std::string, int> action_id_by_name;
        action_id_by_name.reserve(task.actions.size());
        for (int action_id = 0; action_id < static_cast<int>(task.actions.size()); ++action_id) {
            action_id_by_name.emplace(task.actions[action_id].name, action_id);
        }

        const std::vector<bool> unknown_sensitive = unknown_sensitive_goals(task);
        const std::unordered_set<std::string> goal_agents = extract_goal_agents(task);

        int repair_attempts = 0;
        std::unordered_set<int> attempted_prefix_lengths;
        int current_beam_size = initial_beam_size;

        while (repair_attempts < max_repair_attempts) {
            auto now = std::chrono::steady_clock::now();
            if (std::chrono::duration_cast<std::chrono::seconds>(now - overall_start_time).count() >=
                options.timeout_seconds) {
                break;
            }

            std::optional<int> prefix_length = select_prefix_length(
                static_cast<int>(best_actions.size()),
                attempted_prefix_lengths,
                use_cost_weight,
                rng);
            if (!prefix_length) {
                break;
            }

            attempted_prefix_lengths.insert(*prefix_length);
            ++repair_attempts;

            std::optional<ReplayState> replayed =
                replay_prefix(task, best_actions, *prefix_length, action_id_by_name, stats);
            if (!replayed) {
                break;
            }

            RepairOutcome repair = repair_with_beam(
                task,
                options,
                std::move(*replayed),
                static_cast<int>(best_actions.size()) - 1,
                current_beam_size,
                keep_all_layers,
                unknown_sensitive,
                goal_agents,
                stats,
                overall_start_time);

            if (repair.status == "SUCC" && repair.actions.size() < best_actions.size()) {
                best_actions = std::move(repair.actions);
                attempted_prefix_lengths.clear();
                current_beam_size = initial_beam_size;
                continue;
            }

            if (repair.status == "TIMEOUT") {
                break;
            }

            current_beam_size = next_beam_size(current_beam_size, max_beam_size);
        }

        return make_result(
            true,
            "SUCC",
            best_actions,
            static_cast<int>(best_actions.size()),
            stats,
            name());
    }
};

std::unique_ptr<SearchAlgorithm> make_lnbs() {
    return std::make_unique<Lnbs>();
}

const SearchAlgorithmRegistration registration("lnbs", make_lnbs);

}  // namespace