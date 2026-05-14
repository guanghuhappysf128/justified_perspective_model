#include "jpm/search_algorithm.hpp"

#include "jpm/search_option_utils.hpp"
#include "jpm/search_support.hpp"
#include "jpm/transition.hpp"

#include <algorithm>
#include <chrono>
#include <functional>
#include <memory>
#include <optional>
#include <queue>
#include <string>
#include <tuple>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace {

using OpenItem = std::tuple<int, int, int, int, int, int>;
using OpenLayer = std::priority_queue<OpenItem, std::vector<OpenItem>, std::greater<OpenItem>>;

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

bool has_pending_nodes(const std::vector<OpenLayer> &open_layers) {
    for (const OpenLayer &layer : open_layers) {
        if (!layer.empty()) {
            return true;
        }
    }
    return false;
}

class Acps final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "acps";
        return value;
    }

    SearchResult search(Task &task, const SearchOptions &options) const override {
        const int initial_width = read_int_option(options.search_options, "init", 1, 1);
        const int width_step = read_int_option(options.search_options, "step", 1, 1);
        const std::optional<int> width_bound = read_optional_int_option(
            options.search_options,
            "width_bound",
            std::optional<int>(16),
            initial_width);
        const bool reset_on_improvement =
            read_bool_option(options.search_options, "reset", false);

        auto increase_width = [&](int width) {
            const int next_width = width + width_step;
            if (!width_bound) {
                return next_width;
            }
            return std::min(next_width, *width_bound);
        };

        const std::vector<bool> unknown_sensitive = unknown_sensitive_goals(task);
        const std::unordered_set<std::string> goal_agents = extract_goal_agents(task);

        std::unordered_map<std::string, int> best_cost_by_state;
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

        std::vector<OpenLayer> open_layers(1);
        int order = 0;
        open_layers[0].push({
            root.remaining_goal,
            novelty_score(root_goals, root.state),
            root.remaining_goal,
            0,
            order++,
            0});

        int width = initial_width;
        std::optional<int> best_solution_cost;
        int best_solution_node_id = -1;
        auto start = std::chrono::steady_clock::now();

        while (has_pending_nodes(open_layers)) {
            bool processed_in_cycle = false;
            bool goal_found_in_cycle = false;
            const std::size_t cycle_layer_count = open_layers.size();

            for (std::size_t layer_index = 0; layer_index < cycle_layer_count; ++layer_index) {
                int node_index = 0;
                while (node_index < width && !open_layers[layer_index].empty()) {
                    const int node_id = std::get<5>(open_layers[layer_index].top());
                    open_layers[layer_index].pop();
                    processed_in_cycle = true;

                    const int current_remaining_goal = nodes[node_id].remaining_goal;
                    const int current_depth = nodes[node_id].g;
                    const std::vector<int> current_state = nodes[node_id].state;

                    if (best_solution_cost && current_depth >= *best_solution_cost) {
                        ++node_index;
                        continue;
                    }

                    if (current_remaining_goal == 0) {
                        if (!best_solution_cost || current_depth < *best_solution_cost) {
                            best_solution_cost = current_depth;
                            best_solution_node_id = node_id;
                            goal_found_in_cycle = true;
                        }
                        ++node_index;
                        continue;
                    }

                    auto now = std::chrono::steady_clock::now();
                    if (std::chrono::duration_cast<std::chrono::seconds>(now - start).count() >=
                        options.timeout_seconds) {
                        if (best_solution_node_id >= 0) {
                            std::vector<std::string> plan =
                                extract_plan(nodes, task, best_solution_node_id);
                            return make_result(
                                true,
                                "SUCC",
                                std::move(plan),
                                *best_solution_cost,
                                stats,
                                name());
                        }
                        return make_result(false, "TIMEOUT", {}, current_depth, stats, name());
                    }
                    if (stats.expanded >= options.max_expanded) {
                        if (best_solution_node_id >= 0) {
                            std::vector<std::string> plan =
                                extract_plan(nodes, task, best_solution_node_id);
                            return make_result(
                                true,
                                "SUCC",
                                std::move(plan),
                                *best_solution_cost,
                                stats,
                                name());
                        }
                        return make_result(
                            false,
                            "EXPANSION_LIMIT",
                            {},
                            current_depth,
                            stats,
                            name());
                    }

                    StateSequence state_sequence = reconstruct_state_sequence(nodes, node_id);
                    EvalContext expansion_context = nodes[node_id].context;

                    std::vector<int> legal_actions;
                    legal_actions.reserve(task.actions.size());
                    for (int action_id = 0; action_id < static_cast<int>(task.actions.size()); ++action_id) {
                        if (is_applicable(
                                task,
                                state_sequence,
                                task.actions[action_id],
                                expansion_context)) {
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

                    const std::string state_key = duplicate_key(current_state, expansion_context);
                    auto best_cost = best_cost_by_state.find(state_key);
                    if (best_cost != best_cost_by_state.end() && best_cost->second <= current_depth) {
                        ++stats.pruned_by_visited;
                        ++node_index;
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
                        if (best_solution_cost && successor_depth >= *best_solution_cost) {
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

                        const int successor_id = static_cast<int>(nodes.size());
                        nodes.push_back(std::move(successor_node));
                        ++stats.generated;

                        const int goal_distance = successor_goals.remaining;
                        const int novelty = novelty_score(successor_goals, nodes[successor_id].state);
                        const int weighted_score = goal_distance + successor_depth;
                        while (static_cast<std::size_t>(successor_depth) >= open_layers.size()) {
                            open_layers.emplace_back();
                        }
                        open_layers[successor_depth].push({
                            goal_distance,
                            novelty,
                            weighted_score,
                            successor_depth,
                            order++,
                            successor_id});
                    }

                    ++node_index;
                }
            }

            if (goal_found_in_cycle) {
                width = reset_on_improvement ? initial_width : increase_width(width);
                continue;
            }
            if (!processed_in_cycle) {
                break;
            }
            width = increase_width(width);
        }

        if (best_solution_node_id >= 0) {
            std::vector<std::string> plan = extract_plan(nodes, task, best_solution_node_id);
            return make_result(true, "SUCC", std::move(plan), *best_solution_cost, stats, name());
        }

        return make_result(false, "UNSOLVED", {}, 0, stats, name());
    }
};

std::unique_ptr<SearchAlgorithm> make_acps() {
    return std::make_unique<Acps>();
}

const SearchAlgorithmRegistration registration("acps", make_acps);

}  // namespace