#pragma once

#include "jpm/task.hpp"

#include <string>
#include <unordered_map>

struct EvalContext {
    std::unordered_map<std::string, StateSequence> observations;
    std::unordered_map<std::string, StateSequence> perspectives;
    std::unordered_map<std::string, StateSequence> named_perspectives;
};

Ternary evaluate_condition(
    const Task &task,
    const StateSequence &state_sequence,
    const Condition &condition,
    EvalContext &context);

bool is_condition_true(
    const Task &task,
    const StateSequence &state_sequence,
    const Condition &condition,
    EvalContext &context);

Ternary evaluate_ep_formula(
    const Task &task,
    const StateSequence &state_sequence,
    const EpFormula &formula,
    EvalContext &context);

int evaluate_jp_formula(
    const Task &task,
    const StateSequence &state_sequence,
    const EpFormula &formula,
    EvalContext &context);
