#!/usr/bin/env python3
from __future__ import annotations

import ast
import json
import os
import subprocess
import time
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


JPM_ROOT = Path(__file__).resolve().parents[1]
IEPC_ROOT = JPM_ROOT.parent
PLANK_ROOT = IEPC_ROOT / "plank"
CONVERTED_ROOT = JPM_ROOT / "converted_from_epddl"
EPDDL_MANIFEST = PLANK_ROOT / "output" / "all_epddl_plans" / "manifest.json"
CONVERTED_MANIFEST = CONVERTED_ROOT / "manifest.json"
RESULTS_JSON = CONVERTED_ROOT / "solver_results.json"
README_PATH = CONVERTED_ROOT / "README.md"
PLAN_VALIDATION_SUMMARY = CONVERTED_ROOT / "plan_validation_summary.json"

FPDDL_TIMEOUT_SECONDS = 30
FPDDL_MEMORY_GB = 8


def load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def write_json(path: Path, payload: Any) -> None:
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def parse_solver_stdout(stdout: str) -> dict[str, Any]:
    lines = [line.strip() for line in stdout.splitlines() if line.strip()]
    for line in reversed(lines):
        if line.startswith("{") and line.endswith("}"):
            return ast.literal_eval(line)
    raise ValueError(f"could not find solver result dictionary in stdout:\n{stdout}")


def wait_a_bit() -> None:
    # instance_runner uses second-resolution timestamped output directories.
    time.sleep(1.1)


def run_fpddl_problem(target_dir: str, problem_file: str) -> dict[str, Any]:
    workdir = JPM_ROOT
    domain_path = Path("converted_from_epddl") / target_dir / "domain.pddl"
    problem_path = Path("converted_from_epddl") / target_dir / problem_file
    external_candidates = sorted((CONVERTED_ROOT / target_dir).glob("*.py"))
    if len(external_candidates) != 1:
        raise ValueError(
            f"expected exactly one external function file in {target_dir}, got {external_candidates}"
        )
    external_path = Path("converted_from_epddl") / target_dir / external_candidates[0].name

    env = os.environ.copy()
    env["PYTHONPATH"] = "."
    cmd = [
        "python3",
        "jp/instance_runner.py",
        "-d",
        str(domain_path),
        "-p",
        str(problem_path),
        "-e",
        str(external_path),
        "-s",
        "jp/search_algorithms/greedy.py",
        "-t",
        str(FPDDL_TIMEOUT_SECONDS),
        "-m",
        str(FPDDL_MEMORY_GB),
    ]
    result = subprocess.run(
        cmd,
        cwd=workdir,
        env=env,
        capture_output=True,
        text=True,
        check=False,
    )
    payload: dict[str, Any] | None = None
    status = "error"
    if result.returncode == 0:
        payload = parse_solver_stdout(result.stdout)
        status = "solved" if payload.get("solvable") else "unsolved"

    wait_a_bit()
    return {
        "problem_file": problem_file,
        "status": status,
        "returncode": result.returncode,
        "stdout": result.stdout,
        "stderr": result.stderr,
        "solver_result": payload,
    }


def summarize_epddl(epddl_manifest: dict[str, Any]) -> dict[str, dict[str, Any]]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for item in epddl_manifest["instances"]:
        grouped[item["domain"]].append(item)

    summary: dict[str, dict[str, Any]] = {}
    for domain, items in grouped.items():
        counts = Counter(item["status"] for item in items)
        solved_lengths = [item["plan_length"] for item in items if item["status"] == "solved"]
        summary[domain] = {
            "items": items,
            "counts": dict(counts),
            "solved_lengths": solved_lengths,
        }
    return summary


def count_instances(item: dict[str, Any]) -> int:
    return (
        len(item.get("generated_problem_files", []))
        or len(item.get("grounded_json_files", []))
        or len(item.get("source_problem_files", []))
    )


def epddl_validation_counts(domain_summary: dict[str, Any]) -> tuple[int, int]:
    attempted = sum(1 for item in domain_summary["items"] if item.get("validation_result") is not None)
    validated = sum(1 for item in domain_summary["items"] if item.get("validation_result") == "true")
    return validated, attempted


def build_readme(
    converted_manifest: dict[str, Any],
    epddl_summary: dict[str, dict[str, Any]],
    fpddl_results: dict[str, list[dict[str, Any]]],
    validation_summary: dict[str, dict[str, Any]],
) -> str:
    lines = [
        "# Converted From EPDDL",
        "",
        "This folder stores F-PDDL benchmark material derived from the `plank` EPDDL benchmarks.",
        "",
        "Support levels:",
        "- `supported`: converted problems and F-PDDL support files were generated.",
        "- `partial`: the source domain is tracked here, but no faithful F-PDDL generator exists yet.",
        "- `unsupported`: no F-PDDL mapping exists yet for this EPDDL family.",
        "",
        "Solver settings used in this report (generated on May 10, 2026):",
        f"- EPDDL: `plank` `bfs_planner` with a 20-second timeout per instance, using the results in `{EPDDL_MANIFEST}`.",
        f"- Converted F-PDDL: `jp/search_algorithms/greedy.py` with a {FPDDL_TIMEOUT_SECONDS}-second timeout per converted problem.",
        "- Validation: translated F-PDDL plans checked with `plank validate` when a direct translation was available.",
        "",
        "Count Summary",
        "",
        "| Domain | Support | Instances Tried | EPDDL Solved | EPDDL Plan Validated | F-PDDL Solved | F-PDDL Plan Validates in EPDDL |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ]

    for item in converted_manifest["domains"]:
        domain = item["source_domain"]
        support = item["support_level"]
        total = count_instances(item)
        epddl_solved = epddl_summary[domain]["counts"].get("solved", 0)
        epddl_validated, epddl_attempted = epddl_validation_counts(epddl_summary[domain])
        fpddl_runs = fpddl_results.get(domain, [])
        fpddl_solved = sum(1 for run in fpddl_runs if run["status"] == "solved")
        epddl_validation_text = f"{epddl_validated}/{epddl_attempted}"
        if support == "supported":
            fpddl_text = f"{fpddl_solved}/{total}"
            attempted = validation_summary.get(domain, {}).get("attempted", 0)
            validated = validation_summary.get(domain, {}).get("validated", 0)
            validated_text = f"{validated}/{attempted}"
        else:
            fpddl_text = "n/a"
            validated_text = "n/a"
        lines.append(
            f"| {domain} | {support} | {total} | {epddl_solved}/{total} | {epddl_validation_text} | {fpddl_text} | {validated_text} |"
        )

    lines.extend(
        [
            "",
            "Notes:",
            "- `EPDDL Plan Validated` counts saved plans from the EPDDL planner that were accepted by `plank validate`.",
            "- `F-PDDL Plan Validates in EPDDL` counts translated F-PDDL plans that were accepted by `plank validate`.",
            "- `0/0` means no plan of that type was available to validate.",
            "- `n/a` means no converted F-PDDL benchmark exists for that EPDDL family yet.",
            "",
            f"Raw combined results are stored in [solver_results.json]({RESULTS_JSON}).",
            f"Translated-plan validation results are stored in [plan_validation_summary.json]({PLAN_VALIDATION_SUMMARY}).",
            "",
            "Generated domain folders:",
        ]
    )
    for item in converted_manifest["domains"]:
        lines.append(
            f"- `{item['target_dir']}`: `{item['support_level']}` from `{item['source_domain']}`"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> int:
    converted_manifest = load_json(CONVERTED_MANIFEST)
    epddl_manifest = load_json(EPDDL_MANIFEST)
    epddl_summary = summarize_epddl(epddl_manifest)
    validation_summary = load_json(PLAN_VALIDATION_SUMMARY) if PLAN_VALIDATION_SUMMARY.exists() else {}

    fpddl_results: dict[str, list[dict[str, Any]]] = {}
    for item in converted_manifest["domains"]:
        if item["support_level"] != "supported":
            continue
        runs = []
        for problem_file in item.get("generated_problem_files", []):
            runs.append(run_fpddl_problem(item["target_dir"], problem_file))
        fpddl_results[item["source_domain"]] = runs

    combined = {
        "generated_on": "2026-05-10",
        "epddl_manifest": str(EPDDL_MANIFEST),
        "fpddl_timeout_seconds": FPDDL_TIMEOUT_SECONDS,
        "fpddl_results": fpddl_results,
        "epddl_summary": epddl_summary,
        "plan_validation_summary": str(PLAN_VALIDATION_SUMMARY) if PLAN_VALIDATION_SUMMARY.exists() else None,
    }
    write_json(RESULTS_JSON, combined)
    README_PATH.write_text(build_readme(converted_manifest, epddl_summary, fpddl_results, validation_summary))
    print(RESULTS_JSON)
    print(README_PATH)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
