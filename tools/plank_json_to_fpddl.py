#!/usr/bin/env python3
"""Convert selected plank ground JSON tasks into F-PDDL benchmarks.

This is intentionally conservative.  The first supported mapping is the
Grapevine benchmark, where the EPDDL atoms line up with the existing
F-PDDL Grapevine functions:

    secret_A        -> (secret_value as)
    in-left-room_A  -> (agent_loc a) == 1

The generated problem reuses the existing F-PDDL Grapevine domain and
external visibility model.
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_GRAPEVINE_DIR = REPO_ROOT / "benchmarks" / "grapevine"


def atom_suffix(atom: str, prefix: str) -> str | None:
    if atom.startswith(prefix):
        return atom[len(prefix) :]
    return None


def fpddl_name(name: str) -> str:
    value = re.sub(r"[^A-Za-z0-9_]", "_", name).lower()
    if not value:
        raise ValueError(f"cannot convert empty name {name!r}")
    return value


def secret_object(agent_name: str) -> str:
    return f"{fpddl_name(agent_name)}s"


def quoted_tf(value: bool) -> str:
    return "'t'" if value else "'f'"


def require_grapevine(task: dict[str, Any]) -> None:
    info = task.get("planning-task-info", {})
    if info.get("domain") != "grapevine":
        raise ValueError(
            "only the grapevine plank domain is supported by this prototype; "
            f"got {info.get('domain')!r}"
        )


def designated_labels(task: dict[str, Any]) -> set[str]:
    initial_state = task["initial-state"]
    designated = initial_state.get("designated", [])
    if len(designated) != 1:
        raise ValueError(
            "this converter currently expects exactly one designated initial world; "
            f"got {designated!r}"
        )
    world = designated[0]
    return set(initial_state["labels"][world])


def infer_agents(task: dict[str, Any]) -> list[str]:
    agents = list(task["language"]["agents"])
    if not agents:
        raise ValueError("task language has no agents")
    return agents


def infer_secret_suffixes(task: dict[str, Any]) -> list[str]:
    suffixes = []
    for atom in task["language"]["atoms"]:
        suffix = atom_suffix(atom, "secret_")
        if suffix is not None:
            suffixes.append(suffix)
    if not suffixes:
        raise ValueError("task language has no secret_* atoms")
    return suffixes


def goal_lines(task: dict[str, Any], labels: set[str]) -> list[str]:
    """Translate plank's grounded Grapevine goal into F-PDDL goals.

    plank exports (forall (?i - agent) ([Kw. All] (secret ?i))) as an
    AND of Kw.box formulas indexed by all agents.  F-PDDL does not have a
    direct Kw operator in the example benchmarks, so we use the value in the
    designated world and ask each indexed agent to believe that value for the
    corresponding shared_value.
    """

    goal = task.get("goal", {}).get("formula")
    if not goal:
        raise ValueError("missing goal formula")

    formulas = goal.get("formulas", [goal]) if isinstance(goal, dict) else [goal]
    lines: list[str] = []
    for item in formulas:
        if not isinstance(item, dict):
            raise ValueError(f"unsupported goal item: {item!r}")
        modality = item.get("modality-name")
        atom = item.get("formula")
        index = item.get("modality-index", [])
        if modality != "Kw.box" or not isinstance(atom, str):
            raise ValueError(f"unsupported Grapevine goal formula: {item!r}")
        suffix = atom_suffix(atom, "secret_")
        if suffix is None:
            raise ValueError(f"unsupported goal atom: {atom!r}")
        expected_value = quoted_tf(atom in labels)
        secret = secret_object(suffix)
        for agent in index:
            lines.append(
                f'            (= (@ep ("+ b [{fpddl_name(agent)}]") '
                f"(= (shared_value {secret}) {expected_value})) ep.true)"
            )
    return lines


def render_grapevine_problem(task: dict[str, Any], problem_name: str) -> str:
    require_grapevine(task)

    agents = infer_agents(task)
    secret_suffixes = infer_secret_suffixes(task)
    labels = designated_labels(task)

    agent_names = [fpddl_name(agent) for agent in agents]
    secret_names = [secret_object(suffix) for suffix in secret_suffixes]

    lines: list[str] = []
    lines.append("(define")
    lines.append(f"    (problem {problem_name})")
    lines.append("    (:domain grapevine)")
    lines.append("")
    lines.append("    (:agents")
    lines.append(f"        {' '.join(agent_names)} - agent")
    lines.append("    )")
    lines.append("")
    lines.append("    (:objects")
    lines.append(f"        {' '.join(secret_names)} - secret")
    lines.append("    )")
    lines.append("")
    lines.append("    (:init")

    for agent in agents:
        loc = 1 if f"in-left-room_{agent}" in labels else 2
        lines.append(f"        (assign (agent_loc {fpddl_name(agent)}) {loc})")
    lines.append("")

    for suffix in secret_suffixes:
        lines.append(f"        (assign (shared_loc {secret_object(suffix)}) 0)")
    lines.append("")

    for agent in agents:
        for suffix in secret_suffixes:
            own = 1 if agent == suffix else 0
            lines.append(
                f"        (assign (own {fpddl_name(agent)} {secret_object(suffix)}) {own})"
            )
        lines.append("")

    lines.append("        (assign (sharing) 0)")
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(f"        (assign (secret_value {secret_object(suffix)}) {quoted_tf(truth)})")
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(
            f"        (assign (secret_lyging_value {secret_object(suffix)}) "
            f"{quoted_tf(not truth)})"
        )
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(f"        (assign (shared_value {secret_object(suffix)}) {quoted_tf(truth)})")

    lines.append("    )")
    lines.append("")
    lines.append("    (:goal (and")
    lines.extend(goal_lines(task, labels))
    lines.append("    ))")
    lines.append("")
    lines.append("    (:ranges")
    lines.append("        (agent_loc integer [1,2])")
    lines.append("        (shared_loc integer [0,2])")
    lines.append("        (own integer [0,1])")
    lines.append("        (sharing integer [0,1])")
    lines.append("        (secret_value enumerate ['t','f'])")
    lines.append("        (secret_lyging_value enumerate ['t','f'])")
    lines.append("        (shared_value enumerate ['t','f'])")
    lines.append("    )")
    lines.append("")
    lines.append("    (:rules")
    lines.append("    )")
    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def copy_support_files(output_dir: Path) -> None:
    for name in ("domain.pddl", "grapevine.py"):
        shutil.copy2(DEFAULT_GRAPEVINE_DIR / name, output_dir / name)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Convert a plank Grapevine ground JSON file to an F-PDDL benchmark."
    )
    parser.add_argument("input_json", type=Path, help="path to plank output/problem_1.json")
    parser.add_argument("output_dir", type=Path, help="directory for generated F-PDDL files")
    parser.add_argument(
        "--problem-name",
        default=None,
        help="F-PDDL problem name; defaults to <plank problem>_from_plank",
    )
    parser.add_argument(
        "--no-copy-support",
        action="store_true",
        help="do not copy Grapevine domain.pddl and grapevine.py into the output directory",
    )
    args = parser.parse_args()

    task = json.loads(args.input_json.read_text())
    source_problem = task.get("planning-task-info", {}).get("problem", "problem")
    problem_name = args.problem_name or f"{fpddl_name(source_problem)}_from_plank"

    args.output_dir.mkdir(parents=True, exist_ok=True)
    if not args.no_copy_support:
        copy_support_files(args.output_dir)

    problem_path = args.output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_grapevine_problem(task, problem_name))
    print(problem_path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
