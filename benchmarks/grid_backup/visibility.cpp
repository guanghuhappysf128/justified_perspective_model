#include "jpm/visibility.hpp"

#include <stdexcept>

namespace {

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "movable" || var.schema == "sharable" ||
        var.schema == "receivable" || var.schema == "searched" ||
        var.schema == "room_id" || var.schema == "connected" ||
        var.schema == "agent_loc") {
        return true;
    }
    if (var.schema == "shared") {
        return state_value_is(task, state, "receivable " + agent, "1");
    }
    if (var.schema == "survivor_loc") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("survivor_loc visibility expects exactly one argument");
        }
        return state_value_is(task, state, "shared " + var.arguments[0], "1") &&
               state_value_is(task, state, "receivable " + agent, "1");
    }
    throw std::runtime_error("grid_backup visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("grid_backup", visible);

}  // namespace
