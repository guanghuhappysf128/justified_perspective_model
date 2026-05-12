# Old Benchmark C++ Results

Source: `output/cpp_benchmark_sweep_60s/summary.json`

Solver timeout: `60s`; max expanded: `300000`.

`TIMEOUT` and `EXPANSION_LIMIT` are treated as acceptable bounded run results for this sweep. `PASS` means the instance solved or stopped at one of those limits without parser/runtime failure.

## Overall Summary

| Total | PASS | SUCC | TIMEOUT | EXPANSION_LIMIT | Failures |
|---:|---:|---:|---:|---:|---:|
| 74 | 74 | 34 | 33 | 7 | 0 |

Compared with the earlier `8s` sweep, `grapevine/problem06_4ag_8g_2d.pddl` now solves under the `60s` limit with plan length `24`. Several corridor and new-corridor instances now stop at the `300000` expansion cap before reaching the wall-clock timeout.

The sweep was run with:

```bash
python3 tools/run_jpm_cpp_solver.py \
  -d <domain.pddl> \
  -p <problem.pddl> \
  -o output/cpp_benchmark_sweep_60s/<domain>__<problem>.ir.json \
  --timeout 60 \
  --max-expanded 300000
```

## Domain Summary

| Domain | Instances | SUCC | TIMEOUT | EXPANSION_LIMIT | Failures |
|---|---:|---:|---:|---:|---:|
| `bbl` | 6 | 6 | 0 | 0 | 0 |
| `coin` | 7 | 5 | 2 | 0 | 0 |
| `corridor` | 9 | 0 | 6 | 3 | 0 |
| `gossip4` | 3 | 3 | 0 | 0 | 0 |
| `grapevine` | 12 | 9 | 3 | 0 | 0 |
| `grid` | 20 | 4 | 16 | 0 | 0 |
| `grid_backup` | 4 | 4 | 0 | 0 | 0 |
| `muddy_children` | 2 | 2 | 0 | 0 | 0 |
| `new_corridor` | 10 | 0 | 6 | 4 | 0 |
| `thief` | 1 | 1 | 0 | 0 | 0 |

## Instance Results

### `bbl`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem01.pddl` | `SUCC` | 0 | 0 | 1 | 0.066 |
| `problem02.pddl` | `SUCC` | 0 | 0 | 1 | 0.067 |
| `problem03.pddl` | `SUCC` | 0 | 0 | 1 | 0.069 |
| `problem04.pddl` | `SUCC` | 0 | 0 | 1 | 0.074 |
| `problem05.pddl` | `SUCC` | 0 | 0 | 1 | 0.068 |
| `problem06.pddl` | `SUCC` | 0 | 0 | 1 | 0.064 |

### `coin`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem_01.pddl` | `SUCC` | 1 | 1 | 4 | 0.065 |
| `problem_02.pddl` | `SUCC` | 2 | 2 | 6 | 0.07 |
| `problem_03.pddl` | `SUCC` | 3 | 4 | 11 | 0.073 |
| `problem_04.pddl` | `SUCC` | 4 | 5 | 13 | 0.071 |
| `problem_05.pddl` | `TIMEOUT` | 0 | 2628 | 6571 | 61.928 |
| `problem_06.pddl` | `SUCC` | 8 | 28 | 70 | 0.073 |
| `problem_07.pddl` | `TIMEOUT` | 0 | 130244 | 357963 | 63.773 |

### `corridor`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem01_3ag_2g_1d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 32.556 |
| `problem02_5ag_2g_1d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 34.402 |
| `problem03_7ag_2g_1d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 36.556 |
| `problem04_3ag_2g_3d.pddl` | `TIMEOUT` | 0 | 264201 | 1083805 | 63.968 |
| `problem05_5ag_2g_3d.pddl` | `TIMEOUT` | 0 | 246998 | 1013082 | 64.028 |
| `problem06_7ag_2g_3d.pddl` | `TIMEOUT` | 0 | 232236 | 952608 | 63.924 |
| `problem07_3ag_2g_5d.pddl` | `TIMEOUT` | 0 | 163565 | 670763 | 63.77 |
| `problem08_5ag_2g_5d.pddl` | `TIMEOUT` | 0 | 153181 | 628118 | 63.957 |
| `problem09_7ag_2g_5d.pddl` | `TIMEOUT` | 0 | 143272 | 587615 | 61.725 |

### `gossip4`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem_01.pddl` | `SUCC` | 0 | 0 | 1 | 0.064 |
| `problem_02.pddl` | `SUCC` | 0 | 0 | 1 | 0.065 |
| `problem_03.pddl` | `SUCC` | 0 | 0 | 1 | 0.066 |

### `grapevine`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem01_4ag_2g_1d.pddl` | `SUCC` | 4 | 12 | 94 | 0.085 |
| `problem02_4ag_2g_2d.pddl` | `SUCC` | 4 | 11 | 79 | 0.084 |
| `problem03_4ag_4g_1d.pddl` | `SUCC` | 9 | 23 | 168 | 0.105 |
| `problem04_4ag_4g_2d.pddl` | `TIMEOUT` | 0 | 19358 | 120557 | 63.362 |
| `problem05_4ag_8g_1d.pddl` | `SUCC` | 18 | 49 | 388 | 0.285 |
| `problem06_4ag_8g_2d.pddl` | `SUCC` | 24 | 2961 | 23103 | 39.667 |
| `problem07_8ag_2g_1d.pddl` | `SUCC` | 4 | 16 | 190 | 0.14 |
| `problem08_8ag_2g_2d.pddl` | `SUCC` | 4 | 15 | 159 | 0.143 |
| `problem09_8ag_4g_1d.pddl` | `SUCC` | 9 | 31 | 344 | 0.242 |
| `problem10_8ag_4g_2d.pddl` | `TIMEOUT` | 0 | 6581 | 72519 | 63.337 |
| `problem11_8ag_8g_1d.pddl` | `SUCC` | 18 | 61 | 808 | 0.968 |
| `problem12_8ag_8g_2d.pddl` | `TIMEOUT` | 0 | 1917 | 24243 | 63.441 |

### `grid`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem_BlockCells_prob1.pddl` | `TIMEOUT` | 0 | 9985 | 380565 | 63.489 |
| `problem_BlockCells_prob2.pddl` | `TIMEOUT` | 0 | 3504 | 175092 | 63.488 |
| `problem_BlockCells_prob3.pddl` | `TIMEOUT` | 0 | 8933 | 340640 | 63.825 |
| `problem_BlockCells_prob4.pddl` | `TIMEOUT` | 0 | 2008 | 130606 | 64.058 |
| `problem_Broadcast_prob1.pddl` | `TIMEOUT` | 0 | 7958 | 256538 | 62.061 |
| `problem_Broadcast_prob2.pddl` | `TIMEOUT` | 0 | 6194 | 267973 | 64.101 |
| `problem_Broadcast_prob3.pddl` | `TIMEOUT` | 0 | 2866 | 125576 | 63.797 |
| `problem_Broadcast_prob4.pddl` | `TIMEOUT` | 0 | 2290 | 132691 | 64.106 |
| `problem_EpGoal_prob1.pddl` | `TIMEOUT` | 0 | 4974 | 175224 | 64.012 |
| `problem_EpGoal_prob2.pddl` | `TIMEOUT` | 0 | 1967 | 88637 | 63.999 |
| `problem_EpGoal_prob3.pddl` | `TIMEOUT` | 0 | 3327 | 150778 | 63.934 |
| `problem_EpGoal_prob4.pddl` | `TIMEOUT` | 0 | 1316 | 78948 | 62.54 |
| `problem_NonBroadcast_prob1.pddl` | `TIMEOUT` | 0 | 8834 | 127343 | 63.896 |
| `problem_NonBroadcast_prob2.pddl` | `TIMEOUT` | 0 | 7143 | 118444 | 63.981 |
| `problem_NonBroadcast_prob3.pddl` | `TIMEOUT` | 0 | 2536 | 80488 | 64.033 |
| `problem_NonBroadcast_prob4.pddl` | `TIMEOUT` | 0 | 2120 | 71845 | 64.077 |
| `problem_NonEp_prob1.pddl` | `SUCC` | 6 | 6 | 218 | 0.163 |
| `problem_NonEp_prob2.pddl` | `SUCC` | 9 | 9 | 416 | 0.277 |
| `problem_NonEp_prob3.pddl` | `SUCC` | 5 | 5 | 233 | 0.194 |
| `problem_NonEp_prob4.pddl` | `SUCC` | 8 | 8 | 468 | 0.33 |

### `grid_backup`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem_Boardcast_prob1.pddl` | `SUCC` | 6 | 6 | 31 | 0.109 |
| `problem_EpGoal_prob1.pddl` | `SUCC` | 6 | 6 | 48 | 0.104 |
| `problem_NonBoardcast_prob1.pddl` | `SUCC` | 6 | 6 | 30 | 0.099 |
| `problem_NonEp_prob1.pddl` | `SUCC` | 6 | 6 | 48 | 0.097 |

### `muddy_children`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem01.pddl` | `SUCC` | 0 | 0 | 1 | 0.063 |
| `problem02.pddl` | `SUCC` | 0 | 0 | 1 | 0.065 |

### `new_corridor`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem01_3ag_2g_1d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 32.357 |
| `problem02_5ag_2g_1d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 34.437 |
| `problem03_7ag_2g_1d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 36.824 |
| `problem04_3ag_2g_3d.pddl` | `TIMEOUT` | 0 | 265314 | 1088377 | 64.111 |
| `problem05_5ag_2g_3d.pddl` | `TIMEOUT` | 0 | 246835 | 1012430 | 63.887 |
| `problem06_7ag_2g_3d.pddl` | `TIMEOUT` | 0 | 231320 | 948837 | 61.84 |
| `problem07_3ag_2g_5d.pddl` | `TIMEOUT` | 0 | 163695 | 671306 | 63.714 |
| `problem08_5ag_2g_5d.pddl` | `TIMEOUT` | 0 | 152149 | 623881 | 63.715 |
| `problem09_7ag_2g_5d.pddl` | `TIMEOUT` | 0 | 143811 | 589817 | 63.717 |
| `problem10_3ag_2g_2d.pddl` | `EXPANSION_LIMIT` | 0 | 300000 | 1230940 | 49.152 |

### `thief`

| Instance | Running | Plan Len | Expanded | Generated | Wall s |
|---|---|---:|---:|---:|---:|
| `problem1_t_00000.pddl` | `SUCC` | 2 | 3 | 7 | 0.066 |
