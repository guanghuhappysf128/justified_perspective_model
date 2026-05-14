#pragma once

#include "jpm/task.hpp"

#include <string>
#include <vector>

struct SearchOptions {
    std::string algorithm = "greedy";
    int timeout_seconds = 30;
    int max_expanded = 1000000;
};

void print_result(
    bool solvable,
    const std::string &running,
    const std::vector<std::string> &plan,
    int expanded,
    int generated,
    int pruned = 0,
    int pruned_by_unknown = 0,
    int pruned_by_visited = 0,
    int goal_checked = 0,
    const std::string &search = "",
    const std::string &message = "");

int solve(Task &task, const SearchOptions &options);
int solve(Task &task, int timeout_seconds, int max_expanded);
