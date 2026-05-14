#!/usr/bin/env python3
from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import concurrent.futures
from dataclasses import dataclass
import json
from pathlib import Path
import subprocess
import sys
import time
import traceback
from typing import Any

import yaml


JPM_ROOT = Path(__file__).resolve().parents[1]
JP_DIR = JPM_ROOT / "jp"
if str(JP_DIR) not in sys.path:
    sys.path.insert(0, str(JP_DIR))

from benchmark_config import (  # noqa: E402
    DomainConfig,
    _expect_mapping,
    _parse_domain_config,
    _read_optional_string,
    _read_positive_int,
    _read_solver_options,
    _resolve_repo_or_absolute_path,
    _resolve_search_path,
    _to_repo_string,
)
from benchmark_runner import (  # noqa: E402
    PROCESS_TIMEOUT_GRACE_SECONDS,
    _build_summary,
    _coerce_subprocess_output,
    _now,
    _setup_logger,
    _truncate_output,
    _write_json,
)


DEFAULT_RESULTS_FILENAME = "benchmark_results.json"
DEFAULT_COMPARISON_SUMMARY_FILENAME = "summary.json"
DEFAULT_MANIFEST_FILENAME = "comparison_manifest.json"
DEFAULT_CPP_SOLVER_PATH = JPM_ROOT / "cpp" / "build" / "jpm_cpp_solver"


@dataclass(frozen=True)
class ComparisonSolverConfig:
    name: str
    python_search_path: str
    cpp_search_name: str
    search_options: dict[str, Any]
    time_limit_seconds: int
    memory_limit_gb: int
    cpp_max_expanded: int

    def to_dict(self) -> dict[str, Any]:
        return {
            "name": self.name,
            "python_search_path": self.python_search_path,
            "cpp_search": self.cpp_search_name,
            "search_options": self.search_options,
            "time_limit_seconds": self.time_limit_seconds,
            "memory_limit_gb": self.memory_limit_gb,
            "cpp_max_expanded": self.cpp_max_expanded,
        }


@dataclass(frozen=True)
class ComparisonSuiteConfig:
    config_path: str
    suite_name: str
    cores: int
    output_path: str | None
    cpp_solver_path: str
    solvers: tuple[ComparisonSolverConfig, ...]
    domains: tuple[DomainConfig, ...]

    def to_dict(self) -> dict[str, Any]:
        return {
            "config_path": self.config_path,
            "suite_name": self.suite_name,
            "cores": self.cores,
            "output_path": self.output_path,
            "cpp_solver_path": self.cpp_solver_path,
            "solvers": [solver.to_dict() for solver in self.solvers],
            "domains": [domain.to_dict() for domain in self.domains],
        }


@dataclass(frozen=True)
class ComparisonJob:
    engine: str
    suite_name: str
    solver_name: str
    engine_solver_name: str
    python_search_path: str
    cpp_search_name: str
    search_options: dict[str, Any]
    time_limit_seconds: int
    memory_limit_gb: int
    cpp_max_expanded: int
    domain_name: str
    domain_path: str
    external_path: str
    problem_name: str
    problem_path: str

    @property
    def instance_name(self) -> str:
        return f"{self.solver_name}_{self.domain_name}_{self.problem_name}"

    @property
    def artifact_search_name(self) -> str:
        if self.engine == "python":
            return Path(self.python_search_path).stem
        return self.cpp_search_name

    @property
    def artifact_instance_name(self) -> str:
        return f"{self.artifact_search_name}_{self.domain_name}_{self.problem_name}"

    def to_dict(self) -> dict[str, Any]:
        return {
            "engine": self.engine,
            "suite_name": self.suite_name,
            "solver_name": self.solver_name,
            "engine_solver_name": self.engine_solver_name,
            "python_search_path": self.python_search_path,
            "cpp_search_name": self.cpp_search_name,
            "search_options": self.search_options,
            "time_limit_seconds": self.time_limit_seconds,
            "memory_limit_gb": self.memory_limit_gb,
            "cpp_max_expanded": self.cpp_max_expanded,
            "domain_name": self.domain_name,
            "domain_path": self.domain_path,
            "external_path": self.external_path,
            "problem_name": self.problem_name,
            "problem_path": self.problem_path,
            "instance_name": self.instance_name,
            "artifact_instance_name": self.artifact_instance_name,
        }


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)

    suite_config = load_comparison_suite(args.config)
    if args.cores is not None and args.cores <= 0:
        raise ValueError("--cores must be a positive integer")

    effective_cores = args.cores or suite_config.cores
    jobs = build_comparison_jobs(suite_config)
    output_path = resolve_output_path(suite_config.output_path, args.output)
    output_path.mkdir(parents=True, exist_ok=True)
    python_output_path = output_path / "python"
    cpp_output_path = output_path / "cpp"
    python_output_path.mkdir(parents=True, exist_ok=True)
    cpp_output_path.mkdir(parents=True, exist_ok=True)

    logger = _setup_logger(output_path, args.console_debug)
    manifest_path = output_path / DEFAULT_MANIFEST_FILENAME
    python_results_path = python_output_path / DEFAULT_RESULTS_FILENAME
    cpp_results_path = cpp_output_path / DEFAULT_RESULTS_FILENAME
    comparison_summary_path = output_path / DEFAULT_COMPARISON_SUMMARY_FILENAME

    manifest = {
        "suite_name": suite_config.suite_name,
        "config_path": suite_config.config_path,
        "output_path": _to_repo_string(output_path),
        "python_output_path": _to_repo_string(python_output_path),
        "cpp_output_path": _to_repo_string(cpp_output_path),
        "cpp_solver_path": suite_config.cpp_solver_path,
        "cores": effective_cores,
        "dry_run": args.dry_run,
        "generated_at": _now().isoformat(),
        "config": suite_config.to_dict(),
        "jobs": [job.to_dict() for job in jobs],
    }
    _write_json(manifest_path, manifest)
    logger.info("loaded comparison suite %s with %d engine jobs", suite_config.suite_name, len(jobs))
    logger.info("comparison outputs will be written to %s", output_path)

    if args.dry_run:
        empty_engine_payload = {
            "suite_name": suite_config.suite_name,
            "config_path": suite_config.config_path,
            "output_path": None,
            "cores": effective_cores,
            "started_at": None,
            "finished_at": None,
            "summary": _build_summary([]),
            "results": [],
        }
        _write_json(python_results_path, empty_engine_payload | {"output_path": _to_repo_string(python_output_path)})
        _write_json(cpp_results_path, empty_engine_payload | {"output_path": _to_repo_string(cpp_output_path)})
        _write_json(
            comparison_summary_path,
            {
                "suite_name": suite_config.suite_name,
                "config_path": suite_config.config_path,
                "output_path": _to_repo_string(output_path),
                "python_output_path": _to_repo_string(python_output_path),
                "cpp_output_path": _to_repo_string(cpp_output_path),
                "started_at": None,
                "finished_at": None,
                "summary": build_comparison_summary([]),
                "results": [],
            },
        )
        logger.info("dry run only; no solver processes were started")
        return 0

    cpp_solver_path = _resolve_repo_or_absolute_path(suite_config.cpp_solver_path)
    if not cpp_solver_path.is_file():
        raise FileNotFoundError(
            f"C++ solver not found at {cpp_solver_path}. Build it with: cmake -S cpp -B cpp/build && cmake --build cpp/build"
        )

    started_at = _now()
    all_results: list[dict[str, Any]] = []

    with concurrent.futures.ThreadPoolExecutor(max_workers=effective_cores) as executor:
        future_to_job = {
            executor.submit(run_job, job, python_output_path, cpp_output_path, cpp_solver_path): job
            for job in jobs
        }
        for future in concurrent.futures.as_completed(future_to_job):
            job = future_to_job[future]
            try:
                result = future.result()
            except Exception as exc:  # pragma: no cover - defensive fallback
                result = build_error_record(
                    job,
                    python_output_path if job.engine == "python" else cpp_output_path,
                    completion_status="ERROR",
                    wallclock_time=0.0,
                    error_message=str(exc),
                    stderr=traceback.format_exc(),
                    stdout=None,
                    started_at=_now(),
                    finished_at=_now(),
                    raw_result=None,
                    ir_json_path=None,
                )

            all_results.append(result)
            logger.info(
                "finished %s %s with %s in %.3fs",
                result["engine"],
                result["instance_name"],
                result["completion_status"],
                result["wallclock_time_seconds"],
            )
            write_engine_results(
                python_results_path,
                suite_config,
                python_output_path,
                effective_cores,
                started_at,
                _now(),
                [record for record in all_results if record["engine"] == "python"],
            )
            write_engine_results(
                cpp_results_path,
                suite_config,
                cpp_output_path,
                effective_cores,
                started_at,
                _now(),
                [record for record in all_results if record["engine"] == "cpp"],
            )
            write_comparison_summary(
                comparison_summary_path,
                suite_config,
                output_path,
                python_output_path,
                cpp_output_path,
                started_at,
                _now(),
                all_results,
            )

    finished_at = _now()
    write_engine_results(
        python_results_path,
        suite_config,
        python_output_path,
        effective_cores,
        started_at,
        finished_at,
        [record for record in all_results if record["engine"] == "python"],
    )
    write_engine_results(
        cpp_results_path,
        suite_config,
        cpp_output_path,
        effective_cores,
        started_at,
        finished_at,
        [record for record in all_results if record["engine"] == "cpp"],
    )
    write_comparison_summary(
        comparison_summary_path,
        suite_config,
        output_path,
        python_output_path,
        cpp_output_path,
        started_at,
        finished_at,
        all_results,
    )
    logger.info("comparison suite complete")
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Run paired Python-vs-C++ solver comparisons across benchmark suites"
    )
    parser.add_argument("-c", "--config", required=True, help="Path to the comparison YAML config")
    parser.add_argument(
        "-o",
        "--output",
        default="",
        help="Optional output directory override (default: output/<timestamp>)",
    )
    parser.add_argument(
        "-j",
        "--cores",
        type=int,
        help="Optional override for the number of concurrent solver processes",
    )
    parser.add_argument(
        "--console_debug",
        action="store_true",
        help="Enable DEBUG-level console logging for the comparison runner",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Validate the config and emit the resolved manifest without running solver processes",
    )
    return parser


def load_comparison_suite(config_path: str | Path) -> ComparisonSuiteConfig:
    resolved_config_path = _resolve_repo_or_absolute_path(config_path)
    if not resolved_config_path.exists():
        raise FileNotFoundError(f"Comparison config does not exist: {resolved_config_path}")

    with resolved_config_path.open("r", encoding="utf-8") as handle:
        raw_config = yaml.safe_load(handle)

    config_dict = _expect_mapping(raw_config, "comparison config")
    defaults = _expect_mapping(config_dict.get("defaults", {}), "defaults")

    suite_name = config_dict.get("suite_name", resolved_config_path.stem)
    if not isinstance(suite_name, str) or not suite_name.strip():
        raise ValueError("suite_name must be a non-empty string")

    cores = _read_positive_int(config_dict, "cores", default=1)
    output_path = _read_optional_string(config_dict.get("output_path"))
    default_time_limit_seconds = _read_positive_int(defaults, "time_limit_seconds", default=30)
    default_memory_limit_gb = _read_positive_int(defaults, "memory_limit_gb", default=8)
    default_cpp_max_expanded = _read_positive_int(defaults, "cpp_max_expanded", default=300000)
    raw_cpp_solver_path = config_dict.get("cpp_solver_path") or defaults.get("cpp_solver_path")
    cpp_solver_path = (
        _to_repo_string(_resolve_repo_or_absolute_path(raw_cpp_solver_path))
        if raw_cpp_solver_path
        else _to_repo_string(DEFAULT_CPP_SOLVER_PATH)
    )

    solvers_raw = config_dict.get("solvers")
    if not isinstance(solvers_raw, list) or not solvers_raw:
        raise ValueError("solvers must be a non-empty list")
    solver_names: set[str] = set()
    solvers = tuple(
        parse_comparison_solver_config(
            solver_entry,
            default_time_limit_seconds,
            default_memory_limit_gb,
            default_cpp_max_expanded,
            solver_names,
        )
        for solver_entry in solvers_raw
    )

    domains_raw = config_dict.get("domains")
    if not isinstance(domains_raw, list) or not domains_raw:
        raise ValueError("domains must be a non-empty list")
    domains = tuple(_parse_domain_config(domain_entry) for domain_entry in domains_raw)

    return ComparisonSuiteConfig(
        config_path=_to_repo_string(resolved_config_path),
        suite_name=suite_name.strip(),
        cores=cores,
        output_path=output_path,
        cpp_solver_path=cpp_solver_path,
        solvers=solvers,
        domains=domains,
    )


def parse_comparison_solver_config(
    solver_entry: Any,
    default_time_limit_seconds: int,
    default_memory_limit_gb: int,
    default_cpp_max_expanded: int,
    solver_names: set[str],
) -> ComparisonSolverConfig:
    solver_dict = _expect_mapping(solver_entry, "solver entry")
    raw_solver_name = solver_dict.get("name")
    if not isinstance(raw_solver_name, str) or not raw_solver_name.strip():
        raise ValueError("Each solver entry must include a non-empty string name")
    solver_name = raw_solver_name.strip()
    if solver_name in solver_names:
        raise ValueError(f"Duplicate solver name in config: {solver_name}")
    solver_names.add(solver_name)

    python_search_path = _resolve_search_path(solver_name, solver_dict.get("python_search_path"))
    raw_cpp_search_name = solver_dict.get("cpp_search", solver_name)
    if not isinstance(raw_cpp_search_name, str) or not raw_cpp_search_name.strip():
        raise ValueError(f"cpp_search for solver {solver_name} must be a non-empty string")
    cpp_search_name = raw_cpp_search_name.strip()

    search_options = _read_solver_options(solver_dict, solver_name)
    time_limit_seconds = _read_positive_int(
        solver_dict,
        "time_limit_seconds",
        default=default_time_limit_seconds,
    )
    memory_limit_gb = _read_positive_int(
        solver_dict,
        "memory_limit_gb",
        default=default_memory_limit_gb,
    )
    cpp_max_expanded = _read_positive_int(
        solver_dict,
        "cpp_max_expanded",
        default=default_cpp_max_expanded,
    )
    return ComparisonSolverConfig(
        name=solver_name,
        python_search_path=_to_repo_string(python_search_path),
        cpp_search_name=cpp_search_name,
        search_options=search_options,
        time_limit_seconds=time_limit_seconds,
        memory_limit_gb=memory_limit_gb,
        cpp_max_expanded=cpp_max_expanded,
    )


def build_comparison_jobs(config: ComparisonSuiteConfig) -> list[ComparisonJob]:
    jobs: list[ComparisonJob] = []
    for domain in config.domains:
        for problem_path in domain.selected_instances:
            problem_name = Path(problem_path).stem
            for solver in config.solvers:
                jobs.append(
                    ComparisonJob(
                        engine="python",
                        suite_name=config.suite_name,
                        solver_name=solver.name,
                        engine_solver_name=solver.python_search_path,
                        python_search_path=solver.python_search_path,
                        cpp_search_name=solver.cpp_search_name,
                        search_options=solver.search_options,
                        time_limit_seconds=solver.time_limit_seconds,
                        memory_limit_gb=solver.memory_limit_gb,
                        cpp_max_expanded=solver.cpp_max_expanded,
                        domain_name=domain.name,
                        domain_path=domain.cli_domain_path,
                        external_path=domain.cli_external_path,
                        problem_name=problem_name,
                        problem_path=problem_path,
                    )
                )
                jobs.append(
                    ComparisonJob(
                        engine="cpp",
                        suite_name=config.suite_name,
                        solver_name=solver.name,
                        engine_solver_name=solver.cpp_search_name,
                        python_search_path=solver.python_search_path,
                        cpp_search_name=solver.cpp_search_name,
                        search_options=solver.search_options,
                        time_limit_seconds=solver.time_limit_seconds,
                        memory_limit_gb=solver.memory_limit_gb,
                        cpp_max_expanded=solver.cpp_max_expanded,
                        domain_name=domain.name,
                        domain_path=domain.cli_domain_path,
                        external_path=domain.cli_external_path,
                        problem_name=problem_name,
                        problem_path=problem_path,
                    )
                )
    return jobs


def resolve_output_path(config_output_path: str | None, cli_output_path: str) -> Path:
    if cli_output_path:
        return _resolve_repo_or_absolute_path(cli_output_path)
    if config_output_path:
        return _resolve_repo_or_absolute_path(config_output_path)
    return JPM_ROOT / "output" / _now().strftime("%d-%m-%Y_%H-%M-%S")


def run_job(
    job: ComparisonJob,
    python_output_path: Path,
    cpp_output_path: Path,
    cpp_solver_path: Path,
) -> dict[str, Any]:
    if job.engine == "python":
        return run_python_job(job, python_output_path)
    return run_cpp_job(job, cpp_output_path, cpp_solver_path)


def run_python_job(job: ComparisonJob, output_path: Path) -> dict[str, Any]:
    started_at = _now()
    expected_result_path = output_path / f"{job.artifact_instance_name}.json"
    expected_log_path = output_path / f"{job.artifact_instance_name}.log"
    expected_result_path.unlink(missing_ok=True)
    expected_log_path.unlink(missing_ok=True)

    command = [
        sys.executable,
        "-m",
        "jp.instance_runner",
        "-s",
        job.python_search_path,
        "-e",
        job.external_path,
        "-d",
        job.domain_path,
        "-p",
        job.problem_path,
        "-o",
        _to_repo_string(output_path),
        "-t",
        str(job.time_limit_seconds),
        "-m",
        str(job.memory_limit_gb),
    ]
    if job.search_options:
        command.extend(["--search_options_json", json.dumps(job.search_options, sort_keys=True)])

    started_perf = time.perf_counter()
    try:
        completed = subprocess.run(
            command,
            cwd=JPM_ROOT,
            capture_output=True,
            text=True,
            timeout=job.time_limit_seconds + PROCESS_TIMEOUT_GRACE_SECONDS,
            check=False,
        )
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        raw_result = read_result_json(expected_result_path)
        completion_status = resolve_completion_status(raw_result, completed.returncode)
        return build_result_record(
            job=job,
            output_path=output_path,
            raw_result=raw_result,
            completion_status=completion_status,
            wallclock_time=wallclock_time,
            returncode=completed.returncode,
            stdout=completed.stdout,
            stderr=completed.stderr,
            error_message=resolve_process_error_message(
                "Solver",
                completion_status,
                completed.returncode,
                raw_result,
            ),
            started_at=started_at,
            finished_at=finished_at,
            ir_json_path=None,
        )
    except subprocess.TimeoutExpired as exc:
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        raw_result = read_result_json(expected_result_path)
        return build_result_record(
            job=job,
            output_path=output_path,
            raw_result=raw_result,
            completion_status="WALL_TIMEOUT",
            wallclock_time=wallclock_time,
            returncode=None,
            stdout=_truncate_output(_coerce_subprocess_output(exc.stdout)),
            stderr=_truncate_output(_coerce_subprocess_output(exc.stderr)),
            error_message=f"Benchmark runner timed out after {job.time_limit_seconds + PROCESS_TIMEOUT_GRACE_SECONDS} seconds",
            started_at=started_at,
            finished_at=finished_at,
            ir_json_path=None,
        )


def run_cpp_job(job: ComparisonJob, output_path: Path, cpp_solver_path: Path) -> dict[str, Any]:
    started_at = _now()
    result_path = output_path / f"{job.artifact_instance_name}.json"
    log_path = output_path / f"{job.artifact_instance_name}.log"
    ir_output_path = output_path / "ir" / f"{job.solver_name}__{job.domain_name}__{job.problem_name}.ir.json"
    result_path.unlink(missing_ok=True)
    log_path.unlink(missing_ok=True)
    ir_output_path.parent.mkdir(parents=True, exist_ok=True)

    export_command = [
        sys.executable,
        str(JPM_ROOT / "tools" / "export_jpm_ir.py"),
        "-d",
        job.domain_path,
        "-p",
        job.problem_path,
        "-o",
        _to_repo_string(ir_output_path),
    ]

    started_perf = time.perf_counter()
    try:
        export_completed = subprocess.run(
            export_command,
            cwd=JPM_ROOT,
            capture_output=True,
            text=True,
            check=False,
        )
        if export_completed.returncode != 0:
            finished_at = _now()
            wallclock_time = time.perf_counter() - started_perf
            return build_error_record(
                job,
                output_path,
                completion_status="ERROR",
                wallclock_time=wallclock_time,
                error_message="IR export process exited with a non-zero status",
                stderr=export_completed.stderr,
                stdout=export_completed.stdout,
                started_at=started_at,
                finished_at=finished_at,
                raw_result=None,
                ir_json_path=_to_repo_string(ir_output_path),
            )

        solve_command = [
            str(cpp_solver_path),
            "--task",
            _to_repo_string(ir_output_path),
            "--timeout",
            str(job.time_limit_seconds),
            "--max-expanded",
            str(job.cpp_max_expanded),
            "--search",
            job.cpp_search_name,
        ]
        if job.search_options:
            solve_command.extend(["--search-options-json", json.dumps(job.search_options, sort_keys=True)])

        completed = subprocess.run(
            solve_command,
            cwd=JPM_ROOT,
            capture_output=True,
            text=True,
            timeout=job.time_limit_seconds + PROCESS_TIMEOUT_GRACE_SECONDS,
            check=False,
        )
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        raw_result = parse_cpp_result(completed.stdout)
        if raw_result is not None:
            with result_path.open("w", encoding="utf-8") as handle:
                json.dump(raw_result, handle, indent=2, sort_keys=True)
        with log_path.open("w", encoding="utf-8") as handle:
            handle.write(completed.stdout)
            if completed.stderr:
                if completed.stdout and not completed.stdout.endswith("\n"):
                    handle.write("\n")
                handle.write(completed.stderr)

        completion_status = resolve_completion_status(raw_result, completed.returncode)
        return build_result_record(
            job=job,
            output_path=output_path,
            raw_result=raw_result,
            completion_status=completion_status,
            wallclock_time=wallclock_time,
            returncode=completed.returncode,
            stdout=completed.stdout,
            stderr=completed.stderr,
            error_message=resolve_process_error_message(
                "C++ solver",
                completion_status,
                completed.returncode,
                raw_result,
            ),
            started_at=started_at,
            finished_at=finished_at,
            ir_json_path=_to_repo_string(ir_output_path),
        )
    except subprocess.TimeoutExpired as exc:
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        return build_result_record(
            job=job,
            output_path=output_path,
            raw_result=None,
            completion_status="WALL_TIMEOUT",
            wallclock_time=wallclock_time,
            returncode=None,
            stdout=_truncate_output(_coerce_subprocess_output(exc.stdout)),
            stderr=_truncate_output(_coerce_subprocess_output(exc.stderr)),
            error_message=f"C++ solver timed out after {job.time_limit_seconds + PROCESS_TIMEOUT_GRACE_SECONDS} seconds",
            started_at=started_at,
            finished_at=finished_at,
            ir_json_path=_to_repo_string(ir_output_path),
        )


def build_result_record(
    job: ComparisonJob,
    output_path: Path,
    raw_result: dict[str, Any] | None,
    completion_status: str,
    wallclock_time: float,
    returncode: int | None,
    stdout: str | None,
    stderr: str | None,
    error_message: str | None,
    started_at,
    finished_at,
    ir_json_path: str | None,
) -> dict[str, Any]:
    result_path = output_path / f"{job.artifact_instance_name}.json"
    log_path = output_path / f"{job.artifact_instance_name}.log"
    init_time = read_number(raw_result, "init_time")
    search_time = read_number(raw_result, "search_time")
    reported_total_time = None
    if init_time is not None and search_time is not None:
        reported_total_time = init_time + search_time

    raw_completion = raw_result.get("running") if raw_result is not None else None
    include_process_output = completion_status in {"ERROR", "TIMEOUT", "WALL_TIMEOUT"}

    plan = raw_result.get("plan") if isinstance(raw_result, dict) else None
    if not isinstance(plan, list):
        plan = None

    return {
        "engine": job.engine,
        "suite_name": job.suite_name,
        "instance_name": job.instance_name,
        "artifact_instance_name": job.artifact_instance_name,
        "solver_name": job.solver_name,
        "engine_solver_name": job.engine_solver_name,
        "python_search_path": job.python_search_path,
        "cpp_search_name": job.cpp_search_name,
        "search_options": job.search_options,
        "domain_name": job.domain_name,
        "domain_path": job.domain_path,
        "problem_name": job.problem_name,
        "problem_path": job.problem_path,
        "external_path": job.external_path,
        "configured_time_limit_seconds": job.time_limit_seconds,
        "configured_memory_limit_gb": job.memory_limit_gb,
        "configured_cpp_max_expanded": job.cpp_max_expanded,
        "completion_status": completion_status,
        "raw_running_status": raw_completion,
        "solvable": raw_result.get("solvable") if raw_result is not None else completion_status == "SUCC",
        "plan": plan,
        "path_length": read_int(raw_result, "path_length"),
        "expanded": read_int(raw_result, "expanded"),
        "generated": read_int(raw_result, "generated"),
        "pruned": read_int(raw_result, "pruned"),
        "pruned_by_unknown": read_int(raw_result, "pruned_by_unknown"),
        "pruned_by_visited": read_int(raw_result, "pruned_by_visited"),
        "goal_checked": read_int(raw_result, "goal_checked"),
        "search_field": raw_result.get("search") if raw_result is not None else None,
        "init_time_seconds": init_time,
        "search_time_seconds": search_time,
        "reported_total_time_seconds": reported_total_time,
        "wallclock_time_seconds": wallclock_time,
        "started_at": started_at.isoformat(),
        "finished_at": finished_at.isoformat(),
        "result_json_path": _to_repo_string(result_path),
        "result_json_exists": result_path.exists(),
        "log_path": _to_repo_string(log_path),
        "log_exists": log_path.exists(),
        "ir_json_path": ir_json_path,
        "returncode": returncode,
        "error": error_message,
        "stdout_tail": _truncate_output(stdout) if include_process_output else None,
        "stderr_tail": _truncate_output(stderr) if include_process_output else None,
    }


def build_error_record(
    job: ComparisonJob,
    output_path: Path,
    completion_status: str,
    wallclock_time: float,
    error_message: str,
    stderr: str | None,
    stdout: str | None,
    started_at,
    finished_at,
    raw_result: dict[str, Any] | None,
    ir_json_path: str | None,
) -> dict[str, Any]:
    return build_result_record(
        job=job,
        output_path=output_path,
        raw_result=raw_result,
        completion_status=completion_status,
        wallclock_time=wallclock_time,
        returncode=None,
        stdout=stdout,
        stderr=stderr,
        error_message=error_message,
        started_at=started_at,
        finished_at=finished_at,
        ir_json_path=ir_json_path,
    )


def resolve_completion_status(raw_result: dict[str, Any] | None, returncode: int | None) -> str:
    if raw_result is not None:
        # The C++ solver returns exit code 1 for UNSOLVED/TIMEOUT, so the
        # structured payload is more reliable than the process status.
        raw_status = raw_result.get("running")
        if isinstance(raw_status, str) and raw_status:
            return raw_status
        if raw_result.get("solvable"):
            return "SUCC"
        return "UNSOLVED"
    if returncode not in {None, 0}:
        return "ERROR"
    return "ERROR"


def resolve_process_error_message(
    process_label: str,
    completion_status: str,
    returncode: int | None,
    raw_result: dict[str, Any] | None,
) -> str | None:
    if completion_status != "ERROR":
        return None
    if returncode not in {None, 0}:
        return f"{process_label} process exited with a non-zero status"
    if raw_result is None:
        return f"{process_label} process did not produce a parseable result"
    return f"{process_label} reported an error result"


def read_result_json(result_path: Path) -> dict[str, Any] | None:
    if not result_path.is_file():
        return None
    with result_path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def parse_cpp_result(stdout: str) -> dict[str, Any] | None:
    stripped = stdout.strip()
    if not stripped:
        return None
    start = stripped.find("{")
    if start < 0:
        return None
    payload = stripped[start:]
    try:
        value = json.loads(payload)
    except json.JSONDecodeError:
        return None
    return value if isinstance(value, dict) else None


def read_number(raw_result: dict[str, Any] | None, key: str) -> float | None:
    if raw_result is None:
        return None
    value = raw_result.get(key)
    if isinstance(value, (int, float)):
        return float(value)
    return None


def read_int(raw_result: dict[str, Any] | None, key: str) -> int | None:
    if raw_result is None:
        return None
    value = raw_result.get(key)
    if isinstance(value, bool):
        return None
    if isinstance(value, int):
        return value
    if isinstance(value, float) and value.is_integer():
        return int(value)
    return None


def write_engine_results(
    results_path: Path,
    suite_config: ComparisonSuiteConfig,
    output_path: Path,
    cores: int,
    started_at,
    finished_at,
    results: list[dict[str, Any]],
) -> None:
    ordered_results = sorted(
        results,
        key=lambda item: (item["solver_name"], item["domain_name"], item["problem_name"]),
    )
    payload = {
        "suite_name": suite_config.suite_name,
        "config_path": suite_config.config_path,
        "output_path": _to_repo_string(output_path),
        "cores": cores,
        "started_at": started_at.isoformat(),
        "finished_at": finished_at.isoformat(),
        "summary": _build_summary(ordered_results),
        "results": ordered_results,
    }
    _write_json(results_path, payload)


def write_comparison_summary(
    summary_path: Path,
    suite_config: ComparisonSuiteConfig,
    output_path: Path,
    python_output_path: Path,
    cpp_output_path: Path,
    started_at,
    finished_at,
    results: list[dict[str, Any]],
) -> None:
    comparison_results = build_comparison_results(results)
    payload = {
        "suite_name": suite_config.suite_name,
        "config_path": suite_config.config_path,
        "output_path": _to_repo_string(output_path),
        "python_output_path": _to_repo_string(python_output_path),
        "python_results_path": _to_repo_string(python_output_path / DEFAULT_RESULTS_FILENAME),
        "cpp_output_path": _to_repo_string(cpp_output_path),
        "cpp_results_path": _to_repo_string(cpp_output_path / DEFAULT_RESULTS_FILENAME),
        "cpp_solver_path": suite_config.cpp_solver_path,
        "started_at": started_at.isoformat(),
        "finished_at": finished_at.isoformat(),
        "summary": build_comparison_summary(comparison_results),
        "results": comparison_results,
    }
    _write_json(summary_path, payload)


def build_comparison_results(results: list[dict[str, Any]]) -> list[dict[str, Any]]:
    grouped: dict[tuple[str, str, str], dict[str, dict[str, Any]]] = defaultdict(dict)
    for result in results:
        grouped[(result["solver_name"], result["domain_name"], result["problem_name"])][result["engine"]] = result

    comparison_results: list[dict[str, Any]] = []
    for (solver_name, domain_name, problem_name), engines in sorted(grouped.items()):
        python_result = project_engine_result(engines.get("python"))
        cpp_result = project_engine_result(engines.get("cpp"))
        comparison_results.append(
            {
                "solver_name": solver_name,
                "domain_name": domain_name,
                "problem_name": problem_name,
                "python": python_result,
                "cpp": cpp_result,
                "status_match": compare_field(python_result, cpp_result, "completion_status"),
                "path_length_match": compare_field(python_result, cpp_result, "path_length"),
                "expanded_match": compare_field(python_result, cpp_result, "expanded"),
                "generated_match": compare_field(python_result, cpp_result, "generated"),
                "pruned_by_unknown_match": compare_field(python_result, cpp_result, "pruned_by_unknown"),
                "pruned_by_visited_match": compare_field(python_result, cpp_result, "pruned_by_visited"),
                "goal_checked_match": compare_field(python_result, cpp_result, "goal_checked"),
            }
        )
    return comparison_results


def project_engine_result(result: dict[str, Any] | None) -> dict[str, Any] | None:
    if result is None:
        return None
    return {
        "completion_status": result["completion_status"],
        "raw_running_status": result["raw_running_status"],
        "solvable": result["solvable"],
        "plan": result["plan"],
        "path_length": result["path_length"],
        "expanded": result["expanded"],
        "generated": result["generated"],
        "pruned": result["pruned"],
        "pruned_by_unknown": result["pruned_by_unknown"],
        "pruned_by_visited": result["pruned_by_visited"],
        "goal_checked": result["goal_checked"],
        "wallclock_time_seconds": result["wallclock_time_seconds"],
        "search_field": result["search_field"],
        "result_json_path": result["result_json_path"],
        "log_path": result["log_path"],
        "error": result["error"],
    }


def compare_field(
    python_result: dict[str, Any] | None,
    cpp_result: dict[str, Any] | None,
    field_name: str,
) -> bool | None:
    if python_result is None or cpp_result is None:
        return None
    return python_result.get(field_name) == cpp_result.get(field_name)


def build_comparison_summary(results: list[dict[str, Any]]) -> dict[str, Any]:
    status_matches = sum(1 for result in results if result["status_match"] is True)
    status_mismatches = sum(1 for result in results if result["status_match"] is False)
    grouped_by_solver: dict[str, list[dict[str, Any]]] = defaultdict(list)
    grouped_by_domain: dict[str, list[dict[str, Any]]] = defaultdict(list)
    python_status_counts = Counter()
    cpp_status_counts = Counter()

    for result in results:
        grouped_by_solver[result["solver_name"]].append(result)
        grouped_by_domain[result["domain_name"]].append(result)
        python_status = result.get("python", {}).get("completion_status") if result.get("python") else None
        cpp_status = result.get("cpp", {}).get("completion_status") if result.get("cpp") else None
        if python_status:
            python_status_counts[python_status] += 1
        if cpp_status:
            cpp_status_counts[cpp_status] += 1

    return {
        "total_pairs": len(results),
        "status_match_count": status_matches,
        "status_mismatch_count": status_mismatches,
        "python_status_counts": dict(python_status_counts),
        "cpp_status_counts": dict(cpp_status_counts),
        "by_solver": {
            solver_name: build_comparison_group_summary(group)
            for solver_name, group in sorted(grouped_by_solver.items())
        },
        "by_domain": {
            domain_name: build_comparison_group_summary(group)
            for domain_name, group in sorted(grouped_by_domain.items())
        },
    }


def build_comparison_group_summary(results: list[dict[str, Any]]) -> dict[str, Any]:
    python_status_counts = Counter()
    cpp_status_counts = Counter()
    status_match_count = 0
    status_mismatch_count = 0
    for result in results:
        python_status = result.get("python", {}).get("completion_status") if result.get("python") else None
        cpp_status = result.get("cpp", {}).get("completion_status") if result.get("cpp") else None
        if python_status:
            python_status_counts[python_status] += 1
        if cpp_status:
            cpp_status_counts[cpp_status] += 1
        if result["status_match"] is True:
            status_match_count += 1
        elif result["status_match"] is False:
            status_mismatch_count += 1
    return {
        "total_pairs": len(results),
        "status_match_count": status_match_count,
        "status_mismatch_count": status_mismatch_count,
        "python_status_counts": dict(python_status_counts),
        "cpp_status_counts": dict(cpp_status_counts),
    }


if __name__ == "__main__":
    raise SystemExit(main())