import logging
import datetime
import csv
# import resource
import psutil
import os
from pddl_model import Problem

from util import setup_logger, PriorityQueue, GLOBAL_PERSPECTIVE_INDEX,make_hashable,special_value
from util import Entity,EntityType,Condition,ConditionType,EP_formula,Ternary,EPFType,Action
# import util


# LOGGER_NAME = "forward_search:bfsdc"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG

SPLIT_KEY_WORD = "@"

class Search:
    def __init__(self,handlers,search_name):
        self.search_name = search_name      
        self.logger = setup_logger(search_name,handlers,logger_level=LOGGER_LEVEL) 
        self.expanded = 0
        self.goal_checked = 0
        self.generated = 1
        self.pruned = 0
        self.pruned_by_unknown = 0
        self.pruned_by_visited = 0
        self.visited = set()
        self.short_visited = []
        self.result = dict()
        self.branch_factors = []
        self.filtered_branching_factors = []
        self.p_path = {}
        self.heuristic = self.goal_counting
        self.h_weight = 1
        self.g_weight = 1
        self.max_goal_num = 0
        self.timeout = None
        self.memoryout = None
        self.unknown_goal_name = list()
        self.novelty_dict = dict()
        self.sorted_goal_list = list()
        self.action_list = list()
        self.stop_at_goal = True
        self.indifference_set = list()

    class SearchNode:
        def __init__(self,state,remaining_goal_num,perspective_dict,path):
            self.state = state
            self.perspective_dict = perspective_dict
            self.remaining_goal = remaining_goal_num
            self.path = path

    def _h(self,node,problem,p_path):
        h,es = self.heuristic(node,problem,p_path)
        return h,es
    
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
    
    def logging_actions(self,actions,p_dict,key_variables):
        # this is a placeholder for logging all possible actions
        pass
    
    def output(self,output_file):
        # this is a placeholder for outputting the actions
        pass
    
    
    def _duplication_check(self,state,sgp_p_dict):
        
        # self.logger.debug(sgp_p_dict.keys())
        for k, item in sgp_p_dict.items():
            sgp_p_dict[k] = item[-1]
        
        sgp_p_dict.update({GLOBAL_PERSPECTIVE_INDEX:state})
        
        hsgp_p_dict = make_hashable(sgp_p_dict)
        if not hsgp_p_dict in self.visited:
            self.visited.add(hsgp_p_dict)
            return True
        # if not ep_state_str in self.visited:
        #     self.visited.add(ep_state_str)
        #     return True
        # else:
        #     return False
        # return True

    def _unknown_check(self,succ_node,goal_dict):
        
        for goal_name,goal_value in goal_dict.items():
            if goal_name in self.unknown_goal_name:
                if not goal_value:
                    return False
        return True
            

    def action_filter(self,problem,all_legal_action_name):
        return all_legal_action_name

    #BFS with duplicate check on the state + epistemic formula
    # for novelty checking purpose, we need to move the goal check process at where the node is generated
    def searching(self,problem:Problem,time_out:int,memory_out:int,output_file:str=None,key_variables:list=None):
        self.timeout = datetime.timedelta(seconds=time_out)
        self.memoryout = memory_out*1024 
        self.logger.info("starting searching using [%s]",self.search_name)
        start_time = datetime.datetime.now()

        self.max_goal_num = len(list(problem.goals.keys()))
        self.sorted_goal_list = list(problem.goals.keys())
        # intitalise unknown goal name
        for key,item in problem.goals.items():
            goal_condition: Condition = item
            if goal_condition.condition_type == ConditionType.EP:
                ep_formula: EP_formula = goal_condition.condition_formula
                if ep_formula.epf_type == EPFType.EP:
                    if goal_condition.target_value == Ternary.UNKNOWN:
                        self.unknown_goal_name.append(key)
                    # if there is a ! infront of unknown, then the unknown should not be counted
                    else:
                        negation_flag = True
                        for temp_str in ep_formula.ep_query.split(' '):
                            if temp_str == '!':
                                negation_flag = not negation_flag
                            elif temp_str == '$' and negation_flag:
                                self.unknown_goal_name.append(key)
        self.logger.debug(f'unknown goal name: {self.unknown_goal_name}')
                
        
        # check whether the initial state is the goal state
        init_state = problem.initial_state
        init_path = [(init_state,'')]
        remaining_goal_num,init_goal_dict,init_p_dict = problem.is_goal(init_path)
        self.goal_checked +=1
       
        # init_epistemic_item_set = dict()
        
        init_node = Search.SearchNode(init_state,remaining_goal_num,init_p_dict,init_path)
        # self.group_eg_dict = self.group_epistemic_goals(problem)
        # self.landmarks_dict = problem.external.generate_constrain_dict(problem,self.group_eg_dict)

        open_list = PriorityQueue()
        h = self._h(init_node,init_goal_dict,problem)
        g = self._gn(init_node)
        fn = self._f(h,g)
        open_list.push(item=init_node, priority=fn)
        
        
        while not open_list.isEmpty():

            _ , _, current_node = open_list.pop_full()
            state = current_node.state
            sg_p_dict = current_node.perspective_dict
            path = current_node.path
            actions = [ a  for s,a in path]
            actions = actions[1:]

            # if len(path) > 3:
            #     exit()
            self.logger.debug("path: %s",actions)

            goal_checking = (0 == current_node.remaining_goal)
            if goal_checking and self.stop_at_goal:
                # self.logger.info(path)
                actions = [ a  for s,a in path]
                actions = actions[1:]
                self.logger.info(f'plan is: {actions}')
                self.logger.info(f'Goal found')
                self.result.update({'solvable': True})
                self.result.update({'running': "SUCC"})
                self.result.update({'plan':actions})
                self.result.update({'path_length':len(actions)})
                self.result.update({'timeout':self.timeout.seconds})
                self.result.update({'memoryout':self.memoryout})
                self._finalise_result(problem)
                return self.result

            current_time = datetime.datetime.now()
            delta_time = current_time - start_time
            process = psutil.Process(os.getpid())

            # Get the memory usage (in bytes)
            memory_info = process.memory_info()
            current_memory_usage = memory_info.rss  # resident set size in bytes

            # Convert bytes to MB for easier interpretation
            usage = current_memory_usage / (1024 * 1024)

            if delta_time > self.timeout:
                actions = [ a  for s,a in path]
                actions = actions[1:]
                self.logger.info(f'Problem cannot be solved in the given time ({self.timeout.seconds}).')
                self.result.update({'plan':[]})
                self.result.update({'path_length':len(actions)})
                self.result.update({'solvable': False})
                self.result.update({'running': "TIMEOUT"})
                self.result.update({'timeout':self.timeout.seconds})
                self.result.update({'memoryout':self.memoryout})
                self._finalise_result(problem)
                return self.result
            elif usage > self.memoryout:
                actions = [ a  for s,a in path]
                actions = actions[1:]
                self.logger.info(f'Problem cannot be solved in the given memory ({self.memoryout}MB).')
                self.result.update({'plan':[]})
                self.result.update({'path_length':len(actions)})
                self.result.update({'solvable': False})
                self.result.update({'running': "MEMORYOUT"})
                self.result.update({'timeout':self.timeout.seconds})
                self.result.update({'memoryout':self.memoryout})
                self._finalise_result(problem)
                return self.result

            all_legal_actions,sgp_p_dict = problem.get_all_legal_actions(state,path,sg_p_dict)
            
            all_legal_action_name = list(all_legal_actions.keys())
            all_legal_action_name.sort()
            # filtered_action_name = self.action_filter(problem,all_legal_action_name)

            
            self.logger.debug(sgp_p_dict.keys())
            self.logger.debug(sgp_p_dict)
            self.logger.debug(all_legal_actions.keys())
            self.logger.debug("action generated: %s",all_legal_action_name)
            
            if self._duplication_check(state,sgp_p_dict):
                self.logging_actions(actions,sgp_p_dict,key_variables)
                # self.logger.debug("path [%s] get in visited",actions)
                # self.logger.debug("ep_state_str is [%s]",ep_state_str)
                self.expanded +=1
                self.branch_factors.append(len(all_legal_action_name))
                temp_successor = 0
                temp_actions = []
                for action_name in all_legal_action_name:
                    action :Action = all_legal_actions[action_name]
                # for action_name,action in all_legal_actions.items():
                    self.logger.debug("action [%s] passed the precondition check", action_name)
                    # passed the precondition
                    succ_state = problem.generate_successor(state, action,path)
                    if not succ_state == None:
                        
                        new_path = path + [(succ_state,action_name)]
                        remaining_goal_num,goal_dict,g_p_dict = problem.is_goal(new_path)
                        self.goal_checked+=1
                        # print(action_name)
                        succ_node = self.SearchNode(succ_state,remaining_goal_num,g_p_dict,new_path)

                        if self._unknown_check(succ_node,goal_dict):
                            self.generated += 1
                            h = self._h(succ_node,goal_dict,problem)
                            g = self._gn(succ_node)
                            fn = self._f(h,g)
                            

                            self.logger.debug("heuristic is: %d" % (h))
                            g = self._gn(succ_node)
                            self.logger.debug("gn is: %d" % (g))
                            self.logger.debug("remaining is: %d" % (succ_node.remaining_goal))
                            self.logger.debug("fn is: %d" % (fn))
                            
                            open_list.push(item=succ_node, priority=fn)
                            temp_successor +=1
                            temp_actions.append(action_name)
                        else:
                            self.pruned_by_unknown +=1
                            
                    else:
                        self.logger.debug("successor node been pruned due to exceeds the function range",action_name)
                self.logger.debug('successor: [%s] with actions [%s]',temp_successor,temp_actions)
            else:
                self.pruned_by_visited += 1
                # print(self.pruned_by_visited)
                self.logger.debug("path [%s] already visited",actions)
            # self.logger.debug(open_list.count)
            
        self.logger.info(f'Problem is not solvable')
        self.result.update({'plan':[]})
        self.result.update({'path_length':0})
        self.result.update({'solvable': False})
        self.result.update({'timeout':self.timeout.seconds})
        self.result.update({'memoryout':self.memoryout})
        self._finalise_result(problem)
        self.logger.debug(self.result)
        self.output(output_file)
        return self.result

    def validating(self,plan,problem:Problem,time_out:int,memory_out:int,save_belief:str=None,key_variables=None):
        self.timeout = datetime.timedelta(seconds=time_out)
        self.memoryout = memory_out*1024 
        self.logger.info("starting searching using [%s]",self.search_name)
        start_time = datetime.datetime.now()

        self.max_goal_num = len(list(problem.goals.keys()))
        # intitalise unknown goal name
        for key,item in problem.goals.items():
            goal_condition: Condition = item
            if goal_condition.condition_type == ConditionType.EP:
                ep_formula: EP_formula = goal_condition.condition_formula
                if ep_formula.epf_type == EPFType.EP:
                    if goal_condition.target_value == Ternary.UNKNOWN:
                        self.unknown_goal_name.append(key)
                    # if there is a ! infront of unknown, then the unknown should not be counted
                    else:
                        negation_flag = True
                        for temp_str in ep_formula.ep_query.split(' '):
                            if temp_str == '!':
                                negation_flag = not negation_flag
                            elif temp_str == '$' and negation_flag:
                                self.unknown_goal_name.append(key)
        self.logger.debug(f'unknown goal name: {self.unknown_goal_name}')
                
        
        # check whether the initial state is the goal state
        init_state = problem.initial_state
        init_path = [(init_state,'')]
        remaining_goal_num,init_goal_dict,init_p_dict = problem.is_goal(init_path)
        self.goal_checked +=1
       
        # init_epistemic_item_set = dict()
        
        init_node = Search.SearchNode(init_state,remaining_goal_num,init_p_dict,init_path)
        # self.group_eg_dict = self.group_epistemic_goals(problem)
        # self.landmarks_dict = problem.external.generate_constrain_dict(problem,self.group_eg_dict)

        open_list = PriorityQueue()
        h = self._h(init_node,init_goal_dict,problem)
        g = self._gn(init_node)
        fn = self._f(h,g)
        open_list.push(item=init_node, priority=fn)
        
        
        while not open_list.isEmpty():

            _ , _, current_node = open_list.pop_full()
            state = current_node.state
            sg_p_dict = current_node.perspective_dict
            path = current_node.path
            actions = [ a  for s,a in path]
            actions = actions[1:]


            # if save_belief:
            #     belief_keys = [key for key in sg_p_dict.keys() if "o [" not in key]
            #     belief_data = []

            #     # Collect all possible keys that appear in any belief world
            #     all_world_keys = set()
            #     for key in belief_keys:
            #         for idx, world in enumerate(sg_p_dict[key]):
            #             for k in world.keys():
            #                 if not key_variables or any(s in k for s in key_variables):
            #                     all_world_keys.add(k)


            #     # Sort for consistency
            #     all_world_keys = sorted(all_world_keys)

            #     # Build rows
            #     for belief_key in belief_keys:
            #         for i, world in enumerate(sg_p_dict[belief_key]):
            #             row = {"Belief Key": belief_key, "World Index": i}
            #             for k in all_world_keys:
            #                 if not key_variables or any(s in k for s in key_variables):
            #                     v = world.get(k, "")
            #                     if hasattr(v, "name"):
            #                         v = v.name
            #                     elif not isinstance(v, str):
            #                         v = str(v)
            #                     row[k] = v
            #             belief_data.append(row)

            #     # Write to CSV
            #     with open(save_belief, mode='w', newline='') as file:
            #         fieldnames = ["Belief Key", "World Index"] + all_world_keys
            #         writer = csv.DictWriter(file, fieldnames=fieldnames)
            #         writer.writeheader()
            #         for row in belief_data:
            #             writer.writerow(row)

            #     print(f"Saved belief data to {save_belief}")
                

            # if len(path) > 8:
            #     raise ValueError("exceed length")
            self.logger.debug("path: %s",actions)
            self.logger.debug(current_node.remaining_goal)
            goal_checking = (0 == current_node.remaining_goal)
            if goal_checking:
                #print("goal found")
                # self.logger.info(path)
                actions = [ a  for s,a in path]
                actions = actions[1:]
                self.logger.info(f'plan is: {actions}')
                self.logger.info(f'Goal found')
                self.result.update({'solvable': True})
                self.result.update({'plan':actions})
                self.result.update({'path_length':len(actions)})
                self.result.update({'timeout':self.timeout.seconds})
                self.result.update({'memoryout':self.memoryout})
                self._finalise_result(problem)
                if_valid = True
                # if if_valid:
                #     print("goal found")
                # else:
                #     print("The input plan not valid")
                # return self.result

            current_time = datetime.datetime.now()
            delta_time = current_time - start_time
            process = psutil.Process(os.getpid())

            # Get the memory usage (in bytes)
            memory_info = process.memory_info()
            current_memory_usage = memory_info.rss  # resident set size in bytes

            # Convert bytes to MB for easier interpretation
            usage = current_memory_usage / (1024 * 1024)

            if delta_time > self.timeout:
                actions = [ a  for s,a in path]
                actions = actions[1:]
                self.logger.info(f'Problem cannot be solved in the given time ({self.timeout.seconds}).')
                self.result.update({'plan':[]})
                self.result.update({'path_length':len(actions)})
                self.result.update({'solvable': False})
                self.result.update({'running': "TIMEOUT"})
                self.result.update({'timeout':self.timeout.seconds})
                self.result.update({'memoryout':self.memoryout})
                self._finalise_result(problem)
                if if_valid:
                    print("goal found")
                else:
                    print("The input plan not valid")
                return self.result
            elif usage > self.memoryout:
                actions = [ a  for s,a in path]
                actions = actions[1:]
                self.logger.info(f'Problem cannot be solved in the given memory ({self.memoryout}MB).')
                self.result.update({'plan':[]})
                self.result.update({'path_length':len(actions)})
                self.result.update({'solvable': False})
                self.result.update({'running': "MEMORYOUT"})
                self.result.update({'timeout':self.timeout.seconds})
                self.result.update({'memoryout':self.memoryout})
                self._finalise_result(problem)
                # if if_valid:
                #     print("goal found")
                # else:
                #     print("The input plan not valid")
                return self.result

            all_legal_actions,sgp_p_dict = problem.get_all_legal_actions(state,path,sg_p_dict)#########keep

            all_legal_action_name = list(all_legal_actions.keys())
            all_legal_action_name.sort()
            filtered_action_name = self.action_filter(problem,all_legal_action_name)############
            if len(path) - 1 >= len(plan):
                if_valid = False
                break
            
            # print(plan[len(path)-1])
            # print(filtered_action_name)
            pass_action_filter = True
            if plan[len(path)-1] in filtered_action_name:
                filtered_action_name = [plan[len(path)-1]]
            else:
                if_valid = False
                pass_action_filter = False

                #print("The input plan not valid")

            # print(filtered_action_name)
            # print("-------------")
            # print(filtered_action_name,plan[len(path)-1],len(path))
            
            self.logger.debug(sgp_p_dict.keys())
            self.logger.debug(sgp_p_dict)
            self.logger.debug("action generated: %s",all_legal_actions.keys())
            
            if pass_action_filter and self._duplication_check(state,sgp_p_dict):
                # self.logger.debug("path [%s] get in visited",actions)
                # self.logger.debug("ep_state_str is [%s]",ep_state_str)
                self.expanded +=1
                self.branch_factors.append(len(list(all_legal_actions.keys())))
                temp_successor = 0
                temp_actions = []
                for action_name in filtered_action_name:
                    action :Action = all_legal_actions[action_name]
                # for action_name,action in all_legal_actions.items():
                    self.logger.debug("action [%s] passed the precondition check", action_name)
                    # passed the precondition
                    succ_state = problem.generate_successor(state, action,path)
                    # print(succ_state)
                    if not succ_state == None:
                        
                        new_path = path + [(succ_state,action_name)]
                        remaining_goal_num,goal_dict,g_p_dict = problem.is_goal(new_path)
                        self.goal_checked+=1
                        succ_node = self.SearchNode(succ_state,remaining_goal_num,g_p_dict,new_path)

                        if self._unknown_check(succ_node,goal_dict):
                            self.generated += 1
                            h = self._h(succ_node,goal_dict,problem)
                            g = self._gn(succ_node)
                            fn = self._f(h,g)
                            

                            self.logger.debug("heuristic is: %d" % (h))
                            g = self._gn(succ_node)
                            self.logger.debug("gn is: %d" % (g))
                            self.logger.debug("remaining is: %d" % (succ_node.remaining_goal))
                            
                            open_list.push(item=succ_node, priority=fn)
                            temp_successor +=1
                            temp_actions.append(action_name)
                        else:
                            self.pruned_by_unknown +=1
                            
                    else:
                        self.logger.debug("successor node been pruned due to exceeds the function range: %s",action_name)
                self.logger.debug('successor: [%s] with actions [%s]',temp_successor,temp_actions)
            else:
                self.pruned_by_visited += 1
                # print(self.pruned_by_visited)
                self.logger.debug("path [%s] already visited",actions)
            # self.logger.debug(open_list.count)

        if save_belief:
            belief_keys = [key for key in sg_p_dict.keys() if "o [" not in key]
            belief_data = []

            # Collect all possible keys that appear in any belief world
            all_world_keys = set()
            for key in belief_keys:
                for idx, world in enumerate(sg_p_dict[key]):
                    for k in world.keys():
                        if not key_variables or any(s in k for s in key_variables):
                            all_world_keys.add(k)


            # Sort for consistency
            all_world_keys = sorted(all_world_keys)

            # Build rows
            for belief_key in belief_keys:
                for i, world in enumerate(sg_p_dict[belief_key]):
                    row = {"Belief Key": belief_key, "World Index": i}
                    for k in all_world_keys:
                        if not key_variables or any(s in k for s in key_variables):
                            v = world.get(k, "")
                            if hasattr(v, "name"):
                                v = v.name
                            elif not isinstance(v, str):
                                v = str(v)
                            row[k] = v
                    belief_data.append(row)

            # Write to CSV
            with open(save_belief, mode='w', newline='') as file:
                fieldnames = ["Belief Key", "World Index"] + all_world_keys
                writer = csv.DictWriter(file, fieldnames=fieldnames)
                writer.writeheader()
                for row in belief_data:
                    writer.writerow(row)

            print(f"Saved belief data to {save_belief}")
        
        self.logger.info(f'Problem is not solvable') #
        self.result.update({'plan':[]})
        self.result.update({'path_length':0})
        self.result.update({'solvable': False})
        self.result.update({'timeout':self.timeout.seconds})
        self.result.update({'memoryout':self.memoryout})
        self._finalise_result(problem)
        self.logger.debug(self.result)
        # if if_valid:
        #     print("goal found")
        # else:
        #     print("The input plan not valid")

        return self.result
    
    

    def _finalise_result(self,problem:Problem):
        # logger output
        ontic_goal_list = list()
        epistemic_goal_list = list()
        for key,item in problem.goals.items():
            condition : Condition = item
            if condition.condition_type == ConditionType.ONTIC:
                ontic_goal_list.append(key)
            elif condition.condition_type == ConditionType.EP:
                epistemic_goal_list.append(key)
            else:
                raise ValueError("Unknown condition type")
        self.pruned = self.pruned_by_unknown + self.pruned_by_visited
        
        
        self.logger.info(f'[number of node pruned_by_unknown]: {self.pruned_by_unknown}')
        self.logger.info(f'[number of node pruned_by_visited]: {self.pruned_by_visited}')
        self.logger.info(f'[number of node pruned]: {self.pruned}')
        self.logger.info(f'[number of node goal_checked]: {self.goal_checked}')
        self.logger.info(f'[number of node expansion]: {self.expanded}')
        self.logger.info(f'[number of node generated]: {self.generated}')
        self.logger.info(f'[number of epistemic formulas evaluation: {problem.epistemic_calls}]')
        self.logger.info(f'[time in epistemic formulas evaluation: {problem.epistemic_call_time}]')
        self.logger.info(f'[avg time in epistemic formulas evaluation: {0 if problem.epistemic_calls == 0 else problem.epistemic_call_time.total_seconds()*1000/problem.epistemic_calls}]')
        self.logger.info(f'[total_goal_size: {len(ontic_goal_list)+len(epistemic_goal_list)}]')
        self.logger.info(f'[ontic_goal_size: {len(ontic_goal_list)}]')
        self.logger.info(f'[epistemic_goal_size: {len(epistemic_goal_list)}]')
        self.logger.info(f'[ontic_goals: {ontic_goal_list}]')
        self.logger.info(f'[epistemic_goals: {epistemic_goal_list}]')
        self.logger.info(f'[goals: {ontic_goal_list+epistemic_goal_list}]')
        self.logger.info(f'[epistemic_call_time_max: {problem.epistemic_call_time_max.total_seconds()*1000}]')
        self.logger.info(f'[functions: {len(list(problem.functions.keys()))}]')
        # file output
        self.result.update({'pruned':self.pruned})
        self.result.update({'pruned_by_unknown':self.pruned_by_unknown})
        self.result.update({'pruned_by_visited':self.pruned_by_visited})
        self.result.update({'goal_checked':self.goal_checked})
        self.result.update({'expanded':self.expanded})
        self.result.update({'generated':self.generated})
        self.result.update({'epistemic_calls':problem.epistemic_calls})
        self.result.update({'epistemic_call_time':problem.epistemic_call_time.total_seconds()})
        self.result.update({'epistemic_call_time_avg':0 if problem.epistemic_calls == 0 else problem.epistemic_call_time.total_seconds()*1000/problem.epistemic_calls})
        self.result.update({'epistemic_call_time_max':problem.epistemic_call_time_max.total_seconds()*1000})
        self.result.update({'epistemic_call_length':problem.epistemic_call_length})
        self.result.update({'epistemic_call_length_avg':0 if problem.epistemic_calls == 0 else problem.epistemic_call_length/problem.epistemic_calls})
        self.result.update({'epistemic_call_length_max':problem.epistemic_call_length_max})
        self.result.update({'total_goal_size':len(ontic_goal_list)+len(epistemic_goal_list)})
        self.result.update({'ontic_goal_size':len(ontic_goal_list)})
        self.result.update({'epistemic_goal_size':len(epistemic_goal_list)})
        self.result.update({'ontic_goals':ontic_goal_list})
        self.result.update({'epistemic_goals':epistemic_goal_list})
        self.result.update({'goals':ontic_goal_list+epistemic_goal_list})
        self.result.update({'functions':len(list(problem.functions.keys()))})
        self.result.update({'domain_path':problem.domain_path})
        self.result.update({'problem_path':problem.problem_path})

        max_depth = 0

        goal_agents = set()
        
        for epistemic_condition_name in epistemic_goal_list:
            epistemic_condition: Condition = problem.goals[epistemic_condition_name]
            ep_formula: EP_formula = epistemic_condition.condition_formula
            temp_depth = ep_formula.ep_query.count('[')
            if temp_depth > max_depth:
                max_depth = temp_depth
            query_prefix_list = ep_formula.ep_query.split(' ')
            for temp_str in query_prefix_list:
                if '[' in temp_str:
                    temp_agent_str = temp_str[1:-1]
                    temp_agent_list = temp_agent_str.split(',')
                    for agent_id in temp_agent_list:
                        goal_agents.add(agent_id)
        # for key,item in problem.goals.epistemic_dict.items():
        #     temp_depth = key.count('[')
        #     if temp_depth > max_depth:
        #         max_depth = temp_depth
        #     if item.query_prefix[0] == "$":
        #         num_of_unknown_goals +=1
        #     query_prefix_list = item.query_prefix.split(' ')
        #     for temp_str in query_prefix_list:
        #         if '[' in temp_str:
        #             temp_agent_str = temp_str[1:-1]
        #             temp_agent_list = temp_agent_str.split(',')
        #             for agent_id in temp_agent_list:
        #                 goal_agents.add(agent_id)
        num_of_unknown_goals = len(self.unknown_goal_name)
        self.result.update({'max_goal_depth':max_depth})
        self.result.update({'num_of_unknown_goals':num_of_unknown_goals})
        self.result.update({'num_of_goal_agents':len(goal_agents)})
        self.result.update({'goal_agents':list(goal_agents)})

        agents= set()
        for k,item in problem.entities.items():
            entity : Entity = item
            if entity.entity_type == EntityType.AGENT:
                agents.add(k)
        self.result.update({'agents':list(agents)})
        self.result.update({'num_of_agents':len(agents)})
        
        ## added for common perspective iterations
        common_iteration_list = problem.epistemic_model.common_iteration_list
        num_common_call = 0
        all_common_iteration = 0
        max_common_iteration = 0
        average_common_iteration = 0
        if not common_iteration_list == list():
            num_common_call = len(common_iteration_list)
            all_common_iteration = sum(common_iteration_list)
            max_common_iteration = max(common_iteration_list)
            average_common_iteration = all_common_iteration/(num_common_call*1.0)
        self.logger.info(f'[number of common perspective generated]: {num_common_call}')
        self.logger.info(f'[number of all iterations used when generating common perspectives]: {all_common_iteration}')
        self.logger.info(f'[number of max iterations used when generating common perspectives]: {max_common_iteration}')
        self.logger.info(f'[number of average iterations used when generating common perspectives]: {average_common_iteration}')
        self.result.update( {'common_calls':num_common_call})
        self.result.update( {'common_total':all_common_iteration})
        self.result.update( {'common_max':max_common_iteration})
        self.result.update( {'common_average':average_common_iteration})

        avg_branching_factors = 0
        max_branching_factors = 0
        avg_filtered_branching_factors = 0
        max_filtered_branching_factors = 0
        if not self.branch_factors == list():
            avg_branching_factors = sum(self.branch_factors)/len(self.branch_factors)
            max_branching_factors = max(self.branch_factors)
        if not self.filtered_branching_factors == list():
            avg_filtered_branching_factors = sum(self.filtered_branching_factors)/len(self.filtered_branching_factors)
            max_filtered_branching_factors = max(self.filtered_branching_factors)
        self.logger.info(f'[number of averaged unfiltered branching factors]: {avg_branching_factors}')
        self.logger.info(f'[number of max unfiltered branching factors]: {max_branching_factors}')
        # self.logger.info(f'[number of average filtered branching factors]: {avg_filtered_branching_factors}')
        # self.logger.info(f'[number of max filtered branching factors]: {max_filtered_branching_factors}')
        self.result.update({'avg_branching_factors': avg_branching_factors})
        self.result.update({'max_branching_factors': max_branching_factors})
        # self.result.update({'avg_filtered_branching_factors': avg_filtered_branching_factors})
        # self.result.update({'max_filtered_branching_factors': max_filtered_branching_factors})        



    def group_epistemic_goals(self,problem):
        group_eg_dict = {}
        for eq_str,value in problem.goals.epistemic_dict.items():
            var_str = eq_str.split(" ")[-1].split(",")[0][2:-1]
            if var_str in group_eg_dict:
                group_eg_dict[var_str].append((eq_str,value))
            else:
                group_eg_dict.update({var_str:[(eq_str,value)]})
        return group_eg_dict





    # it is not admissible
    def goal_counting(self,node,goal_dict,problem):
        # print(problem.problem_path)


            
        remain_goal_number = list(goal_dict.values()).count(False)
        # state = node.state
        
        # # customised a maze distance for blocked grid problem
        # if "BlockCells" in problem.problem_path:
        #     # this is customised for the blocked grid problem
        #     # this can be done by using algorithm to find the maze distance
        #     # maze_distance = {
        #     #     'r1':2,'r2':1,'r3':0,'r4':3,'r7':4,'r8':5,'r9':6,
        #     #     'r10':5,'r11':6,'r12':7
        #     # }
        #     all_maze_distance = {
        #         ('r1','r1'):0, ('r1','r2'):1, ('r1','r3'):2, 
        #         ('r1','r4'):1, ('r1','r5'):99, ('r1','r6'):99,
        #         ('r1','r7'):2, ('r1','r8'):3, ('r1','r9'):4,
        #         ('r1','r10'):3, ('r1','r11'):4, ('r1','r12'):5,
        #         ('r2','r1'):1, ('r2','r2'):0, ('r2','r3'):1,
        #         ('r2','r4'):2, ('r2','r5'):99, ('r2','r6'):99,
        #         ('r2','r7'):3, ('r2','r8'):4, ('r2','r9'):5,
        #         ('r2','r10'):4, ('r2','r11'):5, ('r2','r12'):6,
        #         ('r3','r1'):2, ('r3','r2'):1, ('r3','r3'):0,
        #         ('r3','r4'):3, ('r3','r5'):99, ('r3','r6'):99,
        #         ('r3','r7'):4, ('r3','r8'):5, ('r3','r9'):6,
        #         ('r3','r10'):5, ('r3','r11'):6, ('r3','r12'):7,
        #         ('r4','r1'):1, ('r4','r2'):2, ('r4','r3'):3,
        #         ('r4','r4'):0, ('r4','r5'):99, ('r4','r6'):99,
        #         ('r4','r7'):1, ('r4','r8'):2, ('r4','r9'):3,
        #         ('r4','r10'):2, ('r4','r11'):3, ('r4','r12'):4,
        #         ('r5','r1'):99, ('r5','r2'):99, ('r5','r3'):99,
        #         ('r5','r4'):99, ('r5','r5'):99, ('r5','r6'):99,
        #         ('r5','r7'):99, ('r5','r8'):99, ('r5','r9'):99,
        #         ('r5','r10'):99, ('r5','r11'):99, ('r5','r12'):99,
        #         ('r6','r1'):99, ('r6','r2'):99, ('r6','r3'):99,
        #         ('r6','r4'):99, ('r6','r5'):99, ('r6','r6'):99,
        #         ('r6','r7'):99, ('r6','r8'):99, ('r6','r9'):99,
        #         ('r6','r10'):99, ('r6','r11'):99, ('r6','r12'):99,
        #         ('r7','r1'):2, ('r7','r2'):3, ('r7','r3'):4,
        #         ('r7','r4'):1, ('r7','r5'):99, ('r7','r6'):99,
        #         ('r7','r7'):0, ('r7','r8'):1, ('r7','r9'):2,
        #         ('r7','r10'):1, ('r7','r11'):2, ('r7','r12'):3,
        #         ('r8','r1'):3, ('r8','r2'):4, ('r8','r3'):5,
        #         ('r8','r4'):2, ('r8','r5'):99, ('r8','r6'):99,
        #         ('r8','r7'):1, ('r8','r8'):0, ('r8','r9'):1,
        #         ('r8','r10'):2, ('r8','r11'):1, ('r8','r12'):2,
        #         ('r9','r1'):4, ('r9','r2'):5, ('r9','r3'):6,
        #         ('r9','r4'):3, ('r9','r5'):99, ('r9','r6'):99,
        #         ('r9','r7'):2, ('r9','r8'):1, ('r9','r9'):0,
        #         ('r9','r10'):3, ('r9','r11'):2, ('r9','r12'):1,
        #         ('r10','r1'):3, ('r10','r2'):4, ('r10','r3'):5,
        #         ('r10','r4'):2, ('r10','r5'):99, ('r10','r6'):99,
        #         ('r10','r7'):1, ('r10','r8'):2, ('r10','r9'):3,
        #         ('r10','r10'):0, ('r10','r11'):1, ('r10','r12'):2,
        #         ('r11','r1'):4, ('r11','r2'):5, ('r11','r3'):6,
        #         ('r11','r4'):3, ('r11','r5'):99, ('r11','r6'):99,
        #         ('r11','r7'):2, ('r11','r8'):1, ('r11','r9'):2,
        #         ('r11','r10'):1, ('r11','r11'):0, ('r11','r12'):1,
        #         ('r12','r1'):5, ('r12','r2'):6, ('r12','r3'):7,
        #         ('r12','r4'):4, ('r12','r5'):99, ('r12','r6'):99,
        #         ('r12','r7'):3, ('r12','r8'):2, ('r12','r9'):1,
        #         ('r12','r10'):2, ('r12','r11'):1, ('r12','r12'):0
        #     }
        #     for key,value in goal_dict.items():
        #         if not value and "agent_loc" in key:
        #             variable_name = problem.goals[key].condition_variable
        #             target_loc = problem.goals[key].target_value 
        #             current_loc = state[variable_name]
        #             # if not "agent_loc c" in key:
        #             #     # maze_distance_c = {
        #             #     #     'r1':2,'r2':1,'r3':0,'r4':3,'r7':3,'r8':3,'r9':3,
        #             #     #     'r10':3,'r11':3,'r12':3
        #             #     # }
        #             #     # remain_goal_number += maze_distance[current_loc] -1
        #             # # else:
        #             # # print(variable_name)
        #             # # print(current_loc)
        #             #     remain_goal_number += all_maze_distance[(current_loc,target_loc)]-1
        #             remain_goal_number += all_maze_distance[(current_loc,target_loc)]-1
        # elif "grid" in problem.problem_path:
        #     # this is customised for the unblocked grid problem
        #     # this can be done by using algorithm to find the maze distance
        #     maze_distance = {
        #         'r1':2,'r2':1,'r3':0,
        #         'r4':3,'r5':2,'r6':1,
        #         'r7':4,'r8':3,'r9':2,
        #         'r10':5,'r11':4,'r12':3
        #     }
        #     for key,value in goal_dict.items():
        #         if not value and "agent_loc" in key:
        #             variable_name = problem.goals[key].condition_variable   
        #             current_loc = state[variable_name]
        #             remain_goal_number += maze_distance[current_loc] -1
        return remain_goal_number
        heuristic_value = remain_goal_number
        
        # landmark_constrain = []
        temp_v_name_list = []
        for v_name, ep_goals in self.group_eg_dict.items():
            for ep_str,value in ep_goals:
                if not goal_dict[f"{ep_str} {value}"]:
                    temp_v_name_list.append(v_name)
                    # heuristic_value +=1
                    break

        temp_landmark = set()
                
        for temp_v_name in temp_v_name_list:
            # flag = True
            for temp_state in self.landmarks_dict[temp_v_name]:
                if not str(sorted(temp_state)) in temp_landmark:
                    temp_flag = True
                    for key,value in temp_state.items():
                        if key in state.keys():
                            if not state[key]==value:
                                temp_flag = False
                                break
                    if temp_flag:
                        heuristic_value +=1
                        temp_landmark.add(str(sorted(temp_state)))
                        break


        return heuristic_value,epistemic_dict

    def iw_gc(self,node,goal_dict,problem):
        
        # remain_goal_number = list(goal_dict.values()).count(False)
        novelty_str = ""
        for goal_key in self.sorted_goal_list:
            if goal_dict[goal_key]:
                novelty_str += "1"
            else:
                novelty_str += "0"
        if not novelty_str in self.novelty_dict:
            self.novelty_dict.update({novelty_str:dict()})
        novelty_items = state_to_dictkeys(node.state)
        for item in novelty_items:
            if not item in self.novelty_dict[novelty_str].keys():
                self.novelty_dict[novelty_str].update({item:1})
            else:
                self.novelty_dict[novelty_str][item] +=1
        h_value = max(self.novelty_dict[novelty_str].values())
        return h_value


def state_to_string(dicts):
    output = []
    for key,value in dicts.items():
        output.append(f'{key}:{value}')
    output.sort() 
    return str(output)

def state_to_dictkeys(state):
    output = []
    for key,value in state.items():
        novelty_key = key+ SPLIT_KEY_WORD + str(value)
        output.append(novelty_key)
    return output