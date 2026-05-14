import typing

from util import Entity, EntityType, Function, FunctionSchema, Type


class ExternalFunction:
    rooms = ['room1', 'room2', 'room3']

    def __init__(self, handlers):
        self.handlers = handlers

    def _known_value(self, state, agent, box, room):
        value = state.get(f"known {agent} {box} {room}", "unknown")
        return value if value in {"yes", "no", "unknown"} else "unknown"

    def _is_communicated(self, state, observer, subject, box):
        for room in self.rooms:
            value = state.get(f"communicated {observer} {subject} {box} {room}", "no")
            if value == "yes":
                return True
        return False

    def _can_infer_actual(self, state, agent, box, room):
        known_values = {
            known_room: self._known_value(state, agent, box, known_room)
            for known_room in self.rooms
        }
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
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if entities[agent_index].entity_type != EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions:
            raise ValueError(f"var_name [{var_name}] not found in functions")
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
            return agent_index in {speaker, listener}
        return True
