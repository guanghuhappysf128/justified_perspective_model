from __future__ import annotations

import datetime

from pddl_model import Problem
from search_core import NoveltyGuidedSearchEngine, SearchNode
from util import Action


class beam_search(NoveltyGuidedSearchEngine):
    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        self.h_weight = 1
        self.g_weight = 1
        self.beam_size = 32
        self.keep_all_layers = False

    def searching(self, problem: Problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        start_time = datetime.datetime.now()

        root_node, _ = self._build_root_node(problem)
        root_node.priority = 0
        current_beam: list[SearchNode] = [root_node]
        global_best_by_state: dict[object, int] = {}

        while current_beam:
            next_beam_by_state: dict[object, SearchNode] = {}

            for current_node in current_beam:
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

                if self.keep_all_layers:
                    current_key = self._make_state_key(state, expansion_p_dict)
                    best_cost = global_best_by_state.get(current_key)
                    if best_cost is not None and best_cost <= current_node.depth:
                        self.pruned_by_visited += 1
                        continue
                    global_best_by_state[current_key] = current_node.depth

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
                    self._populate_node_evaluation(successor_node, goal_dict, problem)

                    successor_key = self._make_state_key(successor_state, goal_p_dict)
                    incumbent = next_beam_by_state.get(successor_key)
                    if incumbent is not None and (
                        incumbent.priority,
                        incumbent.depth,
                    ) <= (
                        successor_node.priority,
                        successor_node.depth,
                    ):
                        self.pruned_by_visited += 1
                        continue

                    next_beam_by_state[successor_key] = successor_node

            if not next_beam_by_state:
                break

            next_beam = sorted(
                next_beam_by_state.values(),
                key=lambda node: (node.priority, node.depth, node.action_name),
            )
            current_beam = next_beam[: self.beam_size]

        self.logger.info("Problem is not solvable")
        return self._complete_result(problem, "UNSOLVED", None, False)