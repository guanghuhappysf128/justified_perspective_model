#pragma once

#include "jpm/json.hpp"
#include "jpm/task.hpp"

#include <string>
#include <vector>

struct SearchResult {
    bool solvable = false;
    std::string running = "FAILED";
    std::vector<std::string> plan;
    int path_length = -1;
    int expanded = 0;
    int generated = 1;
    int pruned = 0;
    int pruned_by_unknown = 0;
    int pruned_by_visited = 0;
    int goal_checked = 0;
    std::string search;
    std::string message;
};

struct SearchOptions {
    std::string algorithm = "greedy";
    json::Object search_options;
    int timeout_seconds = 30;
    int max_expanded = 1000000;
};

void print_result(const SearchResult &result);

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
    const std::string &message = "",
    int path_length = -1);

int solve(Task &task, const SearchOptions &options);
int solve(Task &task, int timeout_seconds, int max_expanded);
