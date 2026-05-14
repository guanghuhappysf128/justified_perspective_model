#include "jpm/search_algorithm.hpp"

#include <algorithm>
#include <stdexcept>
#include <unordered_map>
#include <unordered_set>

namespace {

std::string normalize_search_name(std::string name) {
    std::replace(name.begin(), name.end(), '-', '_');
    if (name == "a*") {
        return "astar";
    }
    return name;
}

std::unordered_map<std::string, SearchAlgorithmFactory> &search_registry() {
    static std::unordered_map<std::string, SearchAlgorithmFactory> registry;
    return registry;
}

}  // namespace

SearchAlgorithmRegistration::SearchAlgorithmRegistration(
    const std::string &name,
    SearchAlgorithmFactory factory) {
    search_registry()[normalize_search_name(name)] = factory;
}

std::unique_ptr<SearchAlgorithm> make_search_algorithm(const std::string &name) {
    std::string normalized = normalize_search_name(name);
    auto it = search_registry().find(normalized);
    if (it != search_registry().end()) {
        return it->second();
    }

    std::string available;
    std::vector<std::string> names = available_search_algorithm_names();
    for (std::size_t i = 0; i < names.size(); ++i) {
        if (i) {
            available += ", ";
        }
        available += names[i];
    }
    throw std::runtime_error(
        "unknown or disabled search algorithm '" + name + "'; available: " + available);
}

std::vector<std::string> available_search_algorithm_names() {
    std::unordered_set<std::string> unique_names;
    for (const auto &[_name, factory] : search_registry()) {
        unique_names.insert(factory()->name());
    }
    std::vector<std::string> names(unique_names.begin(), unique_names.end());
    std::sort(names.begin(), names.end());
    return names;
}
