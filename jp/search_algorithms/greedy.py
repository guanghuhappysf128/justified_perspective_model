from search import Search


# the search name should be the same as python file name
class greedy(Search):

    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        # bfs updating
        self.h_weight = 1
        self.g_weight = 0

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
    

    # below are the function need to change to test different configration
    # def _duplication_check(self,ep_state_str):
    #     if not ep_state_str in self.visited:
    #         self.visited.add(ep_state_str)
    #         return True
    #     else:
    #         return False
        # return True

    # def _unknown_check(self,succ_node):
    #     if succ_node.remaining_goal <= self.max_goal_num:
    #         return True
    #     else:
    #         return False
