import epistemic_model
import pddl_model

from tests.conftest import StubExternal


class StateVisibilityExternal(StubExternal):
    def checkVisibility(self, external, state, agt_id, var_index, entities, variables):
        key = f"see-{agt_id}-{var_index}"
        if key in state:
            return (
                pddl_model.T_TYPE.TRUE
                if state[key]
                else pddl_model.T_TYPE.FALSE
            )
        return pddl_model.T_TYPE.FALSE


def test_knowledge_true_when_visible():
    external = StubExternal({"a": {"p"}})
    state = {"p": "t"}
    path = [(state, "start")]
    eq = epistemic_model.generateEpistemicQuery("k [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 1


def test_knowledge_false_when_not_visible():
    external = StubExternal({"a": set()})
    state = {"p": "t"}
    path = [(state, "start")]
    eq = epistemic_model.generateEpistemicQuery("k [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 0


def test_seeing_nested_unknown_when_unobserved():
    external = StubExternal({"a": set()})
    state = {"p": "t"}
    path = [(state, "start")]
    eq = epistemic_model.generateEpistemicQuery("s [a] k [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 2


def test_seeing_unknown_for_empty_state():
    external = StubExternal({"a": {"p"}})
    state = {}
    path = [(state, "start")]
    eq = epistemic_model.generateEpistemicQuery("s [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 2


def test_belief_uses_last_seen_value():
    external = StateVisibilityExternal()
    path = [
        ({"p": "t", "see-a-p": True}, "start"),
        ({"p": "f", "see-a-p": False}, "hide"),
    ]
    state = path[-1][0]
    eq = epistemic_model.generateEpistemicQuery("b [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 1


def test_nested_belief_propagates_last_seen_value():
    external = StateVisibilityExternal()
    path = [
        ({"p": "t", "see-a-p": True}, "start"),
        ({"p": "f", "see-a-p": False}, "hide"),
    ]
    state = path[-1][0]
    eq = epistemic_model.generateEpistemicQuery("b [a] b [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 1


def test_belief_false_when_never_seen():
    external = StateVisibilityExternal()
    path = [
        ({"p": "t", "see-a-p": False}, "start"),
        ({"p": "f", "see-a-p": False}, "hide"),
    ]
    state = path[-1][0]
    eq = epistemic_model.generateEpistemicQuery("b [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 0


def test_nested_knowledge_of_seeing():
    external = StubExternal({"a": {"p"}})
    state = {"p": "t"}
    path = [(state, "start")]
    eq = epistemic_model.generateEpistemicQuery("k [a] s [a] (p,'t')")
    result = epistemic_model.checkingEQ(external, eq, path, state, {}, {})
    assert result == 1
