from __future__ import annotations

import datetime
import random

from pddl_model import Problem
from search_algorithm_config import (
    configure_novelty_search_engine,
    read_bool_option,
    read_int_option,
    read_optional_int_option,
)
from search_algorithms.cabs import cabs
from search_core import NoveltyGuidedSearchEngine, SearchNode
from util import Action


class lnbs(NoveltyGuidedSearchEngine):
    def __init__(self, handlers, search_name, search_options=None):
        super().__init__(handlers, search_name)
        options = configure_novelty_search_engine(self, search_options)
        self.initial_beam_size = read_int_option(options, "initial_beam_size", 4, minimum=1)
        self.max_beam_size = read_optional_int_option(
            options,
            "max_beam_size",
            32,
            minimum=self.initial_beam_size,
        )
        self.keep_all_layers = read_bool_option(options, "keep_all_layers", True)
        self.seed = read_int_option(options, "seed", 2023)
        self.use_cost_weight = read_bool_option(options, "use_cost_weight", False)
        self.max_repair_attempts = read_int_option(
            options,
            "max_repair_attempts",
            8,
            minimum=1,
        )
        self.cabs_initial_beam_size = read_int_option(
            options,
            "cabs_initial_beam_size",
            1,
            minimum=1,
        )
        self.cabs_max_beam_size = read_int_option(
            options,
            "cabs_max_beam_size",
            32,
            minimum=self.cabs_initial_beam_size,
        )
        self.rng = random.Random(self.seed)

    def _merge_solver_stats(self, solver) -> None:
        self.expanded += solver.expanded
        self.goal_checked += solver.goal_checked
        self.generated += solver.generated
        self.pruned_by_unknown += solver.pruned_by_unknown
        self.pruned_by_visited += solver.pruned_by_visited
        self.branch_factors.extend(solver.branch_factors)
        self.filtered_branching_factors.extend(solver.filtered_branching_factors)

    def _warm_start_options(self) -> dict[str, object]:
        return {
            "base_heuristic": self.search_options.get("base_heuristic", "goal_counting"),
            "novelty_heuristic": self.search_options.get("novelty_heuristic", "iw_gc"),
            "h_weight": self.h_weight,
            "g_weight": self.g_weight,
            "initial_beam_size": self.cabs_initial_beam_size,
            "max_beam_size": self.cabs_max_beam_size,
            "keep_all_layers": self.keep_all_layers,
        }

    def _next_beam_size(self, beam_size: int) -> int:
        next_beam_size = beam_size * 2
        if self.max_beam_size is None:
            return next_beam_size
        return min(next_beam_size, self.max_beam_size)

    def _select_prefix_length(
        self,
        plan_length: int,
        attempted_prefix_lengths: set[int],
    ) -> int | None:
        candidates = [
            prefix_length
            for prefix_length in range(plan_length)
            if prefix_length not in attempted_prefix_lengths
        ]
        if not candidates:
            return None

        if self.use_cost_weight:
            weights = [plan_length - prefix_length for prefix_length in candidates]
            return self.rng.choices(candidates, weights=weights, k=1)[0]

        return candidates[-1]

    def _replay_prefix(
        self,
        problem: Problem,
        actions: list[str],
        prefix_length: int,
    ) -> tuple[SearchNode, dict[str, bool]] | None:
        current_node, current_goal_dict = self._build_root_node(problem)
        if prefix_length == 0:
            return current_node, current_goal_dict

        for action_name in actions[:prefix_length]:
            path = current_node.path
            all_legal_actions, _ = problem.get_all_legal_actions(
                current_node.state,
                path,
                current_node.perspective_dict,
            )
            action = all_legal_actions.get(action_name)
            if action is None:
                self.logger.warning(
                    "Unable to replay action %s while repairing incumbent plan",
                    action_name,
                )
                return None

            successor_state = problem.generate_successor(current_node.state, action, path)
            if successor_state is None:
                self.logger.warning(
                    "Action %s became invalid while replaying incumbent plan",
                    action_name,
                )
                return None

            successor_path = path + [(successor_state, action_name)]
            remaining_goal_num, current_goal_dict, goal_p_dict = problem.is_goal(successor_path)
            self.goal_checked += 1
            current_node = SearchNode(
                state=successor_state,
                remaining_goal=remaining_goal_num,
                perspective_dict=goal_p_dict,
                parent=current_node,
                action_name=action_name,
                depth=current_node.depth + 1,
            )

        return current_node, current_goal_dict

    def _repair_with_beam(
        self,
        problem: Problem,
        repair_root: SearchNode,
        repair_goal_dict: dict[str, bool],
        overall_start_time: datetime.datetime,
        max_total_depth: int,
        beam_size: int,
    ) -> tuple[str, SearchNode | None]:
        saved_best_cost_by_state = self.best_cost_by_state
        saved_novelty_dict = self.novelty_dict
        self.best_cost_by_state = {}
        self.novelty_dict = {}

        try:
            self._populate_node_evaluation(repair_root, repair_goal_dict, problem)
            current_beam: list[SearchNode] = [repair_root]
            global_best_by_state: dict[object, int] = {}

            while current_beam:
                next_beam_by_state: dict[object, SearchNode] = {}

                for current_node in current_beam:
                    if current_node.remaining_goal == 0:
                        return "SUCC", current_node

                    if current_node.depth >= max_total_depth:
                        continue

                    limit_status = self._check_resource_limits(overall_start_time)
                    if limit_status is not None:
                        return limit_status, None

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

                    if self.keep_all_layers:
                        current_key = self._make_state_key(state, expansion_p_dict)
                        best_cost = global_best_by_state.get(current_key)
                        if best_cost is not None and best_cost <= current_node.depth:
                            self.pruned_by_visited += 1
                            continue
                        global_best_by_state[current_key] = current_node.depth

                    if not self._should_expand(state, expansion_p_dict, current_node.depth):
                        self.pruned_by_visited += 1
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
                        if successor_depth > max_total_depth:
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
                current_beam = next_beam[:beam_size]

            return "UNSOLVED", None
        finally:
            self.best_cost_by_state = saved_best_cost_by_state
            self.novelty_dict = saved_novelty_dict

    def searching(self, problem: Problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        self.generated = 0
        self.rng = random.Random(self.seed)
        start_time = datetime.datetime.now()

        warm_start_solver = cabs(
            self.logger.handlers,
            f"{self.search_name}_warm_start",
            self._warm_start_options(),
        )
        warm_start_result = warm_start_solver.searching(problem, time_out, memory_out)
        self._merge_solver_stats(warm_start_solver)

        best_actions = list(warm_start_result.get("plan", []))
        repair_attempts = 0
        repair_beam_sizes: list[int] = []
        attempted_prefix_lengths: set[int] = set()
        current_beam_size = self.initial_beam_size

        self.result.update({"warm_start_status": warm_start_result.get("running")})

        if warm_start_result.get("running") != "SUCC" or not best_actions:
            self.result.update({"repair_attempts": repair_attempts})
            self.result.update({"repair_beam_sizes": repair_beam_sizes})
            return self._complete_result_from_actions(
                problem,
                warm_start_result.get("running", "UNSOLVED"),
                best_actions,
                warm_start_result.get("solvable", False),
            )

        while repair_attempts < self.max_repair_attempts:
            limit_status = self._check_resource_limits(start_time)
            if limit_status is not None:
                break

            prefix_length = self._select_prefix_length(
                len(best_actions),
                attempted_prefix_lengths,
            )
            if prefix_length is None:
                break

            attempted_prefix_lengths.add(prefix_length)
            repair_attempts += 1
            repair_beam_sizes.append(current_beam_size)

            replayed_prefix = self._replay_prefix(problem, best_actions, prefix_length)
            if replayed_prefix is None:
                break

            repair_root, repair_goal_dict = replayed_prefix
            repair_status, repaired_goal_node = self._repair_with_beam(
                problem,
                repair_root,
                repair_goal_dict,
                start_time,
                len(best_actions) - 1,
                current_beam_size,
            )

            if repair_status == "SUCC" and repaired_goal_node is not None:
                candidate_actions = self._extract_actions(repaired_goal_node)
                if len(candidate_actions) < len(best_actions):
                    best_actions = candidate_actions
                    attempted_prefix_lengths.clear()
                    current_beam_size = self.initial_beam_size
                    continue

            if repair_status in {"TIMEOUT", "MEMORYOUT"}:
                break

            current_beam_size = self._next_beam_size(current_beam_size)

        self.result.update({"repair_attempts": repair_attempts})
        self.result.update({"repair_beam_sizes": repair_beam_sizes})
        self.result.update({"initial_solution_length": warm_start_result.get("path_length")})
        return self._complete_result_from_actions(problem, "SUCC", best_actions, True)