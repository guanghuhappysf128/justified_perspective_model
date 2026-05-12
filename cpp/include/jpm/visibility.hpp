#pragma once

#include "jpm/task.hpp"

#include <string>
#include <vector>

inline constexpr const char *ALL_VISIBLE_MODEL = "all_visible";

using VisibilityEvaluator = bool (*)(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    const Variable &var);

class VisibilityModelRegistration {
public:
    VisibilityModelRegistration(const std::string &model, VisibilityEvaluator evaluator);
};

std::string detect_visibility_model_name(const Task &task);

bool is_visible(
    const Task &task,
    const std::vector<int> &state,
    const std::string &agent,
    int var_id);

std::string known_value_string(const Task &task, const std::vector<int> &state, int var_id);

bool state_value_is(
    const Task &task,
    const std::vector<int> &state,
    const std::string &name,
    const std::string &expected);

bool same_value_string(
    const Task &task,
    const std::vector<int> &state,
    const std::string &left,
    const std::string &right);
