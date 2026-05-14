#pragma once

#include "jpm/search.hpp"

#include <memory>
#include <string>
#include <vector>

class SearchAlgorithm {
public:
    virtual ~SearchAlgorithm() = default;

    virtual const std::string &name() const = 0;
    virtual SearchResult search(Task &task, const SearchOptions &options) const = 0;
};

class PrioritySearchAlgorithm : public SearchAlgorithm {
public:
    SearchResult search(Task &task, const SearchOptions &options) const final;

    virtual bool duplicate_check() const = 0;
    virtual bool unknown_pruning() const = 0;
    virtual int primary_priority(int h, int g) const = 0;
    virtual int secondary_priority(int h, int g) const = 0;
};

using SearchAlgorithmFactory = std::unique_ptr<SearchAlgorithm> (*)();

class SearchAlgorithmRegistration {
public:
    SearchAlgorithmRegistration(const std::string &name, SearchAlgorithmFactory factory);
};

std::unique_ptr<SearchAlgorithm> make_search_algorithm(const std::string &name);
std::vector<std::string> available_search_algorithm_names();
