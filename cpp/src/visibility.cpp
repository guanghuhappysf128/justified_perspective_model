#include "jpm/visibility.hpp"

#include <stdexcept>
#include <unordered_map>

namespace {

std::unordered_map<std::string, VisibilityEvaluator> &visibility_registry() {
    static std::unordered_map<std::string, VisibilityEvaluator> registry;
    return registry;
}

}  // namespace

VisibilityModelRegistration::VisibilityModelRegistration(
    const std::string &model,
    VisibilityEvaluator evaluator) {
    visibility_registry()[model] = evaluator;
}

std::string known_value_string(const Task &task, const std::vector<int> &state, int var_id) {
    if (var_id < 0 || var_id >= static_cast<int>(task.variables.size())) {
        return "";
    }
    int value = state[var_id];
    if (value < 0) {
        return "";
    }
    return task.variables[var_id].values[value];
}

bool state_value_is(
    const Task &task,
    const std::vector<int> &state,
    const std::string &name,
    const std::string &expected) {
    int var_id = maybe_lookup_var(task, name);
    return var_id >= 0 && known_value_string(task, state, var_id) == expected;
}

bool same_value_string(
    const Task &task,
    const std::vector<int> &state,
    const std::string &left,
    const std::string &right) {
    int left_id = maybe_lookup_var(task, left);
    int right_id = maybe_lookup_var(task, right);
    return left_id >= 0 && right_id >= 0 &&
           known_value_string(task, state, left_id) == known_value_string(task, state, right_id);
}

std::string detect_visibility_model_name(const Task &task) {
    (void)task;
    return ALL_VISIBLE_MODEL;
}

bool is_visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    int var_id) {
    const Variable &var = task.variables[var_id];
    if (task.visibility_model == ALL_VISIBLE_MODEL) {
        return true;
    }
    auto it = visibility_registry().find(task.visibility_model);
    if (it != visibility_registry().end()) {
        return it->second(task, state, agent, var);
    }
    throw std::runtime_error("unknown visibility model: " + task.visibility_model);
}
