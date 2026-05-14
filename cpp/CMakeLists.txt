cmake_minimum_required(VERSION 3.16)

project(jpm_cpp_core LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(JPM_CPP_ENABLE_SEARCH_BFS "Build the BFS search algorithm" ON)
option(JPM_CPP_ENABLE_SEARCH_BFSDC "Build BFS with duplicate checking" ON)
option(JPM_CPP_ENABLE_SEARCH_BFSDCU "Build BFS with duplicate and unknown pruning" ON)
option(JPM_CPP_ENABLE_SEARCH_ASTAR "Build A* search" ON)
option(JPM_CPP_ENABLE_SEARCH_GREEDY "Build greedy search" ON)
option(JPM_CPP_ENABLE_SEARCH_BESTFIRST "Build novelty-guided best-first search" ON)
option(JPM_CPP_ENABLE_SEARCH_CBFS "Build novelty-guided CBFS search" ON)
option(JPM_CPP_ENABLE_SEARCH_ACPS "Build novelty-guided ACPS search" ON)
option(JPM_CPP_ENABLE_SEARCH_BEAMSEARCH "Build novelty-guided beam search" ON)
option(JPM_CPP_ENABLE_SEARCH_CABS "Build novelty-guided CABS search" ON)
option(JPM_CPP_ENABLE_SEARCH_LNBS "Build novelty-guided LNBS search" ON)

set(JPM_CPP_SEARCH_SOURCES)
if(JPM_CPP_ENABLE_SEARCH_BFS)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/bfs.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_BFSDC)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/bfsdc.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_BFSDCU)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/bfsdcu.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_ASTAR)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/astar.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_GREEDY)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/greedy.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_BESTFIRST)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/best_first.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_CBFS)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/cbfs.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_ACPS)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/acps.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_BEAMSEARCH)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/beam_search.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_CABS)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/cabs.cpp)
endif()
if(JPM_CPP_ENABLE_SEARCH_LNBS)
    list(APPEND JPM_CPP_SEARCH_SOURCES src/search_algorithms/lnbs.cpp)
endif()
if(NOT JPM_CPP_SEARCH_SOURCES)
    message(FATAL_ERROR "At least one JPM C++ search algorithm must be enabled")
endif()

add_executable(jpm_cpp_solver
    src/jpm_cpp_solver.cpp
    src/evaluator.cpp
    src/search.cpp
    src/search_algorithm.cpp
    src/search_support.cpp
    src/task.cpp
    src/task_loader.cpp
    src/transition.cpp
    src/visibility.cpp
    ${JPM_CPP_SEARCH_SOURCES}
    ../benchmarks/bbl/visibility.cpp
    ../benchmarks/coin/visibility.cpp
    ../benchmarks/corridor/visibility.cpp
    ../benchmarks/gossip4/visibility.cpp
    ../benchmarks/grapevine/visibility.cpp
    ../benchmarks/grid/visibility.cpp
    ../benchmarks/grid_backup/visibility.cpp
    ../benchmarks/muddy_children/visibility.cpp
    ../benchmarks/new_corridor/visibility.cpp
    ../benchmarks/thief/visibility.cpp
    ../converted_from_epddl/active_muddy_child/visibility.cpp
    ../converted_from_epddl/coin_in_the_box/visibility.cpp
    ../converted_from_epddl/collaboration_through_communication/visibility.cpp
    ../converted_from_epddl/gossip/visibility.cpp
    ../converted_from_epddl/grapevine/visibility.cpp
)

target_include_directories(jpm_cpp_solver PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_compile_options(jpm_cpp_solver PRIVATE -Wall -Wextra -Wpedantic)
