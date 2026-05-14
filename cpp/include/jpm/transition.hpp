#pragma once

#include "jpm/evaluator.hpp"
#include "jpm/task.hpp"

#include <optional>
#include <vector>

bool is_applicable(
    const Task &task,
    const StateSequence &state_sequence,
    const Action &action,
    EvalContext &context);

std::optional<std::vector<int>> successor(
    Task &task,
    const StateSequence &state_sequence,
    const Action &action,
    EvalContext &context);
