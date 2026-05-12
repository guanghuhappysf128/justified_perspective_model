from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import concurrent.futures
import datetime
import json
from pathlib import Path
import subprocess
import sys
import time
import traceback
from typing import Any

import pytz

from benchmark_config import PROJECT_ROOT, BenchmarkJob, build_benchmark_jobs, load_benchmark_suite
from util import setup_logger, setup_logger_handlers


TIMEZONE = pytz.timezone("Australia/Melbourne")
DATE_FORMAT = "%d-%m-%Y_%H-%M-%S"
LOGGER_NAME = "benchmark_runner"
PROCESS_TIMEOUT_GRACE_SECONDS = 10
RESULTS_FILENAME = "benchmark_results.json"
MANIFEST_FILENAME = "benchmark_manifest.json"


def main(argv: list[str] | None = None) -> int:
    parser = _build_parser()
    args = parser.parse_args(argv)

    suite_config = load_benchmark_suite(args.config)
    if args.cores is not None and args.cores <= 0:
        raise ValueError("--cores must be a positive integer")

    effective_cores = args.cores or suite_config.cores
    jobs = build_benchmark_jobs(suite_config)
    output_path = _resolve_output_path(suite_config.output_path, args.output)
    output_path.mkdir(parents=True, exist_ok=True)

    logger = _setup_logger(output_path, args.console_debug)
    manifest_path = output_path / MANIFEST_FILENAME
    results_path = output_path / RESULTS_FILENAME

    manifest = {
        "suite_name": suite_config.suite_name,
        "config_path": suite_config.config_path,
        "benchmark_root": "benchmarks",
        "output_path": _to_repo_string(output_path),
        "cores": effective_cores,
        "dry_run": args.dry_run,
        "generated_at": _now().isoformat(),
        "config": suite_config.to_dict(),
        "jobs": [job.to_dict() for job in jobs],
    }
    _write_json(manifest_path, manifest)
    logger.info("loaded suite %s with %d jobs", suite_config.suite_name, len(jobs))
    logger.info("results will be written to %s", output_path)

    if args.dry_run:
        logger.info("dry run only; no solver processes were started")
        _write_json(
            results_path,
            {
                "suite_name": suite_config.suite_name,
                "config_path": suite_config.config_path,
                "output_path": _to_repo_string(output_path),
                "cores": effective_cores,
                "started_at": None,
                "finished_at": None,
                "summary": _build_summary([]),
                "results": [],
            },
        )
        return 0

    started_at = _now()
    results: list[dict[str, Any]] = []

    with concurrent.futures.ThreadPoolExecutor(max_workers=effective_cores) as executor:
        future_to_job = {
            executor.submit(_run_job, job, output_path): job
            for job in jobs
        }
        for future in concurrent.futures.as_completed(future_to_job):
            job = future_to_job[future]
            try:
                result = future.result()
            except Exception as exc:  # pragma: no cover - defensive fallback
                result = _build_error_record(
                    job,
                    output_path,
                    completion_status="ERROR",
                    wallclock_time=0.0,
                    error_message=str(exc),
                    stderr=traceback.format_exc(),
                    stdout=None,
                    started_at=_now(),
                    finished_at=_now(),
                )

            results.append(result)
            logger.info(
                "finished %s with %s in %.3fs",
                result["instance_name"],
                result["completion_status"],
                result["wallclock_time_seconds"],
            )
            _write_results_file(
                results_path,
                suite_config.suite_name,
                suite_config.config_path,
                output_path,
                effective_cores,
                started_at,
                _now(),
                results,
            )

    finished_at = _now()
    _write_results_file(
        results_path,
        suite_config.suite_name,
        suite_config.config_path,
        output_path,
        effective_cores,
        started_at,
        finished_at,
        results,
    )
    logger.info("benchmark suite complete")
    return 0


def _build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Run benchmark suites for the repository solvers")
    parser.add_argument("-c", "--config", required=True, help="Path to the benchmark YAML config")
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
        help="Enable DEBUG-level console logging for the benchmark runner",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Validate the config and emit the resolved manifest without running any solver",
    )
    return parser


def _resolve_output_path(config_output_path: str | None, cli_output_path: str) -> Path:
    if cli_output_path:
        return _resolve_repo_or_absolute_path(cli_output_path)
    if config_output_path:
        return _resolve_repo_or_absolute_path(config_output_path)
    return PROJECT_ROOT / "output" / _now().strftime(DATE_FORMAT)


def _run_job(job: BenchmarkJob, output_path: Path) -> dict[str, Any]:
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
        job.search_path,
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
        command.extend([
            "--search_options_json",
            json.dumps(job.search_options, sort_keys=True),
        ])

    started_perf = time.perf_counter()
    try:
        completed = subprocess.run(
            command,
            cwd=PROJECT_ROOT,
            capture_output=True,
            text=True,
            timeout=job.time_limit_seconds + PROCESS_TIMEOUT_GRACE_SECONDS,
            check=False,
        )
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        raw_result = _read_result_json(expected_result_path)
        return _build_result_record(
            job=job,
            output_path=output_path,
            raw_result=raw_result,
            completion_status=_resolve_completion_status(raw_result, completed.returncode),
            wallclock_time=wallclock_time,
            returncode=completed.returncode,
            stdout=completed.stdout,
            stderr=completed.stderr,
            error_message=None if completed.returncode == 0 else "Solver process exited with a non-zero status",
            started_at=started_at,
            finished_at=finished_at,
        )
    except subprocess.TimeoutExpired as exc:
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        raw_result = _read_result_json(expected_result_path)
        return _build_result_record(
            job=job,
            output_path=output_path,
            raw_result=raw_result,
            completion_status="TIMEOUT",
            wallclock_time=wallclock_time,
            returncode=None,
            stdout=_truncate_output(_coerce_subprocess_output(exc.stdout)),
            stderr=_truncate_output(_coerce_subprocess_output(exc.stderr)),
            error_message=f"Benchmark runner timed out after {job.time_limit_seconds + PROCESS_TIMEOUT_GRACE_SECONDS} seconds",
            started_at=started_at,
            finished_at=finished_at,
        )
    except Exception as exc:  # pragma: no cover - defensive fallback
        finished_at = _now()
        wallclock_time = time.perf_counter() - started_perf
        return _build_error_record(
            job,
            output_path,
            completion_status="ERROR",
            wallclock_time=wallclock_time,
            error_message=str(exc),
            stderr=traceback.format_exc(),
            stdout=None,
            started_at=started_at,
            finished_at=finished_at,
        )


def _build_result_record(
    job: BenchmarkJob,
    output_path: Path,
    raw_result: dict[str, Any] | None,
    completion_status: str,
    wallclock_time: float,
    returncode: int | None,
    stdout: str | None,
    stderr: str | None,
    error_message: str | None,
    started_at: datetime.datetime,
    finished_at: datetime.datetime,
) -> dict[str, Any]:
    result_path = output_path / f"{job.artifact_instance_name}.json"
    log_path = output_path / f"{job.artifact_instance_name}.log"
    init_time = _read_float(raw_result, "init_time")
    search_time = _read_float(raw_result, "search_time")
    reported_total_time = None
    if init_time is not None and search_time is not None:
        reported_total_time = init_time + search_time

    if raw_result is not None:
        raw_completion = raw_result.get("running")
    else:
        raw_completion = None

    include_process_output = completion_status in {"ERROR", "TIMEOUT"}

    return {
        "suite_name": job.suite_name,
        "instance_name": job.instance_name,
        "artifact_instance_name": job.artifact_instance_name,
        "solver_name": job.solver_name,
        "search_path": job.search_path,
        "search_options": job.search_options,
        "domain_name": job.domain_name,
        "domain_path": job.domain_path,
        "problem_name": job.problem_name,
        "problem_path": job.problem_path,
        "external_path": job.external_path,
        "configured_time_limit_seconds": job.time_limit_seconds,
        "configured_memory_limit_gb": job.memory_limit_gb,
        "completion_status": completion_status,
        "raw_running_status": raw_completion,
        "solvable": raw_result.get("solvable") if raw_result is not None else completion_status == "SUCC",
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
        "returncode": returncode,
        "error": error_message,
        "stdout_tail": _truncate_output(stdout) if include_process_output else None,
        "stderr_tail": _truncate_output(stderr) if include_process_output else None,
    }


def _build_error_record(
    job: BenchmarkJob,
    output_path: Path,
    completion_status: str,
    wallclock_time: float,
    error_message: str,
    stderr: str | None,
    stdout: str | None,
    started_at: datetime.datetime,
    finished_at: datetime.datetime,
) -> dict[str, Any]:
    return _build_result_record(
        job=job,
        output_path=output_path,
        raw_result=None,
        completion_status=completion_status,
        wallclock_time=wallclock_time,
        returncode=None,
        stdout=stdout,
        stderr=stderr,
        error_message=error_message,
        started_at=started_at,
        finished_at=finished_at,
    )


def _resolve_completion_status(raw_result: dict[str, Any] | None, returncode: int) -> str:
    if returncode != 0:
        return "ERROR"
    if raw_result is None:
        return "ERROR"

    raw_status = raw_result.get("running")
    if isinstance(raw_status, str) and raw_status:
        return raw_status
    if raw_result.get("solvable"):
        return "SUCC"
    return "UNSOLVED"


def _read_result_json(result_path: Path) -> dict[str, Any] | None:
    if not result_path.is_file():
        return None
    with result_path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def _write_results_file(
    results_path: Path,
    suite_name: str,
    config_path: str,
    output_path: Path,
    cores: int,
    started_at: datetime.datetime,
    finished_at: datetime.datetime,
    results: list[dict[str, Any]],
) -> None:
    ordered_results = sorted(
        results,
        key=lambda item: (item["solver_name"], item["domain_name"], item["problem_name"]),
    )
    payload = {
        "suite_name": suite_name,
        "config_path": config_path,
        "output_path": _to_repo_string(output_path),
        "cores": cores,
        "started_at": started_at.isoformat(),
        "finished_at": finished_at.isoformat(),
        "summary": _build_summary(ordered_results),
        "results": ordered_results,
    }
    _write_json(results_path, payload)


def _build_summary(results: list[dict[str, Any]]) -> dict[str, Any]:
    status_counts = Counter(result["completion_status"] for result in results)
    solver_summary: dict[str, dict[str, Any]] = {}
    domain_summary: dict[str, dict[str, Any]] = {}

    grouped_by_solver: dict[str, list[dict[str, Any]]] = defaultdict(list)
    grouped_by_domain: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for result in results:
        grouped_by_solver[result["solver_name"]].append(result)
        grouped_by_domain[result["domain_name"]].append(result)

    for solver_name, solver_results in grouped_by_solver.items():
        solver_summary[solver_name] = _build_group_summary(solver_results)
    for domain_name, domain_results in grouped_by_domain.items():
        domain_summary[domain_name] = _build_group_summary(domain_results)

    return {
        "total_jobs": len(results),
        "solved_jobs": sum(1 for result in results if result["solvable"]),
        "status_counts": dict(status_counts),
        "by_solver": solver_summary,
        "by_domain": domain_summary,
    }


def _build_group_summary(results: list[dict[str, Any]]) -> dict[str, Any]:
    status_counts = Counter(result["completion_status"] for result in results)
    wallclock_times = [result["wallclock_time_seconds"] for result in results]
    solved_wallclock_times = [
        result["wallclock_time_seconds"]
        for result in results
        if result["solvable"]
    ]
    return {
        "total_jobs": len(results),
        "solved_jobs": sum(1 for result in results if result["solvable"]),
        "status_counts": dict(status_counts),
        "average_wallclock_time_seconds": _average(wallclock_times),
        "average_solved_wallclock_time_seconds": _average(solved_wallclock_times),
    }


def _average(values: list[float]) -> float | None:
    if not values:
        return None
    return sum(values) / len(values)


def _read_float(raw_result: dict[str, Any] | None, key: str) -> float | None:
    if raw_result is None:
        return None
    value = raw_result.get(key)
    if isinstance(value, (int, float)):
        return float(value)
    return None


def _write_json(output_path: Path, payload: dict[str, Any]) -> None:
    with output_path.open("w", encoding="utf-8") as handle:
        json.dump(payload, handle, indent=2, sort_keys=True)


def _setup_logger(output_path: Path, console_debug: bool):
    console_level = 10 if console_debug else 20
    handlers = setup_logger_handlers(
        str(output_path / "benchmark.log"),
        c_logger_level=console_level,
        c_display=True,
    )
    return setup_logger(LOGGER_NAME, handlers, console_level)


def _resolve_repo_or_absolute_path(path_text: str) -> Path:
    raw_path = Path(path_text)
    if raw_path.is_absolute():
        return raw_path.resolve()
    return (PROJECT_ROOT / raw_path).resolve()


def _to_repo_string(path: Path) -> str:
    resolved_path = path.resolve()
    try:
        return resolved_path.relative_to(PROJECT_ROOT).as_posix()
    except ValueError:
        return str(resolved_path)


def _coerce_subprocess_output(value: str | bytes | None) -> str | None:
    if value is None:
        return None
    if isinstance(value, bytes):
        return value.decode("utf-8", errors="replace")
    return value


def _truncate_output(value: str | None, limit: int = 4000) -> str | None:
    if value is None:
        return None
    if len(value) <= limit:
        return value
    return value[-limit:]


def _now() -> datetime.datetime:
    return datetime.datetime.now().astimezone(TIMEZONE)


if __name__ == "__main__":
    raise SystemExit(main())