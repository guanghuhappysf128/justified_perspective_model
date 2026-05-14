#include "jpm/transition.hpp"

#include <optional>
#include <string>
#include <vector>

namespace {

int apply_effect_value(Task &task, const std::vector<int> &state, int current, const Effect &effect) {
    Variable &var = task.variables[effect.target];
    if (effect.effect == EffectKind::Assign) {
        if (effect.update == UpdateKind::Constant) {
            return effect.value;
        }
        if (effect.update == UpdateKind::Ontic) {
            const Variable &source_var = task.variables[effect.source_var];
            const std::string &source_value = source_var.values[state[effect.source_var]];
            if (var.type == VarType::String || var.type == VarType::Integer) {
                return ensure_value(var, source_value);
            }
            return encode_value(var, source_value);
        }
        return -1;
    }

    std::string delta_value;
    if (effect.update == UpdateKind::Constant) {
        delta_value = effect.literal_value;
    } else if (effect.update == UpdateKind::Ontic) {
        const Variable &source_var = task.variables[effect.source_var];
        delta_value = source_var.values[state[effect.source_var]];
    } else {
        return -1;
    }

    if (var.type == VarType::Integer) {
        int current_int = std::stoi(var.values[current]);
        int delta = std::stoi(delta_value);
        int result = effect.effect == EffectKind::Increase ? current_int + delta : current_int - delta;
        if (!integer_value_in_declared_range(var, result)) {
            return -1;
        }
        return ensure_value(var, std::to_string(result));
    }

    if (var.type == VarType::Enumerate || var.type == VarType::Boolean) {
        int delta = std::stoi(delta_value);
        int size = static_cast<int>(var.values.size());
        if (effect.effect == EffectKind::Increase) {
            return (current + delta) % size;
        }
        return (current - delta + size * 16) % size;
    }

    if (var.type == VarType::String) {
        const std::string &current_string = var.values[current];
        if (effect.effect == EffectKind::Increase) {
            return ensure_value(var, current_string + delta_value);
        }
        if (current_string.size() >= delta_value.size() &&
            current_string.compare(current_string.size() - delta_value.size(), delta_value.size(), delta_value) == 0) {
            return ensure_value(var, current_string.substr(0, current_string.size() - delta_value.size()));
        }
        return -1;
    }

    return -1;
}

std::optional<int> encode_ternary_for_variable(const Variable &var, Ternary value) {
    std::vector<std::string> candidates;
    if (value == Ternary::True) {
        candidates = {"true", "t", "1"};
    } else if (value == Ternary::False) {
        candidates = {"false", "f", "0"};
    } else {
        candidates = {"unknown", "u"};
    }
    for (const std::string &candidate : candidates) {
        auto it = var.value_to_id.find(candidate);
        if (it != var.value_to_id.end()) {
            return it->second;
        }
    }
    return std::nullopt;
}

}  // namespace

bool is_applicable(
    const Task &task,
    const StateSequence &state_sequence,
    const Action &action,
    EvalContext &context) {
    if (action.has_unsupported_epistemic) {
        return false;
    }
    for (const Condition &condition : action.preconditions) {
        if (!is_condition_true(task, state_sequence, condition, context)) {
            return false;
        }
    }
    return true;
}

std::optional<std::vector<int>> successor(
    Task &task,
    const StateSequence &state_sequence,
    const Action &action,
    EvalContext &context) {
    const std::vector<int> &state = state_sequence.back();
    std::vector<int> next = state;
    std::vector<const Effect *> ontic_effects;
    std::vector<const Effect *> epistemic_effects;

    for (const Effect &effect : action.effects) {
        if (effect.update == UpdateKind::Constant) {
            int updated = apply_effect_value(task, next, next[effect.target], effect);
            if (updated < 0) {
                return std::nullopt;
            }
            next[effect.target] = updated;
        } else if (effect.update == UpdateKind::Ontic) {
            ontic_effects.push_back(&effect);
        } else if (effect.epistemic) {
            epistemic_effects.push_back(&effect);
        } else {
            return std::nullopt;
        }
    }

    for (const Effect *effect : ontic_effects) {
        int updated = apply_effect_value(task, next, next[effect->target], *effect);
        if (updated < 0) {
            return std::nullopt;
        }
        next[effect->target] = updated;
    }

    if (!epistemic_effects.empty()) {
        for (const Effect *effect : epistemic_effects) {
            next[effect->target] = UNSEEN_VALUE;
        }
        StateSequence epistemic_sequence = state_sequence;
        epistemic_sequence.push_back(next);
        for (const Effect *effect : epistemic_effects) {
            if (effect->effect != EffectKind::Assign) {
                return std::nullopt;
            }
            Variable &target_var = task.variables[effect->target];
            if (effect->epistemic->kind == FormulaKind::Jp) {
                int source = evaluate_jp_formula(task, epistemic_sequence, *effect->epistemic, context);
                if (source < 0) {
                    return std::nullopt;
                }
                const Variable &source_var = task.variables[effect->epistemic->variable];
                if (target_var.type == VarType::String || target_var.type == VarType::Integer) {
                    next[effect->target] = ensure_value(target_var, source_var.values[source]);
                } else {
                    next[effect->target] = encode_value(target_var, source_var.values[source]);
                }
            } else {
                Ternary result = evaluate_ep_formula(task, epistemic_sequence, *effect->epistemic, context);
                std::optional<int> encoded = encode_ternary_for_variable(target_var, result);
                if (!encoded) {
                    return std::nullopt;
                }
                next[effect->target] = *encoded;
            }
        }
    }

    return next;
}
