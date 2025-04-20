from datetime import datetime, timedelta
import logging
import os
import copy
import re
import typing
# from epistemic_model import EpistemicModel
# from forward_epistemic_model import EpistemicModel

from epistemic_model import EpistemicModel
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
    def __init__(self, enetities,types: typing.Dict[str,Type],function_schemas: typing.Dict[str,FunctionSchema],action_schemas: typing.Dict[str,ActionSchema],rules,functions:typing.Dict[str,Function],initial_state,goals, epistemic_model, external=None,handlers=None):
        
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

        self.epistemic_model = epistemic_model
        


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

