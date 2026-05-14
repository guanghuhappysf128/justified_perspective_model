#include "jpm/search_algorithm.hpp"

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

class Cbfs final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "cbfs";
        return value;
    }

    SearchResult search(Task &task, const SearchOptions &options) const override {
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

        std::size_t layer_index = 0;
        auto start = std::chrono::steady_clock::now();
        while (has_pending_nodes(open_layers)) {
            if (layer_index >= open_layers.size()) {
                layer_index = 0;
            }
            if (open_layers[layer_index].empty()) {
                ++layer_index;
                continue;
            }

            const int node_id = std::get<5>(open_layers[layer_index].top());
            open_layers[layer_index].pop();

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

            const std::string state_key = duplicate_key(current_state, expansion_context);
            auto best_cost = best_cost_by_state.find(state_key);
            if (best_cost != best_cost_by_state.end() && best_cost->second <= current_depth) {
                ++stats.pruned_by_visited;
                ++layer_index;
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

                const int successor_id = static_cast<int>(nodes.size());
                nodes.push_back(std::move(successor_node));
                ++stats.generated;

                const int goal_distance = successor_goals.remaining;
                const int novelty = novelty_score(successor_goals, nodes[successor_id].state);
                const int weighted_score = goal_distance + nodes[successor_id].g;
                while (static_cast<std::size_t>(nodes[successor_id].g) >= open_layers.size()) {
                    open_layers.emplace_back();
                }
                open_layers[nodes[successor_id].g].push({
                    goal_distance,
                    novelty,
                    weighted_score,
                    nodes[successor_id].g,
                    order++,
                    successor_id});
            }

            ++layer_index;
        }

        return make_result(false, "UNSOLVED", {}, 0, stats, name());
    }
};

std::unique_ptr<SearchAlgorithm> make_cbfs() {
    return std::make_unique<Cbfs>();
}

const SearchAlgorithmRegistration registration("cbfs", make_cbfs);

}  // namespace