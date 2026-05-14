#include "jpm/search.hpp"
#include "jpm/search_algorithm.hpp"
#include "jpm/task.hpp"
#include "jpm/json.hpp"

#include <cstdlib>
#include <exception>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

namespace {

std::string join_names(const std::vector<std::string> &names) {
    std::string out;
    for (std::size_t i = 0; i < names.size(); ++i) {
        if (i) {
            out += "|";
        }
        out += names[i];
    }
    return out;
}

}  // namespace

int main(int argc, char **argv) {
    try {
        std::string task_path;
        SearchOptions options;
        for (int i = 1; i < argc; ++i) {
            std::string arg = argv[i];
            if ((arg == "--task" || arg == "-t") && i + 1 < argc) {
                task_path = argv[++i];
            } else if (arg == "--timeout" && i + 1 < argc) {
                options.timeout_seconds = std::atoi(argv[++i]);
            } else if (arg == "--max-expanded" && i + 1 < argc) {
                options.max_expanded = std::atoi(argv[++i]);
            } else if ((arg == "--search" || arg == "-s") && i + 1 < argc) {
                options.algorithm = argv[++i];
            } else if (arg == "--search-options-json" && i + 1 < argc) {
                json::Value parsed = json::Parser(argv[++i]).parse();
                if (!parsed.is_object()) {
                    throw std::runtime_error("--search-options-json must decode to a JSON object");
                }
                options.search_options = parsed.as_object();
            } else if (arg == "--help" || arg == "-h") {
                std::cout << "usage: jpm_cpp_solver --task TASK.json [--search "
                          << join_names(available_search_algorithm_names())
                          << "] [--search-options-json JSON] [--timeout SEC] [--max-expanded N]\n";
                return 0;
            } else {
                throw std::runtime_error("unknown or incomplete argument: " + arg);
            }
        }
        if (task_path.empty()) {
            throw std::runtime_error("--task is required");
        }
        Task task = load_task(task_path);
        return solve(task, options);
    } catch (const std::exception &err) {
        print_result(false, "ERROR", {}, 0, 0, 0, 0, 0, 0, "", err.what());
        return 3;
    }
}
