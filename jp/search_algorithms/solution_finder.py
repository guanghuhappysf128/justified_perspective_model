from search import Search
from util import Condition,ConditionType,EP_formula,EPFType
import re

# the search name should be the same as python file name
class solution_finder(Search):

    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        # bfs updating
        self.h_weight = 1
        self.g_weight = 1

    # the below are functions should not change to test different search algorithm
    # the changable are the self.h_weight and self.g_weight
    def _h(self,node,problem,p_path):
        h = self.heuristic(node,problem,p_path)
        return h
    
    def _f(self,h,g):
        f = g*self.g_weight+h*self.h_weight
        return f

    def _remaining_goal(self,h):
        self.goal_checked += 1
        return h
    # def _isGoal(self,current_p, current_node):
    #     return (current_p - self._gn(current_node)*1) == 0

    def _gn(self,node):
        path = node.path
        return len(path)-1
    
    def action_filter(self, problem, all_legal_action_name):
        relative_action_name = []
        agent_list = []
        for key,item in problem.goals.items():
            goal_condition : Condition = item
            if goal_condition.condition_type == ConditionType.EP:
                ep_formula: EP_formula = goal_condition.condition_formula
                query_str = ep_formula.ep_query
                pattern = "\[[\w,]*\]"
                matches = re.findall(pattern, query_str)
                # print(matches)
                for agent_str in matches:
                    agent_list += agent_str[1:-1].split(',')
        # print(agent_list)
        for action_name in all_legal_action_name:
            action_agent_list =  action_name.split(' ')[1:]
            relative = True
            for agent_index in action_agent_list:
                if agent_index not in agent_list:
                    relative = False
                    break
            if relative:
                relative_action_name.append(action_name)


        return relative_action_name

    # below are the function need to change to test different configration
    # def _duplication_check(self,ep_state_str):
    #     if not ep_state_str in self.visited:
    #         self.visited.add(ep_state_str)
    #         return True
    #     else:
    #         return False
    #     # return True

    # def _unknown_check(self,succ_node):
    #     if succ_node.remaining_goal <= self.max_goal_num:
    #         return True
    #     else:
    #         return False
