#include "jpm/search_algorithm.hpp"

#include "jpm/search_option_utils.hpp"
#include "jpm/search_support.hpp"
#include "jpm/transition.hpp"

#include <algorithm>
#include <chrono>
#include <functional>
#include <memory>
#include <queue>
#include <string>
#include <tuple>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace {

using Priority = std::tuple<int, int, int, int>;
using RankedPriority = std::tuple<int, int, int, int, int>;

struct BeamCandidate {
    int node_id = -1;
    RankedPriority rank;
    std::string action_name;
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

class BeamSearch final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "beamsearch";
        return value;
    }

    SearchResult search(Task &task, const SearchOptions &options) const override {
        const int beam_size = read_int_option(options.search_options, "beam_size", 32, 1);
        const bool keep_all_layers =
            read_bool_option(options.search_options, "keep_all_layers", false);

        const std::vector<bool> unknown_sensitive = unknown_sensitive_goals(task);
        const std::unordered_set<std::string> goal_agents = extract_goal_agents(task);

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

        std::vector<SearchNode> nodes;
        SearchStats stats;

        SearchNode root;
        root.state = task.initial_state;
        StateSequence initial_sequence{task.initial_state};
        GoalEvaluation root_goals = evaluate_goals(task, initial_sequence, root.context);
        ++stats.goal_checked;
        root.remaining_goal = root_goals.remaining;
        nodes.push_back(root);

        std::vector<int> current_beam{0};
        auto start = std::chrono::steady_clock::now();

        while (!current_beam.empty()) {
            std::unordered_map<std::string, BeamCandidate> next_beam_by_state;

            for (int node_id : current_beam) {
                const int current_remaining_goal = nodes[node_id].remaining_goal;
                const int current_depth = nodes[node_id].g;
                const std::vector<int> current_state = nodes[node_id].state;

                if (current_remaining_goal == 0) {
                    std::vector<std::string> plan = extract_plan(nodes, task, node_id);
                    return make_result(true, "SUCC", std::move(plan), current_depth, stats, name());
                }

                auto now = std::chrono::steady_clock::now();
                if (std::chrono::duration_cast<std::chrono::seconds>(now - start).count() >=
                    options.timeout_seconds) {
                    return make_result(false, "TIMEOUT", {}, current_depth, stats, name());
                }
                if (stats.expanded >= options.max_expanded) {
                    return make_result(false, "EXPANSION_LIMIT", {}, current_depth, stats, name());
                }

                StateSequence state_sequence = reconstruct_state_sequence(nodes, node_id);
                EvalContext expansion_context = nodes[node_id].context;

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

                ++stats.expanded;
                for (int action_id : legal_actions) {
                    EvalContext successor_context;
                    auto maybe_successor =
                        successor(task, state_sequence, task.actions[action_id], successor_context);
                    if (!maybe_successor) {
                        continue;
                    }

                    SearchNode successor_node;
                    successor_node.state = std::move(*maybe_successor);
                    successor_node.parent = node_id;
                    successor_node.action = action_id;
                    successor_node.g = current_depth + 1;

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
                    const int successor_depth = successor_node.g;
                    const Priority priority = {
                        goal_distance,
                        novelty,
                        goal_distance + successor_depth,
                        successor_depth};
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

                    const int successor_id = static_cast<int>(nodes.size());
                    nodes.push_back(std::move(successor_node));

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

        return make_result(false, "UNSOLVED", {}, 0, stats, name());
    }
};

std::unique_ptr<SearchAlgorithm> make_beam_search() {
    return std::make_unique<BeamSearch>();
}

const SearchAlgorithmRegistration registration("beamsearch", make_beam_search);
const SearchAlgorithmRegistration alias_registration("beam_search", make_beam_search);

}  // namespace