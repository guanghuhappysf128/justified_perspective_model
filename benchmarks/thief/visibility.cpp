#include "jpm/visibility.hpp"

#include <stdexcept>

namespace {

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "posture" || var.schema == "goal_achieved") {
        return true;
    }
    if (var.schema == "existing") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("existing visibility expects exactly one argument");
        }
        return var.arguments[0] == agent ||
               state_value_is(task, state, "posture " + agent, "peeking");
    }
    throw std::runtime_error("thief visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("thief", visible);

}  // namespace
