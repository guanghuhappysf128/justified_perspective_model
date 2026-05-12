#include "jpm/visibility.hpp"

#include <stdexcept>
#include <string>

namespace {

bool history_mentions(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const std::string &target) {
    int called_id = maybe_lookup_var(task, "called " + agent);
    if (called_id < 0) {
        return false;
    }
    std::string history = known_value_string(task, state, called_id);
    return history.find(target) != std::string::npos;
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.arguments.size() != 1) {
        throw std::runtime_error("gossip4 visibility expects exactly one target argument");
    }
    const std::string &target = var.arguments[0];
    if (var.schema == "called") {
        return target == agent || history_mentions(task, state, agent, target);
    }
    if (var.schema == "secret") {
        return target == agent || history_mentions(task, state, agent, target);
    }
    throw std::runtime_error("gossip4 visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("gossip4", visible);

}  // namespace
