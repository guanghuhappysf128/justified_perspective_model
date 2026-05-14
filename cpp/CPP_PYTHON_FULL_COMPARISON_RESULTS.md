# C++ and Python Full Comparison Results

Comparison source: `output/cpp_python_full_comparison/summary.json`

Python source: `output/cpp_python_full_comparison/python/benchmark_results.json`

C++ source: `output/cpp_python_full_comparison/cpp/benchmark_results.json`

Config: `benchmarks/config/cpp_python_full_comparison.yaml`

Started: `2026-05-14T19:08:21.790205+10:00`

Finished: `2026-05-14T19:12:34.991805+10:00`

C++ solver: `cpp/build/jpm_cpp_solver`

`TIMEOUT` and `EXPANSION_LIMIT` are bounded run results. `UNSOLVED` and `FAILED` mean the search completed without finding a plan under that engine's semantics. `ERROR` means a runtime/parser/config failure. `WALL_TIMEOUT` means the outer subprocess guard fired before the engine completed.

Paired comparisons: `370`. Status matches: `292`. Status mismatches: `78`.

## Overall Summary

| Solver | Pairs | Matched | Mismatched | Python Statuses | C++ Statuses |
|---|---|---|---|---|---|
| `acps` | 74 | 56 | 18 | `SUCC 58, UNSOLVED 1, TIMEOUT 12, ERROR 3` | `SUCC 61, ERROR 13` |
| `bestfirst` | 74 | 61 | 13 | `SUCC 62, UNSOLVED 1, TIMEOUT 8, ERROR 3` | `SUCC 64, ERROR 10` |
| `cabs` | 74 | 57 | 17 | `SUCC 58, UNSOLVED 13, ERROR 3` | `SUCC 62, ERROR 12` |
| `cbfs` | 74 | 59 | 15 | `SUCC 60, UNSOLVED 1, TIMEOUT 10, ERROR 3` | `SUCC 64, ERROR 10` |
| `lnbs` | 74 | 59 | 15 | `SUCC 60, UNSOLVED 11, ERROR 3` | `SUCC 62, ERROR 12` |

## Domain Summary

| Solver | Domain | Instances | Matched | Mismatched | Python Statuses | C++ Statuses |
|---|---|---|---|---|---|---|
| `acps` | `bbl` | 6 | 6 | 0 | `SUCC 6` | `SUCC 6` |
| `acps` | `coin` | 7 | 6 | 1 | `SUCC 6, UNSOLVED 1` | `SUCC 6, ERROR 1` |
| `acps` | `corridor` | 9 | 9 | 0 | `SUCC 9` | `SUCC 9` |
| `acps` | `gossip4` | 3 | 2 | 1 | `SUCC 3` | `SUCC 2, ERROR 1` |
| `acps` | `grapevine` | 12 | 8 | 4 | `SUCC 8, TIMEOUT 4` | `SUCC 9, ERROR 3` |
| `acps` | `grid` | 20 | 11 | 9 | `SUCC 12, TIMEOUT 8` | `SUCC 12, ERROR 8` |
| `acps` | `grid_backup` | 4 | 1 | 3 | `SUCC 1, ERROR 3` | `SUCC 4` |
| `acps` | `muddy_children` | 2 | 2 | 0 | `SUCC 2` | `SUCC 2` |
| `acps` | `new_corridor` | 10 | 10 | 0 | `SUCC 10` | `SUCC 10` |
| `acps` | `thief` | 1 | 1 | 0 | `SUCC 1` | `SUCC 1` |
| `bestfirst` | `bbl` | 6 | 6 | 0 | `SUCC 6` | `SUCC 6` |
| `bestfirst` | `coin` | 7 | 6 | 1 | `SUCC 6, UNSOLVED 1` | `SUCC 6, ERROR 1` |
| `bestfirst` | `corridor` | 9 | 9 | 0 | `SUCC 9` | `SUCC 9` |
| `bestfirst` | `gossip4` | 3 | 2 | 1 | `SUCC 3` | `SUCC 2, ERROR 1` |
| `bestfirst` | `grapevine` | 12 | 8 | 4 | `SUCC 8, TIMEOUT 4` | `SUCC 8, ERROR 4` |
| `bestfirst` | `grid` | 20 | 16 | 4 | `SUCC 16, TIMEOUT 4` | `SUCC 16, ERROR 4` |
| `bestfirst` | `grid_backup` | 4 | 1 | 3 | `SUCC 1, ERROR 3` | `SUCC 4` |
| `bestfirst` | `muddy_children` | 2 | 2 | 0 | `SUCC 2` | `SUCC 2` |
| `bestfirst` | `new_corridor` | 10 | 10 | 0 | `SUCC 10` | `SUCC 10` |
| `bestfirst` | `thief` | 1 | 1 | 0 | `SUCC 1` | `SUCC 1` |
| `cabs` | `bbl` | 6 | 6 | 0 | `SUCC 6` | `SUCC 6` |
| `cabs` | `coin` | 7 | 6 | 1 | `SUCC 6, UNSOLVED 1` | `SUCC 6, ERROR 1` |
| `cabs` | `corridor` | 9 | 9 | 0 | `SUCC 9` | `SUCC 9` |
| `cabs` | `gossip4` | 3 | 2 | 1 | `SUCC 3` | `SUCC 2, ERROR 1` |
| `cabs` | `grapevine` | 12 | 6 | 6 | `SUCC 6, UNSOLVED 6` | `SUCC 8, ERROR 4` |
| `cabs` | `grid` | 20 | 14 | 6 | `SUCC 14, UNSOLVED 6` | `SUCC 14, ERROR 6` |
| `cabs` | `grid_backup` | 4 | 1 | 3 | `SUCC 1, ERROR 3` | `SUCC 4` |
| `cabs` | `muddy_children` | 2 | 2 | 0 | `SUCC 2` | `SUCC 2` |
| `cabs` | `new_corridor` | 10 | 10 | 0 | `SUCC 10` | `SUCC 10` |
| `cabs` | `thief` | 1 | 1 | 0 | `SUCC 1` | `SUCC 1` |
| `cbfs` | `bbl` | 6 | 4 | 2 | `SUCC 4, TIMEOUT 2` | `SUCC 6` |
| `cbfs` | `coin` | 7 | 6 | 1 | `SUCC 6, UNSOLVED 1` | `SUCC 6, ERROR 1` |
| `cbfs` | `corridor` | 9 | 9 | 0 | `SUCC 9` | `SUCC 9` |
| `cbfs` | `gossip4` | 3 | 2 | 1 | `SUCC 3` | `SUCC 2, ERROR 1` |
| `cbfs` | `grapevine` | 12 | 8 | 4 | `SUCC 8, TIMEOUT 4` | `SUCC 8, ERROR 4` |
| `cbfs` | `grid` | 20 | 16 | 4 | `SUCC 16, TIMEOUT 4` | `SUCC 16, ERROR 4` |
| `cbfs` | `grid_backup` | 4 | 1 | 3 | `SUCC 1, ERROR 3` | `SUCC 4` |
| `cbfs` | `muddy_children` | 2 | 2 | 0 | `SUCC 2` | `SUCC 2` |
| `cbfs` | `new_corridor` | 10 | 10 | 0 | `SUCC 10` | `SUCC 10` |
| `cbfs` | `thief` | 1 | 1 | 0 | `SUCC 1` | `SUCC 1` |
| `lnbs` | `bbl` | 6 | 4 | 2 | `SUCC 4, UNSOLVED 2` | `SUCC 4, ERROR 2` |
| `lnbs` | `coin` | 7 | 6 | 1 | `SUCC 6, UNSOLVED 1` | `SUCC 6, ERROR 1` |
| `lnbs` | `corridor` | 9 | 9 | 0 | `SUCC 9` | `SUCC 9` |
| `lnbs` | `gossip4` | 3 | 2 | 1 | `SUCC 3` | `SUCC 2, ERROR 1` |
| `lnbs` | `grapevine` | 12 | 7 | 5 | `SUCC 7, UNSOLVED 5` | `SUCC 7, ERROR 5` |
| `lnbs` | `grid` | 20 | 17 | 3 | `SUCC 17, UNSOLVED 3` | `SUCC 17, ERROR 3` |
| `lnbs` | `grid_backup` | 4 | 1 | 3 | `SUCC 1, ERROR 3` | `SUCC 4` |
| `lnbs` | `muddy_children` | 2 | 2 | 0 | `SUCC 2` | `SUCC 2` |
| `lnbs` | `new_corridor` | 10 | 10 | 0 | `SUCC 10` | `SUCC 10` |
| `lnbs` | `thief` | 1 | 1 | 0 | `SUCC 1` | `SUCC 1` |

## `acps`

Pairs: `74`. Matched: `56`. Mismatched: `18`.

### `acps` Status Differences

| Domain | Instance | Python | C++ | Note |
|---|---|---|---|---|
| `coin` | `problem_07.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `gossip4` | `problem_02.pddl` | `SUCC` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem05_4ag_8g_1d.pddl` | `TIMEOUT` | `SUCC` | Status mismatch |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob1.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob2.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob3.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob4.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_EpGoal_prob2.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_EpGoal_prob3.pddl` | `TIMEOUT` | `SUCC` | Status mismatch |
| `grid` | `problem_EpGoal_prob4.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_NonBroadcast_prob3.pddl` | `SUCC` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_NonBroadcast_prob4.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |

### `acps` Metric Differences

| Domain | Instance | Fields | Len P/C | Exp P/C | Gen P/C | U/V P/C |
|---|---|---|---|---|---|---|
| `gossip4` | `problem_02.pddl` | `path_length, expanded, generated, goal_checked` | `5 / 27` | `1555 / 5544` | `1621 / 33265` | `0/0 / 0/0` |
| `gossip4` | `problem_03.pddl` | `path_length, expanded, generated, goal_checked` | `3 / 5` | `52 / 1555` | `205 / 1621` | `0/0 / 0/0` |
| `grapevine` | `problem03_4ag_4g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `1823 / 5315` | `9462 / 22488` | `0/1324 / 0/2973` |
| `grapevine` | `problem04_4ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `7 / 7` | `1548 / 3907` | `6617 / 14069` | `0/702 / 0/1875` |
| `grapevine` | `problem05_4ag_8g_1d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `3 / 17` | `826 / 1470` | `6112 / 11417` | `0/344 / 0/512` |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `10 / 13` | `602 / 924` | `4149 / 6841` | `0/288 / 0/403` |
| `grapevine` | `problem09_8ag_4g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `671 / 1163` | `6938 / 11072` | `0/193 / 0/294` |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `7 / 7` | `390 / 681` | `4357 / 6566` | `0/118 / 0/243` |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `7 / 11` | `303 / 490` | `4022 / 6270` | `0/54 / 0/150` |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `8 / 9` | `205 / 268` | `2801 / 3798` | `0/11 / 0/32` |
| `grid` | `problem_BlockCells_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `10 / 5` | `336 / 446` | `5379 / 7329` | `245/151 / 320/246` |
| `grid` | `problem_BlockCells_prob2.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `3 / 8` | `271 / 313` | `4391 / 5119` | `239/85 / 269/101` |
| `grid` | `problem_BlockCells_prob3.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `4 / 9` | `284 / 387` | `4464 / 6239` | `221/128 / 278/211` |
| `grid` | `problem_BlockCells_prob4.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `6 / 5` | `151 / 184` | `3054 / 3762` | `164/40 / 210/61` |
| `grid` | `problem_Broadcast_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `7 / 7` | `763 / 940` | `3266 / 4016` | `290/461 / 369/638` |
| `grid` | `problem_Broadcast_prob2.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `6 / 6` | `551 / 754` | `3424 / 4517` | `304/329 / 391/481` |
| `grid` | `problem_Broadcast_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `10 / 10` | `581 / 433` | `3202 / 2451` | `141/278 / 90/181` |
| `grid` | `problem_Broadcast_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `8 / 8` | `422 / 349` | `3286 / 2773` | `306/238 / 255/169` |
| `grid` | `problem_EpGoal_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `9 / 9` | `384 / 523` | `2573 / 3459` | `989/196 / 1310/344` |
| `grid` | `problem_EpGoal_prob2.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `10 / 9` | `291 / 278` | `2087 / 1987` | `733/150 / 705/148` |
| `grid` | `problem_EpGoal_prob3.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `9 / 11` | `238 / 314` | `2422 / 3217` | `457/135 / 630/190` |
| `grid` | `problem_EpGoal_prob4.pddl` | `path_length, expanded, generated, pruned_by_unknown, goal_checked` | `6 / 7` | `201 / 217` | `2264 / 2428` | `372/49 / 396/49` |
| `grid` | `problem_NonBroadcast_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `8 / 8` | `1165 / 983` | `5445 / 4612` | `89/650 / 71/466` |
| `grid` | `problem_NonBroadcast_prob2.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `7 / 7` | `945 / 682` | `6255 / 4499` | `92/623 / 64/484` |
| `grid` | `problem_NonBroadcast_prob3.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `12 / 5` | `536 / 434` | `3161 / 2574` | `377/93 / 313/60` |
| `grid` | `problem_NonBroadcast_prob4.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `10 / 9` | `414 / 325` | `3650 / 2872` | `318/70 / 259/43` |
| `grid` | `problem_NonEp_prob1.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `6 / 6` | `823 / 1055` | `5129 / 6119` | `0/535 / 0/805` |
| `grid` | `problem_NonEp_prob2.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `9 / 9` | `681 / 501` | `5627 / 4200` | `0/345 / 0/244` |
| `grid` | `problem_NonEp_prob3.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `618 / 856` | `4269 / 5754` | `0/394 / 0/678` |
| `grid` | `problem_NonEp_prob4.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `487 / 400` | `5112 / 4253` | `0/265 / 0/182` |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 3309` | `- / 12054` | `-/- / 0/8672` |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 1667` | `- / 10467` | `-/- / 0/1814` |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 2824` | `- / 9373` | `-/- / 0/6499` |

### `acps` Instance Results

#### `bbl`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `3 / 3` | `14 / 14` | `45 / 45` | `0/7 / 0/7` | `0.736` | `0.152` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `18 / 18` | `45 / 45` | `0/3 / 0/3` | `0.680` | `0.333` | `yes` |
| `problem03.pddl` | `SUCC` | `SUCC` | `5 / 5` | `223 / 223` | `841 / 841` | `0/222 / 0/222` | `5.197` | `1.415` | `yes` |
| `problem04.pddl` | `SUCC` | `SUCC` | `5 / 5` | `227 / 227` | `721 / 721` | `0/160 / 0/160` | `5.676` | `1.369` | `yes` |
| `problem05.pddl` | `SUCC` | `SUCC` | `5 / 5` | `223 / 223` | `841 / 841` | `0/222 / 0/222` | `7.499` | `1.152` | `yes` |
| `problem06.pddl` | `SUCC` | `SUCC` | `5 / 5` | `248 / 248` | `917 / 917` | `0/333 / 0/333` | `9.064` | `1.330` | `yes` |

#### `coin`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `1 / 1` | `4 / 4` | `0/0 / 0/0` | `0.361` | `0.227` | `yes` |
| `problem_02.pddl` | `SUCC` | `SUCC` | `2 / 2` | `4 / 4` | `11 / 11` | `0/0 / 0/0` | `0.483` | `0.207` | `yes` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 3` | `8 / 8` | `21 / 21` | `0/3 / 0/3` | `0.509` | `0.261` | `yes` |
| `problem_04.pddl` | `SUCC` | `SUCC` | `4 / 4` | `14 / 14` | `34 / 34` | `0/7 / 0/7` | `0.407` | `0.318` | `yes` |
| `problem_05.pddl` | `SUCC` | `SUCC` | `4 / 4` | `14 / 14` | `37 / 37` | `0/7 / 0/7` | `0.466` | `0.246` | `yes` |
| `problem_06.pddl` | `SUCC` | `SUCC` | `4 / 4` | `14 / 14` | `37 / 37` | `0/7 / 0/7` | `0.495` | `0.237` | `yes` |
| `problem_07.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `54 / 54` | `143 / 143` | `0/89 / 0/89` | `0.690` | `0.252` | `no` |

#### `corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.217` | `0.143` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.218` | `0.183` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.242` | `0.179` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.269` | `0.152` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.251` | `0.153` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.264` | `0.169` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.308` | `0.184` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.287` | `0.165` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `47 / 47` | `0/12 / 0/12` | `0.415` | `0.252` | `yes` |

#### `gossip4`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `1 / 1` | `7 / 7` | `0/0 / 0/0` | `0.351` | `0.224` | `yes` |
| `problem_02.pddl` | `SUCC` | `ERROR` | `5 / 27` | `1555 / 5544` | `1621 / 33265` | `0/0 / 0/0` | `7.401` | `31.258` | `no` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 5` | `52 / 1555` | `205 / 1621` | `0/0 / 0/0` | `0.727` | `0.762` | `yes` |

#### `grapevine`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `223 / 223` | `357 / 357` | `0/70 / 0/70` | `2.295` | `0.582` | `yes` |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `223 / 223` | `342 / 342` | `0/70 / 0/70` | `1.804` | `0.687` | `yes` |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | `SUCC` | `8 / 8` | `1823 / 5315` | `9462 / 22488` | `0/1324 / 0/2973` | `30.796` | `30.421` | `yes` |
| `problem04_4ag_4g_2d.pddl` | `SUCC` | `SUCC` | `7 / 7` | `1548 / 3907` | `6617 / 14069` | `0/702 / 0/1875` | `30.626` | `30.486` | `yes` |
| `problem05_4ag_8g_1d.pddl` | `TIMEOUT` | `SUCC` | `3 / 17` | `826 / 1470` | `6112 / 11417` | `0/344 / 0/512` | `30.580` | `30.626` | `no` |
| `problem06_4ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | `10 / 13` | `602 / 924` | `4149 / 6841` | `0/288 / 0/403` | `30.516` | `30.769` | `no` |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `1181 / 1181` | `1657 / 1657` | `0/348 / 0/348` | `26.153` | `10.204` | `yes` |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `1181 / 1181` | `1626 / 1626` | `0/348 / 0/348` | `27.815` | `11.102` | `yes` |
| `problem09_8ag_4g_1d.pddl` | `SUCC` | `SUCC` | `8 / 8` | `671 / 1163` | `6938 / 11072` | `0/193 / 0/294` | `30.734` | `30.511` | `yes` |
| `problem10_8ag_4g_2d.pddl` | `SUCC` | `SUCC` | `7 / 7` | `390 / 681` | `4357 / 6566` | `0/118 / 0/243` | `30.787` | `30.466` | `yes` |
| `problem11_8ag_8g_1d.pddl` | `TIMEOUT` | `ERROR` | `7 / 11` | `303 / 490` | `4022 / 6270` | `0/54 / 0/150` | `30.562` | `30.612` | `no` |
| `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | `8 / 9` | `205 / 268` | `2801 / 3798` | `0/11 / 0/32` | `31.101` | `30.591` | `no` |

#### `grid`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_BlockCells_prob1.pddl` | `TIMEOUT` | `ERROR` | `10 / 5` | `336 / 446` | `5379 / 7329` | `245/151 / 320/246` | `30.695` | `30.722` | `no` |
| `problem_BlockCells_prob2.pddl` | `TIMEOUT` | `ERROR` | `3 / 8` | `271 / 313` | `4391 / 5119` | `239/85 / 269/101` | `30.676` | `30.890` | `no` |
| `problem_BlockCells_prob3.pddl` | `TIMEOUT` | `ERROR` | `4 / 9` | `284 / 387` | `4464 / 6239` | `221/128 / 278/211` | `30.450` | `30.755` | `no` |
| `problem_BlockCells_prob4.pddl` | `TIMEOUT` | `ERROR` | `6 / 5` | `151 / 184` | `3054 / 3762` | `164/40 / 210/61` | `30.574` | `31.041` | `no` |
| `problem_Broadcast_prob1.pddl` | `SUCC` | `SUCC` | `7 / 7` | `763 / 940` | `3266 / 4016` | `290/461 / 369/638` | `30.475` | `30.487` | `yes` |
| `problem_Broadcast_prob2.pddl` | `SUCC` | `SUCC` | `6 / 6` | `551 / 754` | `3424 / 4517` | `304/329 / 391/481` | `30.375` | `30.589` | `yes` |
| `problem_Broadcast_prob3.pddl` | `SUCC` | `SUCC` | `10 / 10` | `581 / 433` | `3202 / 2451` | `141/278 / 90/181` | `30.455` | `30.770` | `yes` |
| `problem_Broadcast_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `422 / 349` | `3286 / 2773` | `306/238 / 255/169` | `30.410` | `30.947` | `yes` |
| `problem_EpGoal_prob1.pddl` | `SUCC` | `SUCC` | `9 / 9` | `384 / 523` | `2573 / 3459` | `989/196 / 1310/344` | `30.594` | `30.589` | `yes` |
| `problem_EpGoal_prob2.pddl` | `TIMEOUT` | `ERROR` | `10 / 9` | `291 / 278` | `2087 / 1987` | `733/150 / 705/148` | `30.715` | `30.844` | `no` |
| `problem_EpGoal_prob3.pddl` | `TIMEOUT` | `SUCC` | `9 / 11` | `238 / 314` | `2422 / 3217` | `457/135 / 630/190` | `30.561` | `30.761` | `no` |
| `problem_EpGoal_prob4.pddl` | `TIMEOUT` | `ERROR` | `6 / 7` | `201 / 217` | `2264 / 2428` | `372/49 / 396/49` | `30.460` | `30.964` | `no` |
| `problem_NonBroadcast_prob1.pddl` | `SUCC` | `SUCC` | `8 / 8` | `1165 / 983` | `5445 / 4612` | `89/650 / 71/466` | `30.462` | `30.575` | `yes` |
| `problem_NonBroadcast_prob2.pddl` | `SUCC` | `SUCC` | `7 / 7` | `945 / 682` | `6255 / 4499` | `92/623 / 64/484` | `30.538` | `30.578` | `yes` |
| `problem_NonBroadcast_prob3.pddl` | `SUCC` | `ERROR` | `12 / 5` | `536 / 434` | `3161 / 2574` | `377/93 / 313/60` | `30.534` | `30.783` | `no` |
| `problem_NonBroadcast_prob4.pddl` | `TIMEOUT` | `ERROR` | `10 / 9` | `414 / 325` | `3650 / 2872` | `318/70 / 259/43` | `30.643` | `31.114` | `no` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `823 / 1055` | `5129 / 6119` | `0/535 / 0/805` | `30.389` | `30.535` | `yes` |
| `problem_NonEp_prob2.pddl` | `SUCC` | `SUCC` | `9 / 9` | `681 / 501` | `5627 / 4200` | `0/345 / 0/244` | `30.458` | `30.688` | `yes` |
| `problem_NonEp_prob3.pddl` | `SUCC` | `SUCC` | `5 / 5` | `618 / 856` | `4269 / 5754` | `0/394 / 0/678` | `30.369` | `30.546` | `yes` |
| `problem_NonEp_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `487 / 400` | `5112 / 4253` | `0/265 / 0/182` | `30.510` | `30.867` | `yes` |

#### `grid_backup`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 3309` | `- / 12054` | `-/- / 0/8672` | `0.143` | `16.864` | `no` |
| `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 1667` | `- / 10467` | `-/- / 0/1814` | `0.147` | `30.657` | `no` |
| `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 2824` | `- / 9373` | `-/- / 0/6499` | `0.143` | `14.090` | `no` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `1569 / 1569` | `4125 / 4125` | `0/2485 / 0/2485` | `19.351` | `1.181` | `yes` |

#### `muddy_children`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `0 / 0` | `0 / 0` | `1 / 1` | `0/0 / 0/0` | `0.401` | `0.226` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `3 / 3` | `5 / 5` | `0/0 / 0/0` | `0.429` | `0.260` | `yes` |

#### `new_corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.313` | `0.234` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.230` | `0.160` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.236` | `0.177` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.293` | `0.195` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.279` | `0.189` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.301` | `0.220` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.311` | `0.185` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.399` | `0.208` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.362` | `0.215` | `yes` |
| `problem10_3ag_2g_2d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `22 / 22` | `51 / 51` | `0/12 / 0/12` | `0.261` | `0.150` | `yes` |

#### `thief`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem1_t_00000.pddl` | `SUCC` | `SUCC` | `2 / 2` | `3 / 3` | `7 / 7` | `0/0 / 0/0` | `0.157` | `0.147` | `yes` |

## `bestfirst`

Pairs: `74`. Matched: `61`. Mismatched: `13`.

### `bestfirst` Status Differences

| Domain | Instance | Python | C++ | Note |
|---|---|---|---|---|
| `coin` | `problem_07.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `gossip4` | `problem_02.pddl` | `SUCC` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem04_4ag_4g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob1.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob2.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob3.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob4.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |

### `bestfirst` Metric Differences

| Domain | Instance | Fields | Len P/C | Exp P/C | Gen P/C | U/V P/C |
|---|---|---|---|---|---|---|
| `coin` | `problem_06.pddl` | `pruned_by_visited` | `8 / 8` | `14 / 14` | `37 / 37` | `0/7 / 0/8` |
| `gossip4` | `problem_02.pddl` | `path_length, expanded, generated, goal_checked` | `5 / 11` | `5 / 6151` | `31 / 36907` | `0/0 / 0/0` |
| `grapevine` | `problem04_4ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `7 / 7` | `935 / 1929` | `6400 / 11986` | `0/722 / 0/1310` |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `27 / 28` | `261 / 387` | `2532 / 3348` | `0/46 / 0/138` |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `405 / 613` | `3995 / 5865` | `0/219 / 0/333` |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `15 / 17` | `114 / 133` | `1677 / 2206` | `0/2 / 0/3` |
| `grid` | `problem_BlockCells_prob1.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `11 / 11` | `200 / 231` | `3849 / 4519` | `23/271 / 23/328` |
| `grid` | `problem_BlockCells_prob2.pddl` | `expanded, generated, goal_checked` | `16 / 16` | `133 / 131` | `2808 / 2757` | `21/37 / 21/37` |
| `grid` | `problem_BlockCells_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `11 / 11` | `173 / 203` | `3265 / 3886` | `25/186 / 26/255` |
| `grid` | `problem_BlockCells_prob4.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `14 / 14` | `85 / 87` | `2045 / 2108` | `34/33 / 34/35` |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 9` | `- / 50` | `-/- / 0/0` |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 9` | `- / 71` | `-/- / 0/0` |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 11` | `- / 19` | `- / 93` | `-/- / 0/4` |

### `bestfirst` Instance Results

#### `bbl`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `3 / 3` | `6 / 6` | `25 / 25` | `0/0 / 0/0` | `0.582` | `0.255` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `10 / 10` | `41 / 41` | `0/1 / 0/1` | `0.697` | `0.345` | `yes` |
| `problem03.pddl` | `SUCC` | `SUCC` | `5 / 5` | `81 / 81` | `325 / 325` | `0/54 / 0/54` | `1.919` | `0.557` | `yes` |
| `problem04.pddl` | `SUCC` | `SUCC` | `7 / 7` | `37 / 37` | `149 / 149` | `0/13 / 0/13` | `1.566` | `0.487` | `yes` |
| `problem05.pddl` | `SUCC` | `SUCC` | `5 / 5` | `81 / 81` | `325 / 325` | `0/54 / 0/54` | `1.989` | `0.559` | `yes` |
| `problem06.pddl` | `SUCC` | `SUCC` | `5 / 5` | `95 / 95` | `381 / 381` | `0/72 / 0/72` | `2.359` | `0.546` | `yes` |

#### `coin`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `1 / 1` | `4 / 4` | `0/0 / 0/0` | `0.327` | `0.130` | `yes` |
| `problem_02.pddl` | `SUCC` | `SUCC` | `2 / 2` | `2 / 2` | `6 / 6` | `0/0 / 0/0` | `0.436` | `0.258` | `yes` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 3` | `4 / 4` | `11 / 11` | `0/0 / 0/0` | `0.432` | `0.224` | `yes` |
| `problem_04.pddl` | `SUCC` | `SUCC` | `4 / 4` | `4 / 4` | `11 / 11` | `0/1 / 0/1` | `0.508` | `0.333` | `yes` |
| `problem_05.pddl` | `SUCC` | `SUCC` | `4 / 4` | `15 / 15` | `39 / 39` | `0/10 / 0/10` | `0.603` | `0.282` | `yes` |
| `problem_06.pddl` | `SUCC` | `SUCC` | `8 / 8` | `14 / 14` | `37 / 37` | `0/7 / 0/8` | `0.573` | `0.274` | `yes` |
| `problem_07.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `106 / 106` | `277 / 277` | `0/171 / 0/171` | `0.996` | `0.408` | `no` |

#### `corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.270` | `0.149` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.208` | `0.142` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.184` | `0.156` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.196` | `0.196` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.198` | `0.144` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.204` | `0.165` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.222` | `0.148` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.222` | `0.151` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `9 / 9` | `32 / 32` | `0/2 / 0/2` | `0.234` | `0.165` | `yes` |

#### `gossip4`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `1 / 1` | `7 / 7` | `0/0 / 0/0` | `0.388` | `0.178` | `yes` |
| `problem_02.pddl` | `SUCC` | `ERROR` | `5 / 11` | `5 / 6151` | `31 / 36907` | `0/0 / 0/0` | `0.536` | `31.473` | `no` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `5 / 5` | `5 / 5` | `31 / 31` | `0/0 / 0/0` | `0.350` | `0.140` | `yes` |

#### `grapevine`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `11 / 11` | `79 / 79` | `0/1 / 0/1` | `0.268` | `0.206` | `yes` |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `9 / 9` | `63 / 63` | `0/1 / 0/1` | `0.262` | `0.206` | `yes` |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | `SUCC` | `12 / 12` | `32 / 32` | `211 / 211` | `0/1 / 0/1` | `0.610` | `0.402` | `yes` |
| `problem04_4ag_4g_2d.pddl` | `TIMEOUT` | `ERROR` | `7 / 7` | `935 / 1929` | `6400 / 11986` | `0/722 / 0/1310` | `30.998` | `30.635` | `no` |
| `problem05_4ag_8g_1d.pddl` | `SUCC` | `SUCC` | `26 / 26` | `145 / 145` | `990 / 990` | `0/11 / 0/11` | `6.067` | `4.048` | `yes` |
| `problem06_4ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | `27 / 28` | `261 / 387` | `2532 / 3348` | `0/46 / 0/138` | `30.769` | `30.784` | `no` |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `11 / 11` | `155 / 155` | `0/1 / 0/1` | `0.645` | `0.437` | `yes` |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `9 / 9` | `123 / 123` | `0/1 / 0/1` | `0.581` | `0.454` | `yes` |
| `problem09_8ag_4g_1d.pddl` | `SUCC` | `SUCC` | `12 / 12` | `32 / 32` | `419 / 419` | `0/1 / 0/1` | `1.887` | `1.438` | `yes` |
| `problem10_8ag_4g_2d.pddl` | `TIMEOUT` | `ERROR` | `5 / 5` | `405 / 613` | `3995 / 5865` | `0/219 / 0/333` | `30.877` | `30.595` | `no` |
| `problem11_8ag_8g_1d.pddl` | `SUCC` | `SUCC` | `26 / 26` | `145 / 145` | `2014 / 2014` | `0/11 / 0/11` | `27.904` | `20.251` | `yes` |
| `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | `15 / 17` | `114 / 133` | `1677 / 2206` | `0/2 / 0/3` | `30.712` | `30.504` | `no` |

#### `grid`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_BlockCells_prob1.pddl` | `TIMEOUT` | `ERROR` | `11 / 11` | `200 / 231` | `3849 / 4519` | `23/271 / 23/328` | `30.570` | `30.712` | `no` |
| `problem_BlockCells_prob2.pddl` | `TIMEOUT` | `ERROR` | `16 / 16` | `133 / 131` | `2808 / 2757` | `21/37 / 21/37` | `30.704` | `30.945` | `no` |
| `problem_BlockCells_prob3.pddl` | `TIMEOUT` | `ERROR` | `11 / 11` | `173 / 203` | `3265 / 3886` | `25/186 / 26/255` | `30.548` | `30.813` | `no` |
| `problem_BlockCells_prob4.pddl` | `TIMEOUT` | `ERROR` | `14 / 14` | `85 / 87` | `2045 / 2108` | `34/33 / 34/35` | `30.743` | `31.330` | `no` |
| `problem_Broadcast_prob1.pddl` | `SUCC` | `SUCC` | `7 / 7` | `7 / 7` | `39 / 39` | `2/0 / 2/0` | `0.342` | `0.541` | `yes` |
| `problem_Broadcast_prob2.pddl` | `SUCC` | `SUCC` | `6 / 6` | `6 / 6` | `49 / 49` | `3/0 / 3/0` | `0.348` | `0.686` | `yes` |
| `problem_Broadcast_prob3.pddl` | `SUCC` | `SUCC` | `10 / 10` | `10 / 10` | `61 / 61` | `2/0 / 2/0` | `0.506` | `1.132` | `yes` |
| `problem_Broadcast_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `8 / 8` | `65 / 65` | `3/0 / 3/0` | `0.573` | `1.343` | `yes` |
| `problem_EpGoal_prob1.pddl` | `SUCC` | `SUCC` | `9 / 9` | `10 / 10` | `74 / 74` | `40/0 / 40/0` | `0.851` | `0.950` | `yes` |
| `problem_EpGoal_prob2.pddl` | `SUCC` | `SUCC` | `16 / 16` | `48 / 48` | `358 / 358` | `120/8 / 120/8` | `7.117` | `9.287` | `yes` |
| `problem_EpGoal_prob3.pddl` | `SUCC` | `SUCC` | `13 / 13` | `49 / 49` | `507 / 507` | `112/7 / 112/7` | `8.442` | `7.719` | `yes` |
| `problem_EpGoal_prob4.pddl` | `SUCC` | `SUCC` | `17 / 17` | `46 / 46` | `506 / 506` | `92/6 / 92/6` | `12.433` | `15.268` | `yes` |
| `problem_NonBroadcast_prob1.pddl` | `SUCC` | `SUCC` | `8 / 8` | `8 / 8` | `47 / 47` | `0/0 / 0/0` | `0.323` | `0.667` | `yes` |
| `problem_NonBroadcast_prob2.pddl` | `SUCC` | `SUCC` | `7 / 7` | `7 / 7` | `59 / 59` | `0/0 / 0/0` | `0.349` | `0.720` | `yes` |
| `problem_NonBroadcast_prob3.pddl` | `SUCC` | `SUCC` | `12 / 12` | `12 / 12` | `68 / 68` | `4/0 / 4/0` | `0.702` | `1.510` | `yes` |
| `problem_NonBroadcast_prob4.pddl` | `SUCC` | `SUCC` | `11 / 11` | `11 / 11` | `88 / 88` | `5/0 / 5/0` | `0.800` | `1.770` | `yes` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `6 / 6` | `56 / 56` | `0/0 / 0/0` | `0.264` | `0.521` | `yes` |
| `problem_NonEp_prob2.pddl` | `SUCC` | `SUCC` | `9 / 9` | `9 / 9` | `92 / 92` | `0/0 / 0/0` | `0.385` | `1.160` | `yes` |
| `problem_NonEp_prob3.pddl` | `SUCC` | `SUCC` | `5 / 5` | `5 / 5` | `53 / 53` | `0/0 / 0/0` | `0.332` | `0.605` | `yes` |
| `problem_NonEp_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `8 / 8` | `84 / 84` | `0/0 / 0/0` | `0.459` | `1.195` | `yes` |

#### `grid_backup`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 9` | `- / 50` | `-/- / 0/0` | `0.162` | `0.321` | `no` |
| `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 9` | `- / 71` | `-/- / 0/0` | `0.160` | `0.439` | `no` |
| `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 11` | `- / 19` | `- / 93` | `-/- / 0/4` | `0.143` | `0.406` | `no` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `6 / 6` | `48 / 48` | `0/0 / 0/0` | `0.182` | `0.264` | `yes` |

#### `muddy_children`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `0 / 0` | `0 / 0` | `1 / 1` | `0/0 / 0/0` | `0.376` | `0.192` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `3 / 3` | `5 / 5` | `0/0 / 0/0` | `0.432` | `0.235` | `yes` |

#### `new_corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.331` | `0.325` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.211` | `0.177` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.187` | `0.156` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.215` | `0.162` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.221` | `0.176` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.238` | `0.209` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.236` | `0.203` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.374` | `0.182` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.292` | `0.208` | `yes` |
| `problem10_3ag_2g_2d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `10 / 10` | `33 / 33` | `0/1 / 0/1` | `0.188` | `0.159` | `yes` |

#### `thief`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem1_t_00000.pddl` | `SUCC` | `SUCC` | `2 / 2` | `3 / 3` | `7 / 7` | `0/0 / 0/0` | `0.156` | `0.184` | `yes` |

## `cabs`

Pairs: `74`. Matched: `57`. Mismatched: `17`.

### `cabs` Status Differences

| Domain | Instance | Python | C++ | Note |
|---|---|---|---|---|
| `coin` | `problem_07.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `gossip4` | `problem_02.pddl` | `SUCC` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem05_4ag_8g_1d.pddl` | `UNSOLVED` | `SUCC` | Status mismatch |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem09_8ag_4g_1d.pddl` | `UNSOLVED` | `SUCC` | Status mismatch |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob1.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob2.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob3.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob4.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_EpGoal_prob2.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_EpGoal_prob4.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |

### `cabs` Metric Differences

| Domain | Instance | Fields | Len P/C | Exp P/C | Gen P/C | U/V P/C |
|---|---|---|---|---|---|---|
| `bbl` | `problem02.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `3 / 3` | `318 / 634` | `1279 / 2543` | `0/315 / 0/603` |
| `bbl` | `problem03.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `900 / 2702` | `3607 / 10815` | `0/1443 / 0/4403` |
| `bbl` | `problem04.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `7 / 7` | `770 / 1281` | `3087 / 5131` | `0/1143 / 0/1812` |
| `bbl` | `problem05.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `729 / 2482` | `2923 / 9935` | `0/1161 / 0/4040` |
| `bbl` | `problem06.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `599 / 1982` | `2403 / 7935` | `0/985 / 0/3539` |
| `coin` | `problem_04.pddl` | `expanded, generated, goal_checked` | `4 / 4` | `359 / 639` | `907 / 1607` | `0/73 / 0/73` |
| `coin` | `problem_06.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `691 / 122` | `1647 / 312` | `0/262 / 0/87` |
| `coin` | `problem_07.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `3945 / 8369` | `10118 / 21474` | `0/4818 / 0/10582` |
| `corridor` | `problem01_3ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `608 / 1088` | `1307 / 2196` | `0/293 / 0/435` |
| `corridor` | `problem02_5ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `584 / 1006` | `1263 / 2041` | `0/285 / 0/414` |
| `corridor` | `problem03_7ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `580 / 964` | `1256 / 1967` | `0/283 / 0/397` |
| `corridor` | `problem04_3ag_2g_3d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `440 / 778` | `997 / 1621` | `0/241 / 0/341` |
| `corridor` | `problem05_5ag_2g_3d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `417 / 714` | `955 / 1508` | `0/232 / 0/315` |
| `corridor` | `problem06_7ag_2g_3d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `402 / 669` | `929 / 1423` | `0/225 / 0/303` |
| `corridor` | `problem07_3ag_2g_5d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `366 / 711` | `862 / 1500` | `0/215 / 0/318` |
| `corridor` | `problem08_5ag_2g_5d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `358 / 673` | `845 / 1425` | `0/217 / 0/316` |
| `corridor` | `problem09_7ag_2g_5d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `354 / 628` | `837 / 1337` | `0/217 / 0/309` |
| `gossip4` | `problem_02.pddl` | `path_length, expanded, generated, goal_checked` | `5 / 0` | `391 / 3377` | `2353 / 20269` | `0/0 / 0/0` |
| `gossip4` | `problem_03.pddl` | `path_length, expanded, generated, goal_checked` | `3 / 5` | `153 / 391` | `925 / 2353` | `0/0 / 0/0` |
| `grapevine` | `problem01_4ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `450 / 483` | `3218 / 3566` | `0/968 / 0/1095` |
| `grapevine` | `problem02_4ag_2g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `443 / 461` | `3158 / 3338` | `0/955 / 0/1022` |
| `grapevine` | `problem03_4ag_4g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `1053 / 1077` | `8123 / 8374` | `0/2808 / 0/2944` |
| `grapevine` | `problem04_4ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `7 / 7` | `869 / 1056` | `6308 / 7916` | `0/2106 / 0/2757` |
| `grapevine` | `problem05_4ag_8g_1d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `0 / 27` | `820 / 1217` | `6744 / 10410` | `0/2904 / 0/4794` |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `613 / 838` | `4806 / 7084` | `0/1888 / 0/3127` |
| `grapevine` | `problem07_8ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `411 / 425` | `5005 / 5292` | `0/1381 / 0/1497` |
| `grapevine` | `problem08_8ag_2g_2d.pddl` | `generated, pruned_by_visited, goal_checked` | `4 / 4` | `414 / 414` | `5046 / 5039` | `0/1411 / 0/1397` |
| `grapevine` | `problem09_8ag_4g_1d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `0 / 8` | `511 / 728` | `6550 / 9988` | `0/2187 / 0/3525` |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `331 / 497` | `4337 / 6484` | `0/1181 / 0/1952` |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `416 / 508` | `4526 / 7022` | `0/1508 / 0/2575` |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `216 / 413` | `3102 / 4527` | `0/884 / 0/1472` |
| `grid` | `problem_BlockCells_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `388 / 572` | `5402 / 8241` | `411/2190 / 550/3515` |
| `grid` | `problem_BlockCells_prob2.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `302 / 380` | `4428 / 5672` | `346/1649 / 417/2137` |
| `grid` | `problem_BlockCells_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `338 / 481` | `4651 / 6793` | `366/1943 / 465/2893` |
| `grid` | `problem_BlockCells_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `164 / 225` | `3091 / 4341` | `195/967 / 274/1638` |
| `grid` | `problem_Broadcast_prob1.pddl` | `generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `7 / 7` | `629 / 629` | `3472 / 3473` | `270/888 / 271/886` |
| `grid` | `problem_Broadcast_prob2.pddl` | `pruned_by_unknown, pruned_by_visited, goal_checked` | `6 / 6` | `535 / 535` | `4591 / 4591` | `373/1245 / 374/1243` |
| `grid` | `problem_Broadcast_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `10 / 10` | `702 / 652` | `4338 / 4032` | `197/651 / 190/596` |
| `grid` | `problem_Broadcast_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `8 / 8` | `519 / 513` | `4508 / 4463` | `447/872 / 445/853` |
| `grid` | `problem_EpGoal_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `9 / 9` | `415 / 575` | `2989 / 4159` | `1223/650 / 1712/841` |
| `grid` | `problem_EpGoal_prob2.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `325 / 373` | `2176 / 2508` | `918/393 / 1046/514` |
| `grid` | `problem_EpGoal_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `11 / 11` | `281 / 408` | `2973 / 4263` | `503/517 / 765/776` |
| `grid` | `problem_EpGoal_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `200 / 260` | `2329 / 3035` | `346/362 / 454/540` |
| `grid` | `problem_NonBroadcast_prob1.pddl` | `generated, pruned_by_visited, goal_checked` | `8 / 8` | `758 / 758` | `4239 / 4242` | `86/990 / 86/989` |
| `grid` | `problem_NonBroadcast_prob2.pddl` | `generated, pruned_by_visited, goal_checked` | `7 / 7` | `673 / 673` | `5678 / 5682` | `111/1463 / 111/1453` |
| `grid` | `problem_NonBroadcast_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `12 / 12` | `566 / 527` | `3483 / 3232` | `406/533 / 373/452` |
| `grid` | `problem_NonBroadcast_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `11 / 11` | `436 / 399` | `3861 / 3514` | `343/647 / 317/602` |
| `grid` | `problem_NonEp_prob1.pddl` | `generated, pruned_by_visited, goal_checked` | `6 / 6` | `540 / 540` | `4771 / 4758` | `0/1305 / 0/1296` |
| `grid` | `problem_NonEp_prob2.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `9 / 9` | `919 / 758` | `8670 / 7136` | `0/1494 / 0/1201` |
| `grid` | `problem_NonEp_prob3.pddl` | `generated, goal_checked` | `5 / 5` | `436 / 436` | `4998 / 5001` | `0/1220 / 0/1220` |
| `grid` | `problem_NonEp_prob4.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `687 / 618` | `7995 / 7228` | `0/1323 / 0/1162` |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 1017` | `- / 5348` | `-/- / 0/986` |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 897` | `- / 6755` | `-/- / 0/1913` |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 1324` | `- / 6384` | `-/- / 0/1492` |
| `grid_backup` | `problem_NonEp_prob1.pddl` | `generated, pruned_by_visited, goal_checked` | `6 / 6` | `516 / 516` | `3810 / 3807` | `0/1037 / 0/1034` |
| `new_corridor` | `problem01_3ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `535 / 858` | `1304 / 1993` | `0/197 / 0/241` |
| `new_corridor` | `problem02_5ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `498 / 783` | `1223 / 1834` | `0/191 / 0/231` |
| `new_corridor` | `problem03_7ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `472 / 708` | `1168 / 1672` | `0/187 / 0/220` |
| `new_corridor` | `problem04_3ag_2g_3d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `398 / 644` | `1007 / 1535` | `0/176 / 0/211` |
| `new_corridor` | `problem05_5ag_2g_3d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `370 / 587` | `947 / 1414` | `0/172 / 0/203` |
| `new_corridor` | `problem06_7ag_2g_3d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `351 / 534` | `907 / 1299` | `0/169 / 0/195` |
| `new_corridor` | `problem07_3ag_2g_5d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `347 / 625` | `900 / 1495` | `0/169 / 0/208` |
| `new_corridor` | `problem08_5ag_2g_5d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `324 / 571` | `850 / 1378` | `0/165 / 0/200` |
| `new_corridor` | `problem09_7ag_2g_5d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `307 / 521` | `812 / 1272` | `0/162 / 0/193` |
| `new_corridor` | `problem10_3ag_2g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `5 / 5` | `474 / 727` | `1172 / 1714` | `0/187 / 0/223` |
| `thief` | `problem1_t_00000.pddl` | `expanded, generated, goal_checked` | `2 / 2` | `325 / 555` | `657 / 1117` | `0/6 / 0/6` |

### `cabs` Instance Results

#### `bbl`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `3 / 3` | `75 / 75` | `307 / 307` | `0/100 / 0/100` | `1.222` | `0.408` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `318 / 634` | `1279 / 2543` | `0/315 / 0/603` | `12.975` | `12.385` | `yes` |
| `problem03.pddl` | `SUCC` | `SUCC` | `5 / 5` | `900 / 2702` | `3607 / 10815` | `0/1443 / 0/4403` | `25.923` | `24.776` | `yes` |
| `problem04.pddl` | `SUCC` | `SUCC` | `7 / 7` | `770 / 1281` | `3087 / 5131` | `0/1143 / 0/1812` | `27.278` | `18.374` | `yes` |
| `problem05.pddl` | `SUCC` | `SUCC` | `5 / 5` | `729 / 2482` | `2923 / 9935` | `0/1161 / 0/4040` | `26.518` | `24.936` | `yes` |
| `problem06.pddl` | `SUCC` | `SUCC` | `5 / 5` | `599 / 1982` | `2403 / 7935` | `0/985 / 0/3539` | `28.450` | `24.969` | `yes` |

#### `coin`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `7 / 7` | `28 / 28` | `0/0 / 0/0` | `0.363` | `0.145` | `yes` |
| `problem_02.pddl` | `SUCC` | `SUCC` | `2 / 2` | `25 / 25` | `69 / 69` | `0/15 / 0/15` | `0.448` | `0.266` | `yes` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 3` | `52 / 52` | `140 / 140` | `0/28 / 0/28` | `0.611` | `0.250` | `yes` |
| `problem_04.pddl` | `SUCC` | `SUCC` | `4 / 4` | `359 / 639` | `907 / 1607` | `0/73 / 0/73` | `4.643` | `4.652` | `yes` |
| `problem_05.pddl` | `SUCC` | `SUCC` | `4 / 4` | `94 / 94` | `247 / 247` | `0/70 / 0/70` | `0.808` | `0.355` | `yes` |
| `problem_06.pddl` | `SUCC` | `SUCC` | `4 / 4` | `691 / 122` | `1647 / 312` | `0/262 / 0/87` | `8.787` | `0.288` | `yes` |
| `problem_07.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `3945 / 8369` | `10118 / 21474` | `0/4818 / 0/10582` | `29.506` | `29.554` | `no` |

#### `corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `608 / 1088` | `1307 / 2196` | `0/293 / 0/435` | `8.726` | `8.409` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `584 / 1006` | `1263 / 2041` | `0/285 / 0/414` | `8.710` | `8.416` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `580 / 964` | `1256 / 1967` | `0/283 / 0/397` | `8.769` | `8.460` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `440 / 778` | `997 / 1621` | `0/241 / 0/341` | `9.321` | `8.678` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `417 / 714` | `955 / 1508` | `0/232 / 0/315` | `9.155` | `8.605` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `402 / 669` | `929 / 1423` | `0/225 / 0/303` | `9.349` | `8.691` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `366 / 711` | `862 / 1500` | `0/215 / 0/318` | `9.457` | `8.716` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `358 / 673` | `845 / 1425` | `0/217 / 0/316` | `9.741` | `8.641` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `354 / 628` | `837 / 1337` | `0/217 / 0/309` | `9.918` | `8.643` | `yes` |

#### `gossip4`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `7 / 7` | `49 / 49` | `0/0 / 0/0` | `0.455` | `0.197` | `yes` |
| `problem_02.pddl` | `SUCC` | `ERROR` | `5 / 0` | `391 / 3377` | `2353 / 20269` | `0/0 / 0/0` | `6.755` | `30.135` | `no` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 5` | `153 / 391` | `925 / 2353` | `0/0 / 0/0` | `2.125` | `0.767` | `yes` |

#### `grapevine`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `450 / 483` | `3218 / 3566` | `0/968 / 0/1095` | `11.642` | `9.684` | `yes` |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `443 / 461` | `3158 / 3338` | `0/955 / 0/1022` | `12.587` | `9.985` | `yes` |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | `SUCC` | `8 / 8` | `1053 / 1077` | `8123 / 8374` | `0/2808 / 0/2944` | `25.905` | `16.452` | `yes` |
| `problem04_4ag_4g_2d.pddl` | `SUCC` | `SUCC` | `7 / 7` | `869 / 1056` | `6308 / 7916` | `0/2106 / 0/2757` | `30.134` | `25.985` | `yes` |
| `problem05_4ag_8g_1d.pddl` | `UNSOLVED` | `SUCC` | `0 / 27` | `820 / 1217` | `6744 / 10410` | `0/2904 / 0/4794` | `29.805` | `29.760` | `no` |
| `problem06_4ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `613 / 838` | `4806 / 7084` | `0/1888 / 0/3127` | `29.674` | `30.035` | `no` |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `411 / 425` | `5005 / 5292` | `0/1381 / 0/1497` | `21.314` | `14.989` | `yes` |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `414 / 414` | `5046 / 5039` | `0/1411 / 0/1397` | `25.971` | `16.928` | `yes` |
| `problem09_8ag_4g_1d.pddl` | `UNSOLVED` | `SUCC` | `0 / 8` | `511 / 728` | `6550 / 9988` | `0/2187 / 0/3525` | `29.248` | `29.606` | `no` |
| `problem10_8ag_4g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `331 / 497` | `4337 / 6484` | `0/1181 / 0/1952` | `29.971` | `29.892` | `no` |
| `problem11_8ag_8g_1d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `416 / 508` | `4526 / 7022` | `0/1508 / 0/2575` | `29.632` | `29.771` | `no` |
| `problem12_8ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `216 / 413` | `3102 / 4527` | `0/884 / 0/1472` | `29.957` | `30.257` | `no` |

#### `grid`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_BlockCells_prob1.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `388 / 572` | `5402 / 8241` | `411/2190 / 550/3515` | `29.573` | `29.809` | `no` |
| `problem_BlockCells_prob2.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `302 / 380` | `4428 / 5672` | `346/1649 / 417/2137` | `29.813` | `30.357` | `no` |
| `problem_BlockCells_prob3.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `338 / 481` | `4651 / 6793` | `366/1943 / 465/2893` | `29.565` | `30.062` | `no` |
| `problem_BlockCells_prob4.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `164 / 225` | `3091 / 4341` | `195/967 / 274/1638` | `29.357` | `30.772` | `no` |
| `problem_Broadcast_prob1.pddl` | `SUCC` | `SUCC` | `7 / 7` | `629 / 629` | `3472 / 3473` | `270/888 / 271/886` | `18.996` | `13.798` | `yes` |
| `problem_Broadcast_prob2.pddl` | `SUCC` | `SUCC` | `6 / 6` | `535 / 535` | `4591 / 4591` | `373/1245 / 374/1243` | `23.869` | `16.060` | `yes` |
| `problem_Broadcast_prob3.pddl` | `SUCC` | `SUCC` | `10 / 10` | `702 / 652` | `4338 / 4032` | `197/651 / 190/596` | `29.280` | `30.687` | `yes` |
| `problem_Broadcast_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `519 / 513` | `4508 / 4463` | `447/872 / 445/853` | `29.512` | `30.537` | `yes` |
| `problem_EpGoal_prob1.pddl` | `SUCC` | `SUCC` | `9 / 9` | `415 / 575` | `2989 / 4159` | `1223/650 / 1712/841` | `30.126` | `29.546` | `yes` |
| `problem_EpGoal_prob2.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `325 / 373` | `2176 / 2508` | `918/393 / 1046/514` | `29.875` | `30.448` | `no` |
| `problem_EpGoal_prob3.pddl` | `SUCC` | `SUCC` | `11 / 11` | `281 / 408` | `2973 / 4263` | `503/517 / 765/776` | `30.297` | `30.553` | `yes` |
| `problem_EpGoal_prob4.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `200 / 260` | `2329 / 3035` | `346/362 / 454/540` | `30.083` | `30.688` | `no` |
| `problem_NonBroadcast_prob1.pddl` | `SUCC` | `SUCC` | `8 / 8` | `758 / 758` | `4239 / 4242` | `86/990 / 86/989` | `16.480` | `17.827` | `yes` |
| `problem_NonBroadcast_prob2.pddl` | `SUCC` | `SUCC` | `7 / 7` | `673 / 673` | `5678 / 5682` | `111/1463 / 111/1453` | `20.213` | `21.213` | `yes` |
| `problem_NonBroadcast_prob3.pddl` | `SUCC` | `SUCC` | `12 / 12` | `566 / 527` | `3483 / 3232` | `406/533 / 373/452` | `29.391` | `30.689` | `yes` |
| `problem_NonBroadcast_prob4.pddl` | `SUCC` | `SUCC` | `11 / 11` | `436 / 399` | `3861 / 3514` | `343/647 / 317/602` | `29.318` | `30.042` | `yes` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `540 / 540` | `4771 / 4758` | `0/1305 / 0/1296` | `12.607` | `8.687` | `yes` |
| `problem_NonEp_prob2.pddl` | `SUCC` | `SUCC` | `9 / 9` | `919 / 758` | `8670 / 7136` | `0/1494 / 0/1201` | `29.444` | `29.858` | `yes` |
| `problem_NonEp_prob3.pddl` | `SUCC` | `SUCC` | `5 / 5` | `436 / 436` | `4998 / 5001` | `0/1220 / 0/1220` | `12.534` | `8.775` | `yes` |
| `problem_NonEp_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `687 / 618` | `7995 / 7228` | `0/1323 / 0/1162` | `29.494` | `30.802` | `yes` |

#### `grid_backup`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 1017` | `- / 5348` | `-/- / 0/986` | `0.159` | `9.511` | `no` |
| `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 897` | `- / 6755` | `-/- / 0/1913` | `0.153` | `19.602` | `no` |
| `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 1324` | `- / 6384` | `-/- / 0/1492` | `0.144` | `16.697` | `no` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `516 / 516` | `3810 / 3807` | `0/1037 / 0/1034` | `3.169` | `0.910` | `yes` |

#### `muddy_children`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `0 / 0` | `0 / 0` | `7 / 7` | `0/0 / 0/0` | `0.391` | `0.186` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `21 / 21` | `35 / 35` | `0/7 / 0/7` | `0.549` | `0.257` | `yes` |

#### `new_corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `535 / 858` | `1304 / 1993` | `0/197 / 0/241` | `8.777` | `8.545` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `498 / 783` | `1223 / 1834` | `0/191 / 0/231` | `8.834` | `8.458` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `472 / 708` | `1168 / 1672` | `0/187 / 0/220` | `8.968` | `8.508` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `398 / 644` | `1007 / 1535` | `0/176 / 0/211` | `9.191` | `8.642` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `370 / 587` | `947 / 1414` | `0/172 / 0/203` | `9.213` | `8.679` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `351 / 534` | `907 / 1299` | `0/169 / 0/195` | `9.355` | `8.686` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `347 / 625` | `900 / 1495` | `0/169 / 0/208` | `9.561` | `8.794` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `324 / 571` | `850 / 1378` | `0/165 / 0/200` | `10.705` | `8.850` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `307 / 521` | `812 / 1272` | `0/162 / 0/193` | `10.929` | `8.954` | `yes` |
| `problem10_3ag_2g_2d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `474 / 727` | `1172 / 1714` | `0/187 / 0/223` | `9.011` | `8.467` | `yes` |

#### `thief`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem1_t_00000.pddl` | `SUCC` | `SUCC` | `2 / 2` | `325 / 555` | `657 / 1117` | `0/6 / 0/6` | `4.265` | `4.200` | `yes` |

## `cbfs`

Pairs: `74`. Matched: `59`. Mismatched: `15`.

### `cbfs` Status Differences

| Domain | Instance | Python | C++ | Note |
|---|---|---|---|---|
| `bbl` | `problem05.pddl` | `TIMEOUT` | `SUCC` | Status mismatch |
| `bbl` | `problem06.pddl` | `TIMEOUT` | `SUCC` | Status mismatch |
| `coin` | `problem_07.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `gossip4` | `problem_02.pddl` | `SUCC` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob1.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob2.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob3.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob4.pddl` | `TIMEOUT` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |

### `cbfs` Metric Differences

| Domain | Instance | Fields | Len P/C | Exp P/C | Gen P/C | U/V P/C |
|---|---|---|---|---|---|---|
| `bbl` | `problem05.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `45 / 35` | `230 / 741` | `921 / 2965` | `0/239 / 0/1075` |
| `bbl` | `problem06.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `26 / 21` | `217 / 831` | `869 / 3325` | `0/276 / 0/1761` |
| `coin` | `problem_06.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `11 / 8` | `27 / 21` | `0/3 / 0/0` |
| `gossip4` | `problem_02.pddl` | `path_length, expanded, generated, goal_checked` | `5 / 422` | `5 / 422` | `31 / 2533` | `0/0 / 0/0` |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `18 / 33` | `262 / 345` | `2618 / 3510` | `0/59 / 0/78` |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `11 / 16` | `255 / 311` | `3487 / 4567` | `0/126 / 0/163` |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `24 / 32` | `111 / 146` | `2118 / 2927` | `0/32 / 0/39` |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `7 / 26` | `60 / 106` | `1335 / 1960` | `0/6 / 0/33` |
| `grid` | `problem_BlockCells_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `5 / 6` | `308 / 396` | `5142 / 6803` | `207/189 / 249/265` |
| `grid` | `problem_BlockCells_prob2.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `6 / 7` | `238 / 254` | `4067 / 4362` | `209/127 / 217/136` |
| `grid` | `problem_BlockCells_prob3.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `5 / 13` | `264 / 338` | `4277 / 5632` | `196/177 / 231/237` |
| `grid` | `problem_BlockCells_prob4.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `3 / 7` | `144 / 170` | `2960 / 3528` | `163/77 / 199/87` |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 9` | `- / 50` | `-/- / 0/0` |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 9` | `- / 71` | `-/- / 0/0` |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 57` | `- / 272` | `-/- / 0/11` |

### `cbfs` Instance Results

#### `bbl`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `3 / 3` | `3 / 3` | `13 / 13` | `0/0 / 0/0` | `0.619` | `0.303` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `10 / 10` | `18 / 18` | `73 / 73` | `0/9 / 0/9` | `0.995` | `0.538` | `yes` |
| `problem03.pddl` | `SUCC` | `SUCC` | `31 / 31` | `74 / 74` | `297 / 297` | `0/59 / 0/59` | `4.021` | `0.902` | `yes` |
| `problem04.pddl` | `SUCC` | `SUCC` | `23 / 23` | `76 / 76` | `305 / 305` | `0/30 / 0/30` | `5.250` | `1.206` | `yes` |
| `problem05.pddl` | `TIMEOUT` | `SUCC` | `45 / 35` | `230 / 741` | `921 / 2965` | `0/239 / 0/1075` | `30.524` | `9.302` | `no` |
| `problem06.pddl` | `TIMEOUT` | `SUCC` | `26 / 21` | `217 / 831` | `869 / 3325` | `0/276 / 0/1761` | `30.410` | `10.655` | `no` |

#### `coin`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `1 / 1` | `4 / 4` | `0/0 / 0/0` | `0.334` | `0.141` | `yes` |
| `problem_02.pddl` | `SUCC` | `SUCC` | `2 / 2` | `2 / 2` | `6 / 6` | `0/0 / 0/0` | `0.463` | `0.312` | `yes` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 3` | `3 / 3` | `9 / 9` | `0/0 / 0/0` | `0.449` | `0.346` | `yes` |
| `problem_04.pddl` | `SUCC` | `SUCC` | `5 / 5` | `7 / 7` | `18 / 18` | `0/1 / 0/1` | `0.497` | `0.241` | `yes` |
| `problem_05.pddl` | `SUCC` | `SUCC` | `4 / 4` | `4 / 4` | `11 / 11` | `0/0 / 0/0` | `0.447` | `0.276` | `yes` |
| `problem_06.pddl` | `SUCC` | `SUCC` | `8 / 8` | `11 / 8` | `27 / 21` | `0/3 / 0/0` | `0.542` | `0.283` | `yes` |
| `problem_07.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `70 / 70` | `184 / 184` | `0/114 / 0/114` | `0.811` | `0.272` | `no` |

#### `corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.223` | `0.146` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.217` | `0.145` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.217` | `0.153` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.252` | `0.157` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.242` | `0.165` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.259` | `0.204` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.283` | `0.191` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.304` | `0.183` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `15 / 15` | `53 / 53` | `0/6 / 0/6` | `0.375` | `0.178` | `yes` |

#### `gossip4`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `1 / 1` | `7 / 7` | `0/0 / 0/0` | `0.463` | `0.145` | `yes` |
| `problem_02.pddl` | `SUCC` | `ERROR` | `5 / 422` | `5 / 422` | `31 / 2533` | `0/0 / 0/0` | `0.543` | `31.099` | `no` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `5 / 5` | `5 / 5` | `31 / 31` | `0/0 / 0/0` | `0.352` | `0.175` | `yes` |

#### `grapevine`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | `SUCC` | `6 / 6` | `24 / 24` | `211 / 211` | `0/3 / 0/3` | `0.603` | `0.386` | `yes` |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | `SUCC` | `10 / 10` | `28 / 28` | `252 / 252` | `0/3 / 0/3` | `0.757` | `0.510` | `yes` |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | `SUCC` | `10 / 10` | `50 / 50` | `466 / 466` | `0/8 / 0/8` | `1.345` | `0.829` | `yes` |
| `problem04_4ag_4g_2d.pddl` | `SUCC` | `SUCC` | `7 / 7` | `236 / 236` | `1545 / 1545` | `0/129 / 0/129` | `6.501` | `3.823` | `yes` |
| `problem05_4ag_8g_1d.pddl` | `SUCC` | `SUCC` | `37 / 37` | `244 / 244` | `2483 / 2483` | `0/59 / 0/59` | `17.351` | `11.681` | `yes` |
| `problem06_4ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | `18 / 33` | `262 / 345` | `2618 / 3510` | `0/59 / 0/78` | `31.022` | `30.563` | `no` |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | `SUCC` | `6 / 6` | `24 / 24` | `427 / 427` | `0/3 / 0/3` | `1.744` | `1.218` | `yes` |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | `SUCC` | `10 / 10` | `28 / 28` | `512 / 512` | `0/3 / 0/3` | `2.682` | `1.933` | `yes` |
| `problem09_8ag_4g_1d.pddl` | `SUCC` | `SUCC` | `10 / 10` | `50 / 50` | `958 / 958` | `0/8 / 0/8` | `5.316` | `3.659` | `yes` |
| `problem10_8ag_4g_2d.pddl` | `TIMEOUT` | `ERROR` | `11 / 16` | `255 / 311` | `3487 / 4567` | `0/126 / 0/163` | `31.273` | `30.877` | `no` |
| `problem11_8ag_8g_1d.pddl` | `TIMEOUT` | `ERROR` | `24 / 32` | `111 / 146` | `2118 / 2927` | `0/32 / 0/39` | `30.673` | `30.719` | `no` |
| `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | `ERROR` | `7 / 26` | `60 / 106` | `1335 / 1960` | `0/6 / 0/33` | `31.179` | `30.783` | `no` |

#### `grid`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_BlockCells_prob1.pddl` | `TIMEOUT` | `ERROR` | `5 / 6` | `308 / 396` | `5142 / 6803` | `207/189 / 249/265` | `30.686` | `30.665` | `no` |
| `problem_BlockCells_prob2.pddl` | `TIMEOUT` | `ERROR` | `6 / 7` | `238 / 254` | `4067 / 4362` | `209/127 / 217/136` | `30.570` | `31.021` | `no` |
| `problem_BlockCells_prob3.pddl` | `TIMEOUT` | `ERROR` | `5 / 13` | `264 / 338` | `4277 / 5632` | `196/177 / 231/237` | `30.525` | `30.705` | `no` |
| `problem_BlockCells_prob4.pddl` | `TIMEOUT` | `ERROR` | `3 / 7` | `144 / 170` | `2960 / 3528` | `163/77 / 199/87` | `30.551` | `31.000` | `no` |
| `problem_Broadcast_prob1.pddl` | `SUCC` | `SUCC` | `7 / 7` | `7 / 7` | `39 / 39` | `2/0 / 2/0` | `0.372` | `0.629` | `yes` |
| `problem_Broadcast_prob2.pddl` | `SUCC` | `SUCC` | `6 / 6` | `6 / 6` | `49 / 49` | `3/0 / 3/0` | `0.359` | `0.689` | `yes` |
| `problem_Broadcast_prob3.pddl` | `SUCC` | `SUCC` | `10 / 10` | `10 / 10` | `61 / 61` | `2/0 / 2/0` | `0.505` | `1.118` | `yes` |
| `problem_Broadcast_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `8 / 8` | `65 / 65` | `3/0 / 3/0` | `0.559` | `1.305` | `yes` |
| `problem_EpGoal_prob1.pddl` | `SUCC` | `SUCC` | `9 / 9` | `20 / 20` | `151 / 151` | `80/1 / 80/1` | `1.673` | `1.657` | `yes` |
| `problem_EpGoal_prob2.pddl` | `SUCC` | `SUCC` | `17 / 17` | `121 / 121` | `888 / 888` | `318/20 / 318/20` | `14.987` | `17.562` | `yes` |
| `problem_EpGoal_prob3.pddl` | `SUCC` | `SUCC` | `11 / 11` | `34 / 34` | `344 / 344` | `84/5 / 84/5` | `4.502` | `4.070` | `yes` |
| `problem_EpGoal_prob4.pddl` | `SUCC` | `SUCC` | `15 / 15` | `107 / 107` | `1174 / 1174` | `251/14 / 251/14` | `26.540` | `29.436` | `yes` |
| `problem_NonBroadcast_prob1.pddl` | `SUCC` | `SUCC` | `8 / 8` | `8 / 8` | `47 / 47` | `0/0 / 0/0` | `0.307` | `0.596` | `yes` |
| `problem_NonBroadcast_prob2.pddl` | `SUCC` | `SUCC` | `7 / 7` | `7 / 7` | `59 / 59` | `0/0 / 0/0` | `0.377` | `0.773` | `yes` |
| `problem_NonBroadcast_prob3.pddl` | `SUCC` | `SUCC` | `12 / 12` | `12 / 12` | `68 / 68` | `4/0 / 4/0` | `0.688` | `1.436` | `yes` |
| `problem_NonBroadcast_prob4.pddl` | `SUCC` | `SUCC` | `11 / 11` | `11 / 11` | `88 / 88` | `5/0 / 5/0` | `0.791` | `1.769` | `yes` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `6 / 6` | `56 / 56` | `0/0 / 0/0` | `0.275` | `0.549` | `yes` |
| `problem_NonEp_prob2.pddl` | `SUCC` | `SUCC` | `9 / 9` | `9 / 9` | `92 / 92` | `0/0 / 0/0` | `0.404` | `0.996` | `yes` |
| `problem_NonEp_prob3.pddl` | `SUCC` | `SUCC` | `5 / 5` | `5 / 5` | `53 / 53` | `0/0 / 0/0` | `0.340` | `0.649` | `yes` |
| `problem_NonEp_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `8 / 8` | `84 / 84` | `0/0 / 0/0` | `0.409` | `1.189` | `yes` |

#### `grid_backup`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 9` | `- / 50` | `-/- / 0/0` | `0.146` | `0.297` | `no` |
| `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 9` | `- / 71` | `-/- / 0/0` | `0.148` | `0.419` | `no` |
| `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 57` | `- / 272` | `-/- / 0/11` | `0.169` | `0.553` | `no` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `6 / 6` | `48 / 48` | `0/0 / 0/0` | `0.179` | `0.266` | `yes` |

#### `muddy_children`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `0 / 0` | `0 / 0` | `1 / 1` | `0/0 / 0/0` | `0.328` | `0.166` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `3 / 3` | `5 / 5` | `0/0 / 0/0` | `0.391` | `0.276` | `yes` |

#### `new_corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.356` | `0.273` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.233` | `0.162` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.235` | `0.261` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.272` | `0.188` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.312` | `0.184` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.298` | `0.200` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.303` | `0.183` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.342` | `0.214` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.336` | `0.239` | `yes` |
| `problem10_3ag_2g_2d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `18 / 18` | `58 / 58` | `0/6 / 0/6` | `0.274` | `0.210` | `yes` |

#### `thief`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem1_t_00000.pddl` | `SUCC` | `SUCC` | `2 / 2` | `4 / 4` | `9 / 9` | `0/1 / 0/1` | `0.172` | `0.161` | `yes` |

## `lnbs`

Pairs: `74`. Matched: `59`. Mismatched: `15`.

### `lnbs` Status Differences

| Domain | Instance | Python | C++ | Note |
|---|---|---|---|---|
| `bbl` | `problem05.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `bbl` | `problem06.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `coin` | `problem_07.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `gossip4` | `problem_02.pddl` | `SUCC` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem04_4ag_4g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob2.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob3.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid` | `problem_BlockCells_prob4.pddl` | `UNSOLVED` | `ERROR` | C++ solver process exited with a non-zero status |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | Solver process exited with a non-zero status |

### `lnbs` Metric Differences

| Domain | Instance | Fields | Len P/C | Exp P/C | Gen P/C | U/V P/C |
|---|---|---|---|---|---|---|
| `bbl` | `problem05.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `469 / 675` | `1881 / 2705` | `0/745 / 0/1198` |
| `bbl` | `problem06.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `402 / 553` | `1613 / 2217` | `0/707 / 0/1049` |
| `coin` | `problem_06.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `88 / 90` | `226 / 231` | `0/63 / 0/62` |
| `coin` | `problem_07.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `160 / 162` | `413 / 419` | `0/178 / 0/179` |
| `gossip4` | `problem_02.pddl` | `path_length, expanded, generated, goal_checked` | `5 / 0` | `187 / 1997` | `1127 / 11987` | `0/0 / 0/0` |
| `gossip4` | `problem_03.pddl` | `path_length, expanded, generated, goal_checked` | `3 / 5` | `79 / 187` | `479 / 1127` | `0/0 / 0/0` |
| `grapevine` | `problem01_4ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `152 / 145` | `1042 / 1009` | `0/246 / 0/232` |
| `grapevine` | `problem02_4ag_2g_2d.pddl` | `generated, pruned_by_visited, goal_checked` | `4 / 4` | `144 / 144` | `974 / 994` | `0/220 / 0/228` |
| `grapevine` | `problem03_4ag_4g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `424 / 413` | `3429 / 3364` | `0/1236 / 0/1239` |
| `grapevine` | `problem04_4ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `568 / 730` | `4228 / 5126` | `0/1687 / 0/2112` |
| `grapevine` | `problem05_4ag_8g_1d.pddl` | `path_length, expanded, generated, pruned_by_visited, goal_checked` | `27 / 19` | `544 / 756` | `5636 / 8010` | `0/2409 / 0/3339` |
| `grapevine` | `problem06_4ag_8g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `408 / 520` | `4097 / 5313` | `0/1840 / 0/2268` |
| `grapevine` | `problem07_8ag_2g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `4 / 4` | `160 / 153` | `2062 / 1967` | `0/512 / 0/469` |
| `grapevine` | `problem08_8ag_2g_2d.pddl` | `generated, pruned_by_visited, goal_checked` | `4 / 4` | `152 / 152` | `1922 / 1966` | `0/450 / 0/470` |
| `grapevine` | `problem09_8ag_4g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `8 / 8` | `335 / 448` | `5452 / 6978` | `0/2166 / 0/2725` |
| `grapevine` | `problem10_8ag_4g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `249 / 340` | `3731 / 4699` | `0/1307 / 0/1809` |
| `grapevine` | `problem11_8ag_8g_1d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `198 / 265` | `3684 / 5280` | `0/1434 / 0/2235` |
| `grapevine` | `problem12_8ag_8g_2d.pddl` | `expanded, generated, pruned_by_visited, goal_checked` | `0 / 0` | `155 / 211` | `2592 / 3699` | `0/911 / 0/1417` |
| `grid` | `problem_BlockCells_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `21 / 21` | `283 / 342` | `5074 / 6498` | `165/2562 / 169/3528` |
| `grid` | `problem_BlockCells_prob2.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `227 / 247` | `4024 / 4427` | `176/1711 / 189/1896` |
| `grid` | `problem_BlockCells_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `240 / 289` | `4193 / 5370` | `159/2192 / 196/2918` |
| `grid` | `problem_BlockCells_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `0 / 0` | `134 / 157` | `2863 / 3423` | `194/1242 / 226/1542` |
| `grid` | `problem_Broadcast_prob1.pddl` | `pruned_by_unknown, pruned_by_visited, goal_checked` | `7 / 7` | `298 / 298` | `1603 / 1603` | `131/287 / 132/284` |
| `grid` | `problem_Broadcast_prob3.pddl` | `pruned_by_unknown, pruned_by_visited, goal_checked` | `10 / 10` | `392 / 392` | `2400 / 2400` | `78/340 / 77/332` |
| `grid` | `problem_Broadcast_prob4.pddl` | `generated, pruned_by_unknown, goal_checked` | `8 / 8` | `348 / 348` | `2895 / 2903` | `206/442 / 209/442` |
| `grid` | `problem_EpGoal_prob1.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `9 / 9` | `357 / 376` | `2671 / 2813` | `1182/461 / 1242/507` |
| `grid` | `problem_EpGoal_prob2.pddl` | `expanded, generated, pruned_by_unknown, goal_checked` | `17 / 17` | `276 / 283` | `1987 / 2045` | `806/181 / 829/181` |
| `grid` | `problem_EpGoal_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `11 / 11` | `240 / 312` | `2455 / 3192` | `575/219 / 791/321` |
| `grid` | `problem_EpGoal_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `14 / 14` | `184 / 205` | `2081 / 2313` | `395/188 / 445/198` |
| `grid` | `problem_NonBroadcast_prob1.pddl` | `generated, pruned_by_visited, goal_checked` | `8 / 8` | `332 / 332` | `1814 / 1816` | `36/272 / 36/270` |
| `grid` | `problem_NonBroadcast_prob2.pddl` | `generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `7 / 7` | `315 / 315` | `2597 / 2599` | `57/422 / 56/417` |
| `grid` | `problem_NonBroadcast_prob3.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `12 / 12` | `445 / 389` | `2683 / 2336` | `236/360 / 200/262` |
| `grid` | `problem_NonBroadcast_prob4.pddl` | `expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `11 / 11` | `369 / 291` | `3206 / 2540` | `211/349 / 183/203` |
| `grid` | `problem_NonEp_prob1.pddl` | `generated, pruned_by_visited, goal_checked` | `6 / 6` | `287 / 287` | `2523 / 2516` | `0/441 / 0/438` |
| `grid` | `problem_NonEp_prob2.pddl` | `generated, pruned_by_visited, goal_checked` | `9 / 9` | `391 / 391` | `3900 / 3907` | `0/505 / 0/514` |
| `grid` | `problem_NonEp_prob3.pddl` | `generated, goal_checked` | `5 / 5` | `208 / 208` | `2315 / 2318` | `0/389 / 0/389` |
| `grid` | `problem_NonEp_prob4.pddl` | `generated, pruned_by_visited, goal_checked` | `8 / 8` | `359 / 359` | `3958 / 3968` | `0/540 / 0/533` |
| `grid_backup` | `problem_Boardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 348` | `- / 1827` | `-/- / 0/243` |
| `grid_backup` | `problem_EpGoal_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 360` | `- / 2734` | `-/- / 0/522` |
| `grid_backup` | `problem_NonBoardcast_prob1.pddl` | `path_length, expanded, generated, pruned_by_unknown, pruned_by_visited, goal_checked` | `- / 9` | `- / 368` | `- / 1814` | `-/- / 0/295` |

### `lnbs` Instance Results

#### `bbl`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `3 / 3` | `47 / 47` | `193 / 193` | `0/52 / 0/52` | `0.829` | `0.467` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `85 / 85` | `345 / 345` | `0/74 / 0/74` | `2.332` | `0.739` | `yes` |
| `problem03.pddl` | `SUCC` | `SUCC` | `15 / 15` | `448 / 448` | `1797 / 1797` | `0/767 / 0/767` | `15.223` | `2.791` | `yes` |
| `problem04.pddl` | `SUCC` | `SUCC` | `7 / 7` | `349 / 349` | `1401 / 1401` | `0/439 / 0/439` | `12.687` | `2.682` | `yes` |
| `problem05.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `469 / 675` | `1881 / 2705` | `0/745 / 0/1198` | `29.990` | `7.616` | `no` |
| `problem06.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `402 / 553` | `1613 / 2217` | `0/707 / 0/1049` | `29.862` | `7.370` | `no` |

#### `coin`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `5 / 5` | `20 / 20` | `0/0 / 0/0` | `0.451` | `0.226` | `yes` |
| `problem_02.pddl` | `SUCC` | `SUCC` | `2 / 2` | `18 / 18` | `50 / 50` | `0/9 / 0/9` | `0.543` | `0.207` | `yes` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 3` | `37 / 37` | `98 / 98` | `0/16 / 0/16` | `0.567` | `0.218` | `yes` |
| `problem_04.pddl` | `SUCC` | `SUCC` | `4 / 4` | `61 / 61` | `160 / 160` | `0/39 / 0/39` | `0.729` | `0.394` | `yes` |
| `problem_05.pddl` | `SUCC` | `SUCC` | `4 / 4` | `61 / 61` | `160 / 160` | `0/34 / 0/34` | `0.748` | `0.329` | `yes` |
| `problem_06.pddl` | `SUCC` | `SUCC` | `4 / 4` | `88 / 90` | `226 / 231` | `0/63 / 0/62` | `0.711` | `0.282` | `yes` |
| `problem_07.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `160 / 162` | `413 / 419` | `0/178 / 0/179` | `0.966` | `0.319` | `no` |

#### `corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.463` | `0.188` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.471` | `0.203` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.493` | `0.203` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.610` | `0.251` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.678` | `0.282` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.729` | `0.282` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.818` | `0.297` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `0.936` | `0.337` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `73 / 73` | `243 / 243` | `0/73 / 0/73` | `1.126` | `0.343` | `yes` |

#### `gossip4`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_01.pddl` | `SUCC` | `SUCC` | `1 / 1` | `5 / 5` | `35 / 35` | `0/0 / 0/0` | `0.536` | `0.271` | `yes` |
| `problem_02.pddl` | `SUCC` | `ERROR` | `5 / 0` | `187 / 1997` | `1127 / 11987` | `0/0 / 0/0` | `3.720` | `30.016` | `no` |
| `problem_03.pddl` | `SUCC` | `SUCC` | `3 / 5` | `79 / 187` | `479 / 1127` | `0/0 / 0/0` | `1.117` | `0.402` | `yes` |

#### `grapevine`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `152 / 145` | `1042 / 1009` | `0/246 / 0/232` | `2.124` | `0.951` | `yes` |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `144 / 144` | `974 / 994` | `0/220 / 0/228` | `2.302` | `1.246` | `yes` |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | `SUCC` | `8 / 8` | `424 / 413` | `3429 / 3364` | `0/1236 / 0/1239` | `10.051` | `4.836` | `yes` |
| `problem04_4ag_4g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `568 / 730` | `4228 / 5126` | `0/1687 / 0/2112` | `29.472` | `30.195` | `no` |
| `problem05_4ag_8g_1d.pddl` | `SUCC` | `SUCC` | `27 / 19` | `544 / 756` | `5636 / 8010` | `0/2409 / 0/3339` | `30.177` | `30.234` | `yes` |
| `problem06_4ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `408 / 520` | `4097 / 5313` | `0/1840 / 0/2268` | `29.848` | `30.149` | `no` |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `160 / 153` | `2062 / 1967` | `0/512 / 0/469` | `7.688` | `4.046` | `yes` |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | `SUCC` | `4 / 4` | `152 / 152` | `1922 / 1966` | `0/450 / 0/470` | `8.831` | `5.234` | `yes` |
| `problem09_8ag_4g_1d.pddl` | `SUCC` | `SUCC` | `8 / 8` | `335 / 448` | `5452 / 6978` | `0/2166 / 0/2725` | `30.329` | `24.520` | `yes` |
| `problem10_8ag_4g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `249 / 340` | `3731 / 4699` | `0/1307 / 0/1809` | `29.414` | `29.479` | `no` |
| `problem11_8ag_8g_1d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `198 / 265` | `3684 / 5280` | `0/1434 / 0/2235` | `29.592` | `30.256` | `no` |
| `problem12_8ag_8g_2d.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `155 / 211` | `2592 / 3699` | `0/911 / 0/1417` | `29.625` | `30.066` | `no` |

#### `grid`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_BlockCells_prob1.pddl` | `SUCC` | `SUCC` | `21 / 21` | `283 / 342` | `5074 / 6498` | `165/2562 / 169/3528` | `30.334` | `30.533` | `yes` |
| `problem_BlockCells_prob2.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `227 / 247` | `4024 / 4427` | `176/1711 / 189/1896` | `30.251` | `30.469` | `no` |
| `problem_BlockCells_prob3.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `240 / 289` | `4193 / 5370` | `159/2192 / 196/2918` | `30.096` | `30.463` | `no` |
| `problem_BlockCells_prob4.pddl` | `UNSOLVED` | `ERROR` | `0 / 0` | `134 / 157` | `2863 / 3423` | `194/1242 / 226/1542` | `30.162` | `30.148` | `no` |
| `problem_Broadcast_prob1.pddl` | `SUCC` | `SUCC` | `7 / 7` | `298 / 298` | `1603 / 1603` | `131/287 / 132/284` | `9.460` | `6.682` | `yes` |
| `problem_Broadcast_prob2.pddl` | `SUCC` | `SUCC` | `6 / 6` | `284 / 284` | `2406 / 2406` | `179/432 / 179/432` | `12.340` | `8.694` | `yes` |
| `problem_Broadcast_prob3.pddl` | `SUCC` | `SUCC` | `10 / 10` | `392 / 392` | `2400 / 2400` | `78/340 / 77/332` | `18.029` | `22.722` | `yes` |
| `problem_Broadcast_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `348 / 348` | `2895 / 2903` | `206/442 / 209/442` | `21.115` | `24.048` | `yes` |
| `problem_EpGoal_prob1.pddl` | `SUCC` | `SUCC` | `9 / 9` | `357 / 376` | `2671 / 2813` | `1182/461 / 1242/507` | `30.234` | `22.042` | `yes` |
| `problem_EpGoal_prob2.pddl` | `SUCC` | `SUCC` | `17 / 17` | `276 / 283` | `1987 / 2045` | `806/181 / 829/181` | `30.567` | `30.716` | `yes` |
| `problem_EpGoal_prob3.pddl` | `SUCC` | `SUCC` | `11 / 11` | `240 / 312` | `2455 / 3192` | `575/219 / 791/321` | `30.278` | `30.587` | `yes` |
| `problem_EpGoal_prob4.pddl` | `SUCC` | `SUCC` | `14 / 14` | `184 / 205` | `2081 / 2313` | `395/188 / 445/198` | `30.636` | `31.063` | `yes` |
| `problem_NonBroadcast_prob1.pddl` | `SUCC` | `SUCC` | `8 / 8` | `332 / 332` | `1814 / 1816` | `36/272 / 36/270` | `7.484` | `8.111` | `yes` |
| `problem_NonBroadcast_prob2.pddl` | `SUCC` | `SUCC` | `7 / 7` | `315 / 315` | `2597 / 2599` | `57/422 / 56/417` | `9.446` | `10.721` | `yes` |
| `problem_NonBroadcast_prob3.pddl` | `SUCC` | `SUCC` | `12 / 12` | `445 / 389` | `2683 / 2336` | `236/360 / 200/262` | `28.193` | `30.670` | `yes` |
| `problem_NonBroadcast_prob4.pddl` | `SUCC` | `SUCC` | `11 / 11` | `369 / 291` | `3206 / 2540` | `211/349 / 183/203` | `30.285` | `30.834` | `yes` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `287 / 287` | `2523 / 2516` | `0/441 / 0/438` | `6.497` | `4.648` | `yes` |
| `problem_NonEp_prob2.pddl` | `SUCC` | `SUCC` | `9 / 9` | `391 / 391` | `3900 / 3907` | `0/505 / 0/514` | `12.956` | `17.465` | `yes` |
| `problem_NonEp_prob3.pddl` | `SUCC` | `SUCC` | `5 / 5` | `208 / 208` | `2315 / 2318` | `0/389 / 0/389` | `6.003` | `4.382` | `yes` |
| `problem_NonEp_prob4.pddl` | `SUCC` | `SUCC` | `8 / 8` | `359 / 359` | `3958 / 3968` | `0/540 / 0/533` | `16.254` | `21.444` | `yes` |

#### `grid_backup`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem_Boardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 348` | `- / 1827` | `-/- / 0/243` | `0.155` | `2.343` | `no` |
| `problem_EpGoal_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 360` | `- / 2734` | `-/- / 0/522` | `0.149` | `8.597` | `no` |
| `problem_NonBoardcast_prob1.pddl` | `ERROR` | `SUCC` | `- / 9` | `- / 368` | `- / 1814` | `-/- / 0/295` | `0.144` | `2.303` | `no` |
| `problem_NonEp_prob1.pddl` | `SUCC` | `SUCC` | `6 / 6` | `279 / 279` | `2089 / 2089` | `0/369 / 0/369` | `1.933` | `0.684` | `yes` |

#### `muddy_children`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01.pddl` | `SUCC` | `SUCC` | `0 / 0` | `0 / 0` | `5 / 5` | `0/0 / 0/0` | `0.450` | `0.258` | `yes` |
| `problem02.pddl` | `SUCC` | `SUCC` | `3 / 3` | `18 / 18` | `28 / 28` | `0/5 / 0/5` | `0.564` | `0.243` | `yes` |

#### `new_corridor`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem01_3ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.503` | `0.211` | `yes` |
| `problem02_5ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.535` | `0.238` | `yes` |
| `problem03_7ag_2g_1d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.651` | `0.276` | `yes` |
| `problem04_3ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.741` | `0.306` | `yes` |
| `problem05_5ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.786` | `0.381` | `yes` |
| `problem06_7ag_2g_3d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.874` | `0.421` | `yes` |
| `problem07_3ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.955` | `0.362` | `yes` |
| `problem08_5ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `1.105` | `0.411` | `yes` |
| `problem09_7ag_2g_5d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `1.122` | `0.452` | `yes` |
| `problem10_3ag_2g_2d.pddl` | `SUCC` | `SUCC` | `5 / 5` | `86 / 86` | `272 / 272` | `0/69 / 0/69` | `0.585` | `0.270` | `yes` |

#### `thief`

| Instance | Python | C++ | Len P/C | Exp P/C | Gen P/C | U/V P/C | Py Wall s | C++ Wall s | Status Match |
|---|---|---|---|---|---|---|---|---|---|
| `problem1_t_00000.pddl` | `SUCC` | `SUCC` | `2 / 2` | `16 / 16` | `37 / 37` | `0/5 / 0/5` | `0.207` | `0.177` | `yes` |
