#include "jpm/visibility.hpp"

#include <stdexcept>
#include <string>

namespace {

bool starts_with(const std::string &text, const std::string &prefix) {
    return text.rfind(prefix, 0) == 0;
}

std::string event_actor(const std::string &event) {
    std::size_t pos = event.find('_');
    if (pos == std::string::npos || pos + 1 >= event.size()) {
        return "";
    }
    return event.substr(pos + 1);
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    int event_id = maybe_lookup_var(task, "event");
    const std::string event = event_id >= 0 ? known_value_string(task, state, event_id) : "";
    const std::string actor = event_actor(event);

    if (var.schema == "opened" || var.schema == "looking" || var.schema == "has_key") {
        return true;
    }

    if (var.schema == "announced" || var.schema == "peek_ready") {
        return false;
    }

    if (var.schema == "event") {
        if (event.empty() || event == "none") {
            return false;
        }
        if (starts_with(event, "peek_") || starts_with(event, "shout_")) {
            return agent == actor || state_value_is(task, state, "looking " + agent, "t");
        }
        return false;
    }

    if (var.schema == "tails") {
        if (event == "peek_" + agent && state_value_is(task, state, "peeked " + agent, "t")) {
            return true;
        }
        if (starts_with(event, "shout_") && !actor.empty() &&
            state_value_is(task, state, "peeked " + actor, "t") &&
            state_value_is(task, state, "looking " + agent, "t")) {
            return true;
        }
        return false;
    }

    if (var.schema == "peeked") {
        if (var.arguments.size() != 1) {
            throw std::runtime_error("peeked visibility expects exactly one argument");
        }
        const std::string &target = var.arguments[0];
        if (agent == target) {
            return true;
        }
        if ((event == "peek_" + target || event == "shout_" + target) &&
            state_value_is(task, state, "looking " + agent, "t")) {
            return true;
        }
        return false;
    }

    throw std::runtime_error("coin_in_box visibility does not know schema: " + var.schema);
}

const VisibilityModelRegistration registration("coin_in_box", visible);

}  // namespace
