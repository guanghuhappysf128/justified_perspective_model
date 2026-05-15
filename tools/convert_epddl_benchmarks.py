#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import tempfile
from pathlib import Path
from typing import Any

from epddl_to_fpddl.common import (
    CONVERTED_ROOT,
    DomainSpec,
    JPM_ROOT,
    PLANK_BINARY,
    PLANK_ROOT,
    copy_tree_file,
    fpddl_name,
    load_json,
)
from epddl_to_fpddl.converters import CONVERTERS, write_json


DOMAIN_SPECS = {
    "Grapevine": DomainSpec(
        source_dir="Grapevine",
        library_file="intermediate.epddl",
        support_level="supported",
        notes="Converted to the existing grapevine-style F-PDDL family.",
        target_dir="grapevine",
        converter_name="grapevine",
    ),
    "Gossip": DomainSpec(
        source_dir="Gossip",
        library_file="intermediate.epddl",
        support_level="supported",
        notes=(
            "Converted to a simplified directed-tell F-PDDL family for competition use. "
            "The native gossip4 phone-call benchmark remains unchanged; this converted "
            "family instead tracks whether each receiver has directly learned each agent's "
            "secret, matching the EPDDL tell semantics closely enough for validator-based "
            "round-tripping."
        ),
        target_dir="gossip",
        converter_name="gossip",
    ),
    "Active-Muddy-Child": DomainSpec(
        source_dir="Active-Muddy-Child",
        library_file="intermediate.epddl",
        support_level="supported",
        notes="Converted to the muddy_children F-PDDL family with generated problems.",
        target_dir="active_muddy_child",
        converter_name="active-muddy-child",
    ),
    "Coin-in-the-Box": DomainSpec(
        source_dir="Coin-in-the-Box",
        library_file="intermediate.epddl",
        support_level="supported",
        notes=(
            "Converted to a generated Coin-in-the-Box F-PDDL family with event-based visibility. "
            "The core open/signal/distract/peek/shout structure is preserved, while the common "
            "and higher-order modal goals are approximated with the closest JPM-expressible "
            "belief formulas."
        ),
        target_dir="coin_in_the_box",
        converter_name="coin-in-the-box",
    ),
    "Blocks-World": DomainSpec(
        source_dir="Blocks-World",
        library_file="basic.epddl",
        support_level="unsupported",
        notes="No corresponding F-PDDL benchmark family is present yet.",
        target_dir="blocks_world",
    ),
    "Consecutive-Numbers": DomainSpec(
        source_dir="Consecutive-Numbers",
        library_file="basic.epddl",
        support_level="unsupported",
        notes="No corresponding F-PDDL benchmark family is present yet.",
        target_dir="consecutive_numbers",
    ),
    "Tiger": DomainSpec(
        source_dir="Tiger",
        library_file="intermediate.epddl",
        support_level="unsupported",
        notes="The bundled EPDDL problem file currently fails to parse in plank and has no F-PDDL mapping yet.",
        target_dir="tiger",
    ),
    "Collaboration-through-Communication": DomainSpec(
        source_dir="Collaboration-through-Communication",
        library_file="intermediate.epddl",
        support_level="supported",
        notes=(
            "Converted to a generated Collaboration-through-Communication F-PDDL family with "
            "explicit per-agent box beliefs and second-order meta-belief state. The converter "
            "targets the bundled 2-agent, 2-box, 3-room instance family and bakes the "
            "room-elimination sanity check into sensing and telling updates."
        ),
        target_dir="collaboration_through_communication",
        converter_name="collaboration-through-communication",
    ),
    "Selective-Communication": DomainSpec(
        source_dir="Selective-Communication",
        library_file="intermediate.epddl",
        support_level="unsupported",
        notes="The bundled EPDDL domain currently has action-type parse issues and no F-PDDL mapping yet.",
        target_dir="selective_communication",
    ),
}


def export_ground_json(
    domain_path: Path,
    problem_path: Path,
    library_file: str | None,
    output_dir: Path,
    plank_binary: Path,
) -> Path:
    cmd = [str(plank_binary), "export", "-d", str(domain_path), "-p", str(problem_path)]
    if library_file:
        cmd.extend(["-l", str(PLANK_ROOT / "benchmarks" / "libraries" / library_file)])
    cmd.extend(["-o", str(output_dir)])
    result = subprocess.run(cmd, check=True, capture_output=True, text=True, cwd=PLANK_ROOT / "build")
    json_path = output_dir / f"{problem_path.stem}.json"
    if not json_path.exists():
        message = "\n".join(
            part.strip() for part in [result.stdout, result.stderr] if part and part.strip()
        )
        raise FileNotFoundError(
            f"plank export did not create {json_path.name} for {problem_path}: {message}"
        )
    return json_path


def write_status_markdown(
    status_path: Path,
    spec: DomainSpec,
    domain_path: Path,
    problem_paths: list[Path],
    grounded_json_files: list[str] | None = None,
    export_failures: list[dict[str, str]] | None = None,
) -> None:
    lines = [
        f"# {spec.source_dir}",
        "",
        f"Support level: `{spec.support_level}`",
        "",
        spec.notes,
        "",
        "Source files:",
        f"- Domain: `{domain_path}`",
    ]
    for problem_path in problem_paths:
        lines.append(f"- Problem: `{problem_path}`")
    if grounded_json_files:
        lines.extend(["", "Grounded JSON exports:"])
        for name in grounded_json_files:
            lines.append(f"- `{name}`")
    if export_failures:
        lines.extend(["", "Grounding failures:"])
        for item in export_failures:
            lines.append(f"- `{item['problem']}`: `{item['error']}`")
    lines.append("")
    status_path.write_text("\n".join(lines))


def copy_source_files(domain_root: Path, target_dir: Path) -> tuple[Path, Path, list[Path]]:
    source_dir = target_dir / "source"
    domain_path = next(domain_root.glob("*.epddl"))
    problem_paths = sorted(path for path in domain_root.rglob("*.epddl") if path != domain_path)
    copy_tree_file(domain_path, source_dir / domain_path.name)
    for problem_path in problem_paths:
        copy_tree_file(problem_path, source_dir / problem_path.relative_to(domain_root))
    return source_dir, domain_path, problem_paths


def export_groundings(
    spec: DomainSpec,
    domain_path: Path,
    problem_paths: list[Path],
    grounded_dir: Path,
    plank_binary: Path,
) -> tuple[list[Path], list[dict[str, str]]]:
    grounded_dir.mkdir(parents=True, exist_ok=True)
    grounded_paths: list[Path] = []
    failures: list[dict[str, str]] = []

    with tempfile.TemporaryDirectory(prefix="epddl_to_fpddl_") as tmp_str:
        tmp_dir = Path(tmp_str)
        for problem_path in problem_paths:
            try:
                json_path = export_ground_json(
                    domain_path=domain_path,
                    problem_path=problem_path,
                    library_file=spec.library_file,
                    output_dir=tmp_dir,
                    plank_binary=plank_binary,
                )
            except (subprocess.CalledProcessError, FileNotFoundError) as exc:
                if isinstance(exc, subprocess.CalledProcessError):
                    error = exc.stderr.strip() or exc.stdout.strip() or str(exc)
                else:
                    error = str(exc)
                failures.append(
                    {
                        "problem": str(problem_path.relative_to(PLANK_ROOT)),
                        "error": error,
                    }
                )
                continue

            grounded_copy = grounded_dir / json_path.name
            copy_tree_file(json_path, grounded_copy)
            grounded_paths.append(grounded_copy)

    return grounded_paths, failures


def convert_supported_domain(
    spec: DomainSpec,
    domain_path: Path,
    problem_paths: list[Path],
    target_dir: Path,
    plank_binary: Path,
) -> dict[str, Any]:
    converter = CONVERTERS[spec.converter_name]
    grounded_dir = target_dir / "grounded"
    grounded_paths, failures = export_groundings(
        spec=spec,
        domain_path=domain_path,
        problem_paths=problem_paths,
        grounded_dir=grounded_dir,
        plank_binary=plank_binary,
    )
    generated_problem_files: list[str] = []
    for grounded_path in grounded_paths:
        task = load_json(grounded_path)
        info = task["planning-task-info"]
        problem_name = f"{fpddl_name(info['problem'])}_from_epddl"
        result = converter(task, target_dir, problem_name)
        generated_problem_files.extend(result["problem_files"])

    metadata = {
        "source_domain": spec.source_dir,
        "support_level": spec.support_level,
        "notes": spec.notes,
        "generated_problem_files": sorted(set(generated_problem_files)),
        "grounded_json_files": sorted(path.name for path in grounded_paths),
        "grounding_failures": failures,
    }
    write_json(target_dir / "conversion.json", metadata)
    return metadata


def convert_domain(spec: DomainSpec, plank_binary: Path, output_root: Path) -> dict[str, Any]:
    domain_root = PLANK_ROOT / "benchmarks" / "domains" / spec.source_dir
    target_dir = output_root / spec.target_dir
    if target_dir.exists():
        shutil.rmtree(target_dir)
    target_dir.mkdir(parents=True, exist_ok=True)

    _, domain_path, problem_paths = copy_source_files(domain_root, target_dir)

    if spec.support_level == "supported":
        metadata = convert_supported_domain(spec, domain_path, problem_paths, target_dir, plank_binary)
    else:
        grounded_paths, failures = export_groundings(
            spec=spec,
            domain_path=domain_path,
            problem_paths=problem_paths,
            grounded_dir=target_dir / "grounded",
            plank_binary=plank_binary,
        )
        write_status_markdown(
            target_dir / "STATUS.md",
            spec,
            domain_path,
            problem_paths,
            grounded_json_files=sorted(path.name for path in grounded_paths),
            export_failures=failures,
        )
        metadata = {
            "source_domain": spec.source_dir,
            "support_level": spec.support_level,
            "notes": spec.notes,
            "source_problem_files": [str(path.relative_to(PLANK_ROOT)) for path in problem_paths],
            "grounded_json_files": sorted(path.name for path in grounded_paths),
            "grounding_failures": failures,
        }
        write_json(target_dir / "conversion.json", metadata)

    return {
        "target_dir": str(target_dir.relative_to(output_root)),
        **metadata,
    }


def write_root_readme(output_root: Path, manifest: dict[str, Any]) -> None:
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
        "Generated domain folders:",
    ]
    for item in manifest["domains"]:
        lines.append(
            f"- `{item['target_dir']}`: `{item['support_level']}` from `{item['source_domain']}`"
        )
    lines.append("")
    (output_root / "README.md").write_text("\n".join(lines))


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Bulk-convert supported plank EPDDL benchmark families into F-PDDL folders."
    )
    parser.add_argument(
        "--output-root",
        type=Path,
        default=CONVERTED_ROOT,
        help="target folder for converted benchmarks",
    )
    parser.add_argument(
        "--plank-binary",
        type=Path,
        default=PLANK_BINARY,
        help="path to the built plank executable",
    )
    args = parser.parse_args()

    output_root = args.output_root
    output_root.mkdir(parents=True, exist_ok=True)

    manifest = {"domains": []}
    for domain_name in sorted(DOMAIN_SPECS):
        spec = DOMAIN_SPECS[domain_name]
        manifest["domains"].append(convert_domain(spec, args.plank_binary, output_root))

    write_json(output_root / "manifest.json", manifest)
    write_root_readme(output_root, manifest)
    print(output_root)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
