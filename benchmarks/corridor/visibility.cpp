#include "jpm/visibility.hpp"

#include <cmath>
#include <stdexcept>

namespace {

int to_int(const Task &task, const std::vector<int> &state, const std::string &name) {
    int var_id = maybe_lookup_var(task, name);
    if (var_id < 0) {
        throw std::runtime_error("missing corridor variable: " + name);
    }
    return std::stoi(known_value_string(task, state, var_id));
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "agent_loc" || var.schema == "movable" ||
        var.schema == "secret_loc" || var.schema == "sensed" ||
        var.schema == "shared_loc") {
        return true;
    }
    if (var.schema == "secret_truth_value" || var.schema == "secret_lying_value") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error(var.schema + " visibility expects exactly one argument");
        }
        return state_value_is(task, state, "movable " + agent, "1") &&
               state_value_is(task, state, "sensed " + var.arguments[0], "1");
    }
    if (var.schema == "shared_value") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("shared_value visibility expects exactly one argument");
        }
        int shared_loc = to_int(task, state, "shared_loc " + var.arguments[0]);
        int agent_loc = to_int(task, state, "agent_loc " + agent);
        return std::abs(shared_loc - agent_loc) <= 1;
    }
    throw std::runtime_error("corridor visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("corridor", visible);

}  // namespace
