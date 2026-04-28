import re

import pytest

import epistemic_model
import pddl_model


class StubExternal:
    def __init__(self, visibility_map=None):
        self.visibility_map = visibility_map or {}

    def extractVariables(self, eq):
        if isinstance(eq, epistemic_model.EpistemicQuery):
            return self.extractVariables(eq.q_content)
        if not isinstance(eq, str):
            return []
        compact = eq.replace(" ", "")
        match = re.search(r"\(([0-9a-z_\-]+),([0-9a-z_\-'\"]+)\)", compact)
        if not match:
            return []
        var_name = match.group(1)
        value = match.group(2).strip("'\"")
        return [(var_name, value)]

    def evaluateS(self, world, statement):
        if world == {}:
            return 2
        vars_ = self.extractVariables(statement)
        if not vars_:
            return 0
        var_name, value = vars_[0]
        if var_name not in world:
            return 0
        return 1 if str(world[var_name]) == value else 0

    def checkVisibility(self, external, state, agt_id, var_index, entities, variables):
        visible_vars = self.visibility_map.get(agt_id, set())
        return (
            pddl_model.T_TYPE.TRUE
            if var_index in visible_vars
            else pddl_model.T_TYPE.FALSE
        )


class AlwaysVisibleExternal(StubExternal):
    def checkVisibility(self, external, state, agt_id, var_index, entities, variables):
        return pddl_model.T_TYPE.TRUE


@pytest.fixture
def stub_external():
    return StubExternal()


@pytest.fixture
def always_visible_external():
    return AlwaysVisibleExternal()
