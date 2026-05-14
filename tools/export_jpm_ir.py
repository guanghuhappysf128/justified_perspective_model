#!/usr/bin/env python3
from __future__ import annotations

import argparse
import itertools
import json
import sys
from pathlib import Path
from typing import Any


JPM_ROOT = Path(__file__).resolve().parents[1]
JP_DIR = JPM_ROOT / "jp"
if str(JP_DIR) not in sys.path:
    sys.path.insert(0, str(JP_DIR))

from pddl_parser import PDDLParser  # noqa: E402
from util import (  # noqa: E402
    Condition,
    ConditionType,
    Effect,
    EffectType,
    EP_formula,
    EPFType,
    FunctionSchema,
    Ternary,
    UpdateType,
    VALUE_TYPE,
    multiple_parameter_replace,
    multiple_parameter_replace_with_ep,
    special_value,
)


def value_to_ir(value: Any) -> str:
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, special_value):
        return value.name.lower()
    if isinstance(value, Ternary):
        return value.name.lower()
    return str(value)


def value_type_name(schema: FunctionSchema) -> str:
    if schema.value_type == VALUE_TYPE.ENUMERATE:
        return "enumerate"
    if schema.value_type == VALUE_TYPE.INTEGER:
        return "integer"
    if schema.value_type == VALUE_TYPE.FLOAT:
        return "float"
    if schema.value_type == VALUE_TYPE.BOOLEAN:
        return "boolean"
    if schema.value_type == VALUE_TYPE.STRING:
        return "string"
    return "unknown"


def schema_domain(schema: FunctionSchema) -> dict[str, Any]:
    value_type = value_type_name(schema)
    if schema.value_type == VALUE_TYPE.INTEGER:
        lo, hi = schema.value_range
        return {"type": value_type, "range": [lo, hi]}
    if schema.value_type == VALUE_TYPE.FLOAT:
        lo, hi = schema.value_range
        return {"type": value_type, "range": [lo, hi]}
    if schema.value_type == VALUE_TYPE.BOOLEAN:
        return {"type": value_type, "values": ["true", "false"]}
    if schema.value_type == VALUE_TYPE.ENUMERATE:
        return {"type": value_type, "values": [value_to_ir(v) for v in schema.value_range]}
    if schema.value_type == VALUE_TYPE.STRING:
        return {"type": value_type, "values": []}
    return {"type": value_type, "values": []}


def enum_name(item: Any) -> str:
    return item.name.lower()


def replace_text(text: str | None, replacements: list[tuple[str, str]], *, ep: bool = False) -> str | None:
    if text is None:
        return None
    if ep:
        return multiple_parameter_replace_with_ep(text, replacements, "")
    return multiple_parameter_replace(text, replacements, " ")


def serialize_ep_formula(formula: EP_formula, replacements: list[tuple[str, str]]) -> dict[str, Any]:
    payload: dict[str, Any] = {
        "kind": enum_name(formula.epf_type),
        "query": replace_text(formula.ep_query, replacements, ep=True),
    }
    if formula.epf_type == EPFType.JP:
        payload["variable"] = replace_text(formula.ep_variable, replacements)
    elif formula.epf_type == EPFType.EP:
        payload["formula"] = replace_text(formula.ep_formula_str, replacements, ep=True)
        payload["varphi"] = serialize_condition(formula.ep_varphi, replacements)
    return payload


def serialize_condition(condition: Condition, replacements: list[tuple[str, str]]) -> dict[str, Any]:
    payload: dict[str, Any] = {
        "kind": enum_name(condition.condition_type),
        "op": enum_name(condition.condition_operator),
    }
    if condition.condition_type == ConditionType.ONTIC:
        payload["var"] = replace_text(condition.condition_variable, replacements)
    elif condition.condition_type == ConditionType.EP:
        payload["formula"] = serialize_ep_formula(condition.condition_formula, replacements)
    if condition.target_variable is not None:
        payload["target_var"] = replace_text(condition.target_variable, replacements)
    elif condition.target_value is not None:
        payload["value"] = value_to_ir(condition.target_value)
    else:
        raise ValueError(f"condition has no target: {condition}")
    return payload


def serialize_effect(effect: Effect, replacements: list[tuple[str, str]]) -> dict[str, Any]:
    payload: dict[str, Any] = {
        "effect": enum_name(effect.effect_type),
        "target": replace_text(effect.target_variable_name, replacements),
        "update": enum_name(effect.update_type),
    }
    if effect.update_type == UpdateType.CONSTANT:
        payload["value"] = value_to_ir(effect.update)
    elif effect.update_type == UpdateType.ONTIC:
        payload["source_var"] = replace_text(effect.update, replacements)
    elif effect.update_type == UpdateType.EPSITEMIC:
        payload["formula"] = serialize_ep_formula(effect.update, replacements)
    else:
        raise ValueError(f"unknown effect update type: {effect}")
    return payload


def iter_groundings(parameters: dict[str, str], types: dict[str, Any]) -> list[list[tuple[str, str]]]:
    if not parameters:
        return [[]]
    keys = list(parameters.keys())
    domains = [sorted(types[parameters[key]].entity_index_list) for key in keys]
    return [list(zip(keys, values)) for values in itertools.product(*domains)]


def load_visibility_config(domain_path: Path) -> dict[str, Any]:
    config_path = domain_path.parent / "visibility.json"
    if not config_path.exists():
        return {}
    with config_path.open() as f:
        config = json.load(f)
    if not isinstance(config, dict):
        raise ValueError(f"{config_path} must contain a JSON object")
    visibility_model = config.get("visibility_model")
    if not isinstance(visibility_model, str) or not visibility_model:
        raise ValueError(f"{config_path} must define a non-empty visibility_model string")
    return {"visibility_model": visibility_model}


def export_ir(domain_path: Path, problem_path: Path) -> dict[str, Any]:
    parser = PDDLParser([])
    (
        domain_name,
        problem_name,
        entities,
        types,
        function_schemas,
        action_schemas,
        rules,
        functions,
        initial_state,
        goals,
        nesting_base,
    ) = parser.run(str(domain_path), str(problem_path))

    variables = []
    for name in sorted(functions):
        function = functions[name]
        schema = function_schemas[function.function_schema_name]
        variables.append(
            {
                "name": name,
                "schema": function.function_schema_name,
                "arguments": list(function.entity_index_list),
                "domain": schema_domain(schema),
            }
        )

    actions = []
    for schema_name in sorted(action_schemas):
        schema = action_schemas[schema_name]
        for replacements in iter_groundings(schema.parameters, types):
            action_name = schema_name
            for _param, value in replacements:
                action_name += f" {value}"
            preconditions = [
                serialize_condition(condition, replacements)
                for _name, condition in sorted(schema.preconditions.items())
            ]
            effects = [
                serialize_effect(effect, replacements)
                for _name, effect in sorted(schema.effects.items())
            ]
            actions.append(
                {
                    "name": action_name,
                    "parameters": {param: value for param, value in replacements},
                    "preconditions": preconditions,
                    "effects": effects,
                }
            )

    visibility_metadata = load_visibility_config(domain_path)

    return {
        "format": "jpm-ir-v1",
        "domain": domain_name,
        "problem": problem_name,
        "source": {
            "domain_path": str(domain_path),
            "problem_path": str(problem_path),
        },
        "entities": {
            name: {
                "kind": enum_name(entity.entity_type),
                "nesting_level": entity.nesting_level,
            }
            for name, entity in sorted(entities.items())
        },
        "types": {
            name: {
                "parent": item.parent_type_name,
                "entities": sorted(item.entity_index_list),
            }
            for name, item in sorted(types.items())
        },
        "variables": variables,
        "initial_state": {name: value_to_ir(value) for name, value in sorted(initial_state.items())},
        "goals": [
            serialize_condition(condition, [])
            for _name, condition in sorted(goals.items())
        ],
        "actions": actions,
        "metadata": {
            "action_count": len(actions),
            "variable_count": len(variables),
            "has_epistemic": any(
                condition.condition_type == ConditionType.EP
                for condition in goals.values()
            )
            or any(
                condition.condition_type == ConditionType.EP
                for schema in action_schemas.values()
                for condition in schema.preconditions.values()
            )
            or any(
                effect.update_type == UpdateType.EPSITEMIC
                for schema in action_schemas.values()
                for effect in schema.effects.values()
            ),
            "nesting_base": None if nesting_base is None else sorted(nesting_base),
            **visibility_metadata,
            "rules": {
                name: {
                    "type": enum_name(rule.rule_type),
                    "content": list(rule.rule_content),
                }
                for name, rule in sorted(rules.items())
            },
        },
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Export a parsed JPM F-PDDL task to JSON IR.")
    parser.add_argument("-d", "--domain", required=True, type=Path, help="F-PDDL domain file")
    parser.add_argument("-p", "--problem", required=True, type=Path, help="F-PDDL problem file")
    parser.add_argument("-o", "--output", required=True, type=Path, help="output JSON path")
    args = parser.parse_args()

    payload = export_ir(args.domain, args.problem)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(args.output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
