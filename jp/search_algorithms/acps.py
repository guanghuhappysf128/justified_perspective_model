from __future__ import annotations

import datetime
import heapq

from pddl_model import Problem
from search_algorithm_config import (
    configure_novelty_search_engine,
    read_bool_option,
    read_int_option,
    read_optional_int_option,
)
from search_core import NoveltyGuidedSearchEngine, SearchNode
from util import Action


class acps(NoveltyGuidedSearchEngine):
    def __init__(self, handlers, search_name, search_options=None):
        super().__init__(handlers, search_name)
        options = configure_novelty_search_engine(self, search_options)
        self.initial_width = read_int_option(options, "init", 1, minimum=1)
        self.width_step = read_int_option(options, "step", 1, minimum=1)
        self.width_bound = read_optional_int_option(
            options,
            "width_bound",
            None,
            minimum=self.initial_width,
        )
        self.reset_on_improvement = read_bool_option(options, "reset", False)

    def _increase_width(self, width: int) -> int:
        next_width = width + self.width_step
        if self.width_bound is None:
            return next_width
        return min(next_width, self.width_bound)

    def searching(self, problem: Problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        start_time = datetime.datetime.now()

        root_node, root_goal_dict = self._build_root_node(problem)
        self._populate_node_evaluation(root_node, root_goal_dict, problem)

        open_layers: list[list[tuple[object, int, SearchNode]]] = [[]]
        heapq.heappush(open_layers[0], (root_node.priority, next(self.priority_counter), root_node))

        width = self.initial_width
        width_history: list[int] = []
        best_solution_node: SearchNode | None = None
        best_solution_cost: int | None = None

        while any(open_layers):
            width_history.append(width)
            processed_in_cycle = False
            goal_found_in_cycle = False

            for layer_index in range(len(open_layers)):
                node_index = 0
                while node_index < width and open_layers[layer_index]:
                    _, _, current_node = heapq.heappop(open_layers[layer_index])
                    processed_in_cycle = True
                    actions = self._extract_actions(current_node)
                    self.logger.debug("path: %s", actions)

                    if best_solution_cost is not None and current_node.depth >= best_solution_cost:
                        node_index += 1
                        continue

                    if current_node.remaining_goal == 0:
                        if best_solution_cost is None or current_node.depth < best_solution_cost:
                            best_solution_node = current_node
                            best_solution_cost = current_node.depth
                            goal_found_in_cycle = True
                            self.logger.info("plan is: %s", actions)
                            self.logger.info(
                                "Goal found with progressive width %s",
                                width,
                            )
                        node_index += 1
                        continue

                    limit_status = self._check_resource_limits(start_time)
                    if limit_status is not None:
                        self.result.update({"width_history": width_history})
                        self.result.update({"final_width": width})
                        if best_solution_node is not None:
                            return self._complete_result(problem, "SUCC", best_solution_node, True)
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
                    filtered_action_names = self._ordered_action_names(
                        problem,
                        all_legal_action_names,
                    )

                    if not self._should_expand(state, expansion_p_dict, current_node.depth):
                        self.pruned_by_visited += 1
                        self.logger.debug("path [%s] already visited", actions)
                        node_index += 1
                        continue

                    self.expanded += 1
                    self.branch_factors.append(len(all_legal_action_names))
                    self.filtered_branching_factors.append(len(filtered_action_names))

                    for action_name in filtered_action_names:
                        action: Action = all_legal_actions[action_name]
                        successor_state = problem.generate_successor(state, action, path)
                        if successor_state is None:
                            continue

                        successor_depth = current_node.depth + 1
                        if best_solution_cost is not None and successor_depth >= best_solution_cost:
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
                            depth=successor_depth,
                        )

                        if not self._unknown_check(successor_node, goal_dict):
                            self.pruned_by_unknown += 1
                            continue

                        self.generated += 1
                        priority = self._populate_node_evaluation(successor_node, goal_dict, problem)
                        while successor_depth >= len(open_layers):
                            open_layers.append([])
                        heapq.heappush(
                            open_layers[successor_depth],
                            (priority, next(self.priority_counter), successor_node),
                        )

                    node_index += 1

            if goal_found_in_cycle:
                width = self.initial_width if self.reset_on_improvement else self._increase_width(width)
                continue

            if not processed_in_cycle:
                break

            width = self._increase_width(width)

        self.result.update({"width_history": width_history})
        self.result.update({"final_width": width})
        if best_solution_node is not None:
            return self._complete_result(problem, "SUCC", best_solution_node, True)

        self.logger.info("Problem is not solvable")
        return self._complete_result(problem, "UNSOLVED", None, False)