#include "jpm/search_algorithm.hpp"

#include <memory>
#include <string>

namespace {

class AStar final : public PrioritySearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "astar";
        return value;
    }

    bool duplicate_check() const override {
        return true;
    }

    bool unknown_pruning() const override {
        return true;
    }

    int primary_priority(int h, int g) const override {
        return g + h;
    }

    int secondary_priority(int h, int) const override {
        return h;
    }
};

std::unique_ptr<SearchAlgorithm> make_astar() {
    return std::make_unique<AStar>();
}

const SearchAlgorithmRegistration registration("astar", make_astar);
const SearchAlgorithmRegistration alias_registration("a_star", make_astar);
const SearchAlgorithmRegistration symbol_alias_registration("a*", make_astar);

}  // namespace
