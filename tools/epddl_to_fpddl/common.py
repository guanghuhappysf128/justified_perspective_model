from __future__ import annotations

import json
import re
import shutil
from dataclasses import dataclass
from pathlib import Path
from typing import Any


JPM_ROOT = Path(__file__).resolve().parents[2]
IEPC_ROOT = JPM_ROOT.parent
PLANK_ROOT = IEPC_ROOT / "plank"
PLANK_BUILD = PLANK_ROOT / "build"
PLANK_BINARY = PLANK_BUILD / "plank"
CONVERTED_ROOT = JPM_ROOT / "converted_from_epddl"


def fpddl_name(name: str) -> str:
    value = re.sub(r"[^A-Za-z0-9_]", "_", name).lower()
    if not value:
        raise ValueError(f"cannot convert empty name {name!r}")
    return value


def atom_suffix(atom: str, prefix: str) -> str | None:
    if atom.startswith(prefix):
        return atom[len(prefix) :]
    return None


def quoted_tf(value: bool) -> str:
    return "'t'" if value else "'f'"


def load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def designated_world(task: dict[str, Any]) -> str:
    designated = task["initial-state"].get("designated", [])
    if len(designated) != 1:
        raise ValueError(
            "expected exactly one designated world, got "
            f"{designated!r} for {task.get('planning-task-info', {})!r}"
        )
    return designated[0]


def designated_labels(task: dict[str, Any]) -> set[str]:
    world = designated_world(task)
    return set(task["initial-state"]["labels"][world])


def copy_tree_file(src: Path, dst: Path) -> None:
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


@dataclass(frozen=True)
class DomainSpec:
    source_dir: str
    library_file: str | None
    support_level: str
    notes: str
    target_dir: str
    converter_name: str | None = None

