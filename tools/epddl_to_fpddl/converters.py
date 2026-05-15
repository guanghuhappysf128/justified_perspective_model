from __future__ import annotations

import itertools
import json
import shutil
from pathlib import Path
from typing import Any

from .common import JPM_ROOT, atom_suffix, designated_labels, fpddl_name, quoted_tf


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def lower_agents(task: dict[str, Any]) -> list[str]:
    return [fpddl_name(agent) for agent in task["language"]["agents"]]


def copy_support_files(output_dir: Path, benchmark_dir: str, filenames: list[str]) -> None:
    src_dir = JPM_ROOT / "benchmarks" / benchmark_dir
    for filename in filenames:
        shutil.copy2(src_dir / filename, output_dir / filename)


def render_grapevine_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    secret_suffixes = [
        atom_suffix(atom, "secret_")
        for atom in task["language"]["atoms"]
        if atom.startswith("secret_")
    ]
    labels = designated_labels(task)

    agent_names = [fpddl_name(agent) for agent in agents]
    secret_names = [f"{fpddl_name(suffix)}s" for suffix in secret_suffixes]

    goal_lines: list[str] = []
    formulas = task["goal"]["formula"].get("formulas", [])
    for item in formulas:
        atom = item["formula"]
        suffix = atom_suffix(atom, "secret_")
        if suffix is None:
            raise ValueError(f"unsupported grapevine goal atom {atom!r}")
        target = quoted_tf(atom in labels)
        secret = f"{fpddl_name(suffix)}s"
        for agent in item["modality-index"]:
            goal_lines.append(
                f'            (= (@ep ("+ b [{fpddl_name(agent)}]") '
                f"(= (shared_value {secret}) {target})) ep.true)"
            )

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain grapevine)",
        "",
        "    (:agents",
        f"        {' '.join(agent_names)} - agent",
        "    )",
        "",
        "    (:objects",
        f"        {' '.join(secret_names)} - secret",
        "    )",
        "",
        "    (:init",
    ]

    for agent in agents:
        loc = 1 if f"in-left-room_{agent}" in labels else 2
        lines.append(f"        (assign (agent_loc {fpddl_name(agent)}) {loc})")
    lines.append("")

    for secret in secret_names:
        lines.append(f"        (assign (shared_loc {secret}) 0)")
    lines.append("")

    for agent in agents:
        for suffix in secret_suffixes:
            own = 1 if agent == suffix else 0
            lines.append(f"        (assign (own {fpddl_name(agent)} {fpddl_name(suffix)}s) {own})")
        lines.append("")

    lines.append("        (assign (sharing) 0)")
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(f"        (assign (secret_value {fpddl_name(suffix)}s) {quoted_tf(truth)})")
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(
            f"        (assign (secret_lyging_value {fpddl_name(suffix)}s) "
            f"{quoted_tf(not truth)})"
        )
    lines.append("")

    for suffix in secret_suffixes:
        truth = f"secret_{suffix}" in labels
        lines.append(f"        (assign (shared_value {fpddl_name(suffix)}s) {quoted_tf(truth)})")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (agent_loc integer [1,2])",
            "        (shared_loc integer [0,2])",
            "        (own integer [0,1])",
            "        (sharing integer [0,1])",
            "        (secret_value enumerate ['t','f'])",
            "        (secret_lyging_value enumerate ['t','f'])",
            "        (shared_value enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_grapevine(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    copy_support_files(output_dir, "grapevine", ["domain.pddl", "grapevine.py"])
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_grapevine_problem(task, problem_name))
    return {"problem_files": [problem_path.name], "support_files": ["domain.pddl", "grapevine.py"]}


def render_gossip_domain(task: dict[str, Any]) -> str:
    agents = lower_agents(task)
    lines: list[str] = [
        "(define",
        "    (domain gossip_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (delivered ?receiver - agent ?owner - agent)",
        "    )",
        "",
    ]

    for owner in agents:
        for receiver in agents:
            if owner == receiver:
                continue
            lines.extend(
                [
                    f"    (:action tell_{owner}_{receiver}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (delivered {receiver} {owner}) 0)",
                    "        )",
                    "        :effect (and",
                    f"            (assign (delivered {receiver} {owner}) 1)",
                    "        )",
                    "    )",
                    "",
                ]
            )

    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def render_gossip_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    labels = designated_labels(task)
    lower = [fpddl_name(agent) for agent in agents]

    goal_lines: list[str] = []
    formulas = task["goal"]["formula"].get("formulas", [])
    for item in formulas:
        suffix = atom_suffix(item["formula"], "secret_")
        if suffix is None:
            raise ValueError(f"unsupported gossip goal atom {item['formula']!r}")
        if f"secret_{suffix}" not in labels:
            raise ValueError("gossip converter expects each source secret atom to hold initially")
        for agent in item["modality-index"]:
            goal_lines.append(f"            (= (delivered {fpddl_name(agent)} {fpddl_name(suffix)}) 1)")

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain gossip_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(lower)} - agent",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
    ]
    for receiver in lower:
        for owner in lower:
            initial_value = 1 if receiver == owner else 0
            lines.append(f"        (assign (delivered {receiver} {owner}) {initial_value})")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (delivered integer [0,1])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def render_gossip_external() -> str:
    return """import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "gossip_from_epddl"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None

    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME, handlers, logger_level=LOGGER_LEVEL)

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{var_name}] not found in functions")
        return True
"""


def convert_gossip(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_gossip_domain(task))
    (output_dir / "gossip.py").write_text(render_gossip_external())
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_gossip_problem(task, problem_name))
    return {"problem_files": [problem_path.name], "support_files": ["domain.pddl", "gossip.py"]}


def render_amc_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = list(task["language"]["agents"])
    labels = designated_labels(task)
    children = [fpddl_name(agent) for agent in agents]

    goal = task["goal"]["formula"]
    goal_agent = fpddl_name(goal["modality-index"][0])
    goal_atom = goal["formula"]
    goal_truth = quoted_tf(goal_atom in labels)

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain muddy_children)",
        "",
        "    (:agents",
        f"        {' '.join(children)} - children",
        "        t - teacher",
        "    )",
        "",
        "    (:objects",
        "    )",
        "",
        "    (:init",
        "        (assign (num_of_question t) 0)",
    ]
    for agent in agents:
        truth = f"muddy_{agent}" in labels
        lines.append(f"        (assign (muddy {fpddl_name(agent)}) {quoted_tf(truth)})")
    lines.append("        (assign (shouted) 'f')")
    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            f'        (= (@ep ("+ b [{goal_agent}]") (= (muddy {goal_agent}) {goal_truth})) ep.true)',
            "    ))",
            "",
            "    (:ranges",
            f"        (num_of_question integer [0,{max(1, len(children))}])",
            "        (muddy enumerate ['t','f'])",
            "        (shouted enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_active_muddy_child(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    copy_support_files(output_dir, "muddy_children", ["domain.pddl", "muddy_children.py"])
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_amc_problem(task, problem_name))
    return {"problem_files": [problem_path.name], "support_files": ["domain.pddl", "muddy_children.py"]}


def render_coin_domain(task: dict[str, Any]) -> str:
    agents = lower_agents(task)
    event_values = ["none"] + [f"peek_{agent}" for agent in agents] + [f"shout_{agent}" for agent in agents]
    primary_agent = agents[0]

    lines: list[str] = [
        "(define",
        "    (domain coin_in_the_box_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "    )",
        "",
        "    (:functions",
        "        (tails)",
        "        (opened)",
        "        (announced)",
        "        (event)",
        "        (looking ?i - agent)",
        "        (has_key ?i - agent)",
        "        (peek_ready ?i - agent)",
        "        (peeked ?i - agent)",
        "    )",
        "",
    ]

    for agent in agents:
        lines.extend(
            [
                f"    (:action open_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                "            (= (opened) 'f')",
                f"            (= (looking {agent}) 't')",
                f"            (= (has_key {agent}) 't')",
                "        )",
                "        :effect (and",
                "            (assign (opened) 't')",
                "            (assign (event) 'none')",
                "        )",
                "    )",
                "",
            ]
        )

    for actor in agents:
        for target in agents:
            if actor == target:
                continue
            lines.extend(
                [
                    f"    (:action signal_{actor}_{target}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (looking {actor}) 't')",
                    f"            (= (looking {target}) 'f')",
                    "        )",
                "        :effect (and",
                    f"            (assign (looking {target}) 't')",
                    f"            (assign (peek_ready {target}) 't')",
                    "            (assign (event) 'none')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    for actor in agents:
        for target in agents:
            if actor == target:
                continue
            distract_effects = [
                f"            (assign (looking {target}) 'f')",
            ]
            if target == primary_agent:
                distract_effects.extend(
                    f"            (assign (peek_ready {other}) 't')"
                    for other in agents
                    if other != primary_agent
                )
            lines.extend(
                [
                    f"    (:action distract_{actor}_{target}",
                    "        :parameters ()",
                    "        :precondition (and",
                    f"            (= (looking {actor}) 't')",
                    f"            (= (looking {target}) 't')",
                    "        )",
                    "        :effect (and",
                    *distract_effects,
                    "            (assign (event) 'none')",
                    "        )",
                    "    )",
                    "",
                ]
            )

    for agent in agents:
        peek_preconditions = [
            "            (= (opened) 't')",
        ]
        if agent != primary_agent:
            peek_preconditions.extend(
                [
                    "            (= (announced) 't')",
                    f"            (= (peek_ready {agent}) 't')",
                ]
            )
        lines.extend(
            [
                f"    (:action peek_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                *peek_preconditions,
                "        )",
                "        :effect (and",
                f"            (assign (peeked {agent}) (tails))",
                f"            (assign (event) 'peek_{agent}')",
                "        )",
                "    )",
                "",
                f"    (:action shout_tails_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                "            (= (tails) 't')",
                f"            (= (peeked {agent}) 't')",
                f"            (= (looking {agent}) 't')",
                "        )",
                "        :effect (and",
                "            (assign (announced) 't')",
                f"            (assign (event) 'shout_{agent}')",
                "        )",
                "    )",
                "",
            ]
        )

    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def render_coin_external(task: dict[str, Any]) -> str:
    agents = lower_agents(task)
    agent_set = ", ".join(f'"{agent}"' for agent in agents)
    return f"""import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "coin_in_the_box"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None
    agents = {{{agent_set}}}

    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME, handlers, logger_level=LOGGER_LEVEL)

    def _event_actor(self, state):
        event = state["event"]
        if not isinstance(event, str) or event == "none":
            return None
        return event.split("_", 1)[1]

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{{agent_index}}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{{agent_index}}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{{var_name}}] not found in functions")

        function = functions[var_name]
        schema_name = function.function_schema_name
        targets = function.entity_index_list
        event = state["event"]
        event_actor = self._event_actor(state)
        event_is_named = isinstance(event, str)

        if schema_name in {{"opened", "looking", "has_key"}}:
            return True

        if schema_name in {{"announced", "peek_ready"}}:
            return False

        if schema_name == "event":
            if not event_is_named or event == "none":
                return False
            if event.startswith("peek_") or event.startswith("shout_"):
                return agent_index == event_actor or state[f"looking {{agent_index}}"] == "t"
            return False

        if schema_name == "tails":
            if (
                event_is_named
                and event == f"peek_{{agent_index}}"
                and state[f"peeked {{agent_index}}"] == "t"
            ):
                return True
            if (
                event_is_named
                and event.startswith("shout_")
                and event_actor is not None
                and state[f"peeked {{event_actor}}"] == "t"
                and state[f"looking {{agent_index}}"] == "t"
            ):
                return True
            return False

        if schema_name == "peeked":
            if len(targets) != 1:
                raise ValueError("peeked function should have exactly one target", var_name)
            target = targets[0]
            if agent_index == target:
                return True
            if event_is_named and event == f"peek_{{target}}" and state[f"looking {{agent_index}}"] == "t":
                return True
            if event_is_named and event == f"shout_{{target}}" and state[f"looking {{agent_index}}"] == "t":
                return True
            return False

        raise ValueError(f"function_schemas_name [{{schema_name}}] not found")
"""


def coin_goal_true(query: str, truth: str) -> str:
    return f'        (= (@ep ("{query}") (= (tails) {truth})) ep.true)'


def coin_goal_not_true(query: str, truth: str) -> str:
    return f'        (!= (@ep ("{query}") (= (tails) {truth})) ep.true)'


def render_coin_problem(task: dict[str, Any], problem_name: str) -> str:
    agents = lower_agents(task)
    labels = designated_labels(task)
    actual_tails = quoted_tf("tails" in labels)
    info_name = task["planning-task-info"]["problem"]

    goal_lines: list[str]
    if info_name == "cb-1":
        goal_lines = [coin_goal_true("+ b [a]", actual_tails)]
    elif info_name == "cb-2":
        goal_lines = [coin_goal_true("+ b [b]", actual_tails)]
    elif info_name == "cb-3":
        goal_lines = [coin_goal_true(f"+ b [{agent}]", actual_tails) for agent in agents]
        goal_lines.extend(
            coin_goal_true(f"+ b [{outer}] + b [{inner}]", actual_tails)
            for outer in agents
            for inner in agents
            if outer != inner
        )
    elif info_name == "cb-4":
        goal_lines = [
            coin_goal_true("+ b [b]", actual_tails),
            coin_goal_true("+ b [c]", actual_tails),
            coin_goal_not_true("+ b [b] + b [a] + b [c]", actual_tails),
            coin_goal_not_true("+ b [a] + b [c]", actual_tails),
        ]
    elif info_name == "cb-5":
        goal_lines = [
            coin_goal_true("+ b [b]", actual_tails),
            coin_goal_true("+ b [c]", actual_tails),
            coin_goal_true("+ b [c] + b [a]", actual_tails),
            coin_goal_true("+ b [a] + b [c]", actual_tails),
        ]
    else:
        raise ValueError(f"unsupported coin problem {info_name!r}")

    event_values = ["none"] + [f"peek_{agent}" for agent in agents] + [f"shout_{agent}" for agent in agents]

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain coin_in_the_box_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:agent_spec",
    ]

    for agent in agents:
        lines.append(f"        (= (nesting {agent}) 3)")

    lines.extend(
        [
            "    )",
            "",
            "    (:objects",
            "    )",
            "",
            "    (:init",
            f"        (assign (tails) {actual_tails})",
            f"        (assign (opened) {quoted_tf('opened' in labels)})",
            "        (assign (announced) 'f')",
            "        (assign (event) 'none')",
        ]
    )

    for agent in agents:
        lines.append(f"        (assign (looking {agent}) {quoted_tf(f'looking_{agent.upper()}' in labels)})")
    for agent in agents:
        lines.append(f"        (assign (has_key {agent}) {quoted_tf(f'has-key_{agent.upper()}' in labels)})")
    for agent in agents:
        lines.append(f"        (assign (peek_ready {agent}) 'f')")
    for agent in agents:
        lines.append(f"        (assign (peeked {agent}) 'f')")

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (tails enumerate ['t','f'])",
            "        (opened enumerate ['t','f'])",
            "        (announced enumerate ['t','f'])",
            f"        (event enumerate [{','.join(repr(value) for value in event_values)}])",
            "        (looking enumerate ['t','f'])",
            "        (has_key enumerate ['t','f'])",
            "        (peek_ready enumerate ['t','f'])",
            "        (peeked enumerate ['t','f'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_coin_in_the_box(task: dict[str, Any], output_dir: Path, problem_name: str) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_coin_domain(task))
    (output_dir / "coin_in_the_box.py").write_text(render_coin_external(task))
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_coin_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "coin_in_the_box.py"],
    }


def cc_entities(task: dict[str, Any]) -> tuple[list[str], list[str], list[str]]:
    agents = lower_agents(task)
    boxes: set[str] = set()
    rooms: set[str] = set()
    for atom in task["language"]["atoms"]:
        if atom.startswith("at-box_"):
            _, box, room = atom.split("_", 2)
            boxes.add(fpddl_name(box))
            rooms.add(fpddl_name(room))
        elif atom.startswith("at-ag_"):
            _, agent, room = atom.split("_", 2)
            if fpddl_name(agent) not in agents:
                raise ValueError(f"unexpected agent atom {atom!r}")
            rooms.add(fpddl_name(room))
        elif atom.startswith("leftmost_") or atom.startswith("rightmost_"):
            _, room = atom.split("_", 1)
            rooms.add(fpddl_name(room))
    return sorted(agents), sorted(boxes), sorted(rooms)


def cc_initial_box_belief(room: str) -> str:
    # In the bundled CC family, common knowledge rules out room2 initially.
    return "no" if room == "room2" else "unknown"


def cc_closed_box_effects(state_fun: str, owner: str, box: str, rooms: list[str]) -> list[str]:
    # Box-location information is coupled across rooms: once an agent learns enough
    # to identify the box location, we close the whole room profile together.
    return [
        f"            (assign ({state_fun} {owner} {box} {room}) (actual {box} {room}))"
        for room in rooms
    ]


def cc_closed_meta_effects(observer: str, subject: str, box: str, rooms: list[str]) -> list[str]:
    return [
        f"            (assign (meta {observer} {subject} {box} {room}) (actual {box} {room}))"
        for room in rooms
    ]


def render_cc_domain(task: dict[str, Any]) -> str:
    agents, boxes, rooms = cc_entities(task)
    if len(agents) != 2 or len(boxes) != 2 or len(rooms) != 3:
        raise ValueError(
            "cc converter currently supports the 2-agent, 2-box, 3-room family, got "
            f"agents={agents}, boxes={boxes}, rooms={rooms}"
        )

    room_index = {room: idx + 1 for idx, room in enumerate(rooms)}

    lines: list[str] = [
        "(define",
        "    (domain collaboration_through_communication_from_epddl)",
        "",
        "    (:types",
        "        agent",
        "        box",
        "        room",
        "    )",
        "",
        "    (:functions",
        "        (agent_loc ?a - agent)",
        "        (actual ?b - box ?r - room)",
        "        (known ?a - agent ?b - box ?r - room)",
        "        (communicated ?s - agent ?l - agent ?b - box ?r - room)",
        "    )",
        "",
    ]

    for agent in agents:
        lines.extend(
            [
                f"    (:action left_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                f"            (> (agent_loc {agent}) {room_index[rooms[0]]})",
                "        )",
                "        :effect (and",
                f"            (decrease (agent_loc {agent}) 1)",
                "        )",
                "    )",
                "",
                f"    (:action right_{agent}",
                "        :parameters ()",
                "        :precondition (and",
                f"            (< (agent_loc {agent}) {room_index[rooms[-1]]})",
                "        )",
                "        :effect (and",
                f"            (increase (agent_loc {agent}) 1)",
                "        )",
                "    )",
                "",
            ]
        )

    for agent in agents:
        for box in boxes:
            for room in rooms:
                effect_lines: list[str] = []
                if room != "room2":
                    effect_lines.extend(cc_closed_box_effects("known", agent, box, rooms))
                else:
                    effect_lines.append(
                        f"            (assign (known {agent} {box} {room}) (actual {box} {room}))"
                    )

                lines.extend(
                    [
                        f"    (:action sense_{agent}_{box}_{room}",
                        "        :parameters ()",
                        "        :precondition (and",
                        f"            (= (agent_loc {agent}) {room_index[room]})",
                        "        )",
                        "        :effect (and",
                        *effect_lines,
                        "        )",
                        "    )",
                        "",
                    ]
                )

    for speaker in agents:
        listener = next(agent for agent in agents if agent != speaker)
        for box in boxes:
            for room in rooms:
                effect_lines = [
                    *cc_closed_box_effects("known", listener, box, rooms),
                    f"            (assign (communicated {speaker} {listener} {box} {room}) 'yes')",
                    f"            (assign (communicated {listener} {speaker} {box} {room}) 'yes')",
                ]

                for shared_room in rooms:
                    lines.extend(
                        [
                            f"    (:action tell_{speaker}_{box}_{room}_from_{shared_room}",
                            "        :parameters ()",
                            "        :precondition (and",
                            f"            (= (known {speaker} {box} {room}) 'yes')",
                            f"            (= (actual {box} {room}) 'yes')",
                            f"            (= (agent_loc {speaker}) {room_index[shared_room]})",
                            f"            (= (agent_loc {listener}) {room_index[shared_room]})",
                            "        )",
                            "        :effect (and",
                            *effect_lines,
                            "        )",
                            "    )",
                            "",
                        ]
                    )

    lines.append(")")
    lines.append("")
    return "\n".join(lines)


def render_cc_external(task: dict[str, Any]) -> str:
    agents, boxes, rooms = cc_entities(task)
    rooms_expr = ", ".join(repr(room) for room in rooms)
    return f"""import typing

from util import Entity, EntityType, Function, FunctionSchema, Type


class ExternalFunction:
    rooms = [{rooms_expr}]

    def __init__(self, handlers):
        self.handlers = handlers

    def _known_value(self, state, agent, box, room):
        value = state.get(f"known {{agent}} {{box}} {{room}}", "unknown")
        return value if value in {{"yes", "no", "unknown"}} else "unknown"

    def _is_communicated(self, state, observer, subject, box):
        for room in self.rooms:
            value = state.get(f"communicated {{observer}} {{subject}} {{box}} {{room}}", "no")
            if value == "yes":
                return True
        return False

    def _can_infer_actual(self, state, agent, box, room):
        known_values = {{
            known_room: self._known_value(state, agent, box, known_room)
            for known_room in self.rooms
        }}
        if known_values[room] != "unknown":
            return True
        no_rooms = [known_room for known_room, value in known_values.items() if value == "no"]
        yes_rooms = [known_room for known_room, value in known_values.items() if value == "yes"]
        if yes_rooms:
            return room in yes_rooms
        if len(no_rooms) == len(self.rooms) - 1:
            remaining = next(
                known_room for known_room in self.rooms if known_room not in no_rooms
            )
            return room == remaining
        return False

    def checkVisibility(
        self,
        state,
        agent_index,
        var_name,
        entities: typing.Dict[str, Entity],
        functions: typing.Dict[str, Function],
        function_schemas: typing.Dict[str, FunctionSchema],
        types: typing.Dict[str, Type],
    ):
        if agent_index not in entities:
            raise ValueError(f"agent_index [{{agent_index}}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{{agent_index}}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{{var_name}}] not found in functions")
        function = functions[var_name]
        schema_name = function.function_schema_name
        targets = function.entity_index_list

        if schema_name == "agent_loc":
            return True
        if schema_name == "actual":
            if len(targets) != 2:
                raise ValueError("actual function should have exactly two targets", var_name)
            box, room = targets
            return self._can_infer_actual(state, agent_index, box, room)
        if schema_name == "known":
            if len(targets) != 3:
                raise ValueError("known function should have exactly three targets", var_name)
            subject, box, _room = targets
            if agent_index == subject:
                return True
            return self._is_communicated(state, agent_index, subject, box)
        if schema_name == "communicated":
            if len(targets) != 4:
                raise ValueError("communicated function should have exactly four targets", var_name)
            speaker, listener, _box, _room = targets
            return agent_index in {{speaker, listener}}
        return True
"""


def cc_ep_true(query: str, condition: str) -> str:
    return f'        (= (@ep ("{query}") {condition}) ep.true)'


def cc_ep_not_true(query: str, condition: str) -> str:
    return f'        (!= (@ep ("{query}") {condition}) ep.true)'


def render_cc_problem(task: dict[str, Any], problem_name: str) -> str:
    agents, boxes, rooms = cc_entities(task)
    if agents != ["a", "b"] or boxes != ["box1", "box2"] or rooms != ["room1", "room2", "room3"]:
        raise ValueError(
            "cc converter currently expects agents [a,b], boxes [box1,box2], rooms [room1,room2,room3], "
            f"got agents={agents}, boxes={boxes}, rooms={rooms}"
        )

    room_index = {room: idx + 1 for idx, room in enumerate(rooms)}
    labels = designated_labels(task)
    info_name = task["planning-task-info"]["problem"]

    box1_room1 = "(= (actual box1 room1) 'yes')"
    box2_room3 = "(= (actual box2 room3) 'yes')"
    a_room2 = f"(= (agent_loc a) {room_index['room2']})"
    a_room3 = f"(= (agent_loc a) {room_index['room3']})"

    goal_lines: list[str]
    if info_name == "cc_2_2_3-1":
        goal_lines = [
            cc_ep_true("+ b [a]", box1_room1),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [a] + b [b]", box1_room1),
            cc_ep_true("+ b [b] + b [a]", box1_room1),
        ]
    elif info_name == "cc_2_2_3-2":
        goal_lines = [
            cc_ep_true("+ b [a]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
        ]
    elif info_name == "cc_2_2_3-3":
        goal_lines = [
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_true("+ b [a] + b [b]", box2_room3),
            cc_ep_true("+ b [b] + b [a]", box2_room3),
            cc_ep_true("+ b [a]", a_room3),
            cc_ep_true("+ b [b]", a_room3),
        ]
    elif info_name == "cc_2_2_3-4":
        goal_lines = [
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_true("+ b [a] + b [b]", box2_room3),
            cc_ep_true("+ b [b] + b [a]", box2_room3),
            cc_ep_true("+ b [a]", a_room2),
            cc_ep_true("+ b [b]", a_room2),
        ]
    elif info_name == "cc_2_2_3-5":
        goal_lines = [
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_not_true("+ b [a] + b [b]", box2_room3),
            cc_ep_true("+ b [a]", a_room3),
            cc_ep_true("+ b [b]", a_room3),
        ]
    elif info_name == "cc_2_2_3-6":
        goal_lines = [
            cc_ep_true("+ b [a]", box1_room1),
            cc_ep_true("+ b [a]", box2_room3),
            cc_ep_true("+ b [b]", box1_room1),
            cc_ep_true("+ b [b]", box2_room3),
            cc_ep_not_true("+ b [a] + b [b]", box1_room1),
            cc_ep_not_true("+ b [a] + b [b]", box2_room3),
            cc_ep_not_true("+ b [b] + b [a]", box1_room1),
            cc_ep_not_true("+ b [b] + b [a]", box2_room3),
            cc_ep_true("+ b [a]", a_room3),
            cc_ep_true("+ b [b]", a_room3),
        ]
    else:
        raise ValueError(f"unsupported cc problem {info_name!r}")

    lines: list[str] = [
        "(define",
        f"    (problem {problem_name})",
        "    (:domain collaboration_through_communication_from_epddl)",
        "",
        "    (:agents",
        f"        {' '.join(agents)} - agent",
        "    )",
        "",
        "    (:agent_spec",
    ]

    for agent in agents:
        lines.append(f"        (= (nesting {agent}) 3)")

    lines.extend(
        [
            "    )",
        "",
        "    (:objects",
        f"        {' '.join(boxes)} - box",
        f"        {' '.join(rooms)} - room",
        "    )",
        "",
        "    (:init",
        ]
    )

    for agent in agents:
        actual_room = next(room for room in rooms if f"at-ag_{agent.upper()}_{room}" in labels)
        lines.append(f"        (assign (agent_loc {agent}) {room_index[actual_room]})")
    lines.append("")

    for box in boxes:
        for room in rooms:
            actual = "yes" if f"at-box_{box}_{room}" in labels else "no"
            lines.append(f"        (assign (actual {box} {room}) '{actual}')")
    lines.append("")

    for agent in agents:
        for box in boxes:
            for room in rooms:
                initial = cc_initial_box_belief(room)
                lines.append(f"        (assign (known {agent} {box} {room}) '{initial}')")
    lines.append("")

    for speaker in agents:
        for listener in agents:
            if speaker == listener:
                continue
            for box in boxes:
                for room in rooms:
                    lines.append(
                        f"        (assign (communicated {speaker} {listener} {box} {room}) 'no')"
                    )

    lines.extend(
        [
            "    )",
            "",
            "    (:goal (and",
            *goal_lines,
            "    ))",
            "",
            "    (:ranges",
            "        (agent_loc integer [1,3])",
            "        (actual enumerate ['yes','no'])",
            "        (known enumerate ['yes','no','unknown'])",
            "        (communicated enumerate ['yes','no'])",
            "    )",
            "",
            "    (:rules",
            "    )",
            ")",
            "",
        ]
    )
    return "\n".join(lines)


def convert_collaboration_through_communication(
    task: dict[str, Any], output_dir: Path, problem_name: str
) -> dict[str, Any]:
    (output_dir / "domain.pddl").write_text(render_cc_domain(task))
    (output_dir / "collaboration_through_communication.py").write_text(render_cc_external(task))
    problem_path = output_dir / f"{problem_name}.pddl"
    problem_path.write_text(render_cc_problem(task, problem_name))
    return {
        "problem_files": [problem_path.name],
        "support_files": ["domain.pddl", "collaboration_through_communication.py"],
    }


CONVERTERS = {
    "grapevine": convert_grapevine,
    "gossip": convert_gossip,
    "active-muddy-child": convert_active_muddy_child,
    "coin-in-the-box": convert_coin_in_the_box,
    "collaboration-through-communication": convert_collaboration_through_communication,
}
