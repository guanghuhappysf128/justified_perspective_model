#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


STATUS_ORDER = [
    "SUCC",
    "UNSOLVED",
    "FAILED",
    "TIMEOUT",
    "WALL_TIMEOUT",
    "EXPANSION_LIMIT",
    "ERROR",
]


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)

    input_path = Path(args.input).resolve()
    if not input_path.is_file():
        raise FileNotFoundError(f"Comparison summary does not exist: {input_path}")

    with input_path.open("r", encoding="utf-8") as handle:
        summary = json.load(handle)

    markdown = render_markdown(summary, input_path)
    output_path = resolve_output_path(summary, input_path, args.output)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(markdown, encoding="utf-8")
    print(output_path)
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Render a markdown report from a C++/Python comparison summary"
    )
    parser.add_argument("-i", "--input", required=True, help="Path to the comparison summary JSON")
    parser.add_argument(
        "-o",
        "--output",
        default="",
        help="Optional markdown output path (default: alongside the summary JSON)",
    )
    return parser


def resolve_output_path(summary: dict[str, Any], input_path: Path, output_arg: str) -> Path:
    if output_arg:
        return Path(output_arg).resolve()
    suite_name = summary.get("suite_name") or input_path.parent.name
    return input_path.parent / f"{suite_name}_results.md"


def render_markdown(summary_payload: dict[str, Any], input_path: Path) -> str:
    suite_name = summary_payload.get("suite_name", "cpp_python_comparison")
    summary = ensure_mapping(summary_payload.get("summary"), "summary")
    results = ensure_list(summary_payload.get("results"), "results")

    lines: list[str] = []
    lines.append(f"# C++ and Python {humanize_suite_name(suite_name)} Results")
    lines.append("")
    lines.append(f"Comparison source: `{repo_or_abs(summary_payload.get('output_path'), input_path.parent)}/summary.json`")
    lines.append("")
    if summary_payload.get("python_results_path"):
        lines.append(f"Python source: `{summary_payload['python_results_path']}`")
        lines.append("")
    if summary_payload.get("cpp_results_path"):
        lines.append(f"C++ source: `{summary_payload['cpp_results_path']}`")
        lines.append("")
    if summary_payload.get("config_path"):
        lines.append(f"Config: `{summary_payload['config_path']}`")
        lines.append("")
    if summary_payload.get("started_at"):
        lines.append(f"Started: `{summary_payload['started_at']}`")
        lines.append("")
    if summary_payload.get("finished_at"):
        lines.append(f"Finished: `{summary_payload['finished_at']}`")
        lines.append("")
    if summary_payload.get("cpp_solver_path"):
        lines.append(f"C++ solver: `{summary_payload['cpp_solver_path']}`")
        lines.append("")

    lines.append(
        "`TIMEOUT` and `EXPANSION_LIMIT` are bounded run results. `UNSOLVED` and `FAILED` mean the search completed without finding a plan under that engine's semantics. `ERROR` means a runtime/parser/config failure. `WALL_TIMEOUT` means the outer subprocess guard fired before the engine completed."
    )
    lines.append("")
    lines.append(
        f"Paired comparisons: `{summary.get('total_pairs', 0)}`. Status matches: `{summary.get('status_match_count', 0)}`. Status mismatches: `{summary.get('status_mismatch_count', 0)}`."
    )
    lines.append("")

    lines.append("## Overall Summary")
    lines.append("")
    overall_rows = []
    by_solver = ensure_mapping(summary.get("by_solver"), "summary.by_solver")
    for solver_name, solver_summary in sorted(by_solver.items()):
        solver_summary_map = ensure_mapping(solver_summary, f"summary.by_solver[{solver_name}]")
        overall_rows.append(
            [
                code(solver_name),
                solver_summary_map.get("total_pairs", 0),
                solver_summary_map.get("status_match_count", 0),
                solver_summary_map.get("status_mismatch_count", 0),
                code(format_status_counts(solver_summary_map.get("python_status_counts", {}))),
                code(format_status_counts(solver_summary_map.get("cpp_status_counts", {}))),
            ]
        )
    lines.extend(
        render_table(
            ["Solver", "Pairs", "Matched", "Mismatched", "Python Statuses", "C++ Statuses"],
            overall_rows,
        )
    )
    lines.append("")

    lines.append("## Domain Summary")
    lines.append("")
    domain_rows = []
    for solver_name in sorted(by_solver):
        solver_results = [result for result in results if result.get("solver_name") == solver_name]
        for domain_name in sorted({result.get("domain_name") for result in solver_results}):
            domain_results = [result for result in solver_results if result.get("domain_name") == domain_name]
            domain_rows.append(
                [
                    code(solver_name),
                    code(domain_name),
                    len(domain_results),
                    sum(1 for result in domain_results if result.get("status_match") is True),
                    sum(1 for result in domain_results if result.get("status_match") is False),
                    code(format_status_counts(count_statuses(domain_results, "python"))),
                    code(format_status_counts(count_statuses(domain_results, "cpp"))),
                ]
            )
    lines.extend(
        render_table(
            ["Solver", "Domain", "Instances", "Matched", "Mismatched", "Python Statuses", "C++ Statuses"],
            domain_rows,
        )
    )
    lines.append("")

    for solver_name in sorted(by_solver):
        solver_results = [result for result in results if result.get("solver_name") == solver_name]
        lines.append(f"## `{solver_name}`")
        lines.append("")
        solver_summary = ensure_mapping(by_solver[solver_name], f"summary.by_solver[{solver_name}]")
        lines.append(
            f"Pairs: `{solver_summary.get('total_pairs', 0)}`. Matched: `{solver_summary.get('status_match_count', 0)}`. Mismatched: `{solver_summary.get('status_mismatch_count', 0)}`."
        )
        lines.append("")

        status_mismatches = [result for result in solver_results if result.get("status_match") is False]
        if status_mismatches:
            lines.append(f"### `{solver_name}` Status Differences")
            lines.append("")
            mismatch_rows = []
            for result in status_mismatches:
                python_result = ensure_optional_mapping(result.get("python"))
                cpp_result = ensure_optional_mapping(result.get("cpp"))
                mismatch_rows.append(
                    [
                        code(result.get("domain_name")),
                        code(instance_label(result.get("problem_name"))),
                        code(status_value(python_result)),
                        code(status_value(cpp_result)),
                        note_for_result(python_result, cpp_result),
                    ]
                )
            lines.extend(render_table(["Domain", "Instance", "Python", "C++", "Note"], mismatch_rows))
            lines.append("")

        metric_mismatches = [result for result in solver_results if metric_difference_fields(result)]
        if metric_mismatches:
            lines.append(f"### `{solver_name}` Metric Differences")
            lines.append("")
            metric_rows = []
            for result in metric_mismatches:
                fields = metric_difference_fields(result)
                metric_rows.append(
                    [
                        code(result.get("domain_name")),
                        code(instance_label(result.get("problem_name"))),
                        code(", ".join(fields)),
                        code(format_metric_pair(ensure_optional_mapping(result.get("python")), ensure_optional_mapping(result.get("cpp")), "path_length")),
                        code(format_metric_pair(ensure_optional_mapping(result.get("python")), ensure_optional_mapping(result.get("cpp")), "expanded")),
                        code(format_metric_pair(ensure_optional_mapping(result.get("python")), ensure_optional_mapping(result.get("cpp")), "generated")),
                        code(format_uv_pair(ensure_optional_mapping(result.get("python")), ensure_optional_mapping(result.get("cpp")))),
                    ]
                )
            lines.extend(
                render_table(
                    ["Domain", "Instance", "Fields", "Len P/C", "Exp P/C", "Gen P/C", "U/V P/C"],
                    metric_rows,
                )
            )
            lines.append("")

        lines.append(f"### `{solver_name}` Instance Results")
        lines.append("")
        for domain_name in sorted({result.get("domain_name") for result in solver_results}):
            domain_results = [result for result in solver_results if result.get("domain_name") == domain_name]
            lines.append(f"#### `{domain_name}`")
            lines.append("")
            instance_rows = []
            for result in domain_results:
                python_result = ensure_optional_mapping(result.get("python"))
                cpp_result = ensure_optional_mapping(result.get("cpp"))
                instance_rows.append(
                    [
                        code(instance_label(result.get("problem_name"))),
                        code(status_value(python_result)),
                        code(status_value(cpp_result)),
                        code(format_metric_pair(python_result, cpp_result, "path_length")),
                        code(format_metric_pair(python_result, cpp_result, "expanded")),
                        code(format_metric_pair(python_result, cpp_result, "generated")),
                        code(format_uv_pair(python_result, cpp_result)),
                        code(format_wallclock(python_result)),
                        code(format_wallclock(cpp_result)),
                        code("yes" if result.get("status_match") is True else "no"),
                    ]
                )
            lines.extend(
                render_table(
                    [
                        "Instance",
                        "Python",
                        "C++",
                        "Len P/C",
                        "Exp P/C",
                        "Gen P/C",
                        "U/V P/C",
                        "Py Wall s",
                        "C++ Wall s",
                        "Status Match",
                    ],
                    instance_rows,
                )
            )
            lines.append("")

    return "\n".join(lines).rstrip() + "\n"


def ensure_mapping(value: Any, name: str) -> dict[str, Any]:
    if not isinstance(value, dict):
        raise ValueError(f"{name} must be a JSON object")
    return value


def ensure_optional_mapping(value: Any) -> dict[str, Any] | None:
    if value is None:
        return None
    if not isinstance(value, dict):
        raise ValueError("Expected an object or null in comparison result")
    return value


def ensure_list(value: Any, name: str) -> list[Any]:
    if not isinstance(value, list):
        raise ValueError(f"{name} must be a list")
    return value


def humanize_suite_name(name: str) -> str:
    normalized = name.strip()
    for prefix in ("cpp_python_", "python_cpp_"):
        if normalized.startswith(prefix):
            normalized = normalized[len(prefix):]
            break
    normalized = normalized.replace("_", " ").strip()
    return normalized.title() if normalized else "Comparison"


def repo_or_abs(path_value: Any, default_base: Path) -> str:
    if isinstance(path_value, str) and path_value:
        return path_value
    return str(default_base)


def count_statuses(results: list[dict[str, Any]], engine_key: str) -> dict[str, int]:
    counts: dict[str, int] = {}
    for result in results:
        engine_result = ensure_optional_mapping(result.get(engine_key))
        if engine_result is None:
            continue
        status = engine_result.get("completion_status")
        if not isinstance(status, str) or not status:
            continue
        counts[status] = counts.get(status, 0) + 1
    return counts


def format_status_counts(counts: Any) -> str:
    if not isinstance(counts, dict) or not counts:
        return "-"
    keys = [status for status in STATUS_ORDER if status in counts]
    keys.extend(sorted(status for status in counts if status not in STATUS_ORDER))
    return ", ".join(f"{status} {counts[status]}" for status in keys)


def metric_difference_fields(result: dict[str, Any]) -> list[str]:
    fields: list[str] = []
    for field_name, label in (
        ("path_length", "path_length"),
        ("expanded", "expanded"),
        ("generated", "generated"),
        ("pruned_by_unknown", "pruned_by_unknown"),
        ("pruned_by_visited", "pruned_by_visited"),
        ("goal_checked", "goal_checked"),
    ):
        if result.get(f"{field_name}_match") is False:
            fields.append(label)
    return fields


def note_for_result(python_result: dict[str, Any] | None, cpp_result: dict[str, Any] | None) -> str:
    python_error = python_result.get("error") if python_result else None
    cpp_error = cpp_result.get("error") if cpp_result else None
    if isinstance(python_error, str) and python_error:
        return python_error
    if isinstance(cpp_error, str) and cpp_error:
        return cpp_error
    if python_result is None:
        return "Missing Python result"
    if cpp_result is None:
        return "Missing C++ result"
    return "Status mismatch"


def status_value(result: dict[str, Any] | None) -> str:
    if result is None:
        return "MISSING"
    status = result.get("completion_status")
    if isinstance(status, str) and status:
        return status
    return "UNKNOWN"


def format_metric_pair(
    python_result: dict[str, Any] | None,
    cpp_result: dict[str, Any] | None,
    field_name: str,
) -> str:
    return f"{format_metric_value(python_result, field_name)} / {format_metric_value(cpp_result, field_name)}"


def format_metric_value(result: dict[str, Any] | None, field_name: str) -> str:
    if result is None:
        return "-"
    value = result.get(field_name)
    if value is None:
        return "-"
    return str(value)


def format_uv_pair(python_result: dict[str, Any] | None, cpp_result: dict[str, Any] | None) -> str:
    return f"{format_uv_value(python_result)} / {format_uv_value(cpp_result)}"


def format_uv_value(result: dict[str, Any] | None) -> str:
    if result is None:
        return "-/-"
    unknown = result.get("pruned_by_unknown")
    visited = result.get("pruned_by_visited")
    left = "-" if unknown is None else str(unknown)
    right = "-" if visited is None else str(visited)
    return f"{left}/{right}"


def format_wallclock(result: dict[str, Any] | None) -> str:
    if result is None:
        return "-"
    value = result.get("wallclock_time_seconds")
    if isinstance(value, (int, float)):
        return f"{value:.3f}"
    return "-"


def instance_label(problem_name: Any) -> str:
    if not isinstance(problem_name, str) or not problem_name:
        return "unknown"
    return f"{problem_name}.pddl" if not problem_name.endswith(".pddl") else problem_name


def render_table(headers: list[str], rows: list[list[Any]]) -> list[str]:
    lines = ["| " + " | ".join(headers) + " |", "|" + "|".join("---" for _ in headers) + "|"]
    for row in rows:
        lines.append("| " + " | ".join(str(cell) for cell in row) + " |")
    return lines


def code(value: Any) -> str:
    return f"`{value}`"


if __name__ == "__main__":
    raise SystemExit(main())