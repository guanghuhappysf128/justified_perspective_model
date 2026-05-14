# Converted From EPDDL

This folder stores F-PDDL benchmark material derived from the `plank` EPDDL benchmarks.

Support levels:
- `supported`: converted problems and F-PDDL support files were generated.
- `partial`: the source domain is tracked here, but no faithful F-PDDL generator exists yet.
- `unsupported`: no F-PDDL mapping exists yet for this EPDDL family.

Solver settings used in this report (generated on May 10, 2026):
- EPDDL: `plank` `bfs_planner` with a 20-second timeout per instance, using the results in `/home/guangh_ubuntu/projects/competition/iepc/plank/output/all_epddl_plans/manifest.json`.
- Converted F-PDDL: `jp/search_algorithms/greedy.py` with a 30-second timeout per converted problem.
- Validation: translated F-PDDL plans checked with `plank validate` when a direct translation was available.

Count Summary

| Domain | Support | Instances Tried | EPDDL Solved | EPDDL Plan Validated | F-PDDL Solved | F-PDDL Plan Validates in EPDDL |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| Active-Muddy-Child | supported | 1 | 0/1 | 0/0 | 1/1 | 0/0 |
| Blocks-World | unsupported | 1 | 0/1 | 0/0 | n/a | n/a |
| Coin-in-the-Box | supported | 5 | 5/5 | 5/5 | 5/5 | 5/5 |
| Collaboration-through-Communication | supported | 6 | 5/6 | 5/5 | 6/6 | 6/6 |
| Consecutive-Numbers | unsupported | 1 | 0/1 | 0/0 | n/a | n/a |
| Gossip | supported | 1 | 0/1 | 0/0 | 1/1 | 0/1 |
| Grapevine | supported | 1 | 0/1 | 0/0 | 1/1 | 1/1 |
| Selective-Communication | unsupported | 1 | 0/1 | 0/0 | n/a | n/a |
| Tiger | unsupported | 1 | 0/1 | 0/0 | n/a | n/a |

Notes:
- `EPDDL Plan Validated` counts saved plans from the EPDDL planner that were accepted by `plank validate`.
- `F-PDDL Plan Validates in EPDDL` counts translated F-PDDL plans that were accepted by `plank validate`.
- `0/0` means no plan of that type was available to validate.
- `n/a` means no converted F-PDDL benchmark exists for that EPDDL family yet.

Raw combined results are stored in [solver_results.json](/home/guangh_ubuntu/projects/competition/iepc/justified_perspective_model/converted_from_epddl/solver_results.json).
Translated-plan validation results are stored in [plan_validation_summary.json](/home/guangh_ubuntu/projects/competition/iepc/justified_perspective_model/converted_from_epddl/plan_validation_summary.json).

Generated domain folders:
- `active_muddy_child`: `supported` from `Active-Muddy-Child`
- `blocks_world`: `unsupported` from `Blocks-World`
- `coin_in_the_box`: `supported` from `Coin-in-the-Box`
- `collaboration_through_communication`: `supported` from `Collaboration-through-Communication`
- `consecutive_numbers`: `unsupported` from `Consecutive-Numbers`
- `gossip`: `supported` from `Gossip`
- `grapevine`: `supported` from `Grapevine`
- `selective_communication`: `unsupported` from `Selective-Communication`
- `tiger`: `unsupported` from `Tiger`
