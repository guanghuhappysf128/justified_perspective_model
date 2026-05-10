#!/usr/bin/env python3
from __future__ import annotations

import argparse
import ast
import json
import os
import shutil
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
OUTPUT_ROOT = ROOT / "output"

DEFAULT_TIMEOUT_SECONDS = 15
DEFAULT_MEMORY_GB = 8
OUTPUT_COLLISION_DELAY_SECONDS = 1.1


@dataclass(frozen=True)
class BenchmarkCase:
    name: str
    suite: str
    domain_path: str
    problem_path: str
    external_path: str
    expected_solved: bool = True
    timeout_seconds: int | None = None
    note: str = ""


def native_case(name: str, folder: str, problem: str, external: str | None = None) -> BenchmarkCase:
    external_file = external or f"{folder}.py"
    return BenchmarkCase(
        name=name,
        suite="native",
        domain_path=f"benchmarks/{folder}/domain.pddl",
        problem_path=f"benchmarks/{folder}/{problem}",
        external_path=f"benchmarks/{folder}/{external_file}",
    )


def converted_case(name: str, folder: str, problem: str, external: str) -> BenchmarkCase:
    return BenchmarkCase(
        name=name,
        suite="converted",
        domain_path=f"converted_from_epddl/{folder}/domain.pddl",
        problem_path=f"converted_from_epddl/{folder}/{problem}",
        external_path=f"converted_from_epddl/{folder}/{external}",
    )


SMOKE_CASES: list[BenchmarkCase] = [
    native_case("native-bbl-01", "bbl", "problem01.pddl"),
    native_case("native-coin-01", "coin", "problem_01.pddl"),
    native_case("native-corridor-01", "corridor", "problem01_3ag_2g_1d.pddl"),
    native_case("native-new-corridor-01", "new_corridor", "problem01_3ag_2g_1d.pddl", "new_corridor.py"),
    native_case("native-gossip4-01", "gossip4", "problem_01.pddl", "gossip.py"),
    native_case("native-grapevine-01", "grapevine", "problem01_4ag_2g_1d.pddl"),
    native_case("native-grid-nonep-01", "grid", "problem_NonEp_prob1.pddl"),
    native_case("native-thief-01", "thief", "problem1_t_00000.pddl"),
    converted_case(
        "converted-amc-01",
        "active_muddy_child",
        "amc_1_from_epddl.pddl",
        "muddy_children.py",
    ),
    converted_case(
        "converted-coin-cb1",
        "coin_in_the_box",
        "cb_1_from_epddl.pddl",
        "coin_in_the_box.py",
    ),
    converted_case(
        "converted-coin-cb2",
        "coin_in_the_box",
        "cb_2_from_epddl.pddl",
        "coin_in_the_box.py",
    ),
    converted_case(
        "converted-coin-cb3",
        "coin_in_the_box",
        "cb_3_from_epddl.pddl",
        "coin_in_the_box.py",
    ),
    converted_case(
        "converted-coin-cb4",
        "coin_in_the_box",
        "cb_4_from_epddl.pddl",
        "coin_in_the_box.py",
    ),
    converted_case(
        "converted-coin-cb5",
        "coin_in_the_box",
        "cb_5_from_epddl.pddl",
        "coin_in_the_box.py",
    ),
    converted_case(
        "converted-cc-01",
        "collaboration_through_communication",
        "cc_2_2_3_1_from_epddl.pddl",
        "collaboration_through_communication.py",
    ),
    converted_case(
        "converted-cc-02",
        "collaboration_through_communication",
        "cc_2_2_3_2_from_epddl.pddl",
        "collaboration_through_communication.py",
    ),
    converted_case(
        "converted-cc-03",
        "collaboration_through_communication",
        "cc_2_2_3_3_from_epddl.pddl",
        "collaboration_through_communication.py",
    ),
    converted_case(
        "converted-cc-04",
        "collaboration_through_communication",
        "cc_2_2_3_4_from_epddl.pddl",
        "collaboration_through_communication.py",
    ),
    converted_case(
        "converted-cc-05",
        "collaboration_through_communication",
        "cc_2_2_3_5_from_epddl.pddl",
        "collaboration_through_communication.py",
    ),
    converted_case(
        "converted-cc-06",
        "collaboration_through_communication",
        "cc_2_2_3_6_from_epddl.pddl",
        "collaboration_through_communication.py",
    ),
    converted_case("converted-gossip-01", "gossip", "gos_1_from_epddl.pddl", "gossip.py"),
    converted_case("converted-grapevine-01", "grapevine", "gra_1_from_epddl.pddl", "grapevine.py"),
]


def parse_solver_stdout(stdout: str) -> dict[str, Any]:
    lines = [line.strip() for line in stdout.splitlines() if line.strip()]
    for line in reversed(lines):
        if line.startswith("{") and line.endswith("}"):
            return ast.literal_eval(line)
    raise ValueError(f"could not find solver result dictionary in stdout:\n{stdout}")


def output_dirs() -> set[Path]:
    if not OUTPUT_ROOT.exists():
        return set()
    return {path for path in OUTPUT_ROOT.iterdir() if path.is_dir()}


def remove_new_output_dirs(before: set[Path], keep: bool) -> list[str]:
    after = output_dirs()
    new_dirs = sorted(after - before)
    if keep:
        return [str(path.relative_to(ROOT)) for path in new_dirs]
    for path in new_dirs:
        shutil.rmtree(path, ignore_errors=True)
    return []


def run_case(
    case: BenchmarkCase,
    timeout_seconds: int,
    memory_gb: int,
    search_algorithm: str,
    keep_output: bool,
) -> dict[str, Any]:
    env = os.environ.copy()
    env["PYTHONPATH"] = "."
    effective_timeout = case.timeout_seconds or timeout_seconds
    before = output_dirs()
    started = time.perf_counter()
    cmd = [
        "python3",
        "jp/instance_runner.py",
        "-d",
        case.domain_path,
        "-p",
        case.problem_path,
        "-e",
        case.external_path,
        "-s",
        search_algorithm,
        "-t",
        str(effective_timeout),
        "-m",
        str(memory_gb),
    ]
    completed = subprocess.run(
        cmd,
        cwd=ROOT,
        env=env,
        capture_output=True,
        text=True,
        check=False,
    )
    elapsed_seconds = round(time.perf_counter() - started, 3)
    kept_output_dirs = remove_new_output_dirs(before, keep_output)

    record: dict[str, Any] = {
        "name": case.name,
        "suite": case.suite,
        "domain_path": case.domain_path,
        "problem_path": case.problem_path,
        "external_path": case.external_path,
        "expected_solved": case.expected_solved,
        "returncode": completed.returncode,
        "elapsed_seconds": elapsed_seconds,
        "stdout": completed.stdout,
        "stderr": completed.stderr,
        "kept_output_dirs": kept_output_dirs,
        "status": "error",
        "solver_result": None,
    }

    if completed.returncode == 0:
        payload = parse_solver_stdout(completed.stdout)
        record["solver_result"] = payload
        record["status"] = "solved" if payload.get("solvable") else "unsolved"

    record["passed"] = (record["status"] == "solved") == case.expected_solved
    time.sleep(OUTPUT_COLLISION_DELAY_SECONDS)
    return record


def format_result_row(record: dict[str, Any]) -> str:
    payload = record.get("solver_result") or {}
    solved = payload.get("solvable")
    path_length = payload.get("path_length")
    search_time = payload.get("search_time")
    status = record["status"]
    verdict = "PASS" if record["passed"] else "FAIL"
    detail = []
    if solved is not None:
        detail.append(f"solved={solved}")
    if path_length is not None:
        detail.append(f"len={path_length}")
    if search_time is not None:
        detail.append(f"search={search_time}s")
    if status == "error" and record["stderr"]:
        last_line = record["stderr"].strip().splitlines()[-1]
        detail.append(last_line)
    return f"{verdict:4}  {record['name']:<28} {status:<7}  " + ", ".join(detail)


def select_cases(suite: str, case_filters: list[str]) -> list[BenchmarkCase]:
    cases = SMOKE_CASES
    if suite != "all":
        cases = [case for case in cases if case.suite == suite]
    if case_filters:
        lowered = [pattern.lower() for pattern in case_filters]
        cases = [
            case
            for case in cases
            if any(pattern in case.name.lower() or pattern in case.problem_path.lower() for pattern in lowered)
        ]
    return cases


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Run a sequential smoke suite against native and converted JPM benchmarks."
    )
    parser.add_argument(
        "--suite",
        choices=["native", "converted", "all"],
        default="all",
        help="which benchmark suite to run",
    )
    parser.add_argument(
        "--case",
        action="append",
        default=[],
        help="substring filter for case names or problem paths; can be passed multiple times",
    )
    parser.add_argument(
        "--timeout-seconds",
        type=int,
        default=DEFAULT_TIMEOUT_SECONDS,
        help="default per-case timeout passed to instance_runner.py",
    )
    parser.add_argument(
        "--memory-gb",
        type=int,
        default=DEFAULT_MEMORY_GB,
        help="memory limit in GB passed to instance_runner.py",
    )
    parser.add_argument(
        "--search",
        default="search_algorithms/greedy.py",
        help="search algorithm path relative to the JPM root",
    )
    parser.add_argument(
        "--keep-output",
        action="store_true",
        help="keep timestamped JPM output directories created during the run",
    )
    parser.add_argument(
        "--json-out",
        type=Path,
        help="optional JSON file path for the full regression report",
    )
    parser.add_argument(
        "--list",
        action="store_true",
        help="list available smoke cases and exit",
    )
    args = parser.parse_args()

    if args.list:
        for case in SMOKE_CASES:
            print(f"{case.suite:9} {case.name:28} {case.problem_path}")
        return 0

    cases = select_cases(args.suite, args.case)
    if not cases:
        print("No benchmark cases matched the requested filters.", file=sys.stderr)
        return 2

    records = []
    print(f"Running {len(cases)} benchmark cases from suite '{args.suite}'...")
    for case in cases:
        records.append(
            run_case(
                case=case,
                timeout_seconds=args.timeout_seconds,
                memory_gb=args.memory_gb,
                search_algorithm=args.search,
                keep_output=args.keep_output,
            )
        )
        print(format_result_row(records[-1]))

    passed = sum(1 for record in records if record["passed"])
    failed = len(records) - passed
    summary = {
        "generated_on": time.strftime("%Y-%m-%d %H:%M:%S"),
        "root": str(ROOT),
        "suite": args.suite,
        "search": args.search,
        "timeout_seconds": args.timeout_seconds,
        "memory_gb": args.memory_gb,
        "keep_output": args.keep_output,
        "total": len(records),
        "passed": passed,
        "failed": failed,
        "records": records,
    }

    print("")
    print(f"Summary: {passed}/{len(records)} passed, {failed} failed.")

    if args.json_out:
        out_path = args.json_out
        if not out_path.is_absolute():
            out_path = ROOT / out_path
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
        print(f"Saved report to {out_path}")

    return 0 if failed == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
