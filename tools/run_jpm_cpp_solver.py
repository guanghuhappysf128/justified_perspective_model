#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import subprocess
from pathlib import Path


JPM_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOLVER = JPM_ROOT / "cpp" / "build" / "jpm_cpp_solver"


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Export a JPM F-PDDL task to IR and solve it with the C++ prototype."
    )
    parser.add_argument("-d", "--domain", required=True, type=Path, help="F-PDDL domain file")
    parser.add_argument("-p", "--problem", required=True, type=Path, help="F-PDDL problem file")
    parser.add_argument(
        "-o",
        "--ir-output",
        type=Path,
        default=JPM_ROOT / "output" / "cpp_ir" / "task.json",
        help="where to write the generated JPM IR JSON",
    )
    parser.add_argument("--solver", type=Path, default=DEFAULT_SOLVER, help="C++ solver executable")
    parser.add_argument("--timeout", type=int, default=30, help="solver timeout in seconds")
    parser.add_argument("--max-expanded", type=int, default=1_000_000, help="expansion limit")
    parser.add_argument(
        "--search-options-json",
        default="",
        help="optional JSON object with solver-specific search options",
    )
    parser.add_argument(
        "-s",
        "--search",
        default="greedy",
        help="C++ search algorithm/configuration",
    )
    args = parser.parse_args()

    export_cmd = [
        "python3",
        str(JPM_ROOT / "tools" / "export_jpm_ir.py"),
        "-d",
        str(args.domain),
        "-p",
        str(args.problem),
        "-o",
        str(args.ir_output),
    ]
    subprocess.run(export_cmd, cwd=JPM_ROOT, check=True)

    if not args.solver.exists():
        raise FileNotFoundError(
            f"C++ solver not found at {args.solver}. Build it with: cmake -S cpp -B cpp/build && cmake --build cpp/build"
        )

    solve_cmd = [
        str(args.solver),
        "--task",
        str(args.ir_output),
        "--timeout",
        str(args.timeout),
        "--max-expanded",
        str(args.max_expanded),
        "--search",
        args.search,
    ]
    if args.search_options_json:
        solve_cmd.extend(["--search-options-json", args.search_options_json])
    result = subprocess.run(solve_cmd, cwd=JPM_ROOT, check=False, text=True, capture_output=True)
    print(result.stdout, end="")
    if result.stderr:
        print(result.stderr, end="")

    try:
        json.loads(result.stdout)
    except json.JSONDecodeError:
        pass
    return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
