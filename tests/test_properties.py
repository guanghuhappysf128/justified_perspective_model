import epistemic_model

import pytest
from hypothesis import given, strategies as st

from tests.conftest import StubExternal


@pytest.mark.property
@given(
    st.dictionaries(
        keys=st.text(min_size=1, max_size=5, alphabet=st.characters(min_codepoint=97, max_codepoint=122)),
        values=st.integers(min_value=-3, max_value=3),
        min_size=0,
        max_size=5,
    ),
    st.dictionaries(
        keys=st.text(min_size=1, max_size=5, alphabet=st.characters(min_codepoint=97, max_codepoint=122)),
        values=st.integers(min_value=-3, max_value=3),
        min_size=0,
        max_size=5,
    ),
)
def test_intersect_observation_is_consistent(state_a, state_b):
    inter = epistemic_model.intersectObservation(state_a, state_b)
    assert set(inter.keys()) <= (set(state_a.keys()) & set(state_b.keys()))
    for key, value in inter.items():
        assert state_a[key] == value
        assert state_b[key] == value


@pytest.mark.property
@given(st.data())
def test_get_observations_returns_subset_of_state(data):
    state = data.draw(
        st.dictionaries(
            keys=st.text(min_size=1, max_size=5, alphabet=st.characters(min_codepoint=97, max_codepoint=122)),
            values=st.integers(min_value=-3, max_value=3),
            min_size=0,
            max_size=5,
        )
    )
    if state:
        visible = set(data.draw(st.lists(st.sampled_from(list(state.keys())), unique=True)))
    else:
        visible = set()
    external = StubExternal({"a": visible})

    observation = epistemic_model.getObservations(external, state, ["a"], {}, {})
    assert set(observation.keys()).issubset(set(state.keys()))
    for key, value in observation.items():
        assert state[key] == value
