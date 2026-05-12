#include "jpm/visibility.hpp"

#include <cmath>
#include <stdexcept>
#include <string>

namespace {

int to_int_or_default(
    const Task &task,
    const std::vector<int> &state,
    const std::string &name,
    int default_value) {
    int var_id = maybe_lookup_var(task, name);
    if (var_id < 0) {
        return default_value;
    }
    std::string value = known_value_string(task, state, var_id);
    if (value.empty()) {
        return default_value;
    }
    try {
        return std::stoi(value);
    } catch (const std::exception &) {
        return default_value;
    }
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "agent_loc") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("agent_loc visibility expects exactly one argument");
        }
        return same_value_string(task, state, "agent_loc " + agent, var.name);
    }
    if (var.schema == "movable" || var.schema == "secret_loc" || var.schema == "sensed") {
        return true;
    }
    if (var.schema == "secret_truth_value" || var.schema == "secret_lying_value") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error(var.schema + " visibility expects exactly one argument");
        }
        return state_value_is(task, state, "movable " + agent, "1") &&
               state_value_is(task, state, "sensed " + var.arguments[0], "1");
    }
    if (var.schema == "shared_loc") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("shared_loc visibility expects exactly one argument");
        }
        if (known_value_string(task, state, maybe_lookup_var(task, var.name)) == "-1") {
            return true;
        }
        int shared_loc = to_int_or_default(task, state, var.name, -1);
        int agent_loc = to_int_or_default(task, state, "agent_loc " + agent, -3);
        return std::abs(shared_loc - agent_loc) <= 1;
    }
    if (var.schema == "shared_value") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("shared_value visibility expects exactly one argument");
        }
        int shared_loc = to_int_or_default(task, state, "shared_loc " + var.arguments[0], -1);
        int agent_loc = to_int_or_default(task, state, "agent_loc " + agent, -3);
        return std::abs(shared_loc - agent_loc) <= 1;
    }
    throw std::runtime_error("new_corridor visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("new_corridor", visible);

}  // namespace
