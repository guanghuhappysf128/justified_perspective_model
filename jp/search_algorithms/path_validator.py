from search import Search,GLOBAL_PERSPECTIVE_INDEX,special_value,state_to_string
import time


# the search name should be the same as python file name
class path_validator(Search):

    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        # bfs updating
        self.h_weight = 0

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

    # override the default function (which does not filter any actions)
    # to following the given plan
    def action_filter(self,action_names,path,given_plan:list=None):
        if given_plan is None:
            return action_names
        else:
            # find the next action from given plan based on the current path length
            current_step = len(path) - 1
            if current_step < len(given_plan):
                next_action = given_plan[current_step]
                if next_action in action_names:
                    return [next_action]
                else:
                    return []
            else:
                return []

    # # adding action_list if an change is not visible to everyone
    # # since this not pruning, it will not affect the completeness of the search
    # # adding agent identity indifference to the action_list
    # def logging_actions(self,actions,p_dict,key_variables):
    #     # print(actions)
    #     # print(actions.keys())
    #     # prune = False
    #     # narrow = False # prune the path if all value of a variable is unknown.
    #     global_state = p_dict[GLOBAL_PERSPECTIVE_INDEX]
    #     # for key,local_p in p_dict.items():
    #     #     if key == GLOBAL_PERSPECTIVE_INDEX:
    #     #         continue
    #     #     else:
    #     #         for key,item in local_p.items():
    #     #             if not item == global_state[key]:
    #     #                 prune = True
    #     #                 break
    #     #         if prune:
    #     #             break
    #     prune = True
        
    #     # pruning if all values of the key variables are unknown (unseen)
    #     # also pruning when everyone is seeing all target variables (all perspective values are the same as global perspective)
        
    #     for var_name,value in global_state.items():
    #         all_unknown = True
    #         all_same_as_global = True
    #         for key,local_p in p_dict.items():
    #             if key == GLOBAL_PERSPECTIVE_INDEX:
    #                 continue
    #             else:
    #                 if local_p[var_name] == value:
    #                     all_unknown = False
    #                 elif local_p[var_name] == special_value.UNSEEN or local_p[var_name] == special_value.HAVENT_SEEN:
    #                     all_same_as_global = False
    #                     pass
    #                 else:
    #                     all_same_as_global = False
    #         if all_unknown or all_same_as_global:
    #             pass
    #         else:
    #             # this is a different path
    #             # self.action_list.append(actions)
    #             # print(actions)
    #             prune = False
    #             break
    #     # print(key_variables)
        
        
    #     # this is the pruning design to make everyone has at least one valid value, it seems not working.
    #     # if not prune:
    #     #     for key in key_variables:
    #     #         has_valid_value = False
    #     #         for k,local_p in p_dict.items():
    #     #             if k == GLOBAL_PERSPECTIVE_INDEX:
    #     #                 continue
    #     #             if local_p[key] == special_value.UNSEEN or local_p[key] == special_value.HAVENT_SEEN:
    #     #                 pass
    #     #             else:
    #     #                 has_valid_value = True
    #     #                 break
    #     #         if not has_valid_value:
    #     #             prune = True
    #     #             break
        
    #     # if not prune:
    #     #     # print(actions)
    #     #     # print(actions.keys())
    #     #     # print("logging actions")
    #     #     # print(actions)
    #     #     # print(p_dict)
    #     #     # print(key_variables)
    #     #     # self.action_list.append(actions)
    #     #     p_list = [state_to_string(state) for state in p_dict.values()]
    #     #     p_list.sort()
    #     #     if p_list not in self.indifference_set:
    #     #         self.indifference_set.append(p_list)
    #     #         # print("logging actions")
    #     #         print(actions)
    #     #         # print(p_dict)
    #     #         # print(key_variables)
    #     #         self.action_list.append(actions)
        
    #     # pruning based on levels, not 100% sure this works with more than 2 agents
    #     # this is the pruning design to capture the actions that lead to the similar epistemic states due to the indifference of agents
    #     if not prune:
    #         # generate indifference perspective set and observation set
    #         level_based_perspective_dict = dict()
    #         level_based_observation_dict = dict()
    #         for key,local_p in p_dict.items():
    #             # remove the global perspectives when checking whether the belief are the same
    #             if key == GLOBAL_PERSPECTIVE_INDEX:
    #                 continue
                
    #             # print(f"[{key}]")
    #             # first check whether the last is an observation
    #             p_key_indicator = key.split(" ")[-3]
    #             if p_key_indicator == "o":
    #                 # this is an observation, so we do not need to check the belief                        
    #                 new_key = len(key)
    #                 if new_key not in level_based_observation_dict:
    #                     level_based_observation_dict[new_key] = []
    #                 key_variable_dict = dict()
    #                 for var_name in key_variables:
    #                     value = local_p[var_name]
    #                     key_variable_dict[var_name] = value
    #                 key_variable_str = state_to_string(key_variable_dict)
    #                 level_based_observation_dict[new_key].append(key_variable_str)
            
    #             elif p_key_indicator == "f":
    #                 # this is a perspective, so we need to check the belief
    #                 new_key = len(key)
    #                 if new_key not in level_based_perspective_dict:
    #                     level_based_perspective_dict[new_key] = []
    #                 key_variable_dict = dict()
    #                 for var_name in key_variables:
    #                     value = local_p[var_name]
    #                     key_variable_dict[var_name] = value
    #                 key_variable_str = state_to_string(key_variable_dict)
    #                 level_based_perspective_dict[new_key].append(key_variable_str)
            
            
    #         for key in level_based_observation_dict.keys():
    #             level_based_observation_dict[key].sort()
    #             level_based_observation_dict[key] = str(level_based_observation_dict[key])
    #         # level_based_observation_str = state_to_string(level_based_observation_dict)
            
    #         for key in level_based_perspective_dict.keys():
    #             level_based_perspective_dict[key].sort()
    #         level_based_perspective_str = state_to_string(level_based_perspective_dict)
            
    #         action_str  = str(actions)
    #         # print(f"action_str: {action_str}")
    #         # print(f"level_based_perspective_str: {level_based_perspective_str}")
    #         if level_based_perspective_str not in self.indifference_perspective_dict.keys():
                
    #             self.indifference_perspective_dict[level_based_perspective_str] = action_str
    #             self.indifference_observation_dict[level_based_perspective_str] = level_based_observation_dict
    #             self.action_dict[action_str] = actions
    #             # print("logging actions")
    #             # print(actions)
    #             # print(level_based_str)
    #             # print(p_dict)
    #             # print(key_variables)
    #             self.action_list.append(actions)
    #             # time.sleep(5)
    #         else:
    #             # check whether need to remove the previous one if the current observation is less
    #             old_observation_dict = self.indifference_observation_dict[level_based_perspective_str]
    #             # print(old_observation_dict)
    #             for new_key, observation_str in old_observation_dict.items():
    #                 old_special_value = observation_str.count('.')
    #                 new_special_value = level_based_observation_dict[new_key].count('.')
    #                 old_action_str = self.indifference_perspective_dict[level_based_perspective_str]
    #                 if new_special_value > old_special_value:
    #                     # update the old one
    #                     self.indifference_observation_dict[level_based_perspective_str] = level_based_observation_dict
    #                     self.indifference_perspective_dict[level_based_perspective_str] = action_str
                        
    #                     # remove the old actions
    #                     self.action_list.remove(self.action_dict[old_action_str])
                        
    #                     # # remove the old perspective
    #                     # del self.indifference_perspective_dict[old_action_str]
                        
                        
    #                     # add the new actions
    #                     self.action_dict[action_str] = actions
    #                     self.action_list.append(actions)
                        
                
                    
    
    # # adding action_list if an change is not visible to everyone
    # # since this not pruning, it will not affect the completeness of the search
    # def logging_actions1(self,actions,p_dict,key_variables):
    #     # print(actions)
    #     # print(actions.keys())
    #     # prune = False
    #     # narrow = False # prune the path if all value of a variable is unknown.
    #     global_state = p_dict[GLOBAL_PERSPECTIVE_INDEX]
    #     # for key,local_p in p_dict.items():
    #     #     if key == GLOBAL_PERSPECTIVE_INDEX:
    #     #         continue
    #     #     else:
    #     #         for key,item in local_p.items():
    #     #             if not item == global_state[key]:
    #     #                 prune = True
    #     #                 break
    #     #         if prune:
    #     #             break
    #     prune = True
        
    #     for var_name,value in global_state.items():
    #         all_unknown = True
    #         all_same_as_global = True
    #         for key,local_p in p_dict.items():
    #             if key == GLOBAL_PERSPECTIVE_INDEX:
    #                 continue
    #             else:
    #                 if local_p[var_name] == value:
    #                     all_unknown = False
    #                 elif local_p[var_name] == special_value.UNSEEN or local_p[var_name] == special_value.HAVENT_SEEN:
    #                     all_same_as_global = False
    #                     pass
    #                 else:
    #                     all_same_as_global = False
    #         if all_unknown or all_same_as_global:
    #             pass
    #         else:
    #             # this is a different path
    #             # self.action_list.append(actions)
    #             # print(actions)
    #             prune = False
    #             break
    #     # print(key_variables)
        
    #     if not prune:
    #         for key in key_variables:
    #             has_valid_value = False
    #             for k,local_p in p_dict.items():
    #                 if k == GLOBAL_PERSPECTIVE_INDEX:
    #                     continue
    #                 if local_p[key] == special_value.UNSEEN or local_p[key] == special_value.HAVENT_SEEN:
    #                     pass
    #                 else:
    #                     has_valid_value = True
    #                     break
    #             if not has_valid_value:
    #                 prune = True
    #                 break
        
    #     if not prune:
    #         # print(actions)
    #         # print(actions.keys())
    #         # print("logging actions")
    #         # print(actions)
    #         # print(p_dict)
    #         # print(key_variables)
    #         self.action_list.append(actions)

                
    # # logging all actions that lead to a new epistemic state (including unknown and all known)
    # def logging_actions2(self,actions,p_dict):
    #     self.action_list.append(actions)
                
                
                
                
    # def output(self,output_file):
    #     with open(output_file, "w") as f:
    #         for action in self.action_list:
    #             f.write(', '.join(action))
    #             f.write('\n')
    #     print(f"Actions logged to {output_file}")
        

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
