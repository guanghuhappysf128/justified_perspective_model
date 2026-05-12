#include "jpm/search.hpp"

#include "jpm/evaluator.hpp"
#include "jpm/search_algorithm.hpp"
#include "jpm/transition.hpp"

#include <algorithm>
#include <chrono>
#include <iostream>
#include <queue>
#include <sstream>
#include <unordered_set>

namespace {

struct SearchStats {
    int expanded = 0;
    int generated = 1;
    int pruned_by_unknown = 0;
    int pruned_by_visited = 0;
    int goal_checked = 0;

    int pruned() const {
        return pruned_by_unknown + pruned_by_visited;
    }
};

struct GoalEvaluation {
    int remaining = 0;
    std::vector<bool> satisfied;
};

struct Node {
    std::vector<int> state;
    int parent = -1;
    int action = -1;
    int g = 0;
};

struct QueueItem {
    int primary = 0;
    int secondary = 0;
    int order = 0;
    int node_id = 0;

    bool operator<(const QueueItem &other) const {
        if (primary != other.primary) return primary > other.primary;
        if (secondary != other.secondary) return secondary > other.secondary;
        return order > other.order;
    }
};

StateSequence reconstruct_state_sequence(const std::vector<Node> &nodes, int node_id) {
    std::vector<int> ids;
    int current = node_id;
    while (current >= 0) {
        ids.push_back(current);
        current = nodes[current].parent;
    }
    std::reverse(ids.begin(), ids.end());
    StateSequence sequence;
    sequence.reserve(ids.size());
    for (int id : ids) {
        sequence.push_back(nodes[id].state);
    }
    return sequence;
}

GoalEvaluation evaluate_goals(
    const Task &task,
    const StateSequence &state_sequence,
    EvalContext &context) {
    GoalEvaluation evaluation;
    evaluation.satisfied.reserve(task.goals.size());
    for (const Condition &goal : task.goals) {
        bool satisfied = is_condition_true(task, state_sequence, goal, context);
        evaluation.satisfied.push_back(satisfied);
        if (!satisfied) {
            ++evaluation.remaining;
        }
    }
    return evaluation;
}

bool query_has_positive_unknown_marker(const std::string &query) {
    std::istringstream stream(query);
    std::string token;
    bool positive = true;
    while (stream >> token) {
        if (token == "!") {
            positive = !positive;
        } else if (token == "$" && positive) {
            return true;
        }
    }
    return false;
}

std::vector<bool> unknown_sensitive_goals(const Task &task) {
    std::vector<bool> sensitive(task.goals.size(), false);
    for (int i = 0; i < static_cast<int>(task.goals.size()); ++i) {
        const Condition &goal = task.goals[i];
        if (goal.kind != ConditionKind::Epistemic || !goal.epistemic ||
            goal.epistemic->kind != FormulaKind::Ep) {
            continue;
        }
        if (goal.target_ternary == Ternary::Unknown ||
            query_has_positive_unknown_marker(goal.epistemic->query)) {
            sensitive[i] = true;
        }
    }
    return sensitive;
}

bool passes_unknown_pruning(
    const GoalEvaluation &goals,
    const std::vector<bool> &unknown_sensitive) {
    for (int i = 0; i < static_cast<int>(goals.satisfied.size()); ++i) {
        if (unknown_sensitive[i] && !goals.satisfied[i]) {
            return false;
        }
    }
    return true;
}

void append_state_key(std::string &out, const std::vector<int> &state) {
    out.push_back('[');
    for (std::size_t i = 0; i < state.size(); ++i) {
        if (i) out.push_back(',');
        out += std::to_string(state[i]);
    }
    out.push_back(']');
}

std::string duplicate_key(
    const std::vector<int> &global_state,
    const EvalContext &context) {
    std::string key;
    key.reserve(global_state.size() * 4 + context.named_perspectives.size() * 32);
    key += "global=";
    append_state_key(key, global_state);

    std::vector<std::string> perspective_keys;
    perspective_keys.reserve(context.named_perspectives.size());
    for (const auto &[name, _sequence] : context.named_perspectives) {
        perspective_keys.push_back(name);
    }
    std::sort(perspective_keys.begin(), perspective_keys.end());

    for (const std::string &name : perspective_keys) {
        auto it = context.named_perspectives.find(name);
        if (it == context.named_perspectives.end() || it->second.empty()) {
            continue;
        }
        key += "|";
        key += name;
        key += "=";
        append_state_key(key, it->second.back());
    }
    return key;
}

std::vector<std::string> extract_plan(const std::vector<Node> &nodes, const Task &task, int goal_id) {
    std::vector<std::string> plan;
    int current = goal_id;
    while (current >= 0 && nodes[current].action >= 0) {
        plan.push_back(task.actions[nodes[current].action].name);
        current = nodes[current].parent;
    }
    std::reverse(plan.begin(), plan.end());
    return plan;
}

std::string json_escape(const std::string &input) {
    std::string out;
    for (char ch : input) {
        if (ch == '"' || ch == '\\') {
            out.push_back('\\');
        }
        out.push_back(ch);
    }
    return out;
}

}  // namespace

void print_result(
    bool solvable,
    const std::string &running,
    const std::vector<std::string> &plan,
    int expanded,
    int generated,
    int pruned,
    int pruned_by_unknown,
    int pruned_by_visited,
    int goal_checked,
    const std::string &search,
    const std::string &message) {
    std::cout << "{\n";
    std::cout << "  \"solvable\": " << (solvable ? "true" : "false") << ",\n";
    std::cout << "  \"running\": \"" << json_escape(running) << "\",\n";
    std::cout << "  \"plan\": [";
    for (std::size_t i = 0; i < plan.size(); ++i) {
        if (i) std::cout << ", ";
        std::cout << "\"" << json_escape(plan[i]) << "\"";
    }
    std::cout << "],\n";
    std::cout << "  \"path_length\": " << plan.size() << ",\n";
    std::cout << "  \"expanded\": " << expanded << ",\n";
    std::cout << "  \"generated\": " << generated << ",\n";
    std::cout << "  \"pruned\": " << pruned << ",\n";
    std::cout << "  \"pruned_by_unknown\": " << pruned_by_unknown << ",\n";
    std::cout << "  \"pruned_by_visited\": " << pruned_by_visited << ",\n";
    std::cout << "  \"goal_checked\": " << goal_checked;
    if (!search.empty()) {
        std::cout << ",\n  \"search\": \"" << json_escape(search) << "\"";
    }
    if (!message.empty()) {
        std::cout << ",\n  \"message\": \"" << json_escape(message) << "\"";
    }
    std::cout << "\n}\n";
}

int solve(Task &task, const SearchOptions &options) {
    std::unique_ptr<SearchAlgorithm> algorithm = make_search_algorithm(options.algorithm);
    const std::vector<bool> unknown_sensitive = unknown_sensitive_goals(task);
    std::vector<Node> nodes;
    nodes.push_back({task.initial_state, -1, -1, 0});

    std::priority_queue<QueueItem> open;
    SearchStats stats;
    int order = 0;
    {
        StateSequence initial_sequence{task.initial_state};
        EvalContext initial_context;
        GoalEvaluation initial_goals = evaluate_goals(task, initial_sequence, initial_context);
        ++stats.goal_checked;
        open.push({
            algorithm->primary_priority(initial_goals.remaining, 0),
            algorithm->secondary_priority(initial_goals.remaining, 0),
            order++,
            0});
    }

    std::unordered_set<std::string> visited;
    auto start = std::chrono::steady_clock::now();

    while (!open.empty()) {
        auto now = std::chrono::steady_clock::now();
        if (std::chrono::duration_cast<std::chrono::seconds>(now - start).count() >=
            options.timeout_seconds) {
            print_result(
                false,
                "TIMEOUT",
                {},
                stats.expanded,
                stats.generated,
                stats.pruned(),
                stats.pruned_by_unknown,
                stats.pruned_by_visited,
                stats.goal_checked,
                algorithm->name());
            return 1;
        }
        if (stats.expanded >= options.max_expanded) {
            print_result(
                false,
                "EXPANSION_LIMIT",
                {},
                stats.expanded,
                stats.generated,
                stats.pruned(),
                stats.pruned_by_unknown,
                stats.pruned_by_visited,
                stats.goal_checked,
                algorithm->name());
            return 1;
        }

        QueueItem item = open.top();
        open.pop();

        StateSequence state_sequence = reconstruct_state_sequence(nodes, item.node_id);
        EvalContext current_context;
        GoalEvaluation current_goals = evaluate_goals(task, state_sequence, current_context);
        ++stats.goal_checked;
        if (current_goals.remaining == 0) {
            print_result(
                true,
                "SUCC",
                extract_plan(nodes, task, item.node_id),
                stats.expanded,
                stats.generated,
                stats.pruned(),
                stats.pruned_by_unknown,
                stats.pruned_by_visited,
                stats.goal_checked,
                algorithm->name());
            return 0;
        }

        std::vector<int> legal_actions;
        legal_actions.reserve(task.actions.size());
        for (int action_id = 0; action_id < static_cast<int>(task.actions.size()); ++action_id) {
            if (is_applicable(task, state_sequence, task.actions[action_id], current_context)) {
                legal_actions.push_back(action_id);
            }
        }

        if (algorithm->duplicate_check()) {
            std::string key = duplicate_key(nodes[item.node_id].state, current_context);
            if (!visited.insert(std::move(key)).second) {
                ++stats.pruned_by_visited;
                continue;
            }
        }

        ++stats.expanded;
        for (int action_id : legal_actions) {
            EvalContext successor_context;
            auto maybe_successor = successor(task, state_sequence, task.actions[action_id], successor_context);
            if (!maybe_successor) {
                continue;
            }

            Node successor_node;
            successor_node.state = std::move(*maybe_successor);
            successor_node.parent = item.node_id;
            successor_node.action = action_id;
            successor_node.g = nodes[item.node_id].g + 1;

            StateSequence successor_sequence = state_sequence;
            successor_sequence.push_back(successor_node.state);
            EvalContext goal_context;
            GoalEvaluation successor_goals = evaluate_goals(task, successor_sequence, goal_context);
            ++stats.goal_checked;

            if (algorithm->unknown_pruning() &&
                !passes_unknown_pruning(successor_goals, unknown_sensitive)) {
                ++stats.pruned_by_unknown;
                continue;
            }

            int h = successor_goals.remaining;
            int g = successor_node.g;
            int node_id = static_cast<int>(nodes.size());
            nodes.push_back(std::move(successor_node));
            ++stats.generated;
            open.push({
                algorithm->primary_priority(h, g),
                algorithm->secondary_priority(h, g),
                order++,
                node_id});
        }
    }

    print_result(
        false,
        "FAILED",
        {},
        stats.expanded,
        stats.generated,
        stats.pruned(),
        stats.pruned_by_unknown,
        stats.pruned_by_visited,
        stats.goal_checked,
        algorithm->name());
    return 1;
}

int solve(Task &task, int timeout_seconds, int max_expanded) {
    SearchOptions options;
    options.timeout_seconds = timeout_seconds;
    options.max_expanded = max_expanded;
    return solve(task, options);
}
