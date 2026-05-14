#include "jpm/search_algorithm.hpp"

#include "jpm/search_option_utils.hpp"
#include "jpm/search_support.hpp"

#include <algorithm>
#include <chrono>
#include <cmath>
#include <memory>
#include <string>
#include <vector>

namespace {

SearchResult make_result(
    bool solvable,
    const std::string &running,
    std::vector<std::string> plan,
    int path_length,
    const SearchStats &stats,
    const std::string &search_name) {
    SearchResult result;
    result.solvable = solvable;
    result.running = running;
    result.plan = std::move(plan);
    result.path_length = path_length;
    result.expanded = stats.expanded;
    result.generated = stats.generated;
    result.pruned = stats.pruned();
    result.pruned_by_unknown = stats.pruned_by_unknown;
    result.pruned_by_visited = stats.pruned_by_visited;
    result.goal_checked = stats.goal_checked;
    result.search = search_name;
    return result;
}

class Cabs final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "cabs";
        return value;
    }

    SearchResult search(Task &task, const SearchOptions &options) const override {
        const int initial_beam_size =
            read_int_option(options.search_options, "initial_beam_size", 1, 1);
        const int max_beam_size =
            read_int_option(options.search_options, "max_beam_size", 64, initial_beam_size);
        const bool keep_all_layers =
            read_bool_option(options.search_options, "keep_all_layers", false);

        SearchStats stats;
        stats.generated = 0;

        auto start = std::chrono::steady_clock::now();
        int beam_size = initial_beam_size;
        std::vector<std::string> best_actions;
        bool has_best_actions = false;

        while (beam_size <= max_beam_size) {
            const double elapsed_seconds =
                std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
            const int remaining_seconds =
                static_cast<int>(static_cast<double>(options.timeout_seconds) - elapsed_seconds);
            if (remaining_seconds <= 0) {
                if (has_best_actions) {
                    return make_result(
                        true,
                        "SUCC",
                        best_actions,
                        static_cast<int>(best_actions.size()),
                        stats,
                        name());
                }
                return make_result(false, "TIMEOUT", {}, 0, stats, name());
            }

            const int runs_remaining =
                static_cast<int>(std::log2(static_cast<double>(max_beam_size) / beam_size)) + 1;
            const int run_time_limit = std::max(1, remaining_seconds / runs_remaining);

            SearchOptions beam_options = options;
            beam_options.algorithm = "beamsearch";
            beam_options.timeout_seconds = run_time_limit;
            beam_options.search_options["beam_size"] = json::Value{static_cast<double>(beam_size)};
            beam_options.search_options["keep_all_layers"] = json::Value{keep_all_layers};

            std::unique_ptr<SearchAlgorithm> solver = make_search_algorithm("beamsearch");
            SearchResult solver_result = solver->search(task, beam_options);

            stats.expanded += solver_result.expanded;
            stats.goal_checked += solver_result.goal_checked;
            stats.generated += solver_result.generated;
            stats.pruned_by_unknown += solver_result.pruned_by_unknown;
            stats.pruned_by_visited += solver_result.pruned_by_visited;

            if (solver_result.running == "SUCC") {
                if (!has_best_actions || solver_result.plan.size() < best_actions.size()) {
                    best_actions = solver_result.plan;
                    has_best_actions = true;
                }
            } else if (solver_result.running == "TIMEOUT") {
                beam_size *= 2;
                continue;
            }

            beam_size *= 2;
        }

        if (has_best_actions) {
            return make_result(
                true,
                "SUCC",
                best_actions,
                static_cast<int>(best_actions.size()),
                stats,
                name());
        }

        return make_result(false, "UNSOLVED", {}, 0, stats, name());
    }
};

std::unique_ptr<SearchAlgorithm> make_cabs() {
    return std::make_unique<Cabs>();
}

const SearchAlgorithmRegistration registration("cabs", make_cabs);

}  // namespace