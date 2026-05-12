from __future__ import annotations

from typing import Any, Callable


DEFAULT_BASE_HEURISTIC = "goal_counting"
DEFAULT_NOVELTY_HEURISTIC = "iw_gc"


def normalise_search_options(search_options: dict[str, Any] | None) -> dict[str, Any]:
    if search_options is None:
        return {}
    if not isinstance(search_options, dict):
        raise ValueError("search_options must be a mapping when provided")
    return dict(search_options)


def read_string_option(
    search_options: dict[str, Any],
    name: str,
    default: str,
) -> str:
    value = search_options.get(name, default)
    if not isinstance(value, str) or not value.strip():
        raise ValueError(f"search option {name} must be a non-empty string")
    return value.strip()


def read_bool_option(
    search_options: dict[str, Any],
    name: str,
    default: bool,
) -> bool:
    value = search_options.get(name, default)
    if not isinstance(value, bool):
        raise ValueError(f"search option {name} must be a boolean")
    return value


def read_float_option(
    search_options: dict[str, Any],
    name: str,
    default: float,
    *,
    minimum: float | None = None,
) -> float:
    value = search_options.get(name, default)
    if not isinstance(value, (int, float)):
        raise ValueError(f"search option {name} must be numeric")
    float_value = float(value)
    if minimum is not None and float_value < minimum:
        raise ValueError(f"search option {name} must be >= {minimum}")
    return float_value


def read_int_option(
    search_options: dict[str, Any],
    name: str,
    default: int,
    *,
    minimum: int | None = None,
) -> int:
    value = search_options.get(name, default)
    if isinstance(value, bool) or not isinstance(value, int):
        raise ValueError(f"search option {name} must be an integer")
    if minimum is not None and value < minimum:
        raise ValueError(f"search option {name} must be >= {minimum}")
    return value


def read_optional_int_option(
    search_options: dict[str, Any],
    name: str,
    default: int | None,
    *,
    minimum: int | None = None,
) -> int | None:
    value = search_options.get(name, default)
    if value is None:
        return None
    if isinstance(value, bool) or not isinstance(value, int):
        raise ValueError(f"search option {name} must be an integer or null")
    if minimum is not None and value < minimum:
        raise ValueError(f"search option {name} must be >= {minimum}")
    return value


def select_heuristic(search_engine, heuristic_name: str) -> Callable:
    heuristics = {
        "goal_counting": search_engine.goal_counting,
        "iw_gc": search_engine.iw_gc,
    }
    try:
        return heuristics[heuristic_name]
    except KeyError as exc:
        valid_names = ", ".join(sorted(heuristics))
        raise ValueError(
            f"Unsupported heuristic {heuristic_name!r}; expected one of: {valid_names}"
        ) from exc


def configure_novelty_search_engine(
    search_engine,
    search_options: dict[str, Any] | None,
    *,
    default_h_weight: float = 1.0,
    default_g_weight: float = 1.0,
    default_base_heuristic: str = DEFAULT_BASE_HEURISTIC,
    default_novelty_heuristic: str = DEFAULT_NOVELTY_HEURISTIC,
) -> dict[str, Any]:
    options = normalise_search_options(search_options)
    search_engine.search_options = options
    search_engine.h_weight = read_float_option(
        options,
        "h_weight",
        default_h_weight,
        minimum=0.0,
    )
    search_engine.g_weight = read_float_option(
        options,
        "g_weight",
        default_g_weight,
        minimum=0.0,
    )

    base_heuristic_name = read_string_option(
        options,
        "base_heuristic",
        default_base_heuristic,
    )
    novelty_heuristic_name = read_string_option(
        options,
        "novelty_heuristic",
        default_novelty_heuristic,
    )
    search_engine.base_heuristic = select_heuristic(search_engine, base_heuristic_name)
    search_engine.novelty_heuristic = select_heuristic(search_engine, novelty_heuristic_name)
    return options