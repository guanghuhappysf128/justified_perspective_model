from __future__ import annotations

import datetime
import heapq

from pddl_model import Problem
from search_algorithm_config import configure_novelty_search_engine
from search_core import NoveltyGuidedSearchEngine, SearchNode
from util import Action


class cbfs(NoveltyGuidedSearchEngine):
    def __init__(self, handlers, search_name, search_options=None):
        super().__init__(handlers, search_name)
        configure_novelty_search_engine(self, search_options)

    def searching(self, problem: Problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        start_time = datetime.datetime.now()

        root_node, root_goal_dict = self._build_root_node(problem)
        self._populate_node_evaluation(root_node, root_goal_dict, problem)

        open_layers: list[list[tuple[object, int, SearchNode]]] = [[]]
        heapq.heappush(open_layers[0], (root_node.priority, next(self.priority_counter), root_node))
        layer_index = 0

        while any(open_layers):
            if layer_index >= len(open_layers):
                layer_index = 0
            if not open_layers[layer_index]:
                layer_index += 1
                continue

            _, _, current_node = heapq.heappop(open_layers[layer_index])
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
            filtered_action_names = self._ordered_action_names(problem, all_legal_action_names)

            if not self._should_expand(state, expansion_p_dict, current_node.depth):
                self.pruned_by_visited += 1
                self.logger.debug("path [%s] already visited", actions)
                layer_index += 1
                continue

            self.expanded += 1
            self.branch_factors.append(len(all_legal_action_names))
            self.filtered_branching_factors.append(len(filtered_action_names))

            for action_name in filtered_action_names:
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

                self.generated += 1
                priority = self._populate_node_evaluation(successor_node, goal_dict, problem)
                while successor_node.depth >= len(open_layers):
                    open_layers.append([])
                heapq.heappush(
                    open_layers[successor_node.depth],
                    (priority, next(self.priority_counter), successor_node),
                )

            layer_index += 1

        self.logger.info("Problem is not solvable")
        return self._complete_result(problem, "UNSOLVED", None, False)