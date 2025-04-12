import logging 
import typing
from util import Function,FunctionSchema,Entity,EntityType,setup_logger,VARIABLE_FILLER
from datetime import datetime

LOGGER_NAME = "grid"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG
 
# declare common variables
common_constants = {

}

class ExternalFunction:
    logger = None
    
    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME,handlers,logger_level=LOGGER_LEVEL) 
    
    def checkVisibility(self,state,agent_index,var_name,entities:typing.Dict[str,Entity],
                        functions:typing.Dict[str,Function],
                        function_schemas:typing.Dict[str,FunctionSchema]):
        if not agent_index in entities.keys():
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if not entities[agent_index].enetity_type == EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions.keys():
            raise ValueError(f"var_name [{var_name}] not found in functions")
        
        function = functions[var_name]
        function_schemas_name = function.function_schema_name
        target_list = function.entity_index_list
        if 'movable' == function_schemas_name:
            # all agents can see movable objects
            return True
        elif 'sharable'  == function_schemas_name:
            return True
        elif 'receivable'  == function_schemas_name:
            return True
        elif 'shared'  == function_schemas_name:
            # this is up to the assumption, but we have not encountered nested believe so far
            if state["receivable" + VARIABLE_FILLER + agent_index] == 1:
                return True
            else:
                return False
        elif 'searched'  == function_schemas_name:
            # this is does not matter, to improve search speed we allow agent sees searched
            return True
        elif 'room_id' == function_schemas_name:
            return True
        elif 'connected' == function_schemas_name:
            return True
        elif 'agent_loc'  == function_schemas_name:
            # this is does not matter, to improve search speed we allow agent sees searched
            return True
        elif 'survivor_loc'  == function_schemas_name:
            if state['shared' + VARIABLE_FILLER + target_list[0]] == 1:
                if state['receivable' + VARIABLE_FILLER + agent_index] == 1:
                    return True
                else:
                    return False
            else:
                return False
        else:
            raise ValueError(f"function_schemas_name [{function_schemas_name}] not found")


    # # customise action filters
    # # to filter out the irrelevant actions
    # def filterActionNames(self,problem,action_dict):
    #     # self.logger.debug(action_dict.keys())
    #     action_name_list = []
    #     relevant_variable_parent_index = []
    #     relevant_agent_index = []
        

    #     for key,ep_obj in problem.goals.epistemic_dict.items():
    #         eq_str = ep_obj.query
    #         match = re.search("[edc]?[ksb] \[[0-9a-z_,]*\] ",eq_str)
    #         while not match == None:
    #             eq_list = eq_str.split(" ")
    #             relevant_agent_index += eq_list[1][1:-1].split(",")
    #             eq_str = eq_str[len(eq_list[0])+len(eq_list[1])+2:]
    #             match = re.search("[edc]?[ksb] \[[0-9a-z_,]*\] ",eq_str)
                
    #         # variable_name,value =self.extractVariable(eq_str)
    #         variable_name = ep_obj.variable_name
    #         relevant_variable_parent_index.append(problem.variables[variable_name].v_parent)
    #         self.logger.debug("variable_name[%s] , problem.variables[variable_name].v_parent [%s]",variable_name,problem.variables[variable_name].v_parent)




    #     for name,action in action_dict.items():
    #         self.logger.debug('action_name: [%s]',name) 
    #         if "sharing_" in name:
    #             if name.split("-")[2] in relevant_variable_parent_index:
    #                 action_name_list.append(name)
    #         elif "sharing" in name or "lying" in name:
    #             if name.split("-")[1] in relevant_variable_parent_index:
    #                 action_name_list.append(name)
    #         elif "move" in name:
    #             self.logger.debug('agent_in: [%s]',name.split("-")[1]) 
    #             if name.split("-")[1] in relevant_agent_index:
    #                 action_name_list.append(name) 
    #         else:
    #             action_name_list.append(name)
    #     if logging.getLogger().isEnabledFor(logging.DEBUG):
    #         self.logger.debug('action names after filter: [%s]',action_name_list)   
    #     return action_name_list
    #     return action_dict.keys()

    

#     def generate_constrain_dict(self,problem,group_eg_dict):

#         self.logger.debug('')
#         self.logger.debug('generate_constrain_dict')
#         self.logger.debug('group_eg_dict [%s]',group_eg_dict)
#         land_marks = dict()
#         for v_name, ep_goals in group_eg_dict.items():
#             agents = set()
#             land_marks[v_name] = []
#             for ep_str,value in ep_goals:
#                 agents_temp = get_agent_names(ep_str)
#                 agents.update(agents_temp)
#             obj_index,obj_domains,obj_name,obj_value = handlerObject(ep_str,problem)

#             variable_dict = get_relative_variables(agents,(obj_index,obj_name,obj_domains),problem)
#             states = _all_states(variable_dict)
#             valid_states = get_valid_states(agents,states,problem,ep_goals,obj_name)
#             if not valid_states == []:

#                 land_marks[v_name]={'landmark_type': [[list(range(len(ep_goals)))]],'ep_list': ep_goals,'landmarks': valid_states}
#             else:
#                 # cannot achieve group goal in one state
#                 ep_state_dict = {}
#                 for ep_str,value in ep_goals: 
#                     obj_index,obj_domains,obj_name,obj_value = handlerObject(ep_str,problem)
#                     variable_dict = get_relative_variables(agents,(obj_index,obj_name,[obj_value]),problem)
#                     states = _all_states(variable_dict)
#                     valid_states = get_valid_states(agents,states,problem,[(ep_str,value)],obj_name)
#                     ep_state_dict.update({ep_str: {'states':valid_states,'obj_value':obj_value}})
#                     for key1 in ep_state_dict.keys():
#                         for key2 in ep_state_dict.keys():
#                             if not key1 == key2:
#                                 item1 = ep_state_dict[key1]
#                                 item2 = ep_state_dict[key2]
                                
#                                 if item1['obj_value'] == item2["obj_value"]:
#                                     # there is not constrain since the values are same
#                                     # we might want to get intersection
#                                     pass
#                                 else:
#                                     for state in item1['states']:
#                                         if state not in item2['states']:
#                                             if state not in land_marks[v_name]:
#                                                 land_marks[v_name].append(state)
#                                     for state in item2['states']:
#                                         if state not in item1['states']:
#                                             if state not in land_marks[v_name]:
#                                                 land_marks[v_name].append(state)
#         return land_marks
            
                
# def get_valid_states(agents,states,problem,ep_goals,obj_name):
#     valid_states = []
#     for state in states:
#         current_time = datetime.now()
#         perspectives_dict,epistemic_dict = problem.epistemic_model.epistemicGoalsHandler(ep_goals,"",[(state,"")])
        
#         problem.epistemic_calls += 1
#         problem.epistemic_call_time += datetime.now() - current_time
#         goal_dict = {}
#         # remain_goal_number = list(goal_dict.values()).count(False)
        
#         for ep_str,value in ep_goals:
#             if epistemic_dict[ep_str].value == value:
#                 goal_dict[ep_str] = True
#             else:
#                 goal_dict[ep_str] = False
#         if list(goal_dict.values()).count(False) ==0:
#             filtered_state = _variableFilter(state,obj_name)
#             if filtered_state not in valid_states:
#                 valid_states.append(filtered_state)
#     return valid_states
        # if epistemic_dict[ep_str].value == value:
        #     self.logger.debug(state)
        #     filtered_state = self._variableFilter(state,obj_name)
        #     if filtered_state not in ep_state_dict[ep_str]['states']:
        #         ep_state_dict[ep_str]['states'].append(filtered_state)
    # for ep_str,value in ep_goals:
        # ep_value = ep_str.split(v_name)[1][3:-2]
        # ep_front = ep_str.split(v_name)[0]
        # ep_header = format_ep(ep_value,value)
        
        # variable_dict = get_relative_variables(agents,(obj_index,obj_name,obj_value),problem)
        # states = _all_states(variable_dict)

        # ep_state_dict.update({ep_str: {'states':list(),'obj_value':obj_value}})
        
        
        # for state in states:
        #     current_time = datetime.now()
        #     perspectives_dict,epistemic_dict = problem.epistemic_model.epistemicGoalsHandler([(ep_str,value)],"",[(state,"")])    
        #     problem.epistemic_calls += 1
        #     problem.epistemic_call_time += datetime.now() - current_time

        #     if epistemic_dict[ep_str].value == value:

        #         filtered_state = self._variableFilter(state)
        #         if filtered_state not in ep_state_dict[ep_str]['states']:
        #             ep_state_dict[ep_str]['states'].append(filtered_state)
        

    # for ep_str, states in ep_state_dict.items():

#     #     for state in states:

#     self.logger.debug(ep_state_dict)
#     # land_marks = []
#     for key1 in ep_state_dict.keys():
#         for key2 in ep_state_dict.keys():
#             if not key1 == key2:
#                 item1 = ep_state_dict[key1]
#                 item2 = ep_state_dict[key2]
                
#                 if item1['obj_value'] == item2["obj_value"]:
#                     # there is not constrain since the values are same
#                     # we might want to get intersection
#                     pass
#                 else:
#                     for state in item1['states']:
#                         if state not in item2['states']:
#                             if state not in land_marks[v_name]:
#                                 land_marks[v_name].append(state)
#                     for state in item2['states']:
#                         if state not in item1['states']:
#                             if state not in land_marks[v_name]:
#                                 land_marks[v_name].append(state)
#     self.logger.debug(land_marks)
#     return land_marks
        
# def _variableFilter(state,obj_name):
#     new_state = {}
#     for v_name,value in state.items():
#         flag = True
#         if v_name == obj_name:
#             flag = False
#         else:
#             for filter_str in FILTER_VARIABLES:
#                 if filter_str in v_name:
#                     flag = False
#                     break
#         if flag:
#             new_state.update({v_name:value})
#     return new_state
            
# def handlerObject(ep_str,problem):
#     obj_index = ""
#     variable_reg_str = "\([\w|'|\"|,|-]*\)"
#     variable_list = re.findall(variable_reg_str,ep_str)
#     for variable_pair_str in variable_list:
#         var_temp_list = variable_pair_str[1:-1].split(",")
#         obj_name = var_temp_list[0][1:-1]
#         obj_value = var_temp_list[1][1:-1]
#         obj = problem.variables[obj_name]
#         obj_index = obj.v_parent
#         obj_domains = problem.domains[obj.v_domain_name].d_values
#     return obj_index,obj_domains,obj_name,obj_value
            
      
# def get_agent_names(ep_str):
#     # self.logger.debug(ep_str)
#     agent_set = set()
    
#     agent_reg_str =  "[b|k|s] (\[[\w|,]*\])* "
#     agent_list_list = re.findall(agent_reg_str,ep_str)
#     for agent_list in agent_list_list:
#         for agent_id in agent_list[1:-1].split(","):
#             agent_set.add(agent_id)
#     return agent_set
      
      
                
# # def get_entities_names(ep_str,problem):

# #     agent_set = set()
# #     object_set = set()
    
# #     agent_reg_str =  "[b|k|s] (\[[\w|,]*\])* "
# #     agent_list_list = re.findall(agent_reg_str,ep_str)
# #     for agent_list in agent_list_list:
# #         for agent_id in agent_list[1:-1].split(","):
# #             agent_set.add(agent_id)
    
# #     variable_reg_str = "\([\w|'|\"|,|-]*\)"
# #     variable_list = re.findall(variable_reg_str,ep_str)
# #     for variable_pair_str in variable_list:
# #         variable_name = variable_pair_str[1:-1].split(",")[0][1:-1]
# #         object_set.add(problem.variables[variable_name].v_parent)

# #     return agent_set,object_set,value
     
# def get_relative_variables(agents,object_tuple,problem):
#     obj_index,obj_name,obj_value = object_tuple
#     variable_dict = {}
#     domains = problem.domains
#     for v_name, variable in problem.variables.items():
#         index = variable.v_parent
#         if index in agents and v_name[:-len(index)] in AGENT_VARIABLES:
#             variable_dict.update({v_name:domains[variable.v_domain_name].d_values})
#         elif index == obj_index and v_name[:-len(index)] in OBJECT_VARIABLES:
#             if v_name == obj_name:
#                 variable_dict.update({v_name:obj_value})
#             else:
#                 variable_dict.update({v_name:domains[variable.v_domain_name].d_values})
#     return variable_dict

# def _all_states(state_dict):
#     states = []
#     if state_dict == {}:
#         return [{}]    
#     key,values = state_dict.popitem()
#     for temp_state in _all_states(state_dict):
#         for value in values:
#             new_state = temp_state.copy()
#             new_state.update({key:value})
#             states.append(new_state)
#     return states

# def format_ep(ep_value, value):
#     if value == 0:
#         ep_value = reverse_ep_value(ep_value)
    
#     # return f'{value}{SPLIT_KEY_WORD}{ep_value}'
#     return (value,ep_value)
        
        
# def reverse_ep_value(ep_value):
#     if ep_value == 't':
#         return 'f'
#     elif ep_value == 'f':
#         return 't'
#     else:
#         return ep_value
    