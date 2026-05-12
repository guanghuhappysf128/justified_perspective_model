#include "jpm/search_algorithm.hpp"

#include <memory>
#include <string>

namespace {

class BfsDuplicateCheck final : public SearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "bfsdc";
        return value;
    }

    bool duplicate_check() const override {
        return true;
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

std::unique_ptr<SearchAlgorithm> make_bfsdc() {
    return std::make_unique<BfsDuplicateCheck>();
}

const SearchAlgorithmRegistration registration("bfsdc", make_bfsdc);
const SearchAlgorithmRegistration alias_registration("bfs_dc", make_bfsdc);
const SearchAlgorithmRegistration verbose_alias_registration("bfs_duplicate_check", make_bfsdc);

}  // namespace
