from search import Search


# the search name should be the same as python file name
class path_generator(Search):

    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        # bfs updating
        self.h_weight = 0
        self.stop_at_goal = False

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
    
    def logging_actions(self,actions):
        self.action_list.append(actions)
        
    def output(self,output_file):
        with open(output_file, "w") as f:
            for action in self.action_list:
                f.write(', '.join(action))
                f.write('\n')
        print(f"Actions logged to {output_file}")
        

    # def _duplication_check(self,state,sgp_p_dict):
    #     # self.logger.debug(sgp_p_dict.keys())
    #     for k, item in sgp_p_dict.items():
    #         sgp_p_dict[k] = item[-1]
        
    #     sgp_p_dict.update({GLOBAL_PERSPECTIVE_INDEX:state})
    #     print(sgp_p_dict)
    #     hsgp_p_dict = make_hashable(sgp_p_dict)
    #     if not hsgp_p_dict in self.visited:
    #         self.visited.add(hsgp_p_dict)
    #         return True
    #     # if not ep_state_str in self.visited:
    #     #     self.visited.add(ep_state_str)
    #     #     return True
    #     # else:
    #     #     return False
    #     # return True


    def _unknown_check(self,succ_node,goal_dict):
        return True
        if succ_node.remaining_goal <= self.max_goal_num:
            return True
        else:
            return False
