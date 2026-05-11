from __future__ import annotations

import datetime
import heapq
import itertools
import os
from dataclasses import dataclass, field
from typing import Any

import psutil

from pddl_model import Problem
from search import Search
from util import GLOBAL_PERSPECTIVE_INDEX, Action, make_hashable


@dataclass(slots=True)
class SearchNode:
    state: dict[str, Any]
    remaining_goal: int
    perspective_dict: dict[str, Any]
    parent: SearchNode | None
    action_name: str
    depth: int
    heuristic: float = 0.0
    priority: float = 0.0
    _path_cache: list[tuple[dict[str, Any], str]] | None = field(default=None, repr=False)

    @property
    def path(self) -> list[tuple[dict[str, Any], str]]:
        if self._path_cache is None:
            output: list[tuple[dict[str, Any], str]] = []
            current: SearchNode | None = self
            while current is not None:
                output.append((current.state, current.action_name))
                current = current.parent
            output.reverse()
            self._path_cache = output
        return self._path_cache


class BestFirstSearchEngine(Search):
    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        self.best_cost_by_state: dict[Any, int] = {}
        self.priority_counter = itertools.count()

    def _h(self, node, goal_dict, problem):
        return self.heuristic(node, goal_dict, problem)

    def _gn(self, node):
        return node.depth

    def searching(self, problem: Problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        start_time = datetime.datetime.now()

        root_node, root_goal_dict = self._build_root_node(problem)
        root_h = self._h(root_node, root_goal_dict, problem)
        root_g = self._gn(root_node)
        root_node.heuristic = root_h
        root_node.priority = self._f(root_h, root_g)

        open_list: list[tuple[float, int, SearchNode]] = []
        heapq.heappush(open_list, (root_node.priority, next(self.priority_counter), root_node))

        while open_list:
            _, _, current_node = heapq.heappop(open_list)
            actions = self._extract_actions(current_node)
            self.logger.debug("path: %s", actions)

            if current_node.remaining_goal == 0:
                self.logger.info("plan is: %s", actions)
                self.logger.info("Goal found")
                return self._complete_result(problem, "SUCC", current_node, True)

            limit_status = self._check_resource_limits(start_time)
            if limit_status is not None:
                if limit_status == "TIMEOUT":
                    self.logger.info(
                        "Problem cannot be solved in the given time (%s).",
                        self.timeout.seconds,
                    )
                else:
                    self.logger.info(
                        "Problem cannot be solved in the given memory (%sMB).",
                        self.memoryout,
                    )
                return self._complete_result(problem, limit_status, current_node, False)

            path = current_node.path
            state = current_node.state
            all_legal_actions, expansion_p_dict = problem.get_all_legal_actions(
                state,
                path,
                current_node.perspective_dict,
            )
            all_legal_action_names = sorted(all_legal_actions.keys())

            self.logger.debug(expansion_p_dict.keys())
            self.logger.debug(expansion_p_dict)
            self.logger.debug(all_legal_actions.keys())
            self.logger.debug("action generated: %s", all_legal_action_names)

            if not self._should_expand(state, expansion_p_dict, self._gn(current_node)):
                self.pruned_by_visited += 1
                self.logger.debug("path [%s] already visited", actions)
                continue

            self.expanded += 1
            self.branch_factors.append(len(all_legal_action_names))
            temp_successor = 0
            temp_actions: list[str] = []

            for action_name in all_legal_action_names:
                action: Action = all_legal_actions[action_name]
                self.logger.debug("action [%s] passed the precondition check", action_name)
                successor_state = problem.generate_successor(state, action, path)
                if successor_state is None:
                    self.logger.debug(
                        "successor node been pruned due to exceeds the function range"
                    )
                    continue

                successor_path = path + [(successor_state, action_name)]
                remaining_goal_num, goal_dict, goal_p_dict = problem.is_goal(successor_path)
                self.goal_checked += 1
                successor_node = SearchNode(
                    state=successor_state,
                    remaining_goal=remaining_goal_num,
                    perspective_dict=goal_p_dict,
                    parent=current_node,
                    action_name=action_name,
                    depth=current_node.depth + 1,
                )

                if not self._unknown_check(successor_node, goal_dict):
                    self.pruned_by_unknown += 1
                    continue

                self.generated += 1
                heuristic = self._h(successor_node, goal_dict, problem)
                path_cost = self._gn(successor_node)
                priority = self._f(heuristic, path_cost)
                successor_node.heuristic = heuristic
                successor_node.priority = priority
                heapq.heappush(
                    open_list,
                    (priority, next(self.priority_counter), successor_node),
                )
                temp_successor += 1
                temp_actions.append(action_name)

            self.logger.debug(
                "successor: [%s] with actions [%s]",
                temp_successor,
                temp_actions,
            )

        self.logger.info("Problem is not solvable")
        return self._complete_result(problem, "UNSOLVED", None, False)

    def _reset_search_state(self):
        self.expanded = 0
        self.goal_checked = 0
        self.generated = 1
        self.pruned = 0
        self.pruned_by_unknown = 0
        self.pruned_by_visited = 0
        self.visited = set()
        self.short_visited = []
        self.result = {}
        self.branch_factors = []
        self.filtered_branching_factors = []
        self.p_path = {}
        self.max_goal_num = 0
        self.timeout = None
        self.memoryout = None
        self.unknown_goal_name = []
        self.novelty_dict = {}
        self.sorted_goal_list = []
        self.best_cost_by_state = {}
        self.priority_counter = itertools.count()

    def _initialise_problem_context(self, problem: Problem, time_out: int, memory_out: int):
        self.timeout = datetime.timedelta(seconds=time_out)
        self.memoryout = memory_out * 1024
        self.logger.info("starting searching using [%s]", self.search_name)
        self.max_goal_num = len(list(problem.goals.keys()))
        self.sorted_goal_list = list(problem.goals.keys())
        self.unknown_goal_name = []

        for key, item in problem.goals.items():
            goal_condition = item
            if goal_condition.condition_type.name != "EP":
                continue
            ep_formula = goal_condition.condition_formula
            if ep_formula.epf_type.name != "EP":
                continue
            if goal_condition.target_value.name == "UNKNOWN":
                self.unknown_goal_name.append(key)
                continue

            negation_flag = True
            for temp_str in ep_formula.ep_query.split(" "):
                if temp_str == "!":
                    negation_flag = not negation_flag
                elif temp_str == "$" and negation_flag:
                    self.unknown_goal_name.append(key)

        self.logger.debug("unknown goal name: %s", self.unknown_goal_name)

    def _build_root_node(self, problem: Problem) -> tuple[SearchNode, dict[str, bool]]:
        initial_state = problem.initial_state
        initial_path = [(initial_state, "")]
        remaining_goal_num, goal_dict, perspective_dict = problem.is_goal(initial_path)
        self.goal_checked += 1
        return (
            SearchNode(
                state=initial_state,
                remaining_goal=remaining_goal_num,
                perspective_dict=perspective_dict,
                parent=None,
                action_name="",
                depth=0,
            ),
            goal_dict,
        )

    def _extract_actions(self, node: SearchNode | None) -> list[str]:
        if node is None:
            return []
        return [action for _, action in node.path[1:]]

    def _check_resource_limits(self, start_time: datetime.datetime) -> str | None:
        current_time = datetime.datetime.now()
        if current_time - start_time > self.timeout:
            return "TIMEOUT"

        process = psutil.Process(os.getpid())
        current_memory_usage = process.memory_info().rss
        usage = current_memory_usage / (1024 * 1024)
        if usage > self.memoryout:
            return "MEMORYOUT"
        return None

    def _should_expand(self, state, perspective_dict, path_cost: int) -> bool:
        state_key = self._make_state_key(state, perspective_dict)
        best_cost = self.best_cost_by_state.get(state_key)
        if best_cost is not None and best_cost <= path_cost:
            return False
        self.best_cost_by_state[state_key] = path_cost
        return True

    def _make_state_key(self, state, perspective_dict):
        canonical_perspective_dict = {}
        for key, item in perspective_dict.items():
            if isinstance(item, list) and item:
                canonical_perspective_dict[key] = item[-1]
            else:
                canonical_perspective_dict[key] = item
        canonical_perspective_dict[GLOBAL_PERSPECTIVE_INDEX] = state
        return make_hashable(canonical_perspective_dict)

    def _complete_result(
        self,
        problem: Problem,
        running: str,
        node: SearchNode | None,
        solvable: bool,
    ):
        actions = self._extract_actions(node)
        return self._complete_result_from_actions(problem, running, actions, solvable)

    def _complete_result_from_actions(
        self,
        problem: Problem,
        running: str,
        actions: list[str],
        solvable: bool,
    ):
        if running == "SUCC":
            plan = actions
            path_length = len(actions)
        elif running == "UNSOLVED":
            plan = []
            path_length = 0
        else:
            plan = []
            path_length = len(actions)

        self.result.update({"solvable": solvable})
        self.result.update({"running": running})
        self.result.update({"plan": plan})
        self.result.update({"path_length": path_length})
        self.result.update({"timeout": self.timeout.seconds})
        self.result.update({"memoryout": self.memoryout})
        self._finalise_result(problem)
        return self.result