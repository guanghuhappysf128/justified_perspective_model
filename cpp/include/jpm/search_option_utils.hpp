#pragma once

#include "jpm/json.hpp"

#include <optional>
#include <stdexcept>
#include <string>

inline bool read_bool_option(
    const json::Object &options,
    const std::string &name,
    bool default_value) {
    auto it = options.find(name);
    if (it == options.end()) {
        return default_value;
    }
    if (!it->second.is_bool()) {
        throw std::runtime_error("search option '" + name + "' must be boolean");
    }
    return it->second.as_bool();
}

inline int read_int_option(
    const json::Object &options,
    const std::string &name,
    int default_value,
    std::optional<int> minimum = std::nullopt) {
    auto it = options.find(name);
    if (it == options.end()) {
        if (minimum && default_value < *minimum) {
            throw std::runtime_error("default search option '" + name + "' is below the minimum");
        }
        return default_value;
    }
    if (!it->second.is_number()) {
        throw std::runtime_error("search option '" + name + "' must be numeric");
    }
    const int value = static_cast<int>(it->second.as_number());
    if (minimum && value < *minimum) {
        throw std::runtime_error(
            "search option '" + name + "' must be >= " + std::to_string(*minimum));
    }
    return value;
}

inline std::optional<int> read_optional_int_option(
    const json::Object &options,
    const std::string &name,
    std::optional<int> default_value,
    std::optional<int> minimum = std::nullopt) {
    auto it = options.find(name);
    if (it == options.end()) {
        if (default_value && minimum && *default_value < *minimum) {
            throw std::runtime_error("default search option '" + name + "' is below the minimum");
        }
        return default_value;
    }
    if (it->second.is_null()) {
        return std::nullopt;
    }
    if (!it->second.is_number()) {
        throw std::runtime_error("search option '" + name + "' must be numeric or null");
    }
    const int value = static_cast<int>(it->second.as_number());
    if (minimum && value < *minimum) {
        throw std::runtime_error(
            "search option '" + name + "' must be >= " + std::to_string(*minimum));
    }
    return value;
}