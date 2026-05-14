#include "jpm/search_algorithm.hpp"

#include <memory>
#include <string>

namespace {

class Bfs final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "bfs";
        return value;
    }

    bool duplicate_check() const override {
        return false;
    }

    bool unknown_pruning() const override {
        return false;
    }

    int primary_priority(int, int g) const override {
        return g;
    }

    int secondary_priority(int, int) const override {
        return 0;
    }
};

std::unique_ptr<SearchAlgorithm> make_bfs() {
    return std::make_unique<Bfs>();
}

const SearchAlgorithmRegistration registration("bfs", make_bfs);

}  // namespace
