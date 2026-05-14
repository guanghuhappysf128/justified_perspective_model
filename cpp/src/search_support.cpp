#include "jpm/search_support.hpp"

#include <algorithm>
#include <sstream>
#include <tuple>

namespace {

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

void append_state_key(std::string &out, const std::vector<int> &state) {
    out.push_back('[');
    for (std::size_t i = 0; i < state.size(); ++i) {
        if (i) {
            out.push_back(',');
        }
        out += std::to_string(state[i]);
    }
    out.push_back(']');
}

std::string trim(std::string value) {
    auto not_space = [](unsigned char ch) {
        return !std::isspace(ch);
    };
    value.erase(value.begin(), std::find_if(value.begin(), value.end(), not_space));
    value.erase(std::find_if(value.rbegin(), value.rend(), not_space).base(), value.end());
    return value;
}

std::vector<std::string> split_action_tokens(const std::string &action_name) {
    std::vector<std::string> tokens;
    std::istringstream stream(action_name);
    std::string token;
    while (stream >> token) {
        tokens.push_back(token);
    }
    return tokens;
}

std::tuple<int, int, std::string> action_relevance_key(
    const Task &task,
    int action_id,
    const std::unordered_set<std::string> &goal_agents) {
    const Action &action = task.actions[action_id];
    const std::vector<std::string> tokens = split_action_tokens(action.name);

    std::vector<std::string> action_agents;
    for (std::size_t i = 1; i < tokens.size(); ++i) {
        if (task.agent_names.contains(tokens[i])) {
            action_agents.push_back(tokens[i]);
        }
    }

    if (action_agents.empty()) {
        return {1, 0, action.name};
    }

    bool all_goal_agents = true;
    bool any_goal_agent = false;
    for (const std::string &agent_name : action_agents) {
        if (goal_agents.contains(agent_name)) {
            any_goal_agent = true;
        } else {
            all_goal_agents = false;
        }
    }

    if (all_goal_agents) {
        return {0, static_cast<int>(action_agents.size()), action.name};
    }
    if (any_goal_agent) {
        return {1, static_cast<int>(action_agents.size()), action.name};
    }
    return {2, static_cast<int>(action_agents.size()), action.name};
}

}  // namespace

StateSequence reconstruct_state_sequence(const std::vector<SearchNode> &nodes, int node_id) {
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

std::vector<std::string> extract_plan(
    const std::vector<SearchNode> &nodes,
    const Task &task,
    int goal_id) {
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

std::unordered_set<std::string> extract_goal_agents(const Task &task) {
    std::unordered_set<std::string> goal_agents;
    for (const Condition &goal : task.goals) {
        if (goal.kind != ConditionKind::Epistemic || !goal.epistemic) {
            continue;
        }

        const std::string &query = goal.epistemic->query;
        std::size_t start = 0;
        while ((start = query.find('[', start)) != std::string::npos) {
            const std::size_t end = query.find(']', start + 1);
            if (end == std::string::npos) {
                break;
            }
            std::istringstream stream(query.substr(start + 1, end - start - 1));
            std::string token;
            while (std::getline(stream, token, ',')) {
                token = trim(token);
                if (!token.empty()) {
                    goal_agents.insert(token);
                }
            }
            start = end + 1;
        }
    }
    return goal_agents;
}

std::vector<int> ordered_action_ids(
    const Task &task,
    const std::vector<int> &action_ids,
    const std::unordered_set<std::string> &goal_agents) {
    if (action_ids.empty() || goal_agents.empty() || task.agent_names.empty()) {
        return action_ids;
    }

    std::vector<int> ordered = action_ids;
    std::stable_sort(
        ordered.begin(),
        ordered.end(),
        [&](int lhs, int rhs) {
            return action_relevance_key(task, lhs, goal_agents) <
                   action_relevance_key(task, rhs, goal_agents);
        });
    return ordered;
}

std::string novelty_signature(const GoalEvaluation &goals) {
    std::string signature;
    signature.reserve(goals.satisfied.size());
    for (bool satisfied : goals.satisfied) {
        signature.push_back(satisfied ? '1' : '0');
    }
    return signature;
}

std::vector<std::string> novelty_state_items(
    const Task &task,
    const std::vector<int> &state) {
    std::vector<std::string> items;
    items.reserve(state.size());
    for (std::size_t i = 0; i < state.size(); ++i) {
        items.push_back(task.variables[i].name + "@" + std::to_string(state[i]));
    }
    return items;
}