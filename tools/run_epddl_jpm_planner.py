#!/usr/bin/env python3
from __future__ import annotations

import argparse
import itertools
import json
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Any


TOOLS_DIR = Path(__file__).resolve().parent
if str(TOOLS_DIR) not in sys.path:
    sys.path.insert(0, str(TOOLS_DIR))

from epddl_to_fpddl.common import CONVERTED_ROOT  # noqa: E402
from epddl_to_fpddl.common import PLANK_BINARY as DEFAULT_HOST_PLANK_BINARY  # noqa: E402
from epddl_to_fpddl.common import fpddl_name, load_json  # noqa: E402
from epddl_to_fpddl.converters import CONVERTERS  # noqa: E402


JPM_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOLVER = JPM_ROOT / "cpp" / "build" / "jpm_cpp_solver"
DEFAULT_EXPORTER = JPM_ROOT / "tools" / "export_jpm_ir.py"
DEFAULT_PLANK_BINARY = Path(
    os.environ.get("PLANK_BINARY", str(DEFAULT_HOST_PLANK_BINARY))
).resolve()

SUPPORTED_DOMAINS = {
    "active-muddy-child": "active-muddy-child",
    "coin-in-the-box": "coin-in-the-box",
    "collaboration-through-communication": "collaboration-through-communication",
    "gossip": "gossip",
    "grapevine": "grapevine",
}

TEMPLATE_DIRS = {
    "active-muddy-child": "active_muddy_child",
    "coin-in-the-box": "coin_in_the_box",
    "collaboration-through-communication": "collaboration_through_communication",
    "gossip": "gossip",
    "grapevine": "grapevine",
}


class PlannerFailure(RuntimeError):
    """Hard failure: invalid setup or invalid input."""


class UnsupportedTask(RuntimeError):
    """Soft failure: the planner does not handle this task family yet."""


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Bridge EPDDL input through plank export, JPM F-PDDL conversion, "
            "the JPM C++ solver, and EPDDL plan validation."
        )
    )
    parser.add_argument("-d", "--domain", type=Path, help="path to EPDDL domain")
    parser.add_argument("-p", "--problem", type=Path, help="path to EPDDL problem")
    parser.add_argument(
        "-l",
        "--libraries",
        nargs="*",
        default=None,
        type=Path,
        help="paths to EPDDL action-type libraries",
    )
    parser.add_argument("-s", "--spec", type=Path, help="path to EPDDL specification JSON")
    parser.add_argument("--plan-file", type=Path, help="path to output plan JSON")
    parser.add_argument(
        "--plank-binary",
        type=Path,
        default=DEFAULT_PLANK_BINARY,
        help="path to plank executable used for export/validation",
    )
    parser.add_argument(
        "--solver",
        type=Path,
        default=DEFAULT_SOLVER,
        help="path to the JPM C++ solver executable",
    )
    parser.add_argument(
        "--search",
        default=os.environ.get("SEARCH", "cbfs"),
        help="JPM C++ search algorithm",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=int(os.environ.get("TIMEOUT", "300")),
        help="JPM C++ timeout in seconds",
    )
    parser.add_argument(
        "--max-expanded",
        type=int,
        default=int(os.environ.get("MAX_EXPANDED", "1000000")),
        help="JPM C++ expansion limit",
    )
    parser.add_argument(
        "--search-options-json",
        default=os.environ.get("SEARCH_OPTIONS_JSON", ""),
        help="optional JSON object for solver-specific search options",
    )
    return parser.parse_args()


def ensure_cli_mode(args: argparse.Namespace) -> None:
    using_spec = args.spec is not None
    using_domain_problem = args.domain is not None or args.problem is not None
    if using_spec == using_domain_problem:
        raise PlannerFailure("provide either --spec or --domain/--problem")
    if using_domain_problem and (args.domain is None or args.problem is None):
        raise PlannerFailure("--domain and --problem must be provided together")


def resolve_path(path: Path, *, base: Path | None = None) -> Path:
    if path.is_absolute():
        return path.resolve()
    if base is not None:
        return (base / path).resolve()
    return path.resolve()


def load_spec_paths(spec_path: Path) -> tuple[Path, Path, list[Path]]:
    data = json.loads(spec_path.read_text())
    base_dir = spec_path.parent
    try:
        domain = resolve_path(Path(data["domain"]), base=base_dir)
        problem = resolve_path(Path(data["problem"]), base=base_dir)
    except KeyError as exc:
        raise PlannerFailure(f"spec file is missing required key {exc.args[0]!r}") from exc
    libraries = [
        resolve_path(Path(item), base=base_dir)
        for item in data.get("action-type-libraries", [])
    ]
    libraries = list(dict.fromkeys(libraries))
    return domain, problem, libraries


def normalize_spec_inputs(args: argparse.Namespace) -> tuple[Path, Path, list[Path], Path | None]:
    if args.spec is not None:
        spec_path = resolve_path(args.spec)
        domain_path, problem_path, libraries = load_spec_paths(spec_path)
        return domain_path, problem_path, libraries, spec_path
    domain_path = resolve_path(args.domain)
    problem_path = resolve_path(args.problem)
    libraries = [resolve_path(path) for path in (args.libraries or [])]
    libraries = list(dict.fromkeys(libraries))
    return domain_path, problem_path, libraries, None


def write_plan_file(plan_path: Path | None, plan: list[str] | None) -> None:
    payload = json.dumps(plan)
    if plan_path is None:
        print(payload)
        return
    plan_path.parent.mkdir(parents=True, exist_ok=True)
    plan_path.write_text(payload)


def run_checked(cmd: list[str], *, cwd: Path | None = None) -> subprocess.CompletedProcess[str]:
    result = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, check=False)
    if result.returncode != 0:
        message_parts = [part.strip() for part in [result.stdout, result.stderr] if part.strip()]
        message = "\n".join(message_parts) if message_parts else "command failed"
        raise PlannerFailure(f"{' '.join(cmd)}\n{message}")
    return result


def export_ground_task(
    plank_binary: Path,
    domain_path: Path,
    problem_path: Path,
    libraries: list[Path],
    output_dir: Path,
) -> dict[str, Any]:
    print("Grounding...", end="", flush=True)
    cmd = [str(plank_binary), "export", "-d", str(domain_path), "-p", str(problem_path)]
    if libraries:
        cmd.extend(["-l", *[str(path) for path in libraries]])
    cmd.extend(["-o", str(output_dir)])
    result = run_checked(cmd)
    json_outputs = sorted(output_dir.glob("*.json"))
    if not json_outputs:
        output = "\n".join(
            part.strip() for part in [result.stdout, result.stderr] if part.strip()
        )
        detail = f"\n{output}" if output else ""
        raise PlannerFailure(
            f"plank export did not create a grounded JSON file in {output_dir}{detail}"
        )
    if len(json_outputs) != 1:
        names = ", ".join(path.name for path in json_outputs)
        output = "\n".join(
            part.strip() for part in [result.stdout, result.stderr] if part.strip()
        )
        detail = f"\n{output}" if output else ""
        raise PlannerFailure(
            f"expected exactly one grounded JSON file in {output_dir}, found: {names}{detail}"
        )
    ground_path = json_outputs[0]
    print("done.")
    return load_json(ground_path)


def task_problem_name(task: dict[str, Any]) -> str:
    info = task["planning-task-info"]
    return f"{fpddl_name(info['problem'])}_from_epddl"


def convert_ground_task(task: dict[str, Any], output_dir: Path) -> tuple[str, Path, Path]:
    domain_key = task["planning-task-info"]["domain"]
    if domain_key not in SUPPORTED_DOMAINS:
        raise UnsupportedTask(f"unsupported EPDDL domain {domain_key!r}")
    converter_name = SUPPORTED_DOMAINS[domain_key]
    converter = CONVERTERS[converter_name]
    output_dir.mkdir(parents=True, exist_ok=True)

    print("Converting...", end="", flush=True)
    result = converter(task, output_dir, task_problem_name(task))
    problem_files = result.get("problem_files", [])
    if len(problem_files) != 1:
        raise PlannerFailure(
            f"expected exactly one generated F-PDDL problem, got {problem_files!r}"
        )

    domain_path = output_dir / "domain.pddl"
    problem_path = output_dir / problem_files[0]
    template_dir = CONVERTED_ROOT / TEMPLATE_DIRS[domain_key]
    visibility_config = template_dir / "visibility.json"
    if visibility_config.exists():
        shutil.copy2(visibility_config, output_dir / "visibility.json")
    if not domain_path.exists() or not problem_path.exists():
        raise PlannerFailure("converter did not produce domain/problem files")
    print("done.")
    return domain_key, domain_path, problem_path


def solve_with_cpp(
    exporter: Path,
    solver: Path,
    domain_path: Path,
    problem_path: Path,
    ir_path: Path,
    *,
    search: str,
    timeout: int,
    max_expanded: int,
    search_options_json: str,
) -> dict[str, Any]:
    print("Solving...")
    run_checked(
        [
            "python3",
            str(exporter),
            "-d",
            str(domain_path),
            "-p",
            str(problem_path),
            "-o",
            str(ir_path),
        ]
    )

    def run_solver_once(search_name: str) -> dict[str, Any]:
        cmd = [
            str(solver),
            "--task",
            str(ir_path),
            "--search",
            search_name,
            "--timeout",
            str(timeout),
            "--max-expanded",
            str(max_expanded),
        ]
        if search_options_json:
            cmd.extend(["--search-options-json", search_options_json])
        result = subprocess.run(cmd, capture_output=True, text=True, check=False)
        if result.stderr.strip():
            print(result.stderr.strip(), file=sys.stderr)
        try:
            return json.loads(result.stdout)
        except json.JSONDecodeError as exc:
            raise PlannerFailure(
                f"solver did not emit JSON output:\n{result.stdout}\n{result.stderr}"
            ) from exc

    payload = run_solver_once(search)
    if (
        payload.get("running") == "ERROR"
        and search == "cbfs"
        and "unknown or disabled search algorithm" in payload.get("message", "")
    ):
        print("CBFS unavailable in current solver build, retrying with greedy.", file=sys.stderr)
        payload = run_solver_once("greedy")
    return payload


def translate_coin_action(action: str) -> str:
    if action.startswith("open_"):
        return f"open_{action.rsplit('_', 1)[1].upper()}"
    if action.startswith("peek_"):
        return f"peek_{action.rsplit('_', 1)[1].upper()}"
    if action.startswith("signal_"):
        _, actor, target = action.split("_", 2)
        return f"signal_{actor.upper()}_{target.upper()}"
    if action.startswith("distract_"):
        _, actor, target = action.split("_", 2)
        return f"distract_{actor.upper()}_{target.upper()}"
    if action.startswith("shout_tails_"):
        return f"shout-tails_{action.rsplit('_', 1)[1].upper()}"
    raise PlannerFailure(f"cannot translate Coin-in-the-Box action {action!r}")


def translate_cc_action(action: str) -> str:
    parts = action.split("_")
    if len(parts) == 2 and parts[0] in {"left", "right"}:
        return f"{parts[0]}_{parts[1].upper()}"
    if len(parts) == 4 and parts[0] == "sense":
        return f"sense_{parts[1].upper()}_{parts[2]}_{parts[3]}"
    if len(parts) == 6 and parts[0] == "tell" and parts[4] == "from":
        return f"tell_{parts[1].upper()}_{parts[2]}_{parts[3]}"
    raise PlannerFailure(f"cannot translate Collaboration action {action!r}")


def translate_gossip_action(action: str) -> str:
    _, actor, target = action.split("_", 2)
    return f"tell_{actor.upper()}_{target.upper()}"


def translate_grapevine_action(action: str) -> str | None:
    if action.startswith("quiet "):
        return None
    parts = action.split()
    if len(parts) == 3 and parts[0] == "sharing_own_secret":
        agent = parts[1].upper()
        secret_owner = parts[2][0].upper()
        return f"tell_{agent}_{secret_owner}"
    raise PlannerFailure(f"cannot translate Grapevine action {action!r}")


def deterministic_translation(domain_key: str, plan: list[str]) -> list[str] | None:
    if domain_key == "coin-in-the-box":
        return [translate_coin_action(action) for action in plan]
    if domain_key == "collaboration-through-communication":
        return [translate_cc_action(action) for action in plan]
    if domain_key == "gossip":
        return [translate_gossip_action(action) for action in plan]
    if domain_key == "grapevine":
        return [item for action in plan if (item := translate_grapevine_action(action)) is not None]
    if domain_key == "active-muddy-child":
        return None
    raise PlannerFailure(f"no translation rule for domain {domain_key!r}")


def validate_epddl_plan(
    plank_binary: Path,
    *,
    domain_path: Path,
    problem_path: Path,
    libraries: list[Path],
    spec_path: Path | None,
    actions: list[str],
) -> tuple[bool, str]:
    if not actions:
        return False, "empty EPDDL action sequence"
    cmd = [str(plank_binary), "validate"]
    if spec_path is not None:
        cmd.extend(["-s", str(spec_path)])
    else:
        cmd.extend(["-d", str(domain_path), "-p", str(problem_path)])
        if libraries:
            cmd.extend(["-l", *[str(path) for path in libraries]])
    cmd.extend(["-a", *actions])
    result = subprocess.run(cmd, capture_output=True, text=True, check=False)
    output = "\n".join(part.strip() for part in [result.stdout, result.stderr] if part.strip())
    merged_output = "\n".join(part for part in [result.stdout, result.stderr] if part)
    lines = [line.strip() for line in merged_output.splitlines() if line.strip()]
    if not lines:
        return False, output
    verdict = lines[-1].lower()
    return verdict == "true", output


def brute_force_amc_translation(
    plank_binary: Path,
    task: dict[str, Any],
    jp_plan: list[str],
    *,
    domain_path: Path,
    problem_path: Path,
    libraries: list[Path],
    spec_path: Path | None,
) -> list[str] | None:
    if any(action != "ask t" for action in jp_plan):
        return None
    action_names = sorted(
        name for name in task.get("actions", {}).keys() if name.startswith("ask_")
    )
    if not action_names:
        return None
    for candidate in itertools.product(action_names, repeat=len(jp_plan)):
        valid, _ = validate_epddl_plan(
            plank_binary,
            domain_path=domain_path,
            problem_path=problem_path,
            libraries=libraries,
            spec_path=spec_path,
            actions=list(candidate),
        )
        if valid:
            return list(candidate)
    return None


def translate_and_validate(
    plank_binary: Path,
    domain_key: str,
    task: dict[str, Any],
    jp_plan: list[str],
    *,
    domain_path: Path,
    problem_path: Path,
    libraries: list[Path],
    spec_path: Path | None,
) -> list[str] | None:
    candidate = deterministic_translation(domain_key, jp_plan)
    if candidate is not None:
        valid, message = validate_epddl_plan(
            plank_binary,
            domain_path=domain_path,
            problem_path=problem_path,
            libraries=libraries,
            spec_path=spec_path,
            actions=candidate,
        )
        if valid:
            return candidate
        print(f"Translated plan did not validate: {message}", file=sys.stderr)

    if domain_key == "active-muddy-child":
        return brute_force_amc_translation(
            plank_binary,
            task,
            jp_plan,
            domain_path=domain_path,
            problem_path=problem_path,
            libraries=libraries,
            spec_path=spec_path,
        )
    return None


def main() -> int:
    args = parse_args()
    try:
        ensure_cli_mode(args)
        domain_path, problem_path, libraries, spec_path = normalize_spec_inputs(args)

        if not args.plank_binary.exists():
            raise PlannerFailure(f"plank binary not found at {args.plank_binary}")
        if not args.solver.exists():
            raise PlannerFailure(f"JPM C++ solver not found at {args.solver}")
        if not DEFAULT_EXPORTER.exists():
            raise PlannerFailure(f"IR exporter not found at {DEFAULT_EXPORTER}")

        with tempfile.TemporaryDirectory(prefix="jpm_epddl_bridge_") as tmp_str:
            tmp_dir = Path(tmp_str)
            task = export_ground_task(
                args.plank_binary,
                domain_path,
                problem_path,
                libraries,
                tmp_dir / "grounded",
            )
            domain_key, fpddl_domain, fpddl_problem = convert_ground_task(task, tmp_dir / "fpddl")
            ir_path = tmp_dir / "task.json"
            solver_payload = solve_with_cpp(
                DEFAULT_EXPORTER,
                args.solver,
                fpddl_domain,
                fpddl_problem,
                ir_path,
                search=args.search,
                timeout=args.timeout,
                max_expanded=args.max_expanded,
                search_options_json=args.search_options_json,
            )

        if not solver_payload.get("solvable"):
            print(f"No JPM solution: {solver_payload.get('running', 'UNKNOWN')}")
            write_plan_file(args.plan_file, None)
            return 0

        jp_plan = solver_payload.get("plan", [])
        translated = translate_and_validate(
            args.plank_binary,
            domain_key,
            task,
            jp_plan,
            domain_path=domain_path,
            problem_path=problem_path,
            libraries=libraries,
            spec_path=spec_path,
        )
        if translated is None:
            print("No validator-passing EPDDL translation found.")
            write_plan_file(args.plan_file, None)
            return 0

        print("Validated EPDDL plan found.")
        write_plan_file(args.plan_file, translated)
        return 0
    except UnsupportedTask as exc:
        print(exc)
        write_plan_file(args.plan_file, None)
        return 0
    except PlannerFailure as exc:
        print(exc, file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
