#include "jpm/visibility.hpp"

#include <stdexcept>

namespace {

int first_num_of_question(const Task &task, const std::vector<int> &state) {
    for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
        if (task.variables[var_id].schema == "num_of_question") {
            return std::stoi(known_value_string(task, state, var_id));
        }
    }
    throw std::runtime_error("num_of_question not found");
}

int visible_other_muddy_count(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent) {
    int count = 0;
    for (int var_id = 0; var_id < static_cast<int>(task.variables.size()); ++var_id) {
        const Variable &candidate = task.variables[var_id];
        if (candidate.schema == "muddy" && candidate.arguments.size() == 1 &&
            candidate.arguments[0] != agent &&
            known_value_string(task, state, var_id) == "t") {
            ++count;
        }
    }
    return count;
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "shouted" || var.schema == "num_of_question") {
        return true;
    }
    if (var.schema == "muddy") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("muddy visibility expects exactly one argument");
        }
        const std::string &target = var.arguments[0];
        if (target != agent) {
            return true;
        }
        int num_of_question = first_num_of_question(task, state);
        if (visible_other_muddy_count(task, state, agent) == num_of_question - 1) {
            return true;
        }
        return state_value_is(task, state, "shouted", "t");
    }
    throw std::runtime_error("converted_muddy_children visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("converted_muddy_children", visible);

}  // namespace
