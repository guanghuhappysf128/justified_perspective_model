from __future__ import annotations

from dataclasses import dataclass
import fnmatch
from pathlib import Path
from typing import Any

import yaml


PROJECT_ROOT = Path(__file__).resolve().parent.parent
BENCHMARK_ROOT = PROJECT_ROOT / "benchmarks"
SEARCH_ALGORITHM_ROOT = PROJECT_ROOT / "jp" / "search_algorithms"


@dataclass(frozen=True)
class SolverConfig:
    name: str
    cli_search_path: str
    time_limit_seconds: int
    memory_limit_gb: int

    def to_dict(self) -> dict[str, Any]:
        return {
            "name": self.name,
            "search_path": self.cli_search_path,
            "time_limit_seconds": self.time_limit_seconds,
            "memory_limit_gb": self.memory_limit_gb,
        }


@dataclass(frozen=True)
class DomainConfig:
    name: str
    cli_domain_path: str
    cli_external_path: str
    selected_instances: tuple[str, ...]
    include_patterns: tuple[str, ...]
    exclude_patterns: tuple[str, ...]

    def to_dict(self) -> dict[str, Any]:
        return {
            "name": self.name,
            "domain_path": self.cli_domain_path,
            "external_path": self.cli_external_path,
            "selected_instances": list(self.selected_instances),
            "include_patterns": list(self.include_patterns),
            "exclude_patterns": list(self.exclude_patterns),
        }


@dataclass(frozen=True)
class BenchmarkSuiteConfig:
    config_path: str
    suite_name: str
    cores: int
    output_path: str | None
    default_time_limit_seconds: int
    default_memory_limit_gb: int
    solvers: tuple[SolverConfig, ...]
    domains: tuple[DomainConfig, ...]

    def to_dict(self) -> dict[str, Any]:
        return {
            "config_path": self.config_path,
            "suite_name": self.suite_name,
            "cores": self.cores,
            "output_path": self.output_path,
            "defaults": {
                "time_limit_seconds": self.default_time_limit_seconds,
                "memory_limit_gb": self.default_memory_limit_gb,
            },
            "solvers": [solver.to_dict() for solver in self.solvers],
            "domains": [domain.to_dict() for domain in self.domains],
        }


@dataclass(frozen=True)
class BenchmarkJob:
    suite_name: str
    solver_name: str
    search_path: str
    time_limit_seconds: int
    memory_limit_gb: int
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
        return Path(self.search_path).stem

    @property
    def artifact_instance_name(self) -> str:
        return f"{self.artifact_search_name}_{self.domain_name}_{self.problem_name}"

    def to_dict(self) -> dict[str, Any]:
        return {
            "suite_name": self.suite_name,
            "solver_name": self.solver_name,
            "search_path": self.search_path,
            "time_limit_seconds": self.time_limit_seconds,
            "memory_limit_gb": self.memory_limit_gb,
            "domain_name": self.domain_name,
            "domain_path": self.domain_path,
            "external_path": self.external_path,
            "problem_name": self.problem_name,
            "problem_path": self.problem_path,
            "instance_name": self.instance_name,
            "artifact_instance_name": self.artifact_instance_name,
        }


def load_benchmark_suite(config_path: str | Path) -> BenchmarkSuiteConfig:
    resolved_config_path = _resolve_repo_or_absolute_path(config_path)
    if not resolved_config_path.exists():
        raise FileNotFoundError(f"Benchmark config does not exist: {resolved_config_path}")

    with resolved_config_path.open("r", encoding="utf-8") as handle:
        raw_config = yaml.safe_load(handle)

    config_dict = _expect_mapping(raw_config, "benchmark config")
    defaults = _expect_mapping(config_dict.get("defaults", {}), "defaults")

    suite_name = config_dict.get("suite_name", resolved_config_path.stem)
    if not isinstance(suite_name, str) or not suite_name.strip():
        raise ValueError("suite_name must be a non-empty string")

    cores = _read_positive_int(config_dict, "cores", default=1)
    output_path = _read_optional_string(config_dict.get("output_path"))
    default_time_limit_seconds = _read_positive_int(defaults, "time_limit_seconds", default=300)
    default_memory_limit_gb = _read_positive_int(defaults, "memory_limit_gb", default=8)

    solvers_raw = config_dict.get("solvers")
    if not isinstance(solvers_raw, list) or not solvers_raw:
        raise ValueError("solvers must be a non-empty list")

    solver_names: set[str] = set()
    solvers = tuple(
        _parse_solver_config(
            solver_entry,
            default_time_limit_seconds,
            default_memory_limit_gb,
            solver_names,
        )
        for solver_entry in solvers_raw
    )

    domains_raw = config_dict.get("domains")
    if not isinstance(domains_raw, list) or not domains_raw:
        raise ValueError("domains must be a non-empty list")

    domains = tuple(_parse_domain_config(domain_entry) for domain_entry in domains_raw)

    return BenchmarkSuiteConfig(
        config_path=_to_repo_string(resolved_config_path),
        suite_name=suite_name.strip(),
        cores=cores,
        output_path=output_path,
        default_time_limit_seconds=default_time_limit_seconds,
        default_memory_limit_gb=default_memory_limit_gb,
        solvers=solvers,
        domains=domains,
    )


def build_benchmark_jobs(config: BenchmarkSuiteConfig) -> list[BenchmarkJob]:
    jobs: list[BenchmarkJob] = []
    for domain in config.domains:
        for problem_path in domain.selected_instances:
            problem_name = Path(problem_path).stem
            for solver in config.solvers:
                jobs.append(
                    BenchmarkJob(
                        suite_name=config.suite_name,
                        solver_name=solver.name,
                        search_path=solver.cli_search_path,
                        time_limit_seconds=solver.time_limit_seconds,
                        memory_limit_gb=solver.memory_limit_gb,
                        domain_name=domain.name,
                        domain_path=domain.cli_domain_path,
                        external_path=domain.cli_external_path,
                        problem_name=problem_name,
                        problem_path=problem_path,
                    )
                )
    return jobs


def _parse_solver_config(
    solver_entry: Any,
    default_time_limit_seconds: int,
    default_memory_limit_gb: int,
    solver_names: set[str],
) -> SolverConfig:
    if isinstance(solver_entry, str):
        solver_name = solver_entry.strip()
        solver_dict: dict[str, Any] = {}
    else:
        solver_dict = _expect_mapping(solver_entry, "solver entry")
        raw_solver_name = solver_dict.get("name")
        if not isinstance(raw_solver_name, str):
            raise ValueError("Each solver entry must include a string name")
        solver_name = raw_solver_name.strip()

    if not solver_name:
        raise ValueError("Solver names must be non-empty")
    if solver_name in solver_names:
        raise ValueError(f"Duplicate solver name in config: {solver_name}")
    solver_names.add(solver_name)

    search_path = _resolve_search_path(solver_name, solver_dict.get("search_path"))
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
    return SolverConfig(
        name=solver_name,
        cli_search_path=_to_repo_string(search_path),
        time_limit_seconds=time_limit_seconds,
        memory_limit_gb=memory_limit_gb,
    )


def _parse_domain_config(domain_entry: Any) -> DomainConfig:
    if isinstance(domain_entry, str):
        domain_name = domain_entry.strip()
        domain_dict: dict[str, Any] = {}
    else:
        domain_dict = _expect_mapping(domain_entry, "domain entry")
        raw_domain_name = domain_dict.get("name")
        if not isinstance(raw_domain_name, str):
            raise ValueError("Each domain entry must include a string name")
        domain_name = raw_domain_name.strip()

    _validate_domain_name(domain_name)
    domain_dir = (BENCHMARK_ROOT / domain_name).resolve()
    _ensure_within(domain_dir, BENCHMARK_ROOT, f"domain {domain_name}")
    if not domain_dir.is_dir():
        raise FileNotFoundError(f"Benchmark domain does not exist: {domain_dir}")

    domain_path = domain_dir / "domain.pddl"
    if not domain_path.is_file():
        raise FileNotFoundError(f"Missing domain.pddl for benchmark domain: {domain_dir}")

    external_path = _resolve_external_path(domain_dir, domain_dict.get("external"))
    include_patterns = _read_patterns(domain_dict.get("instances"), default_all=True)
    exclude_patterns = _read_patterns(domain_dict.get("exclude_instances"), default_all=False)

    selected_problem_paths = tuple(
        _to_repo_string(problem_path)
        for problem_path in _select_problem_paths(domain_dir, include_patterns, exclude_patterns)
    )

    return DomainConfig(
        name=domain_name,
        cli_domain_path=_to_repo_string(domain_path),
        cli_external_path=_to_repo_string(external_path),
        selected_instances=selected_problem_paths,
        include_patterns=include_patterns,
        exclude_patterns=exclude_patterns,
    )


def _resolve_search_path(solver_name: str, raw_search_path: Any) -> Path:
    if raw_search_path is None:
        candidate = SEARCH_ALGORITHM_ROOT / f"{solver_name}.py"
    elif not isinstance(raw_search_path, str) or not raw_search_path.strip():
        raise ValueError(f"search_path for solver {solver_name} must be a non-empty string")
    else:
        stripped_path = raw_search_path.strip()
        raw_path = Path(stripped_path)
        if raw_path.is_absolute():
            candidate = raw_path
        elif len(raw_path.parts) == 1:
            candidate = SEARCH_ALGORITHM_ROOT / raw_path
        else:
            candidate = PROJECT_ROOT / raw_path

    candidate = candidate.resolve()
    _ensure_within(candidate, PROJECT_ROOT, f"search_path for solver {solver_name}")
    if candidate.suffix != ".py" or not candidate.is_file():
        raise FileNotFoundError(f"Solver module does not exist: {candidate}")
    return candidate


def _resolve_external_path(domain_dir: Path, raw_external_path: Any) -> Path:
    if raw_external_path is None:
        python_files = sorted(path for path in domain_dir.glob("*.py") if path.is_file())
        if len(python_files) != 1:
            raise ValueError(
                f"Benchmark domain {domain_dir.name} needs exactly one .py file or an explicit external override"
            )
        return python_files[0].resolve()

    if not isinstance(raw_external_path, str) or not raw_external_path.strip():
        raise ValueError(f"external for domain {domain_dir.name} must be a non-empty string")

    stripped_path = raw_external_path.strip()
    raw_path = Path(stripped_path)
    if raw_path.is_absolute():
        candidate = raw_path.resolve()
    else:
        local_candidate = (domain_dir / raw_path).resolve()
        project_candidate = (PROJECT_ROOT / raw_path).resolve()
        if local_candidate.exists():
            candidate = local_candidate
        else:
            candidate = project_candidate

    _ensure_within(candidate, PROJECT_ROOT, f"external path for domain {domain_dir.name}")
    if candidate.suffix != ".py" or not candidate.is_file():
        raise FileNotFoundError(f"External module does not exist: {candidate}")
    return candidate


def _select_problem_paths(
    domain_dir: Path,
    include_patterns: tuple[str, ...],
    exclude_patterns: tuple[str, ...],
) -> list[Path]:
    problem_paths = sorted(
        path for path in domain_dir.glob("*.pddl") if path.is_file() and path.name != "domain.pddl"
    )
    if not problem_paths:
        raise FileNotFoundError(f"No problem instances found in benchmark domain: {domain_dir}")

    selected_problem_paths: list[Path] = []
    include_all = include_patterns == ("*",)
    for problem_path in problem_paths:
        problem_name = problem_path.name
        if not include_all and not _matches_patterns(problem_name, include_patterns):
            continue
        if exclude_patterns and _matches_patterns(problem_name, exclude_patterns):
            continue
        selected_problem_paths.append(problem_path.resolve())

    if not selected_problem_paths:
        raise ValueError(
            f"No problem instances matched for benchmark domain {domain_dir.name} with include={include_patterns}"
        )
    return selected_problem_paths


def _matches_patterns(name: str, patterns: tuple[str, ...]) -> bool:
    return any(fnmatch.fnmatch(name, pattern) for pattern in patterns)


def _read_patterns(value: Any, default_all: bool) -> tuple[str, ...]:
    if value is None:
        return ("*",) if default_all else tuple()

    if isinstance(value, str):
        stripped_value = value.strip()
        if not stripped_value:
            raise ValueError("Pattern entries must be non-empty strings")
        if stripped_value.lower() == "all":
            return ("*",)
        return (stripped_value,)

    if not isinstance(value, list) or not value:
        raise ValueError("Pattern entries must be a non-empty list or the string 'all'")

    patterns: list[str] = []
    for item in value:
        if not isinstance(item, str) or not item.strip():
            raise ValueError("Pattern lists may only contain non-empty strings")
        patterns.append(item.strip())
    return tuple(patterns)


def _read_optional_string(value: Any) -> str | None:
    if value is None:
        return None
    if not isinstance(value, str):
        raise ValueError("output_path must be a string when provided")
    stripped_value = value.strip()
    return stripped_value or None


def _read_positive_int(source: dict[str, Any], key: str, default: int | None = None) -> int:
    value = source.get(key, default)
    if not isinstance(value, int) or value <= 0:
        raise ValueError(f"{key} must be a positive integer")
    return value


def _expect_mapping(value: Any, label: str) -> dict[str, Any]:
    if not isinstance(value, dict):
        raise ValueError(f"{label} must be a mapping")
    return value


def _validate_domain_name(domain_name: str) -> None:
    if not domain_name:
        raise ValueError("Domain names must be non-empty")
    if any(separator in domain_name for separator in ("/", "\\")):
        raise ValueError(f"Domain names must not contain path separators: {domain_name}")
    if Path(domain_name).name != domain_name or domain_name in {".", ".."}:
        raise ValueError(f"Invalid benchmark domain name: {domain_name}")


def _resolve_repo_or_absolute_path(path_text: str | Path) -> Path:
    raw_path = Path(path_text)
    if raw_path.is_absolute():
        return raw_path.resolve()
    return (PROJECT_ROOT / raw_path).resolve()


def _ensure_within(path: Path, root: Path, label: str) -> None:
    resolved_path = path.resolve()
    resolved_root = root.resolve()
    try:
        resolved_path.relative_to(resolved_root)
    except ValueError as exc:
        raise ValueError(f"{label} must stay within {resolved_root}") from exc


def _to_repo_string(path: Path) -> str:
    resolved_path = path.resolve()
    try:
        return resolved_path.relative_to(PROJECT_ROOT).as_posix()
    except ValueError:
        return str(resolved_path)