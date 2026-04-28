from pathlib import Path

import pddl_parser


def test_problem_parser_coin_example():
    repo_root = Path(__file__).resolve().parents[1]
    problem_path = repo_root / "examples" / "coin" / "problem01.pddl"

    (
        domains,
        i_state,
        g_states,
        agent_index,
        obj_index,
        variables,
        d_name,
        p_name,
    ) = pddl_parser.problemParser(str(problem_path))

    assert d_name == "coin"
    assert p_name == "coin_01"
    assert agent_index == ["a", "b"]
    assert obj_index == ["c"]
    assert variables["peeking"] == [["a", "b"]]
    assert i_state["peeking-a"] == "f"
    assert "face-c" in i_state
    assert g_states["ontic_g"] == {}
    assert len(g_states["epistemic_g"]) == 1
    eq_str, value = g_states["epistemic_g"][0]
    assert "b [a]" in eq_str
    assert "face-c" in eq_str
    assert value == 1
    assert "peeking" in domains
    assert "face" in domains


def test_domain_parser_coin_example():
    repo_root = Path(__file__).resolve().parents[1]
    domain_path = repo_root / "examples" / "coin" / "domain.pddl"

    actions, d_name = pddl_parser.domainParser(str(domain_path))

    assert d_name == "coin"
    assert "peek" in actions
    assert "return" in actions
    assert "turn_coin" in actions

    peek = actions["peek"]
    assert ("?i", "agent") in peek["parameters"]
    assert any(var == "peeking-?i" and value == "f" for var, value in peek["precondition"]["ontic_p"])
    assert ("peeking-?i", "t") in peek["effect"]

    turn_coin = actions["turn_coin"]
    assert ("face-?i", "-1") in turn_coin["effect"]
