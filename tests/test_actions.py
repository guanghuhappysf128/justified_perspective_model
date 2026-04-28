import pddl_model

from tests.conftest import StubExternal


def build_problem(domains, i_state, variables, actions, external, agent_index, obj_index):
    g_states = {"ontic_g": {}, "epistemic_g": []}
    return pddl_model.Problem(
        domains,
        i_state,
        g_states,
        agent_index,
        obj_index,
        variables,
        actions,
        external,
    )


def test_get_legal_actions_respects_ontic_preconditions():
    domains = {"flag": {"basic_type": "enumerate", "values": ["t", "f"]}}
    variables = {"flag": [["o"]]}
    actions = {
        "set_true": {
            "parameters": [],
            "precondition": {"ontic_p": [("flag-o", "f")], "epistemic_p": []},
            "effect": [("flag-o", "t")],
        }
    }
    external = StubExternal()
    problem = build_problem(domains, {"flag-o": "f"}, variables, actions, external, ["a"], ["o"])

    actions_found = problem.getLegalActions(problem.initial_state, [(problem.initial_state, "start")])
    assert "set_true" in actions_found

    actions_found = problem.getLegalActions({"flag-o": "t"}, [(problem.initial_state, "start")])
    assert "set_true" not in actions_found


def test_get_legal_actions_respects_epistemic_preconditions():
    domains = {"flag": {"basic_type": "enumerate", "values": ["t", "f"]}}
    variables = {"flag": [["o"]]}
    actions = {
        "set_true": {
            "parameters": [],
            "precondition": {
                "ontic_p": [("flag-o", "f")],
                "epistemic_p": [("k [a] (flag-o,'f')", 1)],
            },
            "effect": [("flag-o", "t")],
        }
    }
    visible_external = StubExternal({"a": {"flag-o"}})
    hidden_external = StubExternal({"a": set()})

    problem = build_problem(domains, {"flag-o": "f"}, variables, actions, visible_external, ["a"], ["o"])
    actions_found = problem.getLegalActions(problem.initial_state, [(problem.initial_state, "start")])
    assert "set_true" in actions_found

    problem_hidden = build_problem(domains, {"flag-o": "f"}, variables, actions, hidden_external, ["a"], ["o"])
    actions_found = problem_hidden.getLegalActions(problem_hidden.initial_state, [(problem_hidden.initial_state, "start")])
    assert "set_true" not in actions_found


def test_generator_successor_enumerate_delta():
    domains = {"dir": {"basic_type": "enumerate", "values": ["n", "e", "s", "w"]}}
    variables = {"dir": [["a"]]}
    actions = {
        "turn": {
            "parameters": [],
            "precondition": {"ontic_p": [], "epistemic_p": []},
            "effect": [("dir-a", "+1")],
        }
    }
    external = StubExternal()
    problem = build_problem(domains, {"dir-a": "n"}, variables, actions, external, ["a"], [])

    new_state = problem.generatorSuccessor(problem.initial_state, problem.actions["turn"], [(problem.initial_state, "start")])
    assert new_state["dir-a"] == "e"


def test_generator_successor_integer_delta():
    domains = {"x": {"basic_type": "integer", "values": [0, 10]}}
    variables = {"x": [["a"]]}
    actions = {
        "inc": {
            "parameters": [],
            "precondition": {"ontic_p": [], "epistemic_p": []},
            "effect": [("x-a", "+2")],
        }
    }
    external = StubExternal()
    problem = build_problem(domains, {"x-a": 1}, variables, actions, external, ["a"], [])

    new_state = problem.generatorSuccessor(problem.initial_state, problem.actions["inc"], [(problem.initial_state, "start")])
    assert new_state["x-a"] == 3


def test_precondition_variable_equality():
    domains = {"x": {"basic_type": "integer", "values": [0, 10]}}
    variables = {"x": [["a", "b"]]}
    actions = {
        "match": {
            "parameters": [],
            "precondition": {"ontic_p": [("x-a", "x-b")], "epistemic_p": []},
            "effect": [("x-a", "1")],
        }
    }
    external = StubExternal()
    problem = build_problem(domains, {"x-a": 1, "x-b": 1}, variables, actions, external, ["a", "b"], [])

    actions_found = problem.getLegalActions(problem.initial_state, [(problem.initial_state, "start")])
    assert "match" in actions_found

    actions_found = problem.getLegalActions({"x-a": 1, "x-b": 2}, [(problem.initial_state, "start")])
    assert "match" not in actions_found
