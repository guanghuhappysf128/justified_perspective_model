import epistemic_model

from tests.conftest import StubExternal


def test_generate_epistemic_query_simple():
    eq = epistemic_model.generateEpistemicQuery("k [a,b] (p,'t')")
    assert eq.q_type == epistemic_model.Q_TYPE.MUTUAL
    assert eq.eq_type == epistemic_model.EQ_TYPE.KNOWLEDGE
    assert eq.q_group == ["a", "b"]
    assert eq.q_content == "(p,'t')"


def test_generate_epistemic_query_nested():
    eq = epistemic_model.generateEpistemicQuery("k [a] k [b] (p,'t')")
    assert eq.q_group == ["a"]
    assert isinstance(eq.q_content, epistemic_model.EpistemicQuery)
    assert eq.q_content.q_group == ["b"]
    assert eq.q_content.q_content == "(p,'t')"


def test_generate_epistemic_query_deeply_nested():
    eq = epistemic_model.generateEpistemicQuery("b [a] b [a] b [a] (p,'t')")
    assert isinstance(eq.q_content, epistemic_model.EpistemicQuery)
    assert isinstance(eq.q_content.q_content, epistemic_model.EpistemicQuery)


def test_get_observations_intersection_multi_agent():
    external = StubExternal({"a": {"p"}, "b": {"q"}})
    state = {"p": "t", "q": "f"}
    observation = epistemic_model.getObservations(
        external, state, ["a", "b"], {}, {}
    )
    assert observation == {}


def test_generate_perspective_empty_path_returns_empty_state():
    external = StubExternal({"a": {"p"}})
    perspective = epistemic_model.generatePerspective(
        external, [], ["a"], {}, {}
    )
    assert perspective == {}
