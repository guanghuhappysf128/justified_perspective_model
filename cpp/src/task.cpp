#include "jpm/task.hpp"

#include <stdexcept>

VarType parse_var_type(const std::string &type) {
    if (type == "enumerate") return VarType::Enumerate;
    if (type == "integer") return VarType::Integer;
    if (type == "boolean") return VarType::Boolean;
    if (type == "string") return VarType::String;
    if (type == "float") return VarType::Float;
    return VarType::Unknown;
}

Op parse_op(const std::string &op) {
    if (op == "equal") return Op::Equal;
    if (op == "not_equal") return Op::NotEqual;
    if (op == "greater") return Op::Greater;
    if (op == "greater_equal") return Op::GreaterEqual;
    if (op == "less") return Op::Less;
    if (op == "less_equal") return Op::LessEqual;
    throw std::runtime_error("unknown condition op: " + op);
}

EffectKind parse_effect_kind(const std::string &effect) {
    if (effect == "assign") return EffectKind::Assign;
    if (effect == "increase") return EffectKind::Increase;
    if (effect == "decrease") return EffectKind::Decrease;
    throw std::runtime_error("unknown effect kind: " + effect);
}

UpdateKind parse_update_kind(const std::string &update) {
    if (update == "constant") return UpdateKind::Constant;
    if (update == "ontic") return UpdateKind::Ontic;
    if (update == "epsitemic" || update == "epistemic") return UpdateKind::Epistemic;
    throw std::runtime_error("unknown update kind: " + update);
}

Ternary parse_ternary(const std::string &value) {
    if (value == "+" || value == "true" || value == "ep.true") return Ternary::True;
    if (value == "!" || value == "false" || value == "ep.false") return Ternary::False;
    if (value == "$" || value == "unknown" || value == "ep.unknown") return Ternary::Unknown;
    throw std::runtime_error("unknown ternary value: " + value);
}
int lookup_var(const Task &task, const std::string &name) {
    auto it = task.var_to_id.find(name);
    if (it == task.var_to_id.end()) {
        throw std::runtime_error("unknown variable: " + name);
    }
    return it->second;
}

int encode_value(const Variable &var, const std::string &value) {
    auto it = var.value_to_id.find(value);
    if (it == var.value_to_id.end()) {
        throw std::runtime_error("value '" + value + "' is not in domain for variable " + var.name);
    }
    return it->second;
}

int ensure_value(Variable &var, const std::string &value) {
    auto it = var.value_to_id.find(value);
    if (it != var.value_to_id.end()) {
        return it->second;
    }
    int id = static_cast<int>(var.values.size());
    var.values.push_back(value);
    var.value_to_id[value] = id;
    return id;
}

int parse_special_or_encoded_value(const Variable &var, const std::string &value) {
    if (value == "havent_seen" || value == "jp.none") {
        return HAVENT_SEEN_VALUE;
    }
    if (value == "unseen") {
        return UNSEEN_VALUE;
    }
    return encode_value(var, value);
}

int maybe_lookup_var(const Task &task, const std::string &name) {
    auto it = task.var_to_id.find(name);
    if (it == task.var_to_id.end()) {
        return -1;
    }
    return it->second;
}

bool condition_has_epistemic(const Condition &condition) {
    if (condition.kind == ConditionKind::Epistemic) {
        return true;
    }
    return false;
}

Ternary bool_to_ternary(bool value) {
    return value ? Ternary::True : Ternary::False;
}

Ternary compare_ternary(Ternary expected, Ternary actual) {
    if (expected == actual) {
        return Ternary::True;
    }
    if (actual == Ternary::Unknown) {
        return Ternary::Unknown;
    }
    return Ternary::False;
}
Ternary compare_encoded_values(
    const Variable &var,
    int lhs,
    int rhs,
    Op op) {
    if (rhs == HAVENT_SEEN_VALUE) {
        if (op == Op::Equal) {
            return bool_to_ternary(lhs == HAVENT_SEEN_VALUE || lhs == UNSEEN_VALUE);
        }
        if (op == Op::NotEqual) {
            return bool_to_ternary(lhs != HAVENT_SEEN_VALUE && lhs != UNSEEN_VALUE);
        }
        throw std::runtime_error("jp.none comparisons only support equal/not_equal");
    }
    switch (op) {
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

bool integer_value_in_declared_range(const Variable &var, int value) {
    return !var.has_integer_range || (value >= var.integer_min && value <= var.integer_max);
}
