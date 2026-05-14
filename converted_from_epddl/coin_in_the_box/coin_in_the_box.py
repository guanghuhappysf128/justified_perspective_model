import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "coin_in_the_box"
LOGGER_LEVEL = logging.INFO


class ExternalFunction:
    logger = None
    agents = {"a", "b", "c"}

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
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{var_name}] not found in functions")

        function = functions[var_name]
        schema_name = function.function_schema_name
        targets = function.entity_index_list
        event = state["event"]
        event_actor = self._event_actor(state)
        event_is_named = isinstance(event, str)

        if schema_name in {"opened", "looking", "has_key"}:
            return True

        if schema_name in {"announced", "peek_ready"}:
            return False

        if schema_name == "event":
            if not event_is_named or event == "none":
                return False
            if event.startswith("peek_") or event.startswith("shout_"):
                return agent_index == event_actor or state[f"looking {agent_index}"] == "t"
            return False

        if schema_name == "tails":
            if (
                event_is_named
                and event == f"peek_{agent_index}"
                and state[f"peeked {agent_index}"] == "t"
            ):
                return True
            if (
                event_is_named
                and event.startswith("shout_")
                and event_actor is not None
                and state[f"peeked {event_actor}"] == "t"
                and state[f"looking {agent_index}"] == "t"
            ):
                return True
            return False

        if schema_name == "peeked":
            if len(targets) != 1:
                raise ValueError("peeked function should have exactly one target", var_name)
            target = targets[0]
            if agent_index == target:
                return True
            if event_is_named and event == f"peek_{target}" and state[f"looking {agent_index}"] == "t":
                return True
            if event_is_named and event == f"shout_{target}" and state[f"looking {agent_index}"] == "t":
                return True
            return False

        raise ValueError(f"function_schemas_name [{schema_name}] not found")
