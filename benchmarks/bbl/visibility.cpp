#include "jpm/visibility.hpp"

#include <algorithm>
#include <cmath>
#include <stdexcept>
#include <string>
#include <unordered_map>

namespace {

constexpr double DEFAULT_VIEW_ANGLE = 89.0;

double direction_degrees(const std::string &dir) {
    static const std::unordered_map<std::string, double> directions = {
        {"n", 90.0}, {"ne", 45.0}, {"e", 0.0}, {"se", -45.0},
        {"s", -90.0}, {"sw", -135.0}, {"w", 180.0}, {"nw", 135.0},
    };
    auto it = directions.find(dir);
    if (it == directions.end()) {
        throw std::runtime_error("unknown bbl direction: " + dir);
    }
    return it->second;
}

bool read_double(
    const Task &task,
    const std::vector<int> &state,
    const std::string &name,
    double &out) {
    int var_id = maybe_lookup_var(task, name);
    if (var_id < 0) {
        return false;
    }
    std::string value = known_value_string(task, state, var_id);
    if (value.empty()) {
        return false;
    }
    out = std::stod(value);
    return true;
}

bool visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var) {
    if (var.arguments.size() != 1) {
        throw std::runtime_error("bbl visibility expects exactly one target argument");
    }

    const std::string &target = var.arguments[0];
    double target_x = 0.0;
    double target_y = 0.0;
    double agent_x = 0.0;
    double agent_y = 0.0;
    if (!read_double(task, state, "x " + target, target_x) ||
        !read_double(task, state, "y " + target, target_y) ||
        !read_double(task, state, "x " + agent, agent_x) ||
        !read_double(task, state, "y " + agent, agent_y)) {
        return false;
    }

    if (target_x == agent_x && target_y == agent_y) {
        return true;
    }

    int dir_id = maybe_lookup_var(task, "dir " + agent);
    if (dir_id < 0) {
        return false;
    }
    std::string dir = known_value_string(task, state, dir_id);
    if (dir.empty()) {
        return false;
    }

    double vx = target_y - agent_y;
    double vy = target_x - agent_x;
    double norm = std::sqrt(vx * vx + vy * vy);
    if (norm == 0.0) {
        return true;
    }
    vx /= norm;
    vy /= norm;

    double radians = direction_degrees(dir) * M_PI / 180.0;
    double dx = std::cos(radians);
    double dy = std::sin(radians);
    double cosine = std::clamp(vx * dx + vy * dy, -1.0, 1.0);
    double delta = std::acos(cosine) * 180.0 / M_PI;
    return delta <= DEFAULT_VIEW_ANGLE / 2.0;
}

const VisibilityModelRegistration registration("bbl", visible);

}  // namespace
