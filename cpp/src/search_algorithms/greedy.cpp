#include "jpm/search_algorithm.hpp"

#include <memory>
#include <string>

namespace {

class Greedy final : public PrioritySearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "greedy";
        return value;
    }

    bool duplicate_check() const override {
        return true;
    }

    bool unknown_pruning() const override {
        return true;
    }

    int primary_priority(int h, int) const override {
        return h;
    }

    int secondary_priority(int, int g) const override {
        return g;
    }
};

std::unique_ptr<SearchAlgorithm> make_greedy() {
    return std::make_unique<Greedy>();
}

const SearchAlgorithmRegistration registration("greedy", make_greedy);

}  // namespace
