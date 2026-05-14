# C++ and Python Greedy/BFSDCU 30s Benchmark Results

C++ source: `output/cpp_benchmark_sweep_30s_greedy_bfsdcu/summary.json`

Python source: `output/python_greedy_30s_native_benchmarks/summary.json`

C++ generated: `2026-05-11T03:59:03`

Python generated: `2026-05-12T13:41:55`

C++ solver timeout: `30s`; max expanded: `300000`.

Python solver: `jp/search_algorithms/greedy.py`; timeout: `30s`; outer subprocess guard: `45s`; memory: `8GB`.

`TIMEOUT` and `EXPANSION_LIMIT` are bounded run results. `FAILED` means the search completed without finding a plan under the solver semantics. `ERROR` means a runtime/parser/config exception.

## Overall Summary

| Engine | Search | Total | SUCC | TIMEOUT | FAILED | ERROR | WALL_TIMEOUT | EXPANSION_LIMIT |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| `C++` | `greedy` | 74 | 65 | 8 | 1 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | 74 | 43 | 30 | 1 | 0 | 0 | 0 |
| `Python` | `greedy.py` | 74 | 63 | 7 | 1 | 3 | 0 | 0 |

## Domain Summary

| Engine | Search | Domain | Instances | SUCC | TIMEOUT | FAILED | ERROR | WALL_TIMEOUT | EXPANSION_LIMIT |
|---|---|---|---:|---:|---:|---:|---:|---:|---:|
| `C++` | `greedy` | `bbl` | 6 | 6 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `coin` | 7 | 6 | 0 | 1 | 0 | 0 | 0 |
| `C++` | `greedy` | `corridor` | 9 | 9 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `gossip4` | 3 | 2 | 1 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `grapevine` | 12 | 9 | 3 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `grid` | 20 | 16 | 4 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `grid_backup` | 4 | 4 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `muddy_children` | 2 | 2 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `new_corridor` | 10 | 10 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `greedy` | `thief` | 1 | 1 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `bbl` | 6 | 6 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `coin` | 7 | 6 | 0 | 1 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `corridor` | 9 | 9 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `gossip4` | 3 | 2 | 1 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `grapevine` | 12 | 4 | 8 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `grid` | 20 | 0 | 20 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `grid_backup` | 4 | 3 | 1 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `muddy_children` | 2 | 2 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `new_corridor` | 10 | 10 | 0 | 0 | 0 | 0 | 0 |
| `C++` | `bfsdcu` | `thief` | 1 | 1 | 0 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `bbl` | 6 | 6 | 0 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `coin` | 7 | 6 | 0 | 1 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `corridor` | 9 | 9 | 0 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `gossip4` | 3 | 3 | 0 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `grapevine` | 12 | 9 | 3 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `grid` | 20 | 16 | 4 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `grid_backup` | 4 | 1 | 0 | 0 | 3 | 0 | 0 |
| `Python` | `greedy.py` | `muddy_children` | 2 | 2 | 0 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `new_corridor` | 10 | 10 | 0 | 0 | 0 | 0 | 0 |
| `Python` | `greedy.py` | `thief` | 1 | 1 | 0 | 0 | 0 | 0 | 0 |

## C++ Greedy vs Python Greedy Status Differences

| Domain | Instance | C++ Greedy | Python Greedy | Note |
|---|---|---|---|---|
| `gossip4` | `problem_02.pddl` | `TIMEOUT` | `SUCC` | Python greedy finds a 5-step plan quickly; C++ greedy timed out in this run. |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `SUCC` | `ERROR` | `benchmarks/grid_backup/grid.py` raises `NameError: VARIABLE_FILLER is not defined`. |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `SUCC` | `ERROR` | `benchmarks/grid_backup/grid.py` raises `NameError: VARIABLE_FILLER is not defined`. |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `SUCC` | `ERROR` | `benchmarks/grid_backup/grid.py` raises `NameError: VARIABLE_FILLER is not defined`. |

## Instance Results

### `bbl`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem01.pddl` | `SUCC` | 3 | 9 | 37 | 0/2 | 0.005 | `SUCC` | 3 | 20 | 81 | 0/14 | 0.011 | `SUCC` | 3 | 9 | 37 | 0/2 | 0.203 |
| `problem02.pddl` | `SUCC` | 3 | 10 | 41 | 0/1 | 0.008 | `SUCC` | 3 | 28 | 113 | 0/10 | 0.027 | `SUCC` | 3 | 10 | 41 | 0/1 | 0.174 |
| `problem03.pddl` | `SUCC` | 5 | 81 | 325 | 0/54 | 0.062 | `SUCC` | 5 | 173 | 693 | 0/149 | 0.18 | `SUCC` | 5 | 81 | 325 | 0/54 | 0.463 |
| `problem04.pddl` | `SUCC` | 7 | 37 | 149 | 0/13 | 0.062 | `SUCC` | 5 | 252 | 1009 | 0/186 | 0.496 | `SUCC` | 7 | 37 | 149 | 0/13 | 0.432 |
| `problem05.pddl` | `SUCC` | 5 | 81 | 325 | 0/54 | 0.096 | `SUCC` | 5 | 173 | 693 | 0/149 | 0.21 | `SUCC` | 5 | 81 | 325 | 0/54 | 0.623 |
| `problem06.pddl` | `SUCC` | 5 | 95 | 381 | 0/72 | 0.14 | `SUCC` | 5 | 187 | 749 | 0/191 | 0.329 | `SUCC` | 5 | 95 | 381 | 0/72 | 0.822 |

### `coin`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem_01.pddl` | `SUCC` | 1 | 1 | 4 | 0/0 | 0.002 | `SUCC` | 1 | 1 | 4 | 0/0 | 0.002 | `SUCC` | 1 | 1 | 4 | 0/0 | 0.12 |
| `problem_02.pddl` | `SUCC` | 2 | 2 | 6 | 0/0 | 0.002 | `SUCC` | 2 | 5 | 14 | 0/0 | 0.002 | `SUCC` | 2 | 2 | 6 | 0/0 | 0.138 |
| `problem_03.pddl` | `SUCC` | 3 | 4 | 11 | 0/0 | 0.002 | `SUCC` | 3 | 8 | 21 | 0/4 | 0.002 | `SUCC` | 3 | 4 | 11 | 0/0 | 0.164 |
| `problem_04.pddl` | `SUCC` | 4 | 4 | 11 | 0/1 | 0.002 | `SUCC` | 4 | 15 | 40 | 0/7 | 0.003 | `SUCC` | 4 | 4 | 11 | 0/1 | 0.131 |
| `problem_05.pddl` | `SUCC` | 4 | 14 | 36 | 0/8 | 0.005 | `SUCC` | 4 | 15 | 40 | 0/7 | 0.004 | `SUCC` | 4 | 14 | 36 | 0/8 | 0.187 |
| `problem_06.pddl` | `SUCC` | 8 | 14 | 37 | 0/7 | 0.005 | `SUCC` | 4 | 20 | 51 | 0/11 | 0.006 | `SUCC` | 8 | 14 | 37 | 0/7 | 0.168 |
| `problem_07.pddl` | `FAILED` | 0 | 54 | 143 | 0/89 | 0.028 | `FAILED` | 0 | 54 | 143 | 0/89 | 0.024 | `FAILED` | 0 | 54 | 143 | 0/89 | 0.277 |

### `corridor`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.005 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.013 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.071 |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.006 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.014 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.07 |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.007 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.016 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.07 |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.008 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.026 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.076 |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.01 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.028 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.081 |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.012 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.031 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.079 |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.01 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.037 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.087 |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.011 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.036 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.087 |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | 5 | 9 | 32 | 0/4 | 0.014 | `SUCC` | 5 | 29 | 102 | 0/26 | 0.04 | `SUCC` | 5 | 9 | 32 | 0/4 | 0.089 |

### `gossip4`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem_01.pddl` | `SUCC` | 1 | 1 | 7 | 0/0 | 0.002 | `SUCC` | 1 | 1 | 7 | 0/0 | 0.002 | `SUCC` | 1 | 1 | 7 | 0/0 | 0.11 |
| `problem_02.pddl` | `TIMEOUT` | 0 | 14800 | 88801 | 0/0 | 30.022 | `TIMEOUT` | 0 | 21897 | 131383 | 0/0 | 30.022 | `SUCC` | 5 | 5 | 31 | 0/0 | 0.168 |
| `problem_03.pddl` | `SUCC` | 5 | 5 | 31 | 0/0 | 0.005 | `SUCC` | 5 | 1865 | 11191 | 0/0 | 1.122 | `SUCC` | 5 | 5 | 31 | 0/0 | 0.176 |

### `grapevine`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | 4 | 11 | 93 | 0/1 | 0.028 | `SUCC` | 4 | 255 | 1516 | 0/82 | 0.417 | `SUCC` | 4 | 11 | 93 | 0/1 | 0.115 |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | 4 | 10 | 78 | 0/1 | 0.029 | `SUCC` | 4 | 245 | 1492 | 0/77 | 0.545 | `SUCC` | 4 | 10 | 78 | 0/1 | 0.128 |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | 9 | 22 | 167 | 0/1 | 0.067 | `TIMEOUT` | 0 | 11387 | 63334 | 0/6845 | 30.016 | `SUCC` | 9 | 22 | 167 | 0/1 | 0.194 |
| `problem04_4ag_4g_2d.pddl` | `TIMEOUT` | 0 | 4405 | 27630 | 0/3211 | 30.01 | `TIMEOUT` | 0 | 6075 | 34494 | 0/3045 | 30.016 | `TIMEOUT` | 8 | 2386 | 15935 | 0/2430 | 29.624 |
| `problem05_4ag_8g_1d.pddl` | `SUCC` | 18 | 48 | 387 | 0/1 | 0.427 | `TIMEOUT` | 0 | 7363 | 41502 | 0/3860 | 30.014 | `SUCC` | 18 | 48 | 387 | 0/1 | 0.769 |
| `problem06_4ag_8g_2d.pddl` | `SUCC` | 24 | 548 | 4061 | 0/477 | 15.78 | `TIMEOUT` | 0 | 4211 | 23551 | 0/2048 | 30.025 | `SUCC` | 24 | 548 | 4061 | 0/477 | 21.53 |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | 4 | 15 | 189 | 0/1 | 0.123 | `SUCC` | 4 | 1249 | 12124 | 0/372 | 8.237 | `SUCC` | 4 | 15 | 189 | 0/1 | 0.256 |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | 4 | 14 | 158 | 0/1 | 0.137 | `SUCC` | 4 | 1227 | 11952 | 0/363 | 10.726 | `SUCC` | 4 | 14 | 158 | 0/1 | 0.252 |
| `problem09_8ag_4g_1d.pddl` | `SUCC` | 9 | 30 | 343 | 0/1 | 0.369 | `TIMEOUT` | 0 | 3934 | 35875 | 0/1455 | 30.043 | `SUCC` | 9 | 30 | 343 | 0/1 | 0.535 |
| `problem10_8ag_4g_2d.pddl` | `TIMEOUT` | 0 | 1414 | 15614 | 0/883 | 30.03 | `TIMEOUT` | 0 | 2234 | 19903 | 0/867 | 30.07 | `TIMEOUT` | 5 | 950 | 9774 | 0/554 | 29.679 |
| `problem11_8ag_8g_1d.pddl` | `SUCC` | 18 | 60 | 807 | 0/1 | 2.224 | `TIMEOUT` | 0 | 2642 | 23194 | 0/1066 | 30.027 | `SUCC` | 18 | 60 | 807 | 0/1 | 3.25 |
| `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | 0 | 319 | 4358 | 0/295 | 30.269 | `TIMEOUT` | 0 | 1539 | 14405 | 0/519 | 30.093 | `TIMEOUT` | 16 | 260 | 3179 | 0/234 | 29.565 |

### `grid`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem_BlockCells_prob1.pddl` | `TIMEOUT` | 0 | 564 | 11461 | 38/1395 | 30.083 | `TIMEOUT` | 0 | 1192 | 18984 | 1477/3510 | 30.084 | `TIMEOUT` | 12 | 531 | 10679 | 38/1336 | 29.504 |
| `problem_BlockCells_prob2.pddl` | `TIMEOUT` | 0 | 302 | 7042 | 24/289 | 30.204 | `TIMEOUT` | 0 | 767 | 12774 | 943/1699 | 30.144 | `TIMEOUT` | 17 | 284 | 6562 | 24/274 | 30.017 |
| `problem_BlockCells_prob3.pddl` | `TIMEOUT` | 0 | 491 | 9866 | 37/1118 | 30.082 | `TIMEOUT` | 0 | 1021 | 15985 | 1230/2943 | 30.088 | `TIMEOUT` | 11 | 400 | 8034 | 30/776 | 29.598 |
| `problem_BlockCells_prob4.pddl` | `TIMEOUT` | 0 | 188 | 5148 | 78/142 | 30.291 | `TIMEOUT` | 0 | 531 | 11276 | 678/826 | 30.176 | `TIMEOUT` | 14 | 161 | 4345 | 73/107 | 30.288 |
| `problem_Broadcast_prob1.pddl` | `SUCC` | 7 | 7 | 39 | 2/0 | 0.111 | `TIMEOUT` | 0 | 2311 | 13441 | 1268/2484 | 30.089 | `SUCC` | 7 | 7 | 39 | 2/0 | 0.128 |
| `problem_Broadcast_prob2.pddl` | `SUCC` | 6 | 6 | 49 | 3/0 | 0.15 | `TIMEOUT` | 0 | 1946 | 16698 | 1260/1913 | 30.115 | `SUCC` | 6 | 6 | 49 | 3/0 | 0.129 |
| `problem_Broadcast_prob3.pddl` | `SUCC` | 10 | 10 | 61 | 2/0 | 0.263 | `TIMEOUT` | 0 | 1413 | 8967 | 672/1175 | 30.147 | `SUCC` | 10 | 10 | 61 | 2/0 | 0.177 |
| `problem_Broadcast_prob4.pddl` | `SUCC` | 8 | 8 | 65 | 3/0 | 0.309 | `TIMEOUT` | 0 | 1118 | 10053 | 978/946 | 30.197 | `SUCC` | 8 | 8 | 65 | 3/0 | 0.199 |
| `problem_EpGoal_prob1.pddl` | `SUCC` | 9 | 10 | 74 | 40/0 | 0.249 | `TIMEOUT` | 0 | 1449 | 10057 | 2870/1959 | 30.09 | `SUCC` | 9 | 10 | 74 | 40/0 | 0.324 |
| `problem_EpGoal_prob2.pddl` | `SUCC` | 16 | 48 | 358 | 120/8 | 2.779 | `TIMEOUT` | 0 | 874 | 5806 | 1877/989 | 30.142 | `SUCC` | 16 | 48 | 358 | 120/8 | 2.651 |
| `problem_EpGoal_prob3.pddl` | `SUCC` | 13 | 49 | 507 | 112/7 | 2.544 | `TIMEOUT` | 0 | 1160 | 12530 | 1107/1074 | 30.121 | `SUCC` | 13 | 49 | 507 | 112/7 | 3.19 |
| `problem_EpGoal_prob4.pddl` | `SUCC` | 17 | 46 | 506 | 92/6 | 4.528 | `TIMEOUT` | 0 | 734 | 8587 | 585/662 | 30.194 | `SUCC` | 17 | 46 | 506 | 92/6 | 4.765 |
| `problem_NonBroadcast_prob1.pddl` | `SUCC` | 8 | 8 | 47 | 0/0 | 0.129 | `TIMEOUT` | 0 | 2405 | 14329 | 244/2475 | 30.084 | `SUCC` | 8 | 8 | 47 | 0/0 | 0.111 |
| `problem_NonBroadcast_prob2.pddl` | `SUCC` | 7 | 7 | 59 | 0/0 | 0.162 | `TIMEOUT` | 0 | 1992 | 17432 | 158/1945 | 30.108 | `SUCC` | 7 | 7 | 59 | 0/0 | 0.122 |
| `problem_NonBroadcast_prob3.pddl` | `SUCC` | 12 | 12 | 68 | 4/0 | 0.382 | `TIMEOUT` | 0 | 1146 | 6730 | 839/1128 | 30.138 | `SUCC` | 12 | 12 | 68 | 4/0 | 0.262 |
| `problem_NonBroadcast_prob4.pddl` | `SUCC` | 11 | 11 | 88 | 5/0 | 0.469 | `TIMEOUT` | 0 | 949 | 8188 | 701/884 | 30.189 | `SUCC` | 11 | 11 | 88 | 5/0 | 0.317 |
| `problem_NonEp_prob1.pddl` | `SUCC` | 6 | 6 | 56 | 0/0 | 0.1 | `TIMEOUT` | 0 | 3176 | 29343 | 0/3467 | 30.085 | `SUCC` | 6 | 6 | 56 | 0/0 | 0.1 |
| `problem_NonEp_prob2.pddl` | `SUCC` | 9 | 9 | 92 | 0/0 | 0.222 | `TIMEOUT` | 0 | 1755 | 17074 | 0/1742 | 30.143 | `SUCC` | 9 | 9 | 92 | 0/0 | 0.133 |
| `problem_NonEp_prob3.pddl` | `SUCC` | 5 | 5 | 53 | 0/0 | 0.13 | `TIMEOUT` | 0 | 2625 | 31610 | 0/2726 | 30.114 | `SUCC` | 5 | 5 | 53 | 0/0 | 0.102 |
| `problem_NonEp_prob4.pddl` | `SUCC` | 8 | 8 | 84 | 0/0 | 0.308 | `TIMEOUT` | 0 | 1390 | 17517 | 0/1274 | 30.193 | `SUCC` | 8 | 8 | 84 | 0/0 | 0.146 |

### `grid_backup`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem_Boardcast_prob1.pddl` | `SUCC` | 9 | 9 | 50 | 0/0 | 0.051 | `SUCC` | 9 | 3337 | 17475 | 0/8717 | 10.074 | `ERROR` | - | - | - | - | 0.059 |
| `problem_EpGoal_prob1.pddl` | `SUCC` | 9 | 9 | 71 | 0/0 | 0.09 | `TIMEOUT` | 0 | 3557 | 25749 | 0/7168 | 30.038 | `ERROR` | - | - | - | - | 0.056 |
| `problem_NonBoardcast_prob1.pddl` | `SUCC` | 11 | 19 | 93 | 0/4 | 0.073 | `SUCC` | 9 | 2979 | 14526 | 0/6923 | 8.393 | `ERROR` | - | - | - | - | 0.059 |
| `problem_NonEp_prob1.pddl` | `SUCC` | 6 | 6 | 48 | 0/0 | 0.032 | `SUCC` | 6 | 2507 | 18251 | 0/4332 | 0.303 | `SUCC` | 6 | 6 | 48 | 0/0 | 0.075 |

### `muddy_children`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem01.pddl` | `SUCC` | 0 | 0 | 1 | 0/0 | 0.002 | `SUCC` | 0 | 0 | 1 | 0/0 | 0.002 | `SUCC` | 0 | 0 | 1 | 0/0 | 0.135 |
| `problem02.pddl` | `SUCC` | 3 | 3 | 5 | 0/0 | 0.003 | `SUCC` | 3 | 3 | 5 | 0/0 | 0.003 | `SUCC` | 3 | 3 | 5 | 0/0 | 0.147 |

### `new_corridor`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.007 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.022 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.082 |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.007 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.025 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.08 |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.009 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.03 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.08 |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.011 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.042 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.081 |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.012 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.049 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.083 |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.016 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.062 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.083 |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.013 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.055 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.098 |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.015 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.066 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.109 |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.018 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.074 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.101 |
| `problem10_3ag_2g_2d.pddl` | `SUCC` | 5 | 10 | 33 | 0/3 | 0.008 | `SUCC` | 5 | 36 | 125 | 0/29 | 0.03 | `SUCC` | 5 | 10 | 33 | 0/3 | 0.082 |

### `thief`

| Instance | C++ G | CG Len | CG Exp | CG Gen | CG U/V | CG Wall s | C++ BFSDCU | CB Len | CB Exp | CB Gen | CB U/V | CB Wall s | Py G | Py Len | Py Exp | Py Gen | Py U/V | Py Wall s |
|---|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|---|---:|---:|---:|---:|---:|
| `problem1_t_00000.pddl` | `SUCC` | 2 | 3 | 7 | 0/0 | 0.002 | `SUCC` | 2 | 5 | 9 | 0/1 | 0.002 | `SUCC` | 2 | 3 | 7 | 0/0 | 0.061 |

## Command Shape

C++ instances were exported to JSON IR and solved with:

```bash
cpp/build/jpm_cpp_solver \
  --task output/cpp_benchmark_sweep_30s_greedy_bfsdcu/<search>/<domain>__<problem>.ir.json \
  --search <greedy|bfsdcu> \
  --timeout 30 \
  --max-expanded 300000
```

Python instances were solved through the original JPM `Instance.solve(...)` path with `search_algorithms.greedy`:

```python
Instance(..., search_module=search_algorithms.greedy, search_name="greedy").solve(
    output_path="output/python_greedy_30s_native_benchmarks/raw/<domain>/<problem>",
    time_out=30,
    memory_out=8,
)
```
