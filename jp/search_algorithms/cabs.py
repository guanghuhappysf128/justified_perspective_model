from __future__ import annotations

import datetime
import math

from search_algorithm_config import read_bool_option, read_int_option, normalise_search_options
from search_algorithms.beam_search import beam_search
from search_core import BestFirstSearchEngine


class cabs(BestFirstSearchEngine):
    def __init__(self, handlers, search_name, search_options=None):
        super().__init__(handlers, search_name)
        self.search_options = normalise_search_options(search_options)
        self.initial_beam_size = read_int_option(
            self.search_options,
            "initial_beam_size",
            1,
            minimum=1,
        )
        self.max_beam_size = read_int_option(
            self.search_options,
            "max_beam_size",
            64,
            minimum=self.initial_beam_size,
        )
        self.keep_all_layers = read_bool_option(
            self.search_options,
            "keep_all_layers",
            False,
        )

    def searching(self, problem, time_out: int, memory_out: int):
        self._reset_search_state()
        self._initialise_problem_context(problem, time_out, memory_out)
        self.generated = 0

        start_time = datetime.datetime.now()
        beam_size = self.initial_beam_size
        best_actions: list[str] | None = None
        beam_sizes: list[int] = []

        while beam_size <= self.max_beam_size:
            elapsed_seconds = (datetime.datetime.now() - start_time).total_seconds()
            remaining_seconds = int(self.timeout.total_seconds() - elapsed_seconds)
            if remaining_seconds <= 0:
                if best_actions is not None:
                    self.result.update({"beam_runs": len(beam_sizes)})
                    self.result.update({"beam_sizes": beam_sizes})
                    return self._complete_result_from_actions(problem, "SUCC", best_actions, True)
                self.logger.info(
                    "Problem cannot be solved in the given time (%s).",
                    self.timeout.seconds,
                )
                self.result.update({"beam_runs": len(beam_sizes)})
                self.result.update({"beam_sizes": beam_sizes})
                return self._complete_result_from_actions(problem, "TIMEOUT", [], False)

            runs_remaining = int(math.log2(self.max_beam_size / beam_size)) + 1
            run_time_limit = max(1, remaining_seconds // runs_remaining)

            solver = beam_search(
                self.logger.handlers,
                f"{self.search_name}_beam_{beam_size}",
                self.search_options,
            )
            solver.beam_size = beam_size
            solver.keep_all_layers = self.keep_all_layers
            solver_result = solver.searching(problem, run_time_limit, memory_out)

            beam_sizes.append(beam_size)
            self.expanded += solver.expanded
            self.goal_checked += solver.goal_checked
            self.generated += solver.generated
            self.pruned_by_unknown += solver.pruned_by_unknown
            self.pruned_by_visited += solver.pruned_by_visited
            self.branch_factors.extend(solver.branch_factors)

            if solver_result.get("running") == "SUCC":
                actions = solver_result.get("plan", [])
                if best_actions is None or len(actions) < len(best_actions):
                    best_actions = actions
            elif solver_result.get("running") == "TIMEOUT":
                beam_size *= 2
                continue
            elif solver_result.get("running") == "MEMORYOUT":
                if best_actions is not None:
                    self.result.update({"beam_runs": len(beam_sizes)})
                    self.result.update({"beam_sizes": beam_sizes})
                    return self._complete_result_from_actions(problem, "SUCC", best_actions, True)
                self.logger.info(
                    "Beam search wrapper stopped with status %s.",
                    solver_result.get("running"),
                )
                self.result.update({"beam_runs": len(beam_sizes)})
                self.result.update({"beam_sizes": beam_sizes})
                return self._complete_result_from_actions(
                    problem,
                    solver_result.get("running"),
                    [],
                    False,
                )

            beam_size *= 2

        self.result.update({"beam_runs": len(beam_sizes)})
        self.result.update({"beam_sizes": beam_sizes})
        if best_actions is not None:
            return self._complete_result_from_actions(problem, "SUCC", best_actions, True)

        self.logger.info("Problem is not solvable")
        return self._complete_result_from_actions(problem, "UNSOLVED", [], False)