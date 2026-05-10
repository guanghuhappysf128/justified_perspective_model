# Solving EPDDL Instances with JPM

This note describes the current workflow we use in this repo to solve an EPDDL instance through the F-PDDL/JPM pipeline:

1. ground the EPDDL instance into JSON with `plank export`
2. convert the grounded JSON into a JPM-compatible F-PDDL benchmark
3. solve the converted F-PDDL problem with `jp/instance_runner.py`
4. translate the resulting F-PDDL plan back into EPDDL action names
5. validate that translated plan with `plank validate`

This is the practical pipeline we have been using while comparing `plank` and JPM.

## Prerequisites

This workflow assumes the following sibling repos:

- `.../iepc/justified_perspective_model`
- `.../iepc/plank`

and that:

- JPM is installed with `pip install -e .`
- `plank` has already been built, so `plank/build/plank` and `plank/build/bfs_planner` exist

For convenience:

```bash
export JPM=/home/guangh_ubuntu/projects/competition/iepc/justified_perspective_model
export PLANK=/home/guangh_ubuntu/projects/competition/iepc/plank
```

## Step 1: Ground the EPDDL Instance into JSON

`plank parse` only checks parsing. The command that actually writes a grounded task file is `plank export`.

Example using Coin-in-the-Box `problem_1`:

```bash
cd "$PLANK/build"

./plank export \
  -d ../benchmarks/domains/Coin-in-the-Box/cb.epddl \
  -p ../benchmarks/domains/Coin-in-the-Box/instances/problem_1.epddl \
  -l ../benchmarks/libraries/intermediate.epddl \
  -o ../output/coin
```

This writes:

```text
$PLANK/output/coin/problem_1.json
```

That JSON is the grounded planning task. It is not a plan.

## Step 2: Convert the Grounded EPDDL Task into F-PDDL

The current converter entry point in this repo is:

```bash
cd "$JPM"
python3 tools/convert_epddl_benchmarks.py
```

What this script does:

- copies the EPDDL source files into `converted_from_epddl/<domain>/source/`
- calls `plank export` internally to regenerate grounded JSON
- writes grounded JSON into `converted_from_epddl/<domain>/grounded/`
- generates the converted F-PDDL domain, problem files, and external Python helper for supported families

The generated material lives under:

```text
$JPM/converted_from_epddl/
```

The current status summary is in:

- [converted_from_epddl/README.md](converted_from_epddl/README.md)
- [converted_from_epddl/plan_validation_summary.json](converted_from_epddl/plan_validation_summary.json)

Important note:

- the converter is currently domain-specific under `tools/epddl_to_fpddl/`
- `tools/convert_epddl_benchmarks.py` is the main supported entry point
- there is not yet a single generic `json -> fpddl` CLI that works for every family without domain logic

## Step 3: Solve the Converted F-PDDL Problem with JPM

Once conversion is done, solve the generated F-PDDL problem with `jp/instance_runner.py`.

Example for the converted Coin `problem_1`:

```bash
cd "$JPM"

PYTHONPATH=. python3 jp/instance_runner.py \
  -d converted_from_epddl/coin_in_the_box/domain.pddl \
  -p converted_from_epddl/coin_in_the_box/cb_1_from_epddl.pddl \
  -e converted_from_epddl/coin_in_the_box/coin_in_the_box.py \
  -s jp/search_algorithms/greedy.py \
  -t 30 \
  -m 8
```

Notes:

- `PYTHONPATH=.` matters because the runner imports local modules.
- `instance_runner.py` writes its result into a timestamped subdirectory under `output/`.
- the planner result JSON and log file will be in that timestamped directory.

## Step 4: Convert the F-PDDL Plan Back into EPDDL Actions

This step is currently domain-specific.

There is no single generic translator for every family yet, because the action vocabularies do not always line up one-to-one.

Examples:

- Coin-in-the-Box:
  - `open_a -> open_A`
  - `signal_a_b -> signal_A_B`
  - `distract_b_a -> distract_B_A`
  - `peek_c -> peek_C`
  - `shout_tails_a -> shout-tails_A`
- Collaboration-through-Communication:
  - `left_a -> left_A`
  - `sense_a_box1_room1 -> sense_A_box1_room1`
  - `tell_a_box1_room1_from_room1 -> tell_A_box1_room1`
- Grapevine:
  - `sharing_own_secret a as -> tell_A_A`
  - `quiet as` is dropped

This step is where semantic mismatches show up most clearly. For example, `Gossip` currently solves on the F-PDDL side, but its translated F-PDDL plan does not validate back in the original EPDDL model.

The current translated-plan results are tracked in:

- [converted_from_epddl/plan_validation_summary.json](converted_from_epddl/plan_validation_summary.json)

## Step 5: Validate the Translated Plan in `plank`

Once you have the translated EPDDL action sequence, validate it against the original EPDDL benchmark.

Example for Coin `problem_1`:

```bash
cd "$PLANK/build"

./plank validate \
  -d ../benchmarks/domains/Coin-in-the-Box/cb.epddl \
  -p ../benchmarks/domains/Coin-in-the-Box/instances/problem_1.epddl \
  -l ../benchmarks/libraries/intermediate.epddl \
  -a open_A peek_A
```

If the translated plan is faithful enough, the last line will be:

```text
true
```

If not, `plank` will usually tell you either:

- the plan is not applicable at some step, or
- the sequence is applicable but still does not satisfy the EPDDL goal

## Worked Example: Coin-in-the-Box `problem_1`

This is the shortest end-to-end example.

### 1. Export grounded JSON

```bash
cd "$PLANK/build"

./plank export \
  -d ../benchmarks/domains/Coin-in-the-Box/cb.epddl \
  -p ../benchmarks/domains/Coin-in-the-Box/instances/problem_1.epddl \
  -l ../benchmarks/libraries/intermediate.epddl \
  -o ../output/coin
```

### 2. Regenerate converted F-PDDL families

```bash
cd "$JPM"
python3 tools/convert_epddl_benchmarks.py
```

### 3. Solve the converted JPM problem

```bash
cd "$JPM"

PYTHONPATH=. python3 jp/instance_runner.py \
  -d converted_from_epddl/coin_in_the_box/domain.pddl \
  -p converted_from_epddl/coin_in_the_box/cb_1_from_epddl.pddl \
  -e converted_from_epddl/coin_in_the_box/coin_in_the_box.py \
  -s jp/search_algorithms/greedy.py \
  -t 30 \
  -m 8
```

### 4. Translate the returned F-PDDL plan

For `cb_1_from_epddl`, the translated plan is:

```text
open_A
peek_A
```

### 5. Validate it in `plank`

```bash
cd "$PLANK/build"

./plank validate \
  -d ../benchmarks/domains/Coin-in-the-Box/cb.epddl \
  -p ../benchmarks/domains/Coin-in-the-Box/instances/problem_1.epddl \
  -l ../benchmarks/libraries/intermediate.epddl \
  -a open_A peek_A
```

Expected result:

```text
true
```

## Optional: Compare Against the EPDDL Planner Directly

If you want the original EPDDL planner results as a baseline, generate them from the `plank` repo:

```bash
cd "$PLANK"
python3 tools/generate_epddl_plans.py --timeout-seconds 20
```

That writes a batch summary under:

```text
$PLANK/output/all_epddl_plans/
```

This is useful when you want to compare:

- whether EPDDL itself found a plan
- whether JPM found a plan on the converted family
- whether the translated JPM plan validates in the original EPDDL domain

## Optional: Rebuild the Comparison Table

To refresh the converted-family report in this repo:

```bash
cd "$JPM"
python3 tools/evaluate_converted_from_epddl.py
```

This updates:

- [converted_from_epddl/README.md](converted_from_epddl/README.md)
- [converted_from_epddl/solver_results.json](converted_from_epddl/solver_results.json)

## Optional: Run the JPM Regression Smoke Suite

To make sure recent JPM-side changes did not break existing benchmarks:

```bash
cd "$JPM"
python3 tools/check_benchmark_regressions.py
```

The latest saved smoke report lives in:

- [output/regression_smoke.json](output/regression_smoke.json)

## Current Limitations

- Some EPDDL families still do not have a supported converter.
- Some converted families solve in JPM but do not yet translate back into a valid EPDDL plan.
- The plan-back translation step is currently domain-specific, not generic.
- A timeout in `plank` does not prove the EPDDL instance is unsatisfiable; it only means no plan was found within the given timeout.

## Practical Rule of Thumb

If the goal is to trust a converted benchmark, the strongest current check is:

1. convert the EPDDL family
2. solve it in JPM
3. translate the JPM plan back to EPDDL
4. validate it with `plank`

That gives us a concrete end-to-end sanity check across both systems.
