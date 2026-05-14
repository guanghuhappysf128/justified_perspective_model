#include "jpm/search_algorithm.hpp"

#include <memory>
#include <string>

namespace {

class BfsDuplicateCheckUnknownPruning final : public PrioritySearchAlgorithm {
public:
    const std::string &name() const override {
        static const std::string value = "bfsdcu";
        return value;
    }

    bool duplicate_check() const override {
        return true;
    }

    bool unknown_pruning() const override {
        return true;
    }

    int primary_priority(int, int g) const override {
        return g;
    }

    int secondary_priority(int, int) const override {
        return 0;
    }
};

std::unique_ptr<SearchAlgorithm> make_bfsdcu() {
    return std::make_unique<BfsDuplicateCheckUnknownPruning>();
}

const SearchAlgorithmRegistration registration("bfsdcu", make_bfsdcu);
const SearchAlgorithmRegistration alias_registration("bfs_dcu", make_bfsdcu);
const SearchAlgorithmRegistration duplicate_unknown_alias_registration("bfs_duplicate_unknown", make_bfsdcu);
const SearchAlgorithmRegistration verbose_alias_registration(
    "bfs_duplicate_check_unknown_check",
    make_bfsdcu);

}  // namespace
