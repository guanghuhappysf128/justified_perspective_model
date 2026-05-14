#!/usr/bin/env python3

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import html
import json
from pathlib import Path
from statistics import mean
from typing import Any


DEFAULT_REPORT_NAME = "results_report.html"


def main() -> int:
  parser = build_parser()
  args = parser.parse_args()

  output_dir = Path(args.output_dir).expanduser().resolve()
  if not output_dir.is_dir():
    raise FileNotFoundError(f"Output directory does not exist: {output_dir}")

  results_dir = resolve_results_dir(output_dir, args.engine)
  report_title = args.title or f"Results Report: {results_dir.name}"
  records, metadata = load_records(
    results_dir,
    requested_root=output_dir,
    selected_engine=args.engine,
  )
  report_path = resolve_report_path(results_dir, args.output)
  render_report(report_path, report_title, results_dir, records, metadata)

  print(f"Wrote report to {report_path}")
  return 0


def build_parser() -> argparse.ArgumentParser:
  parser = argparse.ArgumentParser(
    description="Generate a simple HTML report for a benchmark output directory"
  )
  parser.add_argument("output_dir", help="Path to a benchmark output directory")
  parser.add_argument(
    "-o",
    "--output",
    default="",
    help=f"Optional HTML output path (default: <output_dir>/{DEFAULT_REPORT_NAME})",
  )
  parser.add_argument(
    "--title",
    default="",
    help="Optional report title override",
  )
  parser.add_argument(
    "--engine",
    choices=("cpp", "python"),
    default="",
    help="When pointing at a comparison-runner root, select which engine's benchmark_results.json to render",
  )
  return parser


def resolve_report_path(output_dir: Path, output_arg: str) -> Path:
    if not output_arg:
        return output_dir / DEFAULT_REPORT_NAME

    output_path = Path(output_arg).expanduser()
    if output_path.is_absolute():
        return output_path
    return (Path.cwd() / output_path).resolve()


def resolve_results_dir(output_dir: Path, engine: str) -> Path:
  direct_results_path = output_dir / "benchmark_results.json"
  if direct_results_path.is_file():
    return output_dir

  requested_engine = engine.strip() if engine else ""
  if requested_engine:
    engine_results_path = output_dir / requested_engine / "benchmark_results.json"
    if not engine_results_path.is_file():
      raise FileNotFoundError(
        f"No benchmark_results.json found for engine '{requested_engine}' under {output_dir}"
      )
    return engine_results_path.parent

  cpp_results_path = output_dir / "cpp" / "benchmark_results.json"
  python_results_path = output_dir / "python" / "benchmark_results.json"
  if cpp_results_path.is_file() and python_results_path.is_file():
    return cpp_results_path.parent
  if cpp_results_path.is_file():
    return cpp_results_path.parent
  if python_results_path.is_file():
    return python_results_path.parent
  return output_dir


def load_records(
  output_dir: Path,
  requested_root: Path | None = None,
  selected_engine: str = "",
) -> tuple[list[dict[str, Any]], dict[str, Any]]:
    benchmark_results_path = output_dir / "benchmark_results.json"
    if benchmark_results_path.is_file():
        with benchmark_results_path.open("r", encoding="utf-8") as handle:
            payload = json.load(handle)

        results = payload.get("results", [])
        if not isinstance(results, list):
            raise ValueError(f"Invalid benchmark results file: {benchmark_results_path}")

        normalized_records = [normalize_benchmark_record(record) for record in results]
        metadata = {
            "source": str(benchmark_results_path),
            "requested_root": str(requested_root) if requested_root else str(output_dir),
            "engine": selected_engine or output_dir.name,
            "suite_name": payload.get("suite_name"),
            "config_path": payload.get("config_path"),
            "started_at": payload.get("started_at"),
            "finished_at": payload.get("finished_at"),
            "cores": payload.get("cores"),
        }
        return normalized_records, metadata

    ignored_json_names = {"benchmark_manifest.json", "comparison_manifest.json", "summary.json"}
    json_paths = sorted(path for path in output_dir.glob("*.json") if path.name not in ignored_json_names)
    if not json_paths:
        raise FileNotFoundError(
            f"No benchmark_results.json or per-instance JSON files found in {output_dir}"
        )

    normalized_records = []
    for json_path in json_paths:
        with json_path.open("r", encoding="utf-8") as handle:
            payload = json.load(handle)
        if isinstance(payload, dict):
            normalized_records.append(normalize_instance_record(payload, json_path.name))

    metadata = {
        "source": "per-instance JSON files",
        "requested_root": str(requested_root) if requested_root else str(output_dir),
        "engine": selected_engine or None,
        "suite_name": None,
        "config_path": None,
        "started_at": None,
        "finished_at": None,
        "cores": None,
    }
    return normalized_records, metadata


def normalize_benchmark_record(record: dict[str, Any]) -> dict[str, Any]:
    reported_total = read_number(record.get("reported_total_time_seconds"))
    wallclock = read_number(record.get("wallclock_time_seconds"))
    init_time = read_number(record.get("init_time_seconds"))
    search_time = read_number(record.get("search_time_seconds"))

    return {
        "instance_name": record.get("instance_name") or "",
        "solver_name": record.get("solver_name") or "",
        "domain_name": record.get("domain_name") or "",
        "problem_name": record.get("problem_name") or "",
        "status": record.get("completion_status") or infer_status(record),
        "solvable": bool(record.get("solvable")),
        "total_time_seconds": wallclock if wallclock is not None else reported_total,
        "reported_total_time_seconds": reported_total,
        "wallclock_time_seconds": wallclock,
        "init_time_seconds": init_time,
        "search_time_seconds": search_time,
        "returncode": record.get("returncode"),
        "error": record.get("error"),
        "result_json_path": record.get("result_json_path"),
        "log_path": record.get("log_path"),
    }


def normalize_instance_record(record: dict[str, Any], fallback_name: str) -> dict[str, Any]:
    init_time = read_number(record.get("init_time"))
    search_time = read_number(record.get("search_time"))
    computed_total = None
    if init_time is not None and search_time is not None:
        computed_total = init_time + search_time

    return {
        "instance_name": fallback_name.replace(".json", ""),
        "solver_name": record.get("search") or infer_solver_name(fallback_name),
        "domain_name": record.get("domain_name") or infer_domain_name(fallback_name),
        "problem_name": record.get("problem_name") or infer_problem_name(fallback_name),
        "status": record.get("running") or infer_status(record),
        "solvable": bool(record.get("solvable")),
        "total_time_seconds": computed_total,
        "reported_total_time_seconds": computed_total,
        "wallclock_time_seconds": None,
        "init_time_seconds": init_time,
        "search_time_seconds": search_time,
        "returncode": None,
        "error": None,
        "result_json_path": fallback_name,
        "log_path": fallback_name.replace(".json", ".log"),
    }


def infer_status(record: dict[str, Any]) -> str:
    if record.get("solvable"):
        return "SUCC"
    return "UNSOLVED"


def infer_solver_name(filename: str) -> str:
    stem = filename.replace(".json", "")
    parts = stem.split("_")
    return parts[0] if parts else stem


def infer_domain_name(filename: str) -> str:
    stem = filename.replace(".json", "")
    parts = stem.split("_")
    return parts[1] if len(parts) > 1 else ""


def infer_problem_name(filename: str) -> str:
    stem = filename.replace(".json", "")
    parts = stem.split("_")
    if len(parts) > 2:
        return "_".join(parts[2:])
    return stem


def read_number(value: Any) -> float | None:
    if isinstance(value, (int, float)):
        return float(value)
    return None


def render_report(
    report_path: Path,
    report_title: str,
    output_dir: Path,
    records: list[dict[str, Any]],
    metadata: dict[str, Any],
) -> None:
    status_counts = Counter(record["status"] for record in records)
    solver_groups = group_records(records, "solver_name")
    domain_groups = group_records(records, "domain_name")
    average_total_time = mean(
        value for value in (record["total_time_seconds"] for record in records) if value is not None
    ) if any(record["total_time_seconds"] is not None for record in records) else None

    report_html = build_html_document(
        report_title=report_title,
        output_dir=output_dir,
        records=records,
        metadata=metadata,
        status_counts=status_counts,
        solver_groups=solver_groups,
        domain_groups=domain_groups,
        average_total_time=average_total_time,
    )

    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(report_html, encoding="utf-8")


def group_records(records: list[dict[str, Any]], key: str) -> dict[str, list[dict[str, Any]]]:
    grouped: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for record in records:
        grouped[record.get(key) or "unknown"].append(record)
    return dict(sorted(grouped.items(), key=lambda item: item[0]))


def build_html_document(
    report_title: str,
    output_dir: Path,
    records: list[dict[str, Any]],
    metadata: dict[str, Any],
    status_counts: Counter[str],
    solver_groups: dict[str, list[dict[str, Any]]],
    domain_groups: dict[str, list[dict[str, Any]]],
    average_total_time: float | None,
) -> str:
    solved_jobs = sum(1 for record in records if record["solvable"])
    status_cards = "".join(
        build_status_card(status, count) for status, count in sorted(status_counts.items())
    )

    solver_rows = "".join(build_group_row(name, group) for name, group in solver_groups.items())
    domain_rows = "".join(build_group_row(name, group) for name, group in domain_groups.items())
    result_rows = "".join(build_result_row(record) for record in sorted_records(records))

    return f"""<!doctype html>
<html lang=\"en\">
<head>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>{escape(report_title)}</title>
  <style>
    :root {{
      --bg: #f4f1ea;
      --panel: #fffaf2;
      --text: #1f2933;
      --muted: #5f6c7b;
      --accent: #0f766e;
      --accent-soft: #d9f3ef;
      --warn: #b45309;
      --warn-soft: #fde7c7;
      --danger: #b42318;
      --danger-soft: #fee4e2;
      --border: #ddd3c3;
      --shadow: 0 18px 40px rgba(43, 42, 32, 0.08);
      --mono: "SFMono-Regular", Menlo, Consolas, monospace;
      --sans: "Avenir Next", "Segoe UI", sans-serif;
    }}
    * {{ box-sizing: border-box; }}
    body {{
      margin: 0;
      font-family: var(--sans);
      background:
        radial-gradient(circle at top left, rgba(15, 118, 110, 0.16), transparent 28%),
        linear-gradient(180deg, #fbf7f0 0%, var(--bg) 100%);
      color: var(--text);
    }}
    main {{
      max-width: 1240px;
      margin: 0 auto;
      padding: 40px 24px 60px;
    }}
    h1, h2 {{ margin: 0 0 12px; }}
    h1 {{ font-size: clamp(2rem, 4vw, 3.25rem); line-height: 1.05; }}
    h2 {{ font-size: 1.15rem; letter-spacing: 0.02em; }}
    p, li {{ color: var(--muted); }}
    .hero {{
      background: linear-gradient(135deg, rgba(255, 250, 242, 0.98), rgba(244, 241, 234, 0.95));
      border: 1px solid var(--border);
      border-radius: 28px;
      box-shadow: var(--shadow);
      padding: 28px;
      margin-bottom: 26px;
    }}
    .meta-grid, .summary-grid {{
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 14px;
      margin-top: 20px;
    }}
    .card {{
      background: var(--panel);
      border: 1px solid var(--border);
      border-radius: 20px;
      padding: 18px;
      box-shadow: var(--shadow);
    }}
    .metric {{ font-size: 1.8rem; font-weight: 700; color: var(--text); }}
    .label {{ font-size: 0.78rem; text-transform: uppercase; letter-spacing: 0.08em; color: var(--muted); }}
    .pill {{
      display: inline-flex;
      align-items: center;
      padding: 6px 10px;
      border-radius: 999px;
      font-size: 0.8rem;
      font-weight: 600;
      background: var(--accent-soft);
      color: var(--accent);
    }}
    .status-grid {{
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
      gap: 12px;
      margin: 18px 0 30px;
    }}
    .status-card {{
      border-radius: 18px;
      padding: 16px;
      border: 1px solid var(--border);
      background: var(--panel);
    }}
    .status-card.succ {{ background: var(--accent-soft); color: var(--accent); }}
    .status-card.timeout, .status-card.memoryout, .status-card.unsolved {{ background: var(--warn-soft); color: var(--warn); }}
    .status-card.error {{ background: var(--danger-soft); color: var(--danger); }}
    .section {{ margin-top: 28px; }}
    table {{
      width: 100%;
      border-collapse: collapse;
      font-size: 0.95rem;
    }}
    th, td {{
      text-align: left;
      padding: 12px 10px;
      border-bottom: 1px solid var(--border);
      vertical-align: top;
    }}
    th {{ font-size: 0.82rem; color: var(--muted); text-transform: uppercase; letter-spacing: 0.05em; }}
    .table-wrap {{
      overflow-x: auto;
      background: var(--panel);
      border: 1px solid var(--border);
      border-radius: 22px;
      box-shadow: var(--shadow);
      padding: 8px 16px 12px;
    }}
    .bar-cell {{ min-width: 220px; }}
    .bar-track {{
      height: 12px;
      border-radius: 999px;
      background: #ebe2d4;
      overflow: hidden;
      margin-top: 8px;
    }}
    .bar-fill {{
      height: 100%;
      background: linear-gradient(90deg, #0f766e, #14b8a6);
      border-radius: 999px;
    }}
    .mono {{ font-family: var(--mono); font-size: 0.85rem; }}
    .status-text {{ font-weight: 700; }}
    .status-text.succ {{ color: var(--accent); }}
    .status-text.timeout, .status-text.memoryout, .status-text.unsolved {{ color: var(--warn); }}
    .status-text.error {{ color: var(--danger); }}
    .muted {{ color: var(--muted); }}
  </style>
</head>
<body>
  <main>
    <section class=\"hero\">
      <span class=\"pill\">{escape(str(metadata.get('suite_name') or 'ad hoc results'))}</span>
      <h1>{escape(report_title)}</h1>
      <p>Visual summary for <span class=\"mono\">{escape(str(output_dir))}</span></p>
      <div class=\"meta-grid\">
        {build_meta_card('Requested Root', metadata.get('requested_root'))}
        {build_meta_card('Engine', metadata.get('engine'))}
        {build_meta_card('Source', metadata.get('source'))}
        {build_meta_card('Config', metadata.get('config_path'))}
        {build_meta_card('Started', metadata.get('started_at'))}
        {build_meta_card('Finished', metadata.get('finished_at'))}
        {build_meta_card('Cores', metadata.get('cores'))}
      </div>
    </section>

    <section class=\"summary-grid\">
      {build_summary_card('Total Runs', len(records))}
      {build_summary_card('Solved', solved_jobs)}
      {build_summary_card('Solve Rate', format_percent(solved_jobs, len(records)))}
      {build_summary_card('Avg Time', format_seconds(average_total_time))}
    </section>

    <section class=\"section\">
      <h2>Status Breakdown</h2>
      <div class=\"status-grid\">{status_cards}</div>
    </section>

    <section class=\"section\">
      <h2>By Solver</h2>
      <div class=\"table-wrap\">
        <table>
          <thead>
            <tr>
              <th>Solver</th>
              <th>Runs</th>
              <th>Solved</th>
              <th>Avg Time</th>
              <th class=\"bar-cell\">Solve Rate</th>
              <th>Status Mix</th>
            </tr>
          </thead>
          <tbody>{solver_rows}</tbody>
        </table>
      </div>
    </section>

    <section class=\"section\">
      <h2>By Domain</h2>
      <div class=\"table-wrap\">
        <table>
          <thead>
            <tr>
              <th>Domain</th>
              <th>Runs</th>
              <th>Solved</th>
              <th>Avg Time</th>
              <th class=\"bar-cell\">Solve Rate</th>
              <th>Status Mix</th>
            </tr>
          </thead>
          <tbody>{domain_rows}</tbody>
        </table>
      </div>
    </section>

    <section class=\"section\">
      <h2>Run Details</h2>
      <div class=\"table-wrap\">
        <table>
          <thead>
            <tr>
              <th>Solver</th>
              <th>Domain</th>
              <th>Problem</th>
              <th>Status</th>
              <th>Total Time</th>
              <th>Init</th>
              <th>Search</th>
              <th>Error</th>
            </tr>
          </thead>
          <tbody>{result_rows}</tbody>
        </table>
      </div>
    </section>
  </main>
</body>
</html>
"""


def build_meta_card(label: str, value: Any) -> str:
    rendered_value = escape(str(value)) if value not in (None, "") else "<span class=\"muted\">n/a</span>"
    return f'<div class="card"><div class="label">{escape(label)}</div><div class="mono">{rendered_value}</div></div>'


def build_summary_card(label: str, value: Any) -> str:
    return (
        f'<div class="card"><div class="label">{escape(label)}</div>'
        f'<div class="metric">{escape(str(value))}</div></div>'
    )


def build_status_card(status: str, count: int) -> str:
    status_class = css_status_class(status)
    return (
        f'<div class="status-card {status_class}">'
        f'<div class="label">{escape(status)}</div>'
        f'<div class="metric">{count}</div>'
        '</div>'
    )


def build_group_row(name: str, records: list[dict[str, Any]]) -> str:
    solved = sum(1 for record in records if record["solvable"])
    rate = solved / len(records) if records else 0
    avg_time = average_seconds(record["total_time_seconds"] for record in records)
    status_mix = Counter(record["status"] for record in records)
    status_summary = ", ".join(f"{key}: {value}" for key, value in sorted(status_mix.items()))
    return (
        "<tr>"
        f"<td>{escape(name)}</td>"
        f"<td>{len(records)}</td>"
        f"<td>{solved}</td>"
        f"<td>{format_seconds(avg_time)}</td>"
        f"<td class=\"bar-cell\">{build_rate_bar(rate)}</td>"
        f"<td>{escape(status_summary)}</td>"
        "</tr>"
    )


def build_result_row(record: dict[str, Any]) -> str:
    status = record["status"] or "unknown"
    status_class = css_status_class(status)
    return (
        "<tr>"
        f"<td>{escape(record['solver_name'])}</td>"
        f"<td>{escape(record['domain_name'])}</td>"
        f"<td class=\"mono\">{escape(record['problem_name'])}</td>"
        f"<td><span class=\"status-text {status_class}\">{escape(status)}</span></td>"
        f"<td>{format_seconds(record['total_time_seconds'])}</td>"
        f"<td>{format_seconds(record['init_time_seconds'])}</td>"
        f"<td>{format_seconds(record['search_time_seconds'])}</td>"
        f"<td>{escape(record['error']) if record['error'] else '<span class=\"muted\">-</span>'}</td>"
        "</tr>"
    )


def build_rate_bar(rate: float) -> str:
    percentage = max(0.0, min(rate * 100.0, 100.0))
    return (
        f"{percentage:.1f}%"
        '<div class="bar-track">'
        f'<div class="bar-fill" style="width: {percentage:.1f}%"></div>'
        "</div>"
    )


def sorted_records(records: list[dict[str, Any]]) -> list[dict[str, Any]]:
    return sorted(
        records,
        key=lambda record: (
            record["solver_name"],
            record["domain_name"],
            record["problem_name"],
        ),
    )


def average_seconds(values: Any) -> float | None:
    filtered_values = [value for value in values if value is not None]
    if not filtered_values:
        return None
    return mean(filtered_values)


def format_percent(numerator: int, denominator: int) -> str:
    if denominator == 0:
        return "n/a"
    return f"{(100.0 * numerator / denominator):.1f}%"


def format_seconds(value: float | None) -> str:
    if value is None:
        return "n/a"
    return f"{value:.3f}s"


def css_status_class(status: str) -> str:
    lowered = status.lower()
    if lowered.startswith("succ"):
        return "succ"
    if lowered.startswith("error"):
        return "error"
    if lowered.startswith("time"):
        return "timeout"
    if lowered.startswith("memory"):
        return "memoryout"
    if lowered.startswith("unsolved"):
        return "unsolved"
    return ""


def escape(value: str) -> str:
    return html.escape(value, quote=True)


if __name__ == "__main__":
    raise SystemExit(main())