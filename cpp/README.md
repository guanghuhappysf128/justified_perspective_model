# JPM C++ Prototype

This directory contains the first C++ slice of the JPM runtime.

Current flow:

1. parse F-PDDL with the existing Python parser
2. export an integer-friendly JSON IR with `tools/export_jpm_ir.py`
3. load that IR in C++
4. run a selected forward search over finite-domain state variables

The C++ core now supports a first epistemic slice: individual `k`, `s`, and `b` formulas over ontic `varphi` conditions, basic `@jp` reads, JP assignment effects, and EP assignment effects into compatible finite-domain variables. Observation and perspective histories are evaluated along the current search path and cached per search-node evaluation.

## File Layout

The solver is split into a small set of modules:

| Path | Responsibility |
|---|---|
| `include/jpm/json.hpp` | Minimal JSON reader for the exported IR. |
| `include/jpm/task.hpp`, `src/task.cpp` | Core task model, enums, and value encoding. |
| `src/task_loader.cpp` | JSON IR to in-memory `Task` conversion. |
| `include/jpm/evaluator.hpp`, `src/evaluator.cpp` | Ontic, `@ep`, `@jp`, observation, and perspective evaluation. |
| `include/jpm/visibility.hpp`, `src/visibility.cpp` | Visibility-model selection, shared visibility helpers, and dispatch. |
| `../benchmarks/*/visibility.cpp`, `../converted_from_epddl/*/visibility.cpp` | Domain-specific visibility implementations, stored next to their `domain.pddl`. |
| `include/jpm/transition.hpp`, `src/transition.cpp` | Action applicability, effect application, and successor-state generation. |
| `include/jpm/search.hpp`, `src/search.cpp` | Shared search engine, perspective-aware duplicate checking, unknown-goal pruning, heuristic scoring, plan extraction, and JSON result printing. |
| `include/jpm/search_algorithm.hpp`, `src/search_algorithm.cpp` | Search algorithm registry and lookup. |
| `src/search_algorithms/*.cpp` | Individual search algorithm implementations. |
| `src/jpm_cpp_solver.cpp` | CLI argument parsing and solver entry point. |

## Domain Visibility

Visibility is selected by a `visibility.json` file next to each `domain.pddl`. The Python IR exporter copies this declaration into `metadata.visibility_model`, and the C++ runtime dispatches to the domain-local evaluator registered from that folder's `visibility.cpp`. If a domain does not provide this metadata, the C++ solver falls back to `all_visible`.

Example:

```json
{
  "visibility_model": "grapevine"
}
```

Supported models:

| Model | C++ implementation |
|---|---|
| `all_visible` | Built into `src/visibility.cpp`. |
| `bbl` | `../benchmarks/bbl/visibility.cpp` |
| `native_coin` | `../benchmarks/coin/visibility.cpp` |
| `corridor` | `../benchmarks/corridor/visibility.cpp` |
| `gossip4` | `../benchmarks/gossip4/visibility.cpp` |
| `coin_in_box` | `../converted_from_epddl/coin_in_the_box/visibility.cpp` |
| `grapevine` | `../benchmarks/grapevine/visibility.cpp` |
| `converted_grapevine` | `../converted_from_epddl/grapevine/visibility.cpp` |
| `grid` | `../benchmarks/grid/visibility.cpp` |
| `grid_backup` | `../benchmarks/grid_backup/visibility.cpp` |
| `muddy_children` | `../benchmarks/muddy_children/visibility.cpp` |
| `new_corridor` | `../benchmarks/new_corridor/visibility.cpp` |
| `thief` | `../benchmarks/thief/visibility.cpp` |
| `converted_muddy_children` | `../converted_from_epddl/active_muddy_child/visibility.cpp` |
| `collaboration_through_communication` | `../converted_from_epddl/collaboration_through_communication/visibility.cpp` |

Each custom file registers itself with `VisibilityModelRegistration`, so the core solver does not need domain-specific visibility branches.

## Build

```bash
cd /home/guangh_ubuntu/projects/competition/iepc/justified_perspective_model

cmake -S cpp -B cpp/build
cmake --build cpp/build
```

Search algorithms are selected at CMake configure time. They all default to `ON`:

```bash
cmake -S cpp -B cpp/build-greedy-only \
  -DJPM_CPP_ENABLE_SEARCH_BFS=OFF \
  -DJPM_CPP_ENABLE_SEARCH_BFSDC=OFF \
  -DJPM_CPP_ENABLE_SEARCH_BFSDCU=OFF \
  -DJPM_CPP_ENABLE_SEARCH_ASTAR=OFF \
  -DJPM_CPP_ENABLE_SEARCH_GREEDY=ON
cmake --build cpp/build-greedy-only
```

Available switches:

| CMake option | Source file |
|---|---|
| `JPM_CPP_ENABLE_SEARCH_BFS` | `src/search_algorithms/bfs.cpp` |
| `JPM_CPP_ENABLE_SEARCH_BFSDC` | `src/search_algorithms/bfsdc.cpp` |
| `JPM_CPP_ENABLE_SEARCH_BFSDCU` | `src/search_algorithms/bfsdcu.cpp` |
| `JPM_CPP_ENABLE_SEARCH_ASTAR` | `src/search_algorithms/astar.cpp` |
| `JPM_CPP_ENABLE_SEARCH_GREEDY` | `src/search_algorithms/greedy.cpp` |
| `JPM_CPP_ENABLE_SEARCH_BESTFIRST` | `src/search_algorithms/best_first.cpp` |
| `JPM_CPP_ENABLE_SEARCH_CBFS` | `src/search_algorithms/cbfs.cpp` |
| `JPM_CPP_ENABLE_SEARCH_ACPS` | `src/search_algorithms/acps.cpp` |
| `JPM_CPP_ENABLE_SEARCH_BEAMSEARCH` | `src/search_algorithms/beam_search.cpp` |
| `JPM_CPP_ENABLE_SEARCH_CABS` | `src/search_algorithms/cabs.cpp` |
| `JPM_CPP_ENABLE_SEARCH_LNBS` | `src/search_algorithms/lnbs.cpp` |

## Run The Smoke Example

```bash
cd /home/guangh_ubuntu/projects/competition/iepc/justified_perspective_model

python3 tools/run_jpm_cpp_solver.py \
  -d benchmarks/grid/domain.pddl \
  -p benchmarks/grid/problem_NonEp_prob1.pddl \
  -o output/cpp_ir/grid_nonep1.json
```

Expected result: the C++ solver returns `running: "SUCC"` with a short `move ...` plan.

## Run A Converted EPDDL Example

```bash
cd /home/guangh_ubuntu/projects/competition/iepc/justified_perspective_model

python3 tools/run_jpm_cpp_solver.py \
  -d converted_from_epddl/coin_in_the_box/domain.pddl \
  -p converted_from_epddl/coin_in_the_box/cb_1_from_epddl.pddl \
  -o output/cpp_ir/coin_cb1.json
```

Expected result: the C++ solver returns `running: "SUCC"` with `["open_a", "peek_a"]`.

Grapevine now exercises `@jp` preconditions/effects:

```bash
python3 tools/run_jpm_cpp_solver.py \
  -d converted_from_epddl/grapevine/domain.pddl \
  -p converted_from_epddl/grapevine/gra_1_from_epddl.pddl \
  -o output/cpp_ir/converted_grapevine_gra1.json
```

Expected result: the C++ solver returns `running: "SUCC"` with a plan using `sharing_own_secret ...` and `quiet ...`.

## Direct Solver Invocation

```bash
cpp/build/jpm_cpp_solver \
  --task output/cpp_ir/grid_nonep1.json \
  --search cbfs \
  --timeout 30 \
  --max-expanded 200000
```

## Search Options

The C++ solver mirrors the Python `jp/search_algorithms` split. The compiled binary only accepts algorithms enabled by the CMake switches above:

| CLI value | Search style | Solver-specific options |
|---|---|---|
| `bfs` | breadth-first on `g` | none |
| `bfsdc` | breadth-first with duplicate checking | none |
| `bfsdcu` | breadth-first with duplicate checking and unknown-goal pruning | none |
| `astar` | `g + h` best-first | none |
| `greedy` | `h` best-first | none |
| `bestfirst` | novelty-guided best-first | none |
| `cbfs` | novelty-guided layered round-robin search | none |
| `acps` | novelty-guided progressive-width search | `init`, `step`, `width_bound`, `reset` |
| `beamsearch` | novelty-guided beam search | `beam_size`, `keep_all_layers` |
| `cabs` | adaptive beam wrapper over `beamsearch` | `initial_beam_size`, `max_beam_size`, `keep_all_layers` |
| `lnbs` | `cabs` warm start plus repair beam search | `initial_beam_size`, `max_beam_size`, `keep_all_layers`, `seed`, `use_cost_weight`, `max_repair_attempts`, `cabs_initial_beam_size`, `cabs_max_beam_size` |

The heuristic `h` is the number of unsatisfied goals, matching the current Python `goal_counting` heuristic. Novelty-guided solvers combine that goal distance with the Python `iw_gc` novelty score. Duplicate checking uses the global state together with the last state of every generated observation/perspective entry, which is the C++ analogue of Python's `p_dict`-based duplicate key.

Solver-specific options are passed through `--search-options-json`, for example:

```bash
cpp/build/jpm_cpp_solver \
  --task output/cpp_ir/grid_nonep1.json \
  --search acps \
  --search-options-json '{"init":1,"step":1,"width_bound":16,"reset":false}'
```

## Apptainer Runner

The repository root now includes [Apptainer.demo_jpm_cpp](../Apptainer.demo_jpm_cpp), a multi-stage Apptainer definition for the C++ runner.

Build it from the repository root:

```bash
apptainer build jpm_cpp.sif Apptainer.demo_jpm_cpp
```

Run it with a domain/problem pair. The runscript exports JPM IR internally and defaults to `cbfs`, which is currently the best default among the ported C++ solvers under the existing benchmark ranking:

```bash
apptainer run jpm_cpp.sif benchmarks/bbl/domain.pddl benchmarks/bbl/problem01.pddl
```

The runscript accepts an optional third positional argument for the IR output path. You can override the default search and limits with environment variables such as `SEARCH`, `TIMEOUT`, `MAX_EXPANDED`, and `SEARCH_OPTIONS_JSON`.

## Language Support Snapshot

The C++ runtime is a restricted JPM/F-PDDL execution slice, not a full native EPDDL runtime.

Supported today:

- finite-domain F-PDDL tasks after Python-side export to JPM IR
- typed variables with boolean, enumerate, integer, and string domains
- conjunctive preconditions and conjunctive goals
- ontic equality, inequality, and integer comparisons
- assign, increase, and decrease effects on compatible finite-domain variables
- individual `@ep` and `@jp` queries with `k`, `s`, and `b` modalities
- `@jp` reads in conditions and assignment effects
- `@ep` assignment effects to compatible boolean/ternary target domains
- partial observability through registered visibility models
- search algorithms `bfs`, `bfsdc`, `bfsdcu`, `astar`, `greedy`, `bestfirst`, `cbfs`, `acps`, `beamsearch`, `cabs`, and `lnbs`

Not yet supported in the C++ runtime:

- native EPDDL specification loading or action-type-library execution
- group modalities, common knowledge, or multi-agent modal tokens like `[a,b]`
- disjunctive, existential, or universal preconditions and goals
- conditional effects
- general epistemic comparisons beyond equality and inequality

## Old Benchmark Results

The latest full sweep over `benchmarks/` is summarized in [OLD_BENCHMARK_RESULTS.md](OLD_BENCHMARK_RESULTS.md). The raw JSON summary is stored at `output/cpp_benchmark_sweep_60s/summary.json`.

## Current Scope

Implemented:

- finite-domain variable table
- grounded ontic preconditions
- assign/increase/decrease effects
- state registry with duplicate detection for path-independent runs
- path-preserving search nodes for epistemic formulas
- selectable `bfs`, `bfsdc`, `bfsdcu`, `astar`, `greedy`, `bestfirst`, `cbfs`, `acps`, `beamsearch`, `cabs`, and `lnbs` search
- perspective-dictionary duplicate checking
- unknown-goal pruning
- individual `@ep` evaluation for `k`, `s`, and `b`
- basic `@jp` reads in preconditions and assignment effects
- `@ep` assignment effects to `true`/`false`/`unknown`, `t`/`f`, or `1`/`0` style target domains
- cached observation and perspective sequences during node evaluation
- visibility dispatch through domain-folder `visibility.json` metadata
- domain-local visibility models for the native and converted benchmark folders
- plan extraction through parent pointers

Next:

- add additional converted-domain visibility models as needed
- improve search heuristics beyond unsatisfied goal count
