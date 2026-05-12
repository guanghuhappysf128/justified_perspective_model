from __future__ import annotations

import datetime

from pddl_model import Problem
from search_core import NoveltyGuidedSearchEngine, SearchNode
from util import Action


class dfbb(NoveltyGuidedSearchEngine):
    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        self.h_weight = 1
        self.g_weight = 1
        self.best_solution_node: SearchNode | None = None
        self.best_solution_cost: int | None = None

    def searching(self, problem: Problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        self.best_solution_node = None
        self.best_solution_cost = None
        start_time = datetime.datetime.now()

        root_node, _ = self._build_root_node(problem)
        root_node.heuristic = 0
        root_node.priority = 0
        stack: list[SearchNode] = [root_node]

        while stack:
            current_node = stack.pop()
            actions = self._extract_actions(current_node)
            self.logger.debug("path: %s", actions)

            if current_node.remaining_goal == 0:
                if self.best_solution_cost is None or current_node.depth < self.best_solution_cost:
                    self.best_solution_node = current_node
                    self.best_solution_cost = current_node.depth
                    self.logger.info("plan is: %s", actions)
                    self.logger.info("Goal found with depth bound %s", current_node.depth)
                continue

            if self.best_solution_cost is not None and current_node.depth >= self.best_solution_cost:
                continue

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

            if not self._should_expand(state, expansion_p_dict, current_node.depth):
                self.pruned_by_visited += 1
                self.logger.debug("path [%s] already visited", actions)
                continue

            self.expanded += 1
            self.branch_factors.append(len(all_legal_action_names))

            successors: list[SearchNode] = []
            for action_name in all_legal_action_names:
                action: Action = all_legal_actions[action_name]
                successor_state = problem.generate_successor(state, action, path)
                if successor_state is None:
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

                if self.best_solution_cost is not None and successor_node.depth >= self.best_solution_cost:
                    continue

                self.generated += 1
                self._populate_node_evaluation(successor_node, goal_dict, problem)
                successors.append(successor_node)

            successors.sort(
                key=lambda node: (node.priority, node.depth, node.action_name),
                reverse=True,
            )
            stack.extend(successors)

        if self.best_solution_node is not None:
            return self._complete_result(problem, "SUCC", self.best_solution_node, True)

        self.logger.info("Problem is not solvable")
        return self._complete_result(problem, "UNSOLVED", None, False)