#include "jpm/evaluator.hpp"

#include "jpm/visibility.hpp"

#include <algorithm>
#include <cstdint>
#include <sstream>
#include <stdexcept>

namespace {

std::vector<std::string> split_ws(const std::string &input) {
    std::istringstream stream(input);
    std::vector<std::string> tokens;
    std::string token;
    while (stream >> token) {
        tokens.push_back(token);
    }
    return tokens;
}

std::string strip_agent_brackets(const std::string &token) {
    if (token.size() < 3 || token.front() != '[' || token.back() != ']') {
        throw std::runtime_error("agent token must be bracketed, got: " + token);
    }
    std::string agent = token.substr(1, token.size() - 2);
    if (agent.find(',') != std::string::npos) {
        throw std::runtime_error("C++ epistemic evaluator currently supports one agent per query: " + token);
    }
    return agent;
}
Ternary evaluate_ontic_condition(const Task &task, const std::vector<int> &state, const Condition &condition) {
    int lhs = state[condition.var];
    int rhs = condition.target_is_var ? state[condition.target_var] : condition.value;
    const Variable &var = task.variables[condition.var];
    switch (condition.op) {
        case Op::Equal:
            if (lhs < 0 || rhs < 0) {
                return lhs == rhs ? Ternary::True : Ternary::Unknown;
            }
            return bool_to_ternary(lhs == rhs);
        case Op::NotEqual:
            return bool_to_ternary(lhs != rhs);
        case Op::Greater:
            if (lhs < 0 || rhs < 0) return Ternary::Unknown;
            return bool_to_ternary(std::stoi(var.values[lhs]) > std::stoi(var.values[rhs]));
        case Op::GreaterEqual:
            if (lhs < 0 || rhs < 0) return Ternary::Unknown;
            return bool_to_ternary(std::stoi(var.values[lhs]) >= std::stoi(var.values[rhs]));
        case Op::Less:
            if (lhs < 0 || rhs < 0) return Ternary::Unknown;
            return bool_to_ternary(std::stoi(var.values[lhs]) < std::stoi(var.values[rhs]));
        case Op::LessEqual:
            if (lhs < 0 || rhs < 0) return Ternary::Unknown;
            return bool_to_ternary(std::stoi(var.values[lhs]) <= std::stoi(var.values[rhs]));
    }
    return Ternary::False;
}

std::uint64_t hash_state_sequence(const StateSequence &sequence) {
    std::uint64_t seed = 1469598103934665603ull;
    seed ^= static_cast<std::uint64_t>(sequence.size() + 0x9e3779b9);
    seed *= 1099511628211ull;
    for (const auto &state : sequence) {
        seed ^= static_cast<std::uint64_t>(state.size() + 0x9e3779b9);
        seed *= 1099511628211ull;
        for (int value : state) {
            seed ^= static_cast<std::uint64_t>(value + 0x9e3779b9);
            seed *= 1099511628211ull;
        }
    }
    return seed;
}

std::string sequence_cache_key(
    const std::string &kind,
    const std::string &agent,
    const StateSequence &sequence) {
    return kind + "|" + agent + "|" + std::to_string(sequence.size()) + "|" +
           std::to_string(hash_state_sequence(sequence));
}

std::string perspective_cache_key(const StateSequence &observations, const StateSequence &parent_sequence) {
    return "perspective|" + std::to_string(observations.size()) + "|" +
           std::to_string(hash_state_sequence(observations)) + "|" +
           std::to_string(hash_state_sequence(parent_sequence));
}

const StateSequence &make_observation_sequence(
    const Task &task,
    const StateSequence &parent_sequence,
    const std::string &agent,
    EvalContext &context) {
    std::string key = sequence_cache_key("observation", agent, parent_sequence);
    auto cached = context.observations.find(key);
    if (cached != context.observations.end()) {
        return cached->second;
    }
    StateSequence observations;
    observations.reserve(parent_sequence.size());
    for (const auto &state : parent_sequence) {
        std::vector<int> observed = state;
        for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
            if (!is_visible(task, state, agent, var_id)) {
                observed[var_id] = UNSEEN_VALUE;
            }
        }
        observations.push_back(std::move(observed));
    }
    auto [it, _inserted] = context.observations.emplace(std::move(key), std::move(observations));
    return it->second;
}

int identify_last_seen_timestamp(const StateSequence &observations, int var_id, int last_index) {
    for (int ts = last_index; ts >= 0; --ts) {
        if (observations[ts][var_id] != UNSEEN_VALUE) {
            return ts;
        }
    }
    return -1;
}

int retrieve_seen_value(const StateSequence &parent_sequence, int ts, int var_id) {
    if (ts < 0) {
        return HAVENT_SEEN_VALUE;
    }
    for (int index = ts; index >= 0; --index) {
        int value = parent_sequence[index][var_id];
        if (value != HAVENT_SEEN_VALUE && value != UNSEEN_VALUE) {
            return value;
        }
    }
    for (int index = ts + 1; index < static_cast<int>(parent_sequence.size()); ++index) {
        int value = parent_sequence[index][var_id];
        if (value != HAVENT_SEEN_VALUE && value != UNSEEN_VALUE) {
            return value;
        }
    }
    return HAVENT_SEEN_VALUE;
}

const StateSequence &make_perspective_sequence(
    const Task &task,
    const StateSequence &observations,
    const StateSequence &parent_sequence,
    EvalContext &context) {
    std::string key = perspective_cache_key(observations, parent_sequence);
    auto cached = context.perspectives.find(key);
    if (cached != context.perspectives.end()) {
        return cached->second;
    }
    StateSequence perspective;
    perspective.reserve(observations.size());
    for (int index = 0; index < static_cast<int>(observations.size()); ++index) {
        std::vector<int> local = observations[index];
        for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
            if (local[var_id] == UNSEEN_VALUE) {
                int ts = identify_last_seen_timestamp(observations, var_id, index);
                local[var_id] = retrieve_seen_value(parent_sequence, ts, var_id);
            }
        }
        perspective.push_back(std::move(local));
    }
    auto [it, _inserted] = context.perspectives.emplace(std::move(key), std::move(perspective));
    return it->second;
}

std::string join_tokens(const std::vector<std::string> &tokens, std::size_t start) {
    std::string out;
    for (std::size_t i = start; i < tokens.size(); ++i) {
        if (!out.empty()) {
            out.push_back(' ');
        }
        out += tokens[i];
    }
    return out;
}

std::string observation_key(const std::string &parent_key, const std::string &agent) {
    return parent_key + "o [" + agent + "] ";
}

std::string perspective_key_from_observation_key(const std::string &key) {
    std::string out = key;
    std::string marker = "o ";
    std::size_t pos = out.rfind(marker);
    if (pos == std::string::npos) {
        throw std::runtime_error("cannot derive perspective key from observation key: " + key);
    }
    out.replace(pos, marker.size(), "f ");
    return out;
}

const StateSequence &remember_named_perspective(
    EvalContext &context,
    const std::string &key,
    const StateSequence &sequence) {
    auto cached = context.named_perspectives.find(key);
    if (cached != context.named_perspectives.end()) {
        return cached->second;
    }
    auto [it, _inserted] = context.named_perspectives.emplace(key, sequence);
    return it->second;
}

Ternary evaluate_ep_query(
    const Task &task,
    const std::string &query,
    const Condition &varphi,
    const StateSequence &parent_sequence,
    const std::string &parent_key,
    EvalContext &context) {
    std::vector<std::string> tokens = split_ws(query);
    if (tokens.size() < 3) {
        throw std::runtime_error("EP query should contain at least three tokens: " + query);
    }
    Ternary expected = parse_ternary(tokens[0]);
    const std::string &mode = tokens[1];
    std::string agent = strip_agent_brackets(tokens[2]);
    std::string rest = join_tokens(tokens, 3);

    const StateSequence &observations = make_observation_sequence(task, parent_sequence, agent, context);
    const std::string os_key = observation_key(parent_key, agent);
    remember_named_perspective(context, os_key, observations);
    Ternary actual = Ternary::Unknown;

    if (mode == "k") {
        actual = rest.empty()
            ? evaluate_condition(task, observations, varphi, context)
            : evaluate_ep_query(task, rest, varphi, observations, os_key, context);
    } else if (mode == "s") {
        if (rest.empty()) {
            if (varphi.kind == ConditionKind::Ontic) {
                actual = bool_to_ternary(observations.back()[varphi.var] != UNSEEN_VALUE);
            } else {
                actual = bool_to_ternary(evaluate_condition(task, observations, varphi, context) != Ternary::Unknown);
            }
        } else {
            actual = bool_to_ternary(evaluate_ep_query(task, rest, varphi, observations, os_key, context) != Ternary::Unknown);
        }
    } else if (mode == "b") {
        const StateSequence &perspective = make_perspective_sequence(task, observations, parent_sequence, context);
        const std::string ps_key = perspective_key_from_observation_key(os_key);
        remember_named_perspective(context, ps_key, perspective);
        actual = rest.empty()
            ? evaluate_condition(task, perspective, varphi, context)
            : evaluate_ep_query(task, rest, varphi, perspective, ps_key, context);
    } else {
        throw std::runtime_error("C++ epistemic evaluator currently supports individual k/s/b queries, got: " + mode);
    }

    return compare_ternary(expected, actual);
}

int evaluate_jp_query(
    const Task &task,
    const std::string &query,
    int variable,
    const StateSequence &parent_sequence,
    const std::string &parent_key,
    EvalContext &context) {
    std::vector<std::string> tokens = split_ws(query);
    if (tokens.size() < 2) {
        throw std::runtime_error("JP query should contain at least two tokens: " + query);
    }
    const std::string &mode = tokens[0];
    std::string agent = strip_agent_brackets(tokens[1]);
    std::string rest = join_tokens(tokens, 2);

    const StateSequence &observations = make_observation_sequence(task, parent_sequence, agent, context);
    const std::string os_key = observation_key(parent_key, agent);
    remember_named_perspective(context, os_key, observations);
    if (mode == "k" || mode == "s") {
        return rest.empty()
            ? observations.back()[variable]
            : evaluate_jp_query(task, rest, variable, observations, os_key, context);
    }
    if (mode == "b") {
        const StateSequence &perspective = make_perspective_sequence(task, observations, parent_sequence, context);
        const std::string ps_key = perspective_key_from_observation_key(os_key);
        remember_named_perspective(context, ps_key, perspective);
        return rest.empty()
            ? perspective.back()[variable]
            : evaluate_jp_query(task, rest, variable, perspective, ps_key, context);
    }
    throw std::runtime_error("C++ JP evaluator currently supports individual k/s/b queries, got: " + mode);
}

}  // namespace

Ternary evaluate_ep_formula(
    const Task &task,
    const StateSequence &state_sequence,
    const EpFormula &formula,
    EvalContext &context) {
    if (formula.kind == FormulaKind::Ep) {
        if (!formula.varphi) {
            throw std::runtime_error("EP formula is missing varphi");
        }
        return evaluate_ep_query(task, formula.query, *formula.varphi, state_sequence, "", context);
    }
    throw std::runtime_error("JP formulas are not implemented in the C++ evaluator yet");
}

int evaluate_jp_formula(
    const Task &task,
    const StateSequence &state_sequence,
    const EpFormula &formula,
    EvalContext &context) {
    if (formula.kind != FormulaKind::Jp) {
        throw std::runtime_error("expected a JP formula");
    }
    return evaluate_jp_query(task, formula.query, formula.variable, state_sequence, "", context);
}

Ternary evaluate_condition(
    const Task &task,
    const StateSequence &state_sequence,
    const Condition &condition,
    EvalContext &context) {
    if (state_sequence.empty()) {
        throw std::runtime_error("cannot evaluate condition on an empty state sequence");
    }
    if (condition.kind == ConditionKind::Ontic) {
        return evaluate_ontic_condition(task, state_sequence.back(), condition);
    }
    if (!condition.epistemic) {
        throw std::runtime_error("epistemic condition is missing formula");
    }
    if (condition.epistemic->kind == FormulaKind::Jp) {
        int lhs = evaluate_jp_formula(task, state_sequence, *condition.epistemic, context);
        int rhs = condition.target_is_var ? state_sequence.back()[condition.target_var] : condition.value;
        return compare_encoded_values(task.variables[condition.epistemic->variable], lhs, rhs, condition.op);
    }
    Ternary actual = evaluate_ep_formula(task, state_sequence, *condition.epistemic, context);
    switch (condition.op) {
        case Op::Equal: return bool_to_ternary(actual == condition.target_ternary);
        case Op::NotEqual: return bool_to_ternary(actual != condition.target_ternary);
        default:
            throw std::runtime_error("epistemic conditions only support equal/not_equal comparisons");
    }
}

bool is_condition_true(
    const Task &task,
    const StateSequence &state_sequence,
    const Condition &condition,
    EvalContext &context) {
    return evaluate_condition(task, state_sequence, condition, context) == Ternary::True;
}
