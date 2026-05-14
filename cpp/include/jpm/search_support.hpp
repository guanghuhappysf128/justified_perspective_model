#pragma once

#include "jpm/evaluator.hpp"
#include "jpm/task.hpp"

#include <string>
#include <unordered_set>
#include <vector>

struct SearchStats {
    int expanded = 0;
    int generated = 1;
    int pruned_by_unknown = 0;
    int pruned_by_visited = 0;
    int goal_checked = 0;

    int pruned() const {
        return pruned_by_unknown + pruned_by_visited;
    }
};

struct GoalEvaluation {
    int remaining = 0;
    std::vector<bool> satisfied;
};

struct SearchNode {
    std::vector<int> state;
    EvalContext context;
    int remaining_goal = 0;
    int parent = -1;
    int action = -1;
    int g = 0;
};

StateSequence reconstruct_state_sequence(const std::vector<SearchNode> &nodes, int node_id);

GoalEvaluation evaluate_goals(
    const Task &task,
    const StateSequence &state_sequence,
    EvalContext &context);

std::vector<bool> unknown_sensitive_goals(const Task &task);

bool passes_unknown_pruning(
    const GoalEvaluation &goals,
    const std::vector<bool> &unknown_sensitive);

std::string duplicate_key(
    const std::vector<int> &global_state,
    const EvalContext &context);

std::vector<std::string> extract_plan(
    const std::vector<SearchNode> &nodes,
    const Task &task,
    int goal_id);

std::string json_escape(const std::string &input);

std::unordered_set<std::string> extract_goal_agents(const Task &task);

std::vector<int> ordered_action_ids(
    const Task &task,
    const std::vector<int> &action_ids,
    const std::unordered_set<std::string> &goal_agents);

std::string novelty_signature(const GoalEvaluation &goals);

std::vector<std::string> novelty_state_items(
    const Task &task,
    const std::vector<int> &state);