#include "jpm/visibility.hpp"

#include <stdexcept>

namespace {

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "peeking") {
        return true;
    }
    if (var.schema == "coin") {
        return state_value_is(task, state, "peeking " + agent, "t");
    }
    throw std::runtime_error("native_coin visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("native_coin", visible);

}  // namespace
