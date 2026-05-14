#include "jpm/task.hpp"

#include "jpm/json.hpp"
#include "jpm/visibility.hpp"

#include <fstream>
#include <iterator>
#include <memory>
#include <stdexcept>

namespace {

std::string read_file(const std::string &path) {
    std::ifstream in(path);
    if (!in) {
        throw std::runtime_error("could not open " + path);
    }
    return std::string(std::istreambuf_iterator<char>(in), std::istreambuf_iterator<char>());
}
std::string json_string_value(const json::Value &value) {
    if (value.is_string()) {
        return value.as_string();
    }
    if (value.is_bool()) {
        return value.as_bool() ? "true" : "false";
    }
    if (value.is_number()) {
        double number = value.as_number();
        long long as_int = static_cast<long long>(number);
        if (static_cast<double>(as_int) == number) {
            return std::to_string(as_int);
        }
        return std::to_string(number);
    }
    throw std::runtime_error("JSON value cannot be converted to a scalar string");
}

EpFormula parse_ep_formula(const Task &task, const json::Object &object);

Condition parse_condition(const Task &task, const json::Object &object) {
    const std::string kind = json::at(object, "kind").as_string();
    Condition condition;
    if (kind == "ep" || kind == "jp") {
        condition.kind = ConditionKind::Epistemic;
        condition.op = parse_op(json::at(object, "op").as_string());
        condition.epistemic = std::make_shared<EpFormula>(
            parse_ep_formula(task, json::at(object, "formula").as_object()));
        if (condition.epistemic->kind == FormulaKind::Ep) {
            condition.target_ternary = parse_ternary(json_string_value(json::at(object, "value")));
        } else {
            const auto &var = task.variables[condition.epistemic->variable];
            if (auto target_var = json::maybe_at(object, "target_var")) {
                condition.target_is_var = true;
                condition.target_var = lookup_var(task, (*target_var)->as_string());
            } else {
                condition.value = parse_special_or_encoded_value(var, json_string_value(json::at(object, "value")));
            }
        }
        return condition;
    }
    if (kind != "ontic") {
        throw std::runtime_error("unknown condition kind: " + kind);
    }
    condition.kind = ConditionKind::Ontic;
    condition.op = parse_op(json::at(object, "op").as_string());
    condition.var = lookup_var(task, json::at(object, "var").as_string());
    if (auto target_var = json::maybe_at(object, "target_var")) {
        condition.target_is_var = true;
        condition.target_var = lookup_var(task, (*target_var)->as_string());
    } else {
        const auto &var = task.variables[condition.var];
        condition.value = encode_value(var, json_string_value(json::at(object, "value")));
    }
    return condition;
}

EpFormula parse_ep_formula(const Task &task, const json::Object &object) {
    EpFormula formula;
    const std::string kind = json::at(object, "kind").as_string();
    if (kind == "ep") {
        formula.kind = FormulaKind::Ep;
        formula.query = json::at(object, "query").as_string();
        formula.varphi = std::make_shared<Condition>(
            parse_condition(task, json::at(object, "varphi").as_object()));
        return formula;
    }
    if (kind == "jp") {
        formula.kind = FormulaKind::Jp;
        formula.query = json::at(object, "query").as_string();
        formula.variable = lookup_var(task, json::at(object, "variable").as_string());
        return formula;
    }
    throw std::runtime_error("unknown epistemic formula kind: " + kind);
}

}  // namespace

Task load_task(const std::string &path) {
    json::Value root_value = json::Parser(read_file(path)).parse();
    const auto &root = root_value.as_object();
    Task task;
    task.domain = json::at(root, "domain").as_string();
    task.problem = json::at(root, "problem").as_string();

    const auto &variables = json::ptr_at(root, "variables")->as_array();
    for (const auto &var_value : variables) {
        const auto &var_object = var_value.as_object();
        Variable var;
        var.name = json::at(var_object, "name").as_string();
        if (auto schema = json::maybe_at(var_object, "schema")) {
            var.schema = (*schema)->as_string();
        } else {
            var.schema = var.name;
        }
        if (auto arguments = json::maybe_at(var_object, "arguments")) {
            for (const auto &argument : (*arguments)->as_array()) {
                var.arguments.push_back(argument.as_string());
            }
        }
        const auto &domain = json::ptr_at(var_object, "domain")->as_object();
        var.type = parse_var_type(json::at(domain, "type").as_string());
        if (var.type == VarType::Integer) {
            const auto &range = json::ptr_at(domain, "range")->as_array();
            int lo = static_cast<int>(range[0].as_number());
            int hi = static_cast<int>(range[1].as_number());
            var.has_integer_range = true;
            var.integer_min = lo;
            var.integer_max = hi;
            for (int value = lo; value <= hi; ++value) {
                var.values.push_back(std::to_string(value));
            }
        } else if (auto values = json::maybe_at(domain, "values")) {
            for (const auto &item : (*values)->as_array()) {
                var.values.push_back(json_string_value(item));
            }
        }
        if (var.values.empty() && var.type == VarType::String) {
            var.values.push_back("");
        }
        if (var.values.empty()) {
            throw std::runtime_error("variable has empty finite domain: " + var.name);
        }
        for (int i = 0; i < static_cast<int>(var.values.size()); ++i) {
            var.value_to_id[var.values[i]] = i;
        }
        int var_id = static_cast<int>(task.variables.size());
        task.var_to_id[var.name] = var_id;
        task.variables.push_back(std::move(var));
    }
    if (auto entities_value = json::maybe_at(root, "entities")) {
        for (const auto &[name, entity_value] : (*entities_value)->as_object()) {
            const auto &entity = entity_value.as_object();
            if (json::at(entity, "kind").as_string() == "agent") {
                task.agent_names.insert(name);
            }
        }
    }
    bool has_visibility_metadata = false;
    if (auto metadata_value = json::maybe_at(root, "metadata")) {
        const auto &metadata = (*metadata_value)->as_object();
        if (auto visibility_model = json::maybe_at(metadata, "visibility_model")) {
            task.visibility_model = (*visibility_model)->as_string();
            has_visibility_metadata = true;
        }
    }
    if (!has_visibility_metadata) {
        task.visibility_model = detect_visibility_model_name(task);
    }

    task.initial_state.assign(task.variables.size(), 0);
    for (const auto &[name, value] : json::ptr_at(root, "initial_state")->as_object()) {
        int var_id = lookup_var(task, name);
        Variable &var = task.variables[var_id];
        const std::string literal = json_string_value(value);
        if (var.type == VarType::Integer || var.type == VarType::String) {
            task.initial_state[var_id] = ensure_value(var, literal);
        } else {
            task.initial_state[var_id] = encode_value(var, literal);
        }
    }

    for (const auto &goal_value : json::ptr_at(root, "goals")->as_array()) {
        const auto &goal = goal_value.as_object();
        Condition parsed = parse_condition(task, goal);
        if (condition_has_epistemic(parsed)) {
            task.has_epistemic_formulas = true;
        }
        task.goals.push_back(std::move(parsed));
    }

    for (const auto &action_value : json::ptr_at(root, "actions")->as_array()) {
        const auto &action_object = action_value.as_object();
        Action action;
        action.name = json::at(action_object, "name").as_string();
        for (const auto &pre_value : json::ptr_at(action_object, "preconditions")->as_array()) {
            const auto &pre = pre_value.as_object();
            Condition parsed = parse_condition(task, pre);
            if (condition_has_epistemic(parsed)) {
                task.has_epistemic_formulas = true;
            }
            action.preconditions.push_back(std::move(parsed));
        }
        for (const auto &effect_value : json::ptr_at(action_object, "effects")->as_array()) {
            const auto &effect_object = effect_value.as_object();
            Effect effect;
            effect.effect = parse_effect_kind(json::at(effect_object, "effect").as_string());
            effect.update = parse_update_kind(json::at(effect_object, "update").as_string());
            effect.target = lookup_var(task, json::at(effect_object, "target").as_string());
            if (effect.update == UpdateKind::Constant) {
                effect.literal_value = json_string_value(json::at(effect_object, "value"));
                if (effect.effect == EffectKind::Assign) {
                    if (task.variables[effect.target].type == VarType::String) {
                        effect.value = ensure_value(task.variables[effect.target], effect.literal_value);
                    } else {
                        effect.value = encode_value(task.variables[effect.target], effect.literal_value);
                    }
                }
            } else if (effect.update == UpdateKind::Ontic) {
                effect.source_var = lookup_var(task, json::at(effect_object, "source_var").as_string());
            } else {
                effect.epistemic = std::make_shared<EpFormula>(
                    parse_ep_formula(task, json::at(effect_object, "formula").as_object()));
                task.has_epistemic_formulas = true;
            }
            action.effects.push_back(effect);
        }
        task.actions.push_back(std::move(action));
    }

    return task;
}
