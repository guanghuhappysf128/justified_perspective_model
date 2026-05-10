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

### CLI Arguments:
- `-d` or `--domain`: Path to the PDDL domain file
- `-p` or `--problem`: Path to the PDDL problem file
- `-e` or `--external`: Path to the external Python function file associated with the domain

## Guides

- [EPDDL_TO_FPDDL_WORKFLOW.md](EPDDL_TO_FPDDL_WORKFLOW.md): end-to-end workflow for grounding an EPDDL instance, converting it to F-PDDL, solving it with JPM, translating the plan back, and validating it in `plank`
- [converted_from_epddl/README.md](converted_from_epddl/README.md): current converted-benchmark status table and validation summary
