# bpwp

## Installation

1. **Create and activate a virtual environment** (recommended to isolate dependencies):

   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows use: .venv\Scripts\activate
   ```

2. **Install the project dependencies** (`numpy` and `pytz`):

   ```bash
   pip install -e .
   ```

3. **Create a logs directory** (the runner expects this folder to exist for its log files):

   ```bash
   mkdir logs
   ```

## Running an Example

The project comes with several examples in the `examples/` folder. You can run any of them using the `runner.py` script from the project root.

To run the **Coin** example, use the following command:

```bash
python runner.py -d examples/coin/domain.pddl -p examples/coin/problem01.pddl -e examples/coin/coin.py
```

### CLI Arguments

- `-d` or `--domain`: Path to the PDDL domain file
- `-p` or `--problem`: Path to the PDDL problem file
- `-e` or `--external`: Path to the external Python function file associated with the domain

## Running Benchmarks

The repository now includes a YAML-driven benchmark runner for the domains under `benchmarks/`. It ignores `heterogeneous_benchmarks/` by design and resolves solver-instance jobs only from the standard benchmark tree.

To validate a benchmark config without launching any solver processes:

```bash
python -m jp.benchmark_runner -c benchmarks/config/simple.yaml --dry-run
```

To run the sample smoke suite and write all outputs into one directory:

```bash
python -m jp.benchmark_runner -c benchmarks/config/simple.yaml -o output/benchmark_simple
```

The benchmark runner writes:

- `benchmark_manifest.json`: the resolved suite config and expanded solver-instance jobs
- `benchmark_results.json`: one JSON result per job plus aggregate counts by solver and domain
- Existing per-instance `.log` and `.json` files emitted by `jp.instance_runner`

### Benchmark YAML Schema

```yaml
suite_name: my-suite
cores: 4

defaults:
  time_limit_seconds: 300
  memory_limit_gb: 8

solvers:
  - name: bfsdc
  - name: greedy
    time_limit_seconds: 120
    memory_limit_gb: 4

domains:
  - name: coin
    instances:
      - problem_0*.pddl
      - problem_07.pddl
  - name: gossip4
    exclude_instances:
      - problem_03.pddl
```

Notes:

- `cores` limits how many solver processes run concurrently.
- Solver entries can override the default time and memory limits.
- Domain `instances` accepts exact filenames or glob patterns. Use `all` or omit the field to include every problem in that domain.
- If a benchmark domain has more than one `.py` file, add `external: <path>` to the domain entry.
