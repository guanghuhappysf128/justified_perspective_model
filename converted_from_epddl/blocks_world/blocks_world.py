import logging
import typing

from util import Entity, EntityType, Function, FunctionSchema, Type, setup_logger


LOGGER_NAME = "blocks_world_from_epddl"
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
