from datetime import timedelta

import search


def filter_all_actions(problem, actions):
    return list(actions.keys())


def filter_only_step(problem, actions):
    return [name for name in actions.keys() if name == "step"]


class CounterProblem:
    def __init__(self, goal):
        self.initial_state = 0
        self.goal = goal
        self.epistemic_calls = 0
        self.epistemic_call_time = timedelta(0)

    def isGoal(self, state, path):
        return state == self.goal

    def getLegalActions(self, state, path):
        return {"jump": 2, "step": 1}

    def generatorSuccessor(self, state, action, path):
        return state + action


def test_bfs_finds_shortest_plan():
    problem = CounterProblem(goal=2)
    plan = search.BFS(problem, filter_all_actions)
    assert plan == ["jump"]


def test_bfs_respects_action_filter():
    problem = CounterProblem(goal=2)
    plan = search.BFS(problem, filter_only_step)
    assert plan == ["step", "step"]


class NoActionProblem:
    def __init__(self):
        self.initial_state = 0
        self.epistemic_calls = 0
        self.epistemic_call_time = timedelta(0)

    def isGoal(self, state, path):
        return False

    def getLegalActions(self, state, path):
        return {}

    def generatorSuccessor(self, state, action, path):
        return state


def test_bfs_returns_false_when_unsolvable():
    problem = NoActionProblem()
    plan = search.BFS(problem, filter_all_actions)
    assert plan is False
