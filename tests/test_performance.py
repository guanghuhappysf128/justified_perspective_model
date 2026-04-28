from datetime import timedelta

import pytest

import search


def filter_all_actions(problem, actions):
    return list(actions.keys())


class TreeProblem:
    def __init__(self, goal_depth):
        self.initial_state = 0
        self.goal_depth = goal_depth
        self.expansions = 0
        self.epistemic_calls = 0
        self.epistemic_call_time = timedelta(0)

    def isGoal(self, state, path):
        return state == self.goal_depth

    def getLegalActions(self, state, path):
        self.expansions += 1
        if state >= self.goal_depth:
            return {}
        return {"left": 1, "right": 1}

    def generatorSuccessor(self, state, action, path):
        return state + action


@pytest.mark.slow
def test_bfs_expansion_budget_small_tree():
    problem = TreeProblem(goal_depth=6)
    plan = search.BFS(problem, filter_all_actions)
    assert plan is not False
    assert problem.expansions <= 70
