from datetime import datetime, timedelta
import logging
import os
import copy
import re
import typing
# from epistemic_model import EpistemicModel
# from forward_epistemic_model import EpistemicModel

import epistemic_model
import traceback

LOGGER_NAME = "pddl_model"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG


from util import setup_logger
from util import Ternary
from util import Condition,ConditionType,Effect,EffectType,EP_formula,EPFType,Action,UpdateType
from util import extract_v_from_s,evaluation,multiple_parameter_replace,multiple_parameter_replace_with_ep,updateEffect,global_state_evaluation,special_value
from util import ActionSchema,Type,Function,FunctionSchema
from util import VARIABLE_FILLER
# Class of the problem
class Problem:
    def __init__(self, enetities,types: typing.Dict[str,Type],function_schemas: typing.Dict[str,FunctionSchema],action_schemas: typing.Dict[str,ActionSchema],rules,functions:typing.Dict[str,Function],initial_state,goals, external=None,handlers=None):
        
        self.logger = None
        self.logger = setup_logger(LOGGER_NAME,handlers,logger_level=LOGGER_LEVEL)
        
        self.initial_state = initial_state
        self.logger.debug("initial_state:")
        self.logger.debug(self.initial_state)
        
        self.action_schemas : typing.Dict[str,ActionSchema] =  action_schemas
        self.logger.debug("action_schemas:")
        self.logger.debug(self.action_schemas)
        
        self.entities = enetities
        self.logger.debug("entities:")
        self.logger.debug(self.entities)
        
        self.types: typing.Dict[str,Type] = types
        self.logger.debug("types:")
        self.logger.debug(self.types)
        
        self.function_schemas = function_schemas
        self.logger.debug("function_schemas:")
        self.logger.debug(self.function_schemas)
        
        self.rules = rules
        self.logger.debug("rules:")
        self.logger.debug(self.rules)
        
        self.functions = functions
        self.logger.debug("functions:")
        self.logger.debug(self.functions)
        
        self.goals = goals
        self.logger.debug("goals:")
        self.logger.debug(self.goals)
        
        self.external = external
        self.epistemic_calls = 0
        self.epistemic_call_time = timedelta(0)
        self.epistemic_call_time_max = timedelta(0)
        self.epistemic_call_length = 0
        self.epistemic_call_length_max = 0

        self.domain_path = ""
        self.problem_path = ""
        
        self.epistemic_model = epistemic_model.EpistemicModel(handlers,self.entities,self.functions,self.function_schemas,self.external)

    def generate_successor(self,state:typing.Dict[str,any],action: Action,previous_path):
        self.logger.debug("generate successor for action: %s",action.name)
        new_state = state.copy()
        p_dict = dict()
        ontic_name_list = []
        jp_dictionary = dict()



        for effect_name,item in action.effects.items():
            effect : Effect = item
            variable_name = effect.target_variable_name
            function_schema_name = self.functions[variable_name].function_schema_name
            value1 = extract_v_from_s(variable_name,new_state)
            if effect.update_type == UpdateType.CONSTENT:
                value2 = effect.update
                self.logger.debug("comparing %s vs %s",value1,value2)
                new_value =  updateEffect(self.logger,effect.effect_type,value1,value2,self.function_schemas[function_schema_name])
                if new_value == None:
                    return None
                new_state[variable_name] = new_value
            elif effect.update_type == UpdateType.EPSITEMIC:
                ep_formula :EP_formula = effect.update
                if ep_formula.epf_type == EPFType.JP:
                    jp_dictionary.update({effect_name:ep_formula})
                # going to handle the constent update first
            elif effect.update_type == UpdateType.ONTIC:
                ontic_name_list.append(effect_name)

        ################################################################################
        path = previous_path+[(new_state,action.name)]
        # new_state = self.external.update_state(new_state, path, self)  #.rules###############
        if new_state == None:
            return None

        for ontic_effect_name in ontic_name_list:
            
            effect : Effect = action.effects[ontic_effect_name]
            variable_name = effect.target_variable_name
            function_schema_name = self.functions[variable_name].function_schema_name
            value1 = extract_v_from_s(variable_name,new_state)
            if effect.update_type == UpdateType.ONTIC:
                variable2_name = effect.update
                value2 = extract_v_from_s(variable2_name,new_state)
                new_value =  updateEffect(self.logger,effect.effect_type,value1,value2,self.function_schemas[function_schema_name])
                if new_value == None:
                    return None
                new_state[variable_name] = new_value
            else:
                # going to handle the constent update first
                pass
        # path = previous_path+[(new_state,action.name)]

        # self.logger.debug("new_state {new_state}")
        # updating jp effect
        if not jp_dictionary == {}:
            for effect_name, item in jp_dictionary.items():
                variable_name = action.effects[effect_name].target_variable_name
                new_state[variable_name] = special_value.UNSEEN
            path = previous_path+[(new_state,action.name)]
            # self.logger.debug(f"new_state1 {new_state}")

            self.epistemic_calls +=1
            start_time = datetime.now()
            result_dict,p_dict = self.epistemic_model.epistemicEffectHandler(jp_dictionary, path,p_dict)
            end_time = datetime.now()
            delta_time = end_time - start_time
            if delta_time > self.epistemic_call_time_max:
                self.epistemic_call_time_max = delta_time
                self.epistemic_call_length_max = len(path)
            self.epistemic_call_time += delta_time
            self.epistemic_call_length += len(path)
            
            # self.logger.debug("result dict")
            # self.logger.debug(result_dict)

            for effect_name, value2 in result_dict.items():
                variable_name = action.effects[effect_name].target_variable_name
                function_schema_name = self.functions[variable_name].function_schema_name
                value1 = extract_v_from_s(variable_name,new_state)
                new_value =  updateEffect(self.logger,effect.effect_type,value1,value2,self.function_schemas[function_schema_name])
                if new_value == None:
                    raise ValueError("New Value if out of range when updating",effect_name,state)
                    return None
                new_state[variable_name] = value2
            # self.logger.debug(f"new_state2 {new_state}")
        return new_state

    def is_goal(self,path):
        p_dict = dict()
        condition_dict, p_dict = self.check_conditions(self.goals,path,p_dict)
        
        remaining_goal_number = list(condition_dict.values()).count(False)
        self.logger.debug("checking goal in pddl model")
        self.logger.debug(remaining_goal_number)
        self.logger.debug(condition_dict)
        return remaining_goal_number,condition_dict,p_dict

    def check_conditions(self,conditions:typing.Dict[str,Condition],path,p_dict):
       
        
        goal_dict = dict()
        current_state,current_action  = path[-1]
        
        ep_conditions_dict : typing.Dict[str,Condition] = dict()
        # # checking the goal condition after generated the next state
        for condition_key,condition in conditions.items():
            if condition.condition_type == ConditionType.EP:
                ep_conditions_dict.update({condition_key:condition})
                # save and handled later
            elif condition.condition_type == ConditionType.ONTIC :
                variable_name = condition.condition_variable
                value1 = extract_v_from_s(variable_name,current_state)
                if not condition.target_variable == None:
                    target_variable_name =  condition.target_variable
                    value2 = extract_v_from_s(target_variable_name,current_state)
                elif not condition.target_value == None:
                    value2 = condition.target_value
                else:
                    raise ValueError("One of the condition target variable or value should not be None",condition_key)
                result = global_state_evaluation(self.logger,condition.condition_operator,value1,value2)
                goal_dict.update({condition_key:result})
            else:
                raise ValueError("condition type not found",condition_key)
            
        # checking ep condition
        if not ep_conditions_dict == {}:
            self.epistemic_calls +=1
            start_time = datetime.now()
            result_dict,p_dict = self.epistemic_model.epistemicConditionsHandler(ep_conditions_dict,path,p_dict)
            end_time = datetime.now()
            delta_time = end_time - start_time
            if delta_time > self.epistemic_call_time_max:
                self.epistemic_call_time_max = delta_time
                self.epistemic_call_length_max = len(path)
            self.epistemic_call_time += delta_time
            self.epistemic_call_length += len(path)
            goal_dict.update(result_dict)
        return goal_dict,p_dict


    def get_all_legal_actions(self,state,path,p_dict):
        
        self.logger.debug("get_all_legal_actions")
        self.logger.debug(p_dict.keys())
        all_actions,ep_condition_dict,ep_condition_actionname_dict = self.get_all_actions(state)
        # self.logger.debug(all_actions.keys())
        
        legal_actions : typing.Dict[str,Action] = dict()

        ep_condition_result_dict,p_dict = self.check_conditions(ep_condition_dict,path,p_dict)
        # self.logger.debug(p_dict.keys())
        for action_name,action_item in all_actions.items():
            # self.logger.debug(action_name)
            # self.logger.debug(action)
            # if self.check_conditions(action.preconditions,path,p_dict):
            #     legal_actions.update({action_name:action})
            precondition_flag = True
            for precondition_name in action_item.preconditions.keys():
                if precondition_name in ep_condition_actionname_dict.keys():
                    if not ep_condition_result_dict[precondition_name]:
                        precondition_flag = False
                        break
            if precondition_flag:
                legal_actions.update({action_name:action_item})
        
        return legal_actions,p_dict
        
        # for action_name,action in self.action_schemas.items():
        #     all_actions.update({action_name:Action(action_name,action)})
        # return all_actions


    def get_all_actions(self,state):
        all_actions : typing.Dict[str,Action] = dict()
        self.logger.debug("action_schemas:")
        # self.logger.debug(self.action_schemas)
        ep_condition_dictionary: typing.Dict[str,Condition] = dict()
        ep_condition_actionname_dictionary : typing.Dict[str,str] = dict()
        
        for action_schema_name,action_schema in self.action_schemas.items():
            self.logger.debug(action_schema_name)
            self.logger.debug("--------------------")
            parameters_dict = action_schema.parameters
            new_parameter_replacement_list = [[]]
            
            ontic_preconditions : typing.Dict[str,Condition] = dict()
            for precondition_name,precondition_item in action_schema.preconditions.items():
                if precondition_item.condition_type == ConditionType.ONTIC:
                    ontic_preconditions.update({precondition_name:precondition_item})
            
            # this is generated by filtering out the parameters that are not passing the ontic preconditions
            for parameter_name,parameter_type in parameters_dict.items():
                temp_parameter_replacement = []
                for new_parameter_replacement in new_parameter_replacement_list:
                    entity_index_list = self.types[parameter_type].entity_index_list
                    for enetity_id in entity_index_list:
                        new_replacements = new_parameter_replacement + [(parameter_name,enetity_id)]
                        if self.checking_action_by_ontic_preconditions(ontic_preconditions,new_replacements,state):
                            temp_parameter_replacement.append(new_replacements)
                new_parameter_replacement_list = temp_parameter_replacement
            
            self.logger.debug(new_parameter_replacement_list)
            
            for parameter_replacement in new_parameter_replacement_list:
                new_action_name = action_schema_name
                new_parameters = dict()
                for parameter_name,parameter_value in parameter_replacement:
                    new_action_name += VARIABLE_FILLER + parameter_value
                    new_parameters.update({parameter_value:parameters_dict[parameter_name]})
                
                new_preconditions: typing.Dict[str,Condition] = dict()
                for precondition_name,precondition_item in action_schema.preconditions.items():
                    self.logger.debug(precondition_name)
                    self.logger.debug(precondition_item)
                    new_precondition_name = multiple_parameter_replace_with_ep(precondition_name,parameter_replacement,VARIABLE_FILLER)
                    new_precondition = Condition()
                    new_precondition.condition_operator = precondition_item.condition_operator
                    if not precondition_item.target_variable == None:
                        new_precondition.target_variable = multiple_parameter_replace(precondition_item.target_variable,parameter_replacement,VARIABLE_FILLER)
                    elif not precondition_item.target_value == None:
                        new_precondition.target_value = precondition_item.target_value
                    else:
                        raise ValueError("One of the condition target variable or value should not be None",precondition_name)
                    
                    if precondition_item.condition_type == ConditionType.ONTIC:
                        new_precondition.condition_type = ConditionType.ONTIC
                        new_precondition.condition_variable = multiple_parameter_replace(precondition_item.condition_variable,parameter_replacement,VARIABLE_FILLER)
                    elif precondition_item.condition_type == ConditionType.EP:
                        new_precondition.condition_type = ConditionType.EP
                        new_ep_formula = EP_formula()
                        old_ep_formula :EP_formula =  precondition_item.condition_formula
                        new_ep_formula.epf_type = old_ep_formula.epf_type
                        new_ep_formula.ep_query = multiple_parameter_replace(old_ep_formula.ep_query,parameter_replacement,"")
                        
                        if new_ep_formula.epf_type == EPFType.EP:
                            new_ep_formula.ep_formula_str = multiple_parameter_replace_with_ep(old_ep_formula.ep_formula_str,parameter_replacement,"")
                            new_varphi = Condition()
                            old_varphi = old_ep_formula.ep_varphi
                            new_varphi.condition_operator = old_varphi.condition_operator
                            new_varphi.condition_type = old_varphi.condition_type
                            new_varphi.condition_variable = multiple_parameter_replace(old_varphi.condition_variable,parameter_replacement,VARIABLE_FILLER)
                            if old_varphi.target_variable == None:
                                new_varphi.target_value = old_varphi.target_value
                            elif old_varphi.target_value == None:
                                new_varphi.target_variable = multiple_parameter_replace(old_varphi.target_variable,parameter_replacement,VARIABLE_FILLER)
                            else:
                                raise ValueError("One of the condition target variable or value should not be None",precondition_name)
                            new_ep_formula.ep_varphi = new_varphi
                        elif new_ep_formula.epf_type == EPFType.JP:
                            new_ep_formula.ep_variable = multiple_parameter_replace(old_ep_formula.ep_variable,parameter_replacement,VARIABLE_FILLER)
                        new_precondition.condition_formula = new_ep_formula
                        ep_condition_actionname_dictionary.update({new_precondition_name:new_action_name})
                        ep_condition_dictionary.update({new_precondition_name:new_precondition})
                    else:
                        raise ValueError("condition type not found",precondition_name)
                    new_preconditions.update({new_precondition_name:new_precondition})
                
                new_effects : typing.Dict[str,Effect] = dict()
                for effect_name,item in action_schema.effects.items():
                    effect_item : Effect = item
                    new_effect = Effect()
                    new_effect_name = multiple_parameter_replace_with_ep(effect_name,parameter_replacement,VARIABLE_FILLER)
                    new_effect.effect_type = effect_item.effect_type
                    new_effect.target_variable_name = multiple_parameter_replace(effect_item.target_variable_name,parameter_replacement,VARIABLE_FILLER)
                    new_effect.update_type = effect_item.update_type
                    if new_effect.update_type == UpdateType.CONSTENT:
                        new_effect.update = effect_item.update
                    elif new_effect.update_type == UpdateType.ONTIC:
                        new_effect.update = multiple_parameter_replace(effect_item.update,parameter_replacement,VARIABLE_FILLER)
                    elif new_effect.update_type == UpdateType.EPSITEMIC:
                        new_ep_formula = EP_formula()
                        old_ep_formula = effect_item.update
                        new_ep_formula.epf_type = old_ep_formula.epf_type
                        new_ep_formula.ep_query = multiple_parameter_replace_with_ep(old_ep_formula.ep_query,parameter_replacement,"")
                        if new_ep_formula.epf_type == EPFType.EP:
                            raise ValueError("EP formula should be be in effect")
                        elif new_ep_formula.epf_type == EPFType.JP:
                            new_ep_formula.ep_variable = multiple_parameter_replace(old_ep_formula.ep_variable,parameter_replacement,VARIABLE_FILLER)
                        else:
                            raise ValueError("EP formula type not found")
                        new_effect.update = new_ep_formula
                    else:
                        raise ValueError("Update type not found")
                    new_effects.update({new_effect_name:new_effect})
                
                new_action = Action(new_action_name,new_parameters,new_preconditions,new_effects)
                all_actions.update({new_action_name:new_action})
        return all_actions,ep_condition_dictionary,ep_condition_actionname_dictionary
                
        
        #     all_actions.update({action_name:Action(action_name,action)})
        # return all_actions

    def checking_action_by_ontic_preconditions(self,preconditions:typing.Dict[str,Condition],parameter_replacement,current_state):
        for precondition_name,precondition_item in preconditions.items():
            # self.logger.debug(precondition_name)
            operator = precondition_item.condition_operator
            variable_name = multiple_parameter_replace(precondition_item.condition_variable,parameter_replacement,VARIABLE_FILLER)
            
            if not "?" in variable_name:
                value1 = extract_v_from_s(variable_name,current_state)
                if not precondition_item.target_variable == None:
                    target_variable_name = multiple_parameter_replace(precondition_item.target_variable,parameter_replacement,VARIABLE_FILLER)
                    if not "?" in target_variable_name:
                        value2=extract_v_from_s(target_variable_name,current_state)
                    else:
                        continue # still have unreplaced parameters in this condition  
                else: # it means the target is a value
                    value2 = precondition_item.target_value

                if global_state_evaluation(self.logger,operator,value1,value2) == False:
                    # self.logger.debug("return False")
                    return False
                    
            else:
                continue # still have unreplaced parameters in this condition        
            
        return True





    
    # def isGoal(self,state,path,p_path):
    #     is_goal=True
    #     goal_dict = dict()
    #     # self.logger.debug("checking goal for state: {state} with path: {path}")

    #     # generate perspectives for duplicate check
    #     action_list = [a for s,a in path]
    #     self.logger.debug(action_list)
    #     action_list_str = ActionList2DictKey(action_list)
    #     self.logger.debug(action_list_str)
    #     self.logger.debug("checking goal for actions: [%s]",action_list_str)


    #     # actions = [ a  for s,a in path]
    #     # actions = actions[1:]
        
    #     for key,v in self.goals.ontic_dict.items():
    #         symbol = v.symbol
    #         variable_name = v.variable_name
    #         # v_value = v.v_value
    #         value = v.value
    #         # valid_variable(variable_name,self)
    #         # if symbol == "=":
    #         #     if not state[variable_name] == value:
    #         #         is_goal = False
    #         #         goal_dict.update({k:False})
    #         #     else:
    #         #         goal_dict.update({k:True})
    #         # elif symbol == "-="

    #         ontic_str = key.replace(":ontic ","")
    #         result = eval_var_from_str(self.logger,ontic_str,state)
    #         if result == PDDL_TERNARY.TRUE:
    #             goal_dict.update({key:True})
    #         else:
    #             is_goal = False
    #             goal_dict.update({key:False})

            
    #     # adding epistemic checker here
    #     current_time = datetime.now()
    #     self.epistemic_calls +=1

    #     # if self.epistemic_model.goal_p_keys == None:
    #     #     # goal perspective keys has not generated yet
    #     #     self.epistemic_model.goal_p_keys = self.epistemic_model.allPerspectiveKeys(epistemic_goals_dict=self.goals.epistemic_dict,prefix="")
    #     #     self.epistemic_model.all_p_keys = self.epistemic_model.all_p_keys + self.epistemic_model.goal_p_keys
    #     epistemic_dict = \
    #         self.epistemic_model.epistemicGoalsHandler(self.goals.epistemic_dict,"",path,p_path)
    #     self.epistemic_call_time += datetime.now() - current_time
        
    #     for k,item in self.goals.epistemic_dict.items():
    #         v_name = item.variable_name
    #         # valid_variable(v_name,self)
    #         if epistemic_dict[k] == PDDL_TERNARY.FALSE:
    #             # is_goal = False
    #             goal_dict.update({k:False})
    #         elif epistemic_dict[k] == PDDL_TERNARY.TRUE:
    #             goal_dict.update({k:True})
    #         else:
    #             raise ValueError("This should not happen in checking epistemic goal")
                
    #     # self.logger.debug("epistemic_dict {epistemic_dict}")
    #     # self.logger.debug("p_dict {p_dict}")
    #     # remainning goal proposition is checked by False value in goal_dict
    #     self.logger.debug(p_path)
    #     self.logger.debug(p_path.keys())
    #     self.logger.debug(action_list_str)
        
    #     # self.logger.info("p_path and action [%s]  is: \n [%s]",action_list_str,p_path)
    #     p_dict = dict()
    #     if not epistemic_dict == {}:
    #         # if there is no epistemic goal, then we do not need to update the p_path
    #         assert action_list_str in p_path.keys(), "action string not in p_path"
            
    #         # if "-,,move_right-a,sharing-b,move_right-b" in action_list_str:
    #         # if "-,,single_peek-a,subtraction1-c,return-a,single_peek-b" in action_list_str:
    #         #     self.logger.info("p_path for action [%s]  is: \n [%s]",action_list_str,p_path[action_list_str])
    #         # self.logger.info("p_path for action [%s]  is: \n [%s]",action_list_str,p_path[action_list_str])
    #         for k,p in p_path[action_list_str].items():
    #             temp_p = dict()
    #             temp_p["observation"] = p["observation"][-1]
    #             temp_p["perspectives"] = p["perspectives"][-1]
    #             p_dict[k] = temp_p
    #     return p_dict,epistemic_dict,goal_dict
    
    # def getAllActions(self,state,path):
    #     all_actions = dict()
    #     self.logger.debug("abstract actions %s" % (abstract_actions))
    #     # get all type of actions
    #     for a_name, abstract_a in abstract_actions.items():
    #         # # self.logger.debug('action: {a} ')
            
            
    #         # generate all possible combination parameters for each type of action
    #         # # self.logger.debug('all params: {self._generateParams(a.a_parameters)}')

    #         if abstract_a.a_parameters == []:
    #             a_temp_name = a_name
    #             a_temp_parameters = copy.deepcopy(abstract_a.a_parameters)
    #             a_temp_pre = copy.deepcopy(abstract_a.a_preconditions)
    #             a_temp_pre_dict = {'ontic':a_temp_pre.ontic_dict,'epistemic':a_temp_pre.epistemic_dict}
    #             # a_temp_ontic_p = copy.deepcopy(list(abstract_a.a_precondition.ontic_dict))
    #             # a_temp_epistemic_p = copy.deepcopy(list(abstract_a.a_precondition.epistemic_dict))
    #             a_temp_effects = copy.deepcopy(abstract_a.a_effects)
    #             # if self._checkPreconditions(state,a_temp_precondition,path):
    #             all_actions.update({a_temp_name:Action(a_temp_name,a_temp_parameters,a_temp_pre_dict,a_temp_effects)})
    #                 # # self.logger.debug('legal action after single precondition check: {all_actions}') 
    #         else:
    #             for params in self._generateParams(abstract_a.a_parameters):
    #                 a_temp_name = a_name
    #                 a_temp_parameters = copy.deepcopy(abstract_a.a_parameters)
    #                 # self.logger.debug("abstract action")
    #                 # self.logger.debug(abstract_a.a_preconditions.ontic_dict.items())
    #                 temp_ontic_tuple_list = list()
    #                 for key,con_obj in abstract_a.a_preconditions.ontic_dict.items():
    #                     symbol = con_obj.symbol
    #                     variable_name = con_obj.variable_name
    #                     value = con_obj.value
    #                     # key,symbol,variable,value
    #                     temp_ontic_tuple_list.append((key,symbol,variable_name,value))
                        
    #                 temp_epistemic_tuple_list = list()
    #                 for key,con_obj in abstract_a.a_preconditions.epistemic_dict.items():
    #                     symbol = con_obj.symbol
    #                     query = con_obj.query
    #                     variable_name = con_obj.variable_name
    #                     query_prefix = con_obj.query_prefix
    #                     value = con_obj.value
    #                     # key,query_str,query_prefix,symbol,variable,value
    #                     temp_epistemic_tuple_list.append((key,query,query_prefix,symbol,variable_name,value))
    #                 # self.logger.debug(temp_ontic_tuple_list)
    #                 # self.logger.debug(temp_epistemic_tuple_list)
                    
    #                 a_temp_effects = copy.deepcopy(abstract_a.a_effects)
    #                 # # self.logger.debug('works on params: {params}')
    #                 for i,v in params:
    #                     # a_temp_name = a_name
    #                     # a_temp_parameters = copy.deepcopy(a.a_parameters)
    #                     # a_temp_precondition = copy.deepcopy(a.a_precondition)
    #                     # a_temp_effects = copy.deepcopy(a.a_effects)
    #                     a_temp_name = a_temp_name + "-" + v
    #                     for j in range(len(a_temp_parameters)):
    #                         v_name, v_effects = a_temp_parameters[j]
    #                         v_name = v_name.replace(f'{i}',f'-{v}')
    #                         a_temp_parameters[j] = (v_name,v_effects)
                        
    #                     # update parameters in the ontic precondition
    #                     for j in range(len(temp_ontic_tuple_list)):
    #                         key,symbol,variable_name,value = temp_ontic_tuple_list[j]

    #                         old_variable_name = variable_name
    #                         new_variable_name = old_variable_name.replace(f'{i}',f'-{v}')

    #                         key = key.replace(old_variable_name,new_variable_name).replace(f'{i}',f'-{v}')
    #                         # symbol = symbol.replace(f'{i}',f'-{v}')

    #                         # v_value = v_value.replace(f'{i}',f'-{v}') if type(v_value) == str else v_value
    #                         # self.logger.debug(type(value))
                            
    #                         old_value = value
    #                         value = value.replace(f'{i}',f'-{v}')  if type(value) == str else value if type(value) ==int else value.value
    #                         # self.logger.debug("[%s] repalced by [%s] in [%s] into [%s]" %(i,v,old_value,value))
    #                         temp_ontic_tuple_list[j]  = (key,symbol,new_variable_name,value)


    #                     # update parameters in the epistemic precondition
    #                     for j in range(len(temp_epistemic_tuple_list)):
    #                         key,query,query_prefix,symbol,variable_name,value = temp_epistemic_tuple_list[j]

    #                         old_variable_name = variable_name
    #                         new_variable_name = old_variable_name.replace(f'{i}',f'-{v}')

    #                         key = key.replace(old_variable_name,new_variable_name).replace(f'{i}',f'{v}')
    #                         query = query.replace(old_variable_name,new_variable_name).replace(f'{i}',f'{v}')
    #                         query_prefix = query_prefix.replace(old_variable_name,new_variable_name).replace(f'{i}',f'{v}')
    #                         # symbol = symbol.replace(f'{i}',f'-{v}')

    #                         # v_value = v_value.replace(f'{i}',f'-{v}') if type(v_value) == str else v_value
    #                         # self.logger.debug(type(value))
    #                         value = value.replace(f'{i}',f'-{v}')  if type(value) == str else value if type(value) ==int else value.value
    #                         temp_epistemic_tuple_list[j]  = (key,query,query_prefix,symbol,new_variable_name,value)
    #                     # # update parameters in the epistemic precondition
    #                     # for j in range(len(a_temp_epistemic_p_list)):
    #                     #     v_name, v_effects = a_temp_epistemic_p_list[j]
    #                     #     v_name = v_name.replace(f'{i}',f'-{v}').replace('[-','[').replace(',-',',')
    #                     #     # precondition effect of epistemic is only going to be int
    #                     #     # v_effects = v_effects.replace(f'{i}',f'-{v}')
    #                     #     a_temp_epistemic_p_list[j] = (v_name,v_effects)                            
                        
                        
    #                     # update parameters in the effects
    #                     for j in range(len(a_temp_effects)):
    #                         v_name, v_effects = a_temp_effects[j]
    #                         v_name = v_name.replace(f'{i}',f'-{v}')
    #                         v_effects = v_effects.replace(f'{i}',f'-{v}')
    #                         a_temp_effects[j] = (v_name,v_effects)

    #                 a_temp_pre_dict = {'ontic':temp_ontic_tuple_list,'epistemic':temp_epistemic_tuple_list}

    #                 # self.logger.debug('a_temp_name [%s]',a_temp_name)
    #                 # self.logger.debug('ontic [%s]',temp_ontic_tuple_list)
    #                 # self.logger.debug('epistemic [%s]',temp_epistemic_tuple_list)
    #                 # self.logger.debug('effects [%s]',a_temp_effects)
    #                 # self.logger.debug(a_temp_name)
                    
    #                 all_actions.update({a_temp_name:Action(a_temp_name,a_temp_parameters,a_temp_pre_dict,a_temp_effects)})
    #                 # # self.logger.debug('legal action before precondition check: {all_actions}') 
    #     # self.logger.debug('legal actions: {all_actions.keys()}') 
    #     return all_actions   

    # def checkAllPreconditions(self,state,path,ontic_pre_dict,epistemic_pre_dict,p_path):

    #     self.logger.debug('function checkAllPreconditions')
    #     self.logger.debug('checking precondition for state: [%s]', state)
    #     # preconditions = action.a_precondition

    #     action_list = [a for s,a in path]
    #     actions_str = ActionList2DictKey(action_list)
    #     # self.logger.info(actions_str)
    #     # if "move_right-b,sharing-a,move_right-c" in actions_str:
    #     #     self.logger.setLevel(logging.DEBUG)


    #     pre_dict = dict()
    #     flag_dict = dict()
        
    #     # checking ontic preconditions
    #     self.logger.debug('checking all ontic preconditions')
    #     for action_name,ontic_pre in ontic_pre_dict.items():
    #         pre_dict[action_name] = dict()
    #         flag_dict[action_name] = True
    #         self.logger.debug('checking ontic precondition [%s] for action [%s]',ontic_pre,action_name)
    #         for key,ontic_obj in ontic_pre.items():
    #             ontic_str = key.replace(":ontic ","")
    #             # valid_variable(ontic_obj.variable_name,self)
    #             result = eval_var_from_str(self.logger,ontic_str,state)
    #             if result == PDDL_TERNARY.TRUE:
    #                 pre_dict[action_name].update({key:True})
    #             else:
    #                 flag_dict[action_name] = False
    #                 pre_dict[action_name].update({key:False})
    #         self.logger.debug("pre_dict[%s]: %s",action_name, pre_dict[action_name])
                    
    #             #     flag_dict[action_name] = False
    #     self.logger.debug("flag_dict [%s]", flag_dict)
            
    #     # adding epistemic checker here
    #     # self.logger.debug("epistemic_pre: {preconditions['epistemic_p']}")



    #     self.logger.debug("checking all epistemic preconditions")
    #     # get all ep_pre into one list
    #     temp_ep_dict = dict()
    #     # this part need to be changed
    #     self.logger.debug("epistemic_pre_dict: [%s]",epistemic_pre_dict)
    #     for action_name,ep_dict in epistemic_pre_dict.items():
    #         # for ep in ep_pre.items():
    #         temp_ep_dict.update(ep_dict) 
            
    #     self.logger.debug("epistemic preconditions list [%s]",epistemic_pre_dict)    
    #     current_time = datetime.now()
    #     self.epistemic_calls +=1
    #     # if self.epistemic_model.pre_p_keys == None:
    #     #     # precondition perspective keys has not generated yet
    #     #     self.epistemic_model.pre_p_keys = self.epistemic_model.allPerspectiveKeys(epistemic_goals_dict=temp_ep_dict,prefix="")
    #     #     self.epistemic_model.all_p_keys = self.epistemic_model.all_p_keys + self.epistemic_model.pre_p_keys
    #     epistemic_dict = self.epistemic_model.epistemicGoalsHandler(temp_ep_dict,"",path,p_path)
    #     self.epistemic_call_time += datetime.now() - current_time

    #     self.logger.debug("epistemic preconditions list [%s]",epistemic_pre_dict) 
    #     for action_name,ep_dict in epistemic_pre_dict.items():
    #         if not ep_dict == dict():
    #             # flag_dict[action_name]=True
    #             for k,item in ep_dict.items():
    #                 v_name = item.variable_name
    #                 # valid_variable(v_name,self)
    #                 if epistemic_dict[k] == PDDL_TERNARY.TRUE:
    #                     pre_dict[action_name].update({k:True})
    #                 elif  epistemic_dict[k] == PDDL_TERNARY.FALSE:
    #                     pre_dict[action_name].update({k:False})
    #                     flag_dict[action_name]=False
                        
    #                 else:
    #                     raise ValueError("this should not happen in check ep precondition")
                        
    #         # for k,ep_obj in ep_dict.items():
    #         #     v = ep_obj.value
    #         #     if not epistemic_dict[k] == v:
    #         #         flag_dict[action_name] = False
    #         #         pre_dict[action_name].update({k:False})
    #         #         # pre_flag = False
    #         #         # pre_dict.update({k+" "+str(v):False})
    #         #     else:
    #         #         pre_dict[action_name].update({k:True})
        
        
    #     self.logger.debug("flag_dict: [%s]",flag_dict)
    #     self.logger.debug("epistemic_dict: [%s]",epistemic_dict)
    #     self.logger.debug("pre_dict: [%s]",pre_dict)
    #     self.logger.debug("p_path.keys(): [%s]",p_path.keys())
    #     # generate perspectives for duplicate check
    #     action_list = [a for s,a in path]
    #     action_list_str = ActionList2DictKey(action_list)
        
        
    #     # if "-,,move_right-a,sharing-b,move_right-b" in action_list_str:
    #     #     self.logger.info("p_path for action [%s]  is: \n [%s]",action_list_str,p_path[action_list_str])
    #     # if "-,,single_peek-a,subtraction1-c,return-a,single_peek-b" in action_list_str:
    #     #     self.logger.info("p_path for action [%s]  is: \n [%s]",action_list_str,p_path[action_list_str])
    #     p_dict = dict()
    #     if not epistemic_dict == {}:
    #         assert action_list_str in p_path.keys(), "action string not in p_path"
            
    #         for k,p in p_path[action_list_str].items():
    #             temp_p = dict()
    #             temp_p["observation"] = p["observation"][-1]
    #             temp_p["perspectives"] = p["perspectives"][-1]
    #             p_dict[k] = temp_p
    #     # return p_dict,epistemic_dict,goal_dict
    #     return flag_dict,epistemic_dict,p_dict
    #     # return flag_dict,epistemic_dict,pre_dict

    # # generate all possible parameter combinations
    # def _generateVariables(self,params):
    #     self.logger.debug('params: [%s]',params)
    #     param_list = []

    #     if params == []:
    #         return []
    #     else:
            
    #         for i in params[0]:
    #             next_param = copy.deepcopy(params[1:])
    #             rest = self._generateVariables(next_param)
    #             if len(rest) == 0:
    #                 param_list = param_list + [f"-{i}" ]
    #             else:
    #                 param_list = param_list + [ f"-{i}{t}" for t in rest ]
    #     return param_list


    
    # # generate all possible parameter combinations
    # def _generateParams(self,params):
    #     param_list = []

    #     if params == []:
    #         return []
    #     else:
    #         i,v = params[0]

    #         for k,l in self.entities.items():

    #             if l.e_type == v:
    #                 next_param = copy.deepcopy(params[1:])
    #                 rest = self._generateParams(next_param)
    #                 if len(rest) == 0:
    #                     param_list = param_list + [[(i,k)]]
    #                 else:
    #                     param_list = param_list + [ [(i,k)]+ t for t in self._generateParams(next_param) ]
    #     return param_list

    # def intInDomain(self,v_name,value):
    #     variable_obj = variables[v_name]
    #     d_name = variable_obj.v_domain_name
    #     domain_obj = domain[d_name]
    #     bounds = domain_obj.d_values
    #     return value >= bounds[0] and value <= bounds[1]


    # # TODO adding action cost
    # def generateSuccessor(self,state,action,path):
        
    #     # TODO valid action
    #     # need to go nested on the brackets
    #     self.logger.debug('generate successor for state: [%s]',state)
    #     self.logger.debug('generate successor with action: [%s]',action)
    #     new_state = copy.deepcopy(state)
        
    #     for v_name,update in action.a_effects:
    #         old_value = state[v_name]
    #         # v_name = v_name.replace('?','-')
    #         # self.logger.debug('single effect update: {v_name}/{old_value}/{update}')
    #         # if update in state:
    #         #     new_state[v_name] = state[update]
    #         # elif '-' in update:
    #         if update.startswith('-'):
    #             # self.logger.debug('update -')
    #             delta_value = int(update.split('-')[1])
    #             # self.logger.debug('delta value: {delta_value}')
    #             domain_name = variables[v_name].v_domain_name
    #             # self.logger.debug('domain_name {domain_name}')
    #             if domain[domain_name].d_type == D_TYPE.ENUMERATE:
    #                 index = domain[domain_name].d_values.index(old_value)
    #                 # self.logger.debug('index: {index} in the domain: {domain[domain_name].d_values}')
    #                 new_index = (index-delta_value) % len(domain[domain_name].d_values)
    #                 # self.logger.debug('new_index: {new_index} in the domain: {domain[domain_name].d_values}')
    #                 new_value = domain[domain_name].d_values[new_index]
    #                 # self.logger.debug('new_value: {new_value} in the domain: {domain[domain_name].d_values}')
    #                 new_state[v_name] = new_value
    #             elif domain[domain_name].d_type == D_TYPE.INTEGER:
    #                 old_int = int(old_value)
    #                 # self.logger.debug('old_int: {old_int}')
    #                 new_value = old_int - delta_value
    #                 # self.logger.debug('new_value: {new_value} in the domain: {domain[domain_name].d_values}')
    #                 new_state[v_name] = new_value
    #                 if not self.intInDomain(v_name,new_value):
    #                     return None
                    
    #         elif update.startswith('+'):
    #             delta_value = int(update.split('+')[-1])
    #             domain_name = variables[v_name].v_domain_name
    #             if domain[domain_name].d_type == D_TYPE.ENUMERATE:
    #                 index = domain[domain_name].d_values.index(old_value)
    #                 new_index = (index+delta_value) % len(domain[domain_name].d_values)
    #                 new_state[v_name] = domain[domain_name].d_values[new_index]
    #             elif domain[domain_name].d_type == D_TYPE.INTEGER:
    #                 old_int = int(old_value)
    #                 self.logger.debug('old_int: [%s]',old_int)
    #                 new_value = old_int + delta_value
    #                 self.logger.debug('new_value: [%s] in the domain: [%s]',new_value,domain[domain_name].d_values)
    #                 new_state[v_name] = new_value
    #                 if not self.intInDomain(v_name,new_value):
    #                     return None
    #         # if '-' in update:
    #         #     v2_name,value = update.split('-')
    #         #     v2_name = v2_name.replace('?','-')
    #         #     v2_value = state[v2_name]
    #         #     domain_name = variables[v_name].v_domain_name
    #         #     if domain[domain_name].d_type == D_TYPE.ENUMERATE:
    #         #         for index, item in enumerate(domain[domain_name].d_values):
    #         #             if item == v2_value:
    #         #                 break
    #         #         new_state[v_name] = domain[domain_name].d_values[(index-int(value))%len(domain[domain_name].d_values)]
    #         # elif '+' in update:
    #         #     v2_name,value = update.split('+')
    #         #     v2_name = v2_name.replace('?','-')
    #         #     v2_value = state[v2_name]
    #         #     domain_name = variables[v_name].v_domain_name
    #         #     if domain[domain_name].d_type == D_TYPE.ENUMERATE:
    #         #         for index, item in enumerate(domain[domain_name].d_values):
    #         #             if item == v2_value:
    #         #                 break
    #         #         new_state[v_name] = domain[domain_name].d_values[(index+int(value))%len(domain[domain_name].d_values)]
    #         else:
                
    #             domain_name = variables[v_name].v_domain_name
    #             # self.logger.debug('update {v_name} with domain {domain_name} on type {domain[domain_name].d_type} ')
    #             if domain[domain_name].d_type == D_TYPE.INTEGER:
    #                 if re.search("[a-z]|[A-Z]", update):
    #                     update = state[update]
    #                 new_state[v_name] = int(update)
    #             elif update in state.keys():
    #                 new_state[v_name] = state[update]
    #             else:
    #                 new_state[v_name] = update

    #     # self.logger.debug('new state is : {new_state}')
    #     return new_state
        
        
    
    # def __str__(self):
    #     return f"Problem: \n\t entities: {self.entities}\n\t variables: {variables}\n\t actions: {self.actions}\n\t domains: {domain}\n\t initial_state: {self.initial_state}\n\t goals: {self.goals}\n"



    
