#include "jpm/visibility.hpp"

#include <stdexcept>

namespace {

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "agent_loc") {
        return true;
    }
    if (var.schema == "shared_loc") {
        if (state_value_is(task, state, var.name, "0")) {
            return true;
        }
        return same_value_string(task, state, var.name, "agent_loc " + agent);
    }
    if (var.schema == "own" || var.schema == "sharing") {
        return true;
    }
    if (var.schema == "secret_value" || var.schema == "secret_lyging_value") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error(var.schema + " visibility expects exactly one argument");
        }
        const std::string &secret = var.arguments[0];
        if (state_value_is(task, state, "own " + agent + " " + secret, "1")) {
            return true;
        }
        return same_value_string(task, state, "shared_loc " + secret, "agent_loc " + agent);
    }
    if (var.schema == "shared_value") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("shared_value visibility expects exactly one argument");
        }
        const std::string &secret = var.arguments[0];
        return same_value_string(task, state, "shared_loc " + secret, "agent_loc " + agent);
    }
    throw std::runtime_error("grapevine visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("grapevine", visible);

}  // namespace
