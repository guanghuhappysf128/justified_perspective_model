#include "jpm/visibility.hpp"

#include <array>
#include <stdexcept>
#include <string>

namespace {

constexpr std::array<const char *, 3> ROOMS = {"room1", "room2", "room3"};

std::string known_value(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const std::string &box,
    const std::string &room) {
    int var_id = maybe_lookup_var(task, "known " + agent + " " + box + " " + room);
    if (var_id < 0) {
        return "unknown";
    }
    std::string value = known_value_string(task, state, var_id);
    if (value == "yes" || value == "no" || value == "unknown") {
        return value;
    }
    return "unknown";
}

bool is_communicated(
    const Task &task,
    const std::vector<int> &state,
    const std::string &observer,
    const std::string &subject,
    const std::string &box) {
    for (const char *room : ROOMS) {
        if (state_value_is(
                task,
                state,
                "communicated " + observer + " " + subject + " " + box + " " + room,
                "yes")) {
            return true;
        }
    }
    return false;
}

bool can_infer_actual(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const std::string &box,
    const std::string &room) {
    bool requested_is_known = known_value(task, state, agent, box, room) != "unknown";
    if (requested_is_known) {
        return true;
    }

    int no_rooms = 0;
    bool has_yes_room = false;
    for (const char *candidate_room : ROOMS) {
        std::string value = known_value(task, state, agent, box, candidate_room);
        if (value == "yes") {
            has_yes_room = true;
        } else if (value == "no") {
            ++no_rooms;
        }
    }
    if (has_yes_room) {
        return known_value(task, state, agent, box, room) == "yes";
    }
    if (no_rooms == static_cast<int>(ROOMS.size()) - 1) {
        for (const char *candidate_room : ROOMS) {
            if (known_value(task, state, agent, box, candidate_room) != "no") {
                return room == candidate_room;
            }
        }
    }
    return false;
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.schema == "agent_loc") {
        return true;
    }
    if (var.schema == "actual") {
        if (var.arguments.size() != 2) {
            throw std::runtime_error("actual visibility expects exactly two arguments");
        }
        return can_infer_actual(task, state, agent, var.arguments[0], var.arguments[1]);
    }
    if (var.schema == "known") {
        if (var.arguments.size() != 3) {
            throw std::runtime_error("known visibility expects exactly three arguments");
        }
        const std::string &subject = var.arguments[0];
        const std::string &box = var.arguments[1];
        return agent == subject || is_communicated(task, state, agent, subject, box);
    }
    if (var.schema == "communicated") {
        if (var.arguments.size() != 4) {
            throw std::runtime_error("communicated visibility expects exactly four arguments");
        }
        return agent == var.arguments[0] || agent == var.arguments[1];
    }
    return true;
}

const VisibilityModelRegistration registration("collaboration_through_communication", visible);

}  // namespace
