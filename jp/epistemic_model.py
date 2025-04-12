import enum
# import pddl_model
import typing
import re
import logging
import copy


LOGGER_NAME = "epistemic_model"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG
from util import setup_logger
# from util import ActionList2DictKey,GLOBAL_PERSPECTIVE_INDEX, ROOT_NODE_ACTION
# from util import raiseNotDefined,eval_var_from_str,Queue
# PRE_INIT_PDICT_KEY = ActionList2DictKey([])
EQ_PREFIX = "((?:\$|\+|\-) [a-z]* \[[a-z0-9,]*\] )"

from util import Condition,EP_formula,EPFType,GLOBAL_PERSPECTIVE_INDEX
from util import eq_ternay_dict,Ternary,ConditionOperatorType
from util import EpistemicGroupType,EpistemicType,ep_type_dict
from util import evaluation,compareTernary,bool2Ternary_dict,format_JPstr2PerspectiveKey,str_replace_last
from util import special_value

class EpistemicModel:

    
    
    def __init__(self, handlers, entities, functions, function_schemas, external):
        self.logger = setup_logger(LOGGER_NAME,handlers,logger_level=LOGGER_LEVEL) 
        self.logger.info("initialize epistemic model")
        # self.logger = setup_logger(LOGGER_NAME,handlers,logger_level=LOGGER_LEVEL) 
        self.entities = entities
        self.functions = functions
        self.function_schemas = function_schemas
        self.external = external
        self.goal_p_keys = None
        self.pre_p_keys = None
        self.all_p_keys = list()
        self.common_iteration_list = list()

    def epistemicConditionsHandler(self, epistemic_condition_dict: typing.Dict[str,Condition], path,p_dict):
        self.logger.debug('epistemicConditionHandler')
        # self.logger.debug('prefix: [%s]',prefix)
        # action_list = [a for s,a in path]
        state_sequence = [s for s,a in path]
        # self.logger.debug(action_list)
        # old_actions_str = ActionList2DictKey(action_list=action_list[:-1])
        # actions_str = ActionList2DictKey(action_list=action_list)
        # self.logger.debug("actions_str [%s], old_actions_str [%s]",actions_str,old_actions_str)
        result_dict = dict()
        
        for key, condition in epistemic_condition_dict.items():
            self.logger.debug("%s: %s",key,condition)
            ep_formula : EP_formula =  condition.condition_formula
            operator = condition.condition_operator
            target_value = condition.target_value
            if ep_formula.epf_type == EPFType.EP:
                eq_str = ep_formula.ep_query
                condition = ep_formula.ep_varphi
                output = self.eval_eq(eq_str,condition, GLOBAL_PERSPECTIVE_INDEX, state_sequence, p_dict)
                if operator == ConditionOperatorType.EQUAL:
                    result = output == target_value
                elif operator == ConditionOperatorType.NOT_EQUAL:
                    result =not output == target_value
                result_dict[key] = result
        
        for key, condition in epistemic_condition_dict.items():
            ep_formula : EP_formula =  condition.condition_formula
            operator = condition.condition_operator
            target_value = condition.target_value
            if target_value == None:
                target_value = state_sequence[-1][condition.target_variable]
            if ep_formula.epf_type == EPFType.JP:
                jp_str = ep_formula.ep_query
                variable_name = ep_formula.ep_variable
                p_key = format_JPstr2PerspectiveKey(jp_str)
                if p_key in p_dict.keys():
                    local_perspective = p_dict[p_key]
                    local_state = local_perspective[-1]

                    
                else:
                    self.generate_ps_from_jp_query(jp_str, GLOBAL_PERSPECTIVE_INDEX, state_sequence, p_dict)
                    if not p_key in p_dict.keys():
                        raise ValueError("p_key is not generated correctly",p_key,condition,p_dict.keys())
                    local_perspective = p_dict[p_key]
                    local_state = local_perspective[-1]
                    # p = self.generate_os(state_sequence,GLOBAL_PERSPECTIVE_INDEX)
                    # p_dict[p_key] = p
                if not variable_name in local_state.keys():
                    raise ValueError("variable_name is not in the local state",variable_name,local_state)
                else:
                    value2 = local_state[variable_name]
                    result_dict[key] = evaluation(self.logger,operator,value2,target_value) == Ternary.TRUE
        # self.logger.debug(result_dict)
        # self.logger.debug(p_dict)
        return result_dict,p_dict

    def epistemicEffectHandler(self, epistemic_effect_dict: typing.Dict[str,EP_formula], path,p_dict):
        result_dict = dict()
        state_sequence = [s for s,a in path]
        
        for jp_name, jp_item in epistemic_effect_dict.items():
            if not jp_item.epf_type == EPFType.JP:
                raise ValueError("action effect should only be a JP",jp_item)
            jp_str = jp_item.ep_query
            variable_name = jp_item.ep_variable
            p_key = format_JPstr2PerspectiveKey(jp_str)
            if p_key in p_dict.keys():
                local_perspective = p_dict[p_key]
                local_state = local_perspective[-1]                
            else:
                self.generate_ps_from_jp_query(jp_str, GLOBAL_PERSPECTIVE_INDEX, state_sequence, p_dict)
                if not p_key in p_dict.keys():
                    raise ValueError("p_key is not generated correctly",p_key,p_dict.keys())
                local_perspective = p_dict[p_key]
                local_state = local_perspective[-1]
                # p = self.generate_os(state_sequence,GLOBAL_PERSPECTIVE_INDEX)
                # p_dict[p_key] = p
            if not variable_name in local_state.keys():
                raise ValueError("variable_name is not in the local state",variable_name,local_state)
            else:
                value2 = local_state[variable_name]
                result_dict[jp_name] = value2
        return result_dict,p_dict

    def generate_ps_from_jp_query(self, jp_str, parent_prefix, state_sequence, input_ps):
        query_content_list = jp_str.split(" ")
        self.logger.debug(query_content_list)
        if not len(query_content_list) >=2:
            raise ValueError("eq_query is not in the correct format, it should contains at least two elements",query_content_list)
        jp_prefix = query_content_list[0]
        if not jp_prefix in ep_type_dict.keys():
            raise ValueError("jp_prefix is not in the correct format",jp_prefix) 
        jp_group_type,jp_type = ep_type_dict[jp_prefix]
        agent_id_str = query_content_list[1]
        rest_jp_str = jp_str[len(jp_prefix)+len(agent_id_str)+2:]
        if jp_group_type == EpistemicGroupType.Individual:
            if not agent_id_str.startswith("[") or not agent_id_str.endswith("]"):
                raise ValueError("agent_id is not in the correct format (should cover with [])",jp_str)
            agent_id_str = agent_id_str[1:-1]
            if "," in agent_id_str:
                raise ValueError("agent_id is not in the correct format (Should only contain one agent based on b/s/k)",agent_id_str,jp_str)
            agent_index = agent_id_str
            # new_p = self.generate_os(state_sequence,agent_index)
            self.handle_ps_from_jp_single(jp_type,agent_index,rest_jp_str, parent_prefix,state_sequence, input_ps)
            
            return 
        elif jp_group_type == EpistemicGroupType.Uniform:
            pass
        elif jp_group_type == EpistemicGroupType.Distribution:
            pass
        elif jp_group_type == EpistemicGroupType.Common:
            pass
        else:
            raise ValueError("Wrong JP group type")
        
    def generate_ps(self,os_key_str, os,parent_ps, input_ps):
        ps_key_str = str_replace_last(os_key_str,"o ","f ")
        if ps_key_str in input_ps.keys():
            return input_ps[ps_key_str],ps_key_str
        
        if ps_key_str in input_ps.keys():
            return
        ps = []
        for i in range(len(os)):
            temp_ps = self.generate_p(os[:i+1],parent_ps[:i+1])
            ps.append(temp_ps)
        input_ps[ps_key_str] = ps
        return ps,ps_key_str
        
    
    def generate_p(self,partial_os,partial_ps):
        new_state = partial_os[-1].copy()
        for key,value in new_state.items():
            if value == special_value.UNSEEN:
                # new_state[key] = self.(agent_id,key,partial_os,partial_ps)
                
                ts = self.identify_last_seen_timestamp(key,partial_os)
                new_state[key] = self.retrieval_function(partial_ps,ts,key)
                if key == 'dir b':
                    
                    self.logger.debug("partial_os: %s",partial_os)
                    self.logger.debug("partial_ps: %s",partial_ps)
                    self.logger.debug("ts: %s",ts)
                    # self.logger.debug("new_state: %s",new_state)
                    self.logger.debug("key: %s",key)
                    self.logger.debug("value: %s",new_state[key])
                    # self.logger.debug(partial_ps)
                    # self.logger.debug(ts)
                    # self.logger.debug(new_state[key])
        return new_state
    
    def retrieval_function(self,partial_ps, ts, variable_name):
        temp_ts = ts
        if temp_ts < 0:
            return special_value.HAVENT_SEEN
        while temp_ts >= 0:
            if variable_name in partial_ps[temp_ts].keys():
                if partial_ps[temp_ts][variable_name] == special_value.HAVENT_SEEN:
                    temp_ts += -1
                elif partial_ps[temp_ts][variable_name] == special_value.UNSEEN:
                    raise ValueError("variable is not seen by the agent, should not happen",variable_name,partial_ps,temp_ts)
                else:
                    return partial_ps[temp_ts][variable_name]
            else:
                raise ValueError("variable is not in the observation list",variable_name,partial_ps,ts)
        
        temp_ts = ts + 1
        while temp_ts < len(partial_ps):
            if variable_name in partial_ps[temp_ts].keys():
                if partial_ps[temp_ts][variable_name] == special_value.HAVENT_SEEN:
                    temp_ts += 1
                elif partial_ps[temp_ts][variable_name] == special_value.UNSEEN:
                    raise ValueError("variable is not seen by the agent, should not happen",variable_name,partial_ps,temp_ts)
                else:
                    return partial_ps[temp_ts][variable_name]
            else:
                raise ValueError("variable is not in the observation list",variable_name,partial_ps,ts)
        return special_value.HAVENT_SEEN


                
                
                
    def identify_last_seen_timestamp(self,variable_name,partial_os):
        length = len(partial_os)
        for i in range(length):
            ts = length-i-1
            if variable_name in partial_os[ts].keys():
                if not partial_os[ts][variable_name] == special_value.UNSEEN:
                    return ts
            else:
                raise ValueError("variable is not in the observation list",variable_name,ts)
        return -1
                 
        
    def handle_ps_from_jp_single(self,jp_type,agent_index,rest_eq_str, parent_prefix,state_sequence, input_ps):
        # os_key_str = parent_prefix + "o ["+agent_index + "] "
        # if os_key_str in input_ps.keys():
        #     os = input_ps[os_key_str]
        # else:
        #     
        #     input_ps[os_key_str] = os
        os,os_key_str = self.generate_os(agent_index,parent_prefix,state_sequence,input_ps)
        
        if jp_type == EpistemicType.Knowledge or jp_type == EpistemicType.Seeing:
            if rest_eq_str == '':
                return
            else:
                self.generate_ps_from_jp_query(
                    jp_str=rest_eq_str,
                    parent_prefix=os_key_str,
                    state_sequence=os,
                    input_ps=input_ps)
                return 
                
        elif jp_type == EpistemicType.Belief:
            ps,ps_key_str = self.generate_ps(os_key_str, os,state_sequence, input_ps)
            if rest_eq_str == "":
                return
            else:
                self.generate_ps_from_jp_query(
                    jp_str=rest_eq_str,
                    parent_prefix=ps_key_str,
                    state_sequence=ps,
                    input_ps=input_ps)
            # need to generate ps based on os
            pass
        else:
            raise ValueError("jp_type is not defined yet",jp_type)

    def eval_eq(self,eq_query_str, condition, parent_prefix,state_sequence, input_ps):
        eq_query_content_list = eq_query_str.split(" ")
        self.logger.debug(eq_query_content_list)
        if not len(eq_query_content_list) >=3:
            raise ValueError("eq_query is not in the correct format, it should contains at least three elements",eq_query_str)
        
        eq_ternary_type_str = eq_query_content_list[0]
        if not eq_ternary_type_str in eq_ternay_dict.keys():
            raise ValueError("eq_ternary_type is not in the correct format",eq_ternary_type_str)
        eq_ternary_type = eq_ternay_dict[eq_ternary_type_str]
        ep_prefix_str = eq_query_content_list[1]
        if not ep_prefix_str in ep_type_dict.keys():
            raise ValueError("ep_type is not in the correct format",ep_prefix_str)
        ep_group_type,ep_type = ep_type_dict[ep_prefix_str]
        agent_id_str = eq_query_content_list[2]
        rest_eq_str = eq_query_str[len(eq_ternary_type_str)+len(ep_prefix_str)+len(agent_id_str)+3:]
        if ep_group_type == EpistemicGroupType.Individual:
            if not agent_id_str.startswith("[") or not agent_id_str.endswith("]"):
                raise ValueError("agent_id is not in the correct format (should cover with [])",eq_query_str)
            agent_id_str = agent_id_str[1:-1]
            if "," in agent_id_str:
                raise ValueError("agent_id is not in the correct format (Should only contain one agent based on b/s/k)",agent_id_str,eq_query_str)
            agent_index = agent_id_str
            
            result = self.eval_eq_single_agent(ep_type,agent_index,rest_eq_str,condition, parent_prefix,state_sequence, input_ps)
            self.logger.debug(result)
            return compareTernary(eq_ternary_type,result)
            # return self.eval_eq_in_ps(eq_query_str,new_prefix, parent_prefix, state_sequence)
        elif ep_group_type == EpistemicGroupType.Uniform:
            pass
        elif ep_group_type == EpistemicGroupType.Distribution:
            pass
        elif ep_group_type == EpistemicGroupType.Common:
            pass
        else:
            raise ValueError("Wrong ep group type")
    
    def eval_eq_single_agent(self,ep_type,agent_index,rest_eq_str,condition:Condition, parent_prefix,state_sequence, input_ps):
        
        # os_key_str = parent_prefix + "o ["+agent_index + "] "
        # if os_key_str in input_ps.keys():
        #     os = input_ps[os_key_str]
        # else:
        #     os = self.generate_os(state_sequence,agent_index)
        #     input_ps[os_key_str] = os
        os,os_key_str = self.generate_os(agent_index,parent_prefix,state_sequence,input_ps)
           
        if ep_type == EpistemicType.Knowledge:
            if rest_eq_str == '':
                # this is the last level, we need to evaluate the condition
                operator = condition.condition_operator
                variable1_name = condition.condition_variable
                if variable1_name in os[-1].keys():
                    value1 = os[-1][variable1_name]
                else:
                    raise ValueError("variable is not in the observation list",variable1_name,os[-1])
                variable2_name = condition.target_variable
                if variable2_name == None:
                    value2 = condition.target_value
                else:
                    value2 = os[-1][variable2_name]
                return evaluation(self.logger,operator,value1,value2)
            else:
                # it means there is still nesting query
                return self.eval_eq(rest_eq_str,condition, os_key_str, os,input_ps)
        elif ep_type == EpistemicType.Seeing:
            if rest_eq_str == '':
                # this is the last level, we need to evaluate the condition
                operator = condition.condition_operator
                variable1_name = condition.condition_variable
                return bool2Ternary_dict[variable1_name in os[-1].keys()]
            else:
                # it means there is still nesting query
                return bool2Ternary_dict[self.eval_eq(rest_eq_str,condition, os_key_str, os, input_ps)!= Ternary.UNKNOWN]
                
        elif ep_type == EpistemicType.Belief:
            ps,ps_key_str = self.generate_ps(os_key_str, os,state_sequence, input_ps)
            if rest_eq_str == '':
                # this is the last level, we need to evaluate the condition
                operator = condition.condition_operator
                variable1_name = condition.condition_variable
                if variable1_name in ps[-1].keys():
                    value1 = ps[-1][variable1_name]
                else:
                    raise ValueError("variable is not in the perspective list",variable1_name,os[-1])
                variable2_name = condition.target_variable
                if variable2_name == None:
                    value2 = condition.target_value
                else:
                    value2 = ps[-1][variable2_name]
                return evaluation(self.logger,operator,value1,value2)
            else:
                return self.eval_eq(rest_eq_str,condition, ps_key_str,ps, input_ps)
        else:
            raise ValueError("ep_type is not defined yet",ep_type)
            
        
    def generate_os(self,agent_index,parent_prefix,ps,input_ps):
        
        os_key_str = parent_prefix + "o ["+agent_index + "] "
        if os_key_str in input_ps.keys():
            os = input_ps[os_key_str]
        else:
            os = list()
            for state in ps:
                new_state = self.get1o(state,agent_index)
                os.append(new_state)
            input_ps[os_key_str] = os
        return os,os_key_str

    def get1o(self,parent_state,agt_id):
        new_state = dict()
        for var_index,value in parent_state.items():
            if self.external.checkVisibility(parent_state,agt_id,var_index,self.entities,self.functions,self.function_schemas):
                new_state.update({var_index: value})
            else:
                new_state.update({var_index: special_value.UNSEEN})
            
        return new_state




    # def epistemicGoalsHandler(self,epistemic_goals_dict, prefix, path, p_path):

    #     self.logger.debug('')
    #     self.logger.debug('epistemicGoalHandler')
    #     self.logger.debug('prefix: [%s]',prefix)
        
    #     action_list = [a for s,a in path]
    #     state_list = [s for s,a in path]
    #     self.logger.debug(action_list)
    #     old_actions_str = ActionList2DictKey(action_list=action_list[:-1])
    #     actions_str = ActionList2DictKey(action_list=action_list)
    #     # if "-,,move_right-b,sharing-a,move_right-c" in actions_str:
    #     #     self.logger.setLevel(logging.DEBUG)
            
    #     self.logger.debug("actions_str [%s], old_actions_str [%s]",actions_str,old_actions_str)
        
        
       
    #     result_dict = dict()
        
    #     for key, item in epistemic_goals_dict.items():
    #         eq_str = item.query
    #         self.logger.debug(eq_str)
    #         # eq = self.partially_converting_to_eq(eq_str)

    #         output = self.eval_eq_in_ps(eq_str,prefix, GLOBAL_PERSPECTIVE_INDEX, old_actions_str, actions_str, state_list, p_path,seeing_flag=False)
    #         result_dict[key] = output

    #     # self.logger.setLevel(logging.INFO)
                
    #     return result_dict
    
    # def eval_eq_in_pss(self,eq_str,prefix, parent_prefix, actions_str_old, actions_str_new, p_list, p_path,seeing_flag=False):
    #     eq = self.partially_converting_to_eq(eq_str)
    #     value_list = []
    #     for p in p_list:
            
    #         value = self.eval_eq_in_ps(eq_str,prefix, parent_prefix, actions_str_old, actions_str_new, p, p_path,seeing_flag)
    #         self.logger.debug("PSS: eq str: [%s] is [%s]",eq,value)
    #         value_list.append(value)
            
    #     if eq.q_type == Q_TYPE.MUTUAL or eq.q_type == Q_TYPE.COMMON:
    #         int_list = [v.value for v in value_list]
    #         minimum = min(int_list)
    #         self.logger.debug(" the value list is: [%s] with values [%s] and min value is [%s]",value_list,int_list,minimum)
    #         return min(value_list)
    #     elif eq.q_type == Q_TYPE.DISTRIBUTION:
    #         return max(value_list)
    #     else:
    #         raiseNotDefined()
    
    # def eval_eq_in_ps(self,eq_str,prefix, parent_prefix, actions_str_old, actions_str_new, p, p_path,seeing_flag=False):
    #     eq = self.partially_converting_to_eq(eq_str)
    #     self.logger.debug("input perspectives: [%s]",p)
    #     self.logger.debug("last state: [%s]",p[-1])
    #     if type(eq) == str:
    #         # for knowledge and belief
            
    #         result = eval_var_from_str(self.logger,eq,p[-1])
    #         self.logger.debug("eq str: [%s] is [%s]",eq,result)
    #         return result
    #     else:
    #         seeing_flag = True if eq.eq_type == EQ_TYPE.SEEING else False
    #         if len(eq.q_group) >1:
    #             new_ps = list()
    #             if eq.q_type == Q_TYPE.COMMON:
    #                 new_ps = [p]
    #                 common_counter = 0
    #                 temp_ps = None
    #                 while not new_ps == temp_ps:
    #                     common_counter +=1
    #                     for_p = new_ps.copy()
    #                     temp_ps = new_ps.copy()
    #                     new_ps = list()
    #                     # added = set()
    #                     for temp_p in for_p:
    #                         for agt_id in eq.q_group:
    #                             new_prefix = prefix + eq.header_str + " " + EpistemicQuery.agtList2Str([agt_id]) + " "
    #                             self.logger.debug("input perspective: [%s]",temp_p)
    #                             new_temp_p = self.get1ps(agt_id,temp_p, new_prefix, actions_str_old, actions_str_new, p_path)
    #                             self.logger.debug("[%s]'s perspective: [%s]",agt_id,new_temp_p)
    #                             new_t_p_str = str(new_temp_p)
    #                             if not new_temp_p in new_ps:
    #                             # if new_t_p_str not in added:
    #                                 # added.add(new_t_p_str)
    #                                 new_ps.append(new_temp_p)
    #                     self.logger.debug("all perspective: [%s]",new_ps)
    #                 self.common_iteration_list.append(common_counter)
    #             elif eq.q_type == Q_TYPE.DISTRIBUTION:
    #                 temp_ps = list()
    #                 for agt_id in eq.q_group:
    #                     new_prefix = prefix + eq.header_str + " " + EpistemicQuery.agtList2Str([agt_id]) + " "
    #                     new_temp_p = self.get1ps(agt_id,p, new_prefix, actions_str_old, actions_str_new, p_path)
    #                     temp_ps.append(new_temp_p)
                        
    #                 # generate all possible values

                    
    #                 temp_v_dict_list = [dict() for i in range(len(temp_ps[0]))]
    #                 for temp_p in temp_ps:
    #                     for i in range(len(temp_p)):
    #                         for k,v in temp_p[i].items():
    #                             if k not in temp_v_dict_list[i].keys():
    #                                 temp_v_dict_list[i][k] = set()
    #                             temp_v_dict_list[i][k].add(v)
    #                 self.logger.debug("all values [%s]",temp_v_dict_list)
                    
    #                 # remove None here
    #                 for i in range(len(temp_v_dict_list)):
    #                     for k,v in temp_v_dict_list[i].items():
    #                         if not v == {None}:
    #                             temp_set = set()
    #                             for item in v:
    #                                 if not item == None:
    #                                     temp_set.add(item)
    #                             temp_v_dict_list[i][k] = temp_set
    #                 self.logger.debug("updated all values [%s]",temp_v_dict_list)
                    
                    
                    
    #                 state_space_list = list()
    #                 for i in  range(len(temp_v_dict_list)):
    #                     v_dict=temp_v_dict_list[i]
    #                     state_space_list.append([])
    #                     empty_state = {}
    #                     myQ = Queue()
    #                     myQ.push(empty_state)
    #                     while not myQ.isEmpty():
    #                         temp_dict = myQ.pop()
    #                         flag = True
    #                         for k,v_set in v_dict.items():
    #                             if k not in temp_dict.keys():
    #                                 flag = False
    #                                 for v in v_set:
    #                                     new_temp_dict = temp_dict.copy()
    #                                     new_temp_dict[k] = v
    #                                     myQ.push(new_temp_dict)
    #                                 break
    #                         if flag:
    #                             state_space_list[i].append(temp_dict)
                            
                            
    #                     self.logger.debug("The number states is [%s] for timestamp [%s]",len(state_space_list[i]),i)
    #                     self.logger.debug("state space is [%s]",state_space_list[i])
                        
    #                 self.logger.debug("all state space is [%s]",state_space_list)
                    
    #                 for temp_p in temp_ps:
    #                     empty_sequence = []
    #                     myQ = Queue()
    #                     myQ.push(empty_sequence)
    #                     while not myQ.isEmpty():
    #                         temp_sequence = myQ.pop()
    #                         current_index = len(temp_sequence)
    #                         if not len(temp_sequence) == len(state_space_list):
    #                             exist_state = temp_p[current_index]
    #                             for matching_state in state_space_list[current_index]:
    #                                 self.logger.debug("matching_state [%s]",matching_state)
    #                                 self.logger.debug("exist_state [%s]",exist_state)
    #                                 flag = True
    #                                 for k,v in matching_state.items():
    #                                     if k in exist_state.keys():
    #                                         if not exist_state[k] == None and not exist_state[k] == matching_state[k] :
    #                                             flag = False
    #                                             continue
    #                                 if flag:
    #                                     new_sequence = temp_sequence + [matching_state]
    #                                     myQ.push(new_sequence)
    #                         else:
    #                             if not temp_sequence in new_ps:
                                    
    #                                 new_ps.append(temp_sequence)                                            
    #             else:
    #                 for agt_id in eq.q_group:
    #                     new_prefix = prefix + eq.header_str + " " + EpistemicQuery.agtList2Str([agt_id]) + " "
    #                     new_temp_p = self.get1ps(agt_id,p, new_prefix, actions_str_old, actions_str_new, p_path)
    #                     new_ps.append(new_temp_p)

    #             result_list = []
                
                
    #             self.logger.debug("[%s] generated ps: [%s]",eq_str,new_ps)
    #             for p in new_ps:
                    
    #                 value = self.eval_eq_in_ps(eq.q_content,prefix, parent_prefix, actions_str_old, actions_str_new, p, p_path,seeing_flag)
    #                 self.logger.debug("PSS: eq str: [%s] is [%s]",eq,value)
    #                 result_list.append(value)
                    
    #             if eq.q_type == Q_TYPE.MUTUAL or eq.q_type == Q_TYPE.COMMON:
    #                 int_list = [v.value for v in result_list]
    #                 minimum = min(result_list)
    #                 self.logger.debug(" the value list is: [%s] with values [%s] and min value is [%s]",result_list,int_list,minimum)
    #                 # todo: to be changed for inner ternary
    #                 return min(result_list)
    #             elif eq.q_type == Q_TYPE.DISTRIBUTION:
    #                 return max(result_list)
    #             else:
    #                 raiseNotDefined()
    #             # new_eq_str = EpistemicQuery.partial_eq2str(eq.q_type,eq.eq_type,eq.q_group) + eq.q_content
                
    #             # return self.eval_eq_in_pss(new_eq_str,new_prefix, prefix, actions_str_old, actions_str_new, new_ps, p_path,seeing_flag)
            
            
    #         elif len(eq.q_group) == 1:
    #             new_prefix = prefix + eq.header_str + " " + EpistemicQuery.agtList2Str(eq.q_group) + " "
    #             self.logger.debug("input perspective: [%s]",p)
    #             new_p = self.get1ps(eq.q_group[0],p,new_prefix, actions_str_old, actions_str_new,p_path)
    #             self.logger.debug("[%s]'s perspective: [%s]",eq.q_group[0],new_p)
    #             result = self.eval_eq_in_ps(eq.q_content,new_prefix,prefix, actions_str_old, actions_str_new, new_p, p_path,seeing_flag)
    #             self.logger.debug("query [%s] is [%s]" % (eq_str,result))
    #             if result == eq.value_type:
    #                 self.logger.debug("query [%s] is [%s] so parent [%s] returns True" % (eq.q_content,result,eq_str))
    #                 return PDDL_TERNARY.TRUE
    #             else:
    #                 self.logger.debug("query [%s] is [%s] so parent [%s] returns False" % (eq.q_content,result,eq_str))
    #                 return PDDL_TERNARY.FALSE 
    #         else:
    #             self.logger.error("group size is wrong")
    #             raiseNotDefined()


    # def get1ps(self,agt_id,p,prefix, actions_str_old, actions_str_new,p_path):
    #     parent_state = p[-1]
    #     parent_ps = p
    #     p_str = str(p)
    #     # self.logger.debug(actions_str_new)
    #     # self.logger.debug(ActionList2DictKey([ROOT_NODE_ACTION]))
    #     # self.logger.debug("test")
    #     # self.logger.debug("[%s]",)
    #     self.logger.debug("agt_id [%s]",agt_id)
    #     self.logger.debug("prefix [%s]",prefix)
  
    #     if actions_str_new == ActionList2DictKey([ROOT_NODE_ACTION]):

    #         if actions_str_old not in p_path:
    #             p_path[actions_str_old] = dict()
    #             p_path[actions_str_old]["p_parent"] = list({})
    #             p_path[actions_str_old]["observation"] = list({})
    #             p_path[actions_str_old]["perspectives"] = list({})
    #         current_level_dict = dict()
    #         current_level_dict["p_parent"] = list()
    #         current_level_dict["observation"] = list()
    #         current_level_dict["perspectives"] = list()
    #     else:
    #         existing_p_dict = p_path[actions_str_old]
    #         current_level_dict = existing_p_dict[prefix]
            
            
    #     self.logger.debug("actions_str_old [%s]",actions_str_old)
    #     self.logger.debug("current_level_dict [%s]",current_level_dict)

            
    #     # self.logger.debug(p_path)
        
    #     if not actions_str_new in p_path.keys():
    #         p_path[actions_str_new] = dict()
    #     if not prefix in p_path[actions_str_new].keys():
    #         p_path[actions_str_new][prefix] = dict()
    #         p_path[actions_str_new][prefix]['p_parent'] = parent_ps
        
    #     self.logger.debug("actions_str_new [%s]",actions_str_new)
        
    #     self.logger.debug("p_path[actions_str_new][prefix] [%s]",p_path[actions_str_new][prefix])
        
        
    #     if p_path[actions_str_new][prefix]['p_parent'] == parent_ps:
    #         self.logger.debug("p_parent is the same")
    #         if "observation" in p_path[actions_str_new][prefix].keys() and not p_path[actions_str_new][prefix]["observation"]==list():
    #             self.logger.debug("observation is not empty [%s]",p_path[actions_str_new][prefix]['observation'])
    #             new_os = p_path[actions_str_new][prefix]['observation']
    #         else:
                
    #             p_path[actions_str_new][prefix]['p_parent'] = parent_ps
    #             old_os = current_level_dict["observation"]
    #             new_o = self.get1o(parent_state,agt_id)
    #             new_os =  old_os + [new_o]
    #             self.logger.debug("observation is not found [%s]",new_os)
    #             p_path[actions_str_new][prefix]['observation'] = new_os 
            
    #         if "perspectives" in p_path[actions_str_new][prefix].keys() and not p_path[actions_str_new][prefix]["perspectives"]==list():
    #             return p_path[actions_str_new][prefix]['perspectives']
    #         else:
                
    #             old_ps = current_level_dict["perspectives"]
    #             new_p = self.get1p(parent_state,new_os,parent_ps)
    #             new_ps =  old_ps + [new_p]
    #             p_path[actions_str_new][prefix]['perspectives'] = new_ps
                
    #             return new_ps
    #     else:
    #         self.logger.debug("p_parent is the different, must be cb")
    #         self.logger.debug("input p is: [%s]",p)
    #         new_os = []
    #         for temp_p in p:
    #             temp_o = self.get1o(temp_p,agt_id)
    #             new_os.append(temp_o)
            
    #         new_ps = []
    #         for i in range(len(p)):
    #             temp_p = self.get1p(p[i],new_os[:i+1:],parent_ps)
    #             new_ps.append(temp_p)
            
    #         return new_ps

    

    # # def get1o(self,agt_id,p,prefix, actions_str_old, actions_str_new,p_path):

    # def get1p(self,parent_state,os,parent_ps):
    #     new_state = {}
    #     for v_index,e in parent_state.items():
    #         # self.logger.debug('\t find history value for [%s],[%s]',v_index,e)
    #         ts_index = self._identifyLastSeenTimestamp(os,v_index)
    #         # self.logger.debug('\t last seen timestamp index: [%s]',ts_index)
    #         value = self._identifyMemorizedValue( parent_ps, ts_index,v_index)
    #         # self.logger.debug('\t [%s]"s value is: [%s]',v_index,value)
    #         new_state.update({v_index:value})
    #     return new_state 
        
    # def _identifyLastSeenTimestamp(self,observation_list:typing.List,v_index):
    #     ts_index_temp = len(observation_list) -1
        
    #     # checking whether the variable has been seen by the agent list before
    #     while ts_index_temp >=0:
            
    #         # state,_ = path[ts_index_temp]

    #         # checking with observation
    #         if v_index in observation_list[ts_index_temp] :
    #             return ts_index_temp
    #         else:
    #             ts_index_temp -= 1
    #     return -1
    
    
    # # def _identifyMemorizedValue(self,observation_list, ts_index,v_index):
    # #     ts_index_temp = ts_index
    # #     if ts_index_temp <0: return None
        
    # #     while ts_index_temp < len(observation_list):

    # #         # temp_observation = self.getObservations(external,state,agt_id,entities,variables)
    # #         temp_observation = observation_list[ts_index_temp]
    # #         if not v_index in temp_observation or temp_observation[v_index] == None:
    # #             ts_index_temp += 1
    # #         else:
    # #             return temp_observation[v_index]      
             
    # #     while ts_index_temp >=0:

    # #         # temp_observation = self.getObservations(external,state,agt_id,entities,variables)
    # #         # logger.debug(f'temp observation in identifyMemorization: {temp_observation}')
    # #         temp_observation = observation_list[ts_index_temp]
    # #         if not v_index in temp_observation or temp_observation[v_index] == None:
    # #             ts_index_temp += -1
    # #         else:
    # #             return temp_observation[v_index]
        
    # #     ts_index_temp = ts_index + 1
        
 
    # #     return None

    # # this is not wrong, but could not find a solution, need more investigation
    # # it turns out it correct, just the argument is wrong, it should be ps instead of os from parent
    # def _identifyMemorizedValue(self,ps, ts_index,v_index):
    #     ts_index_temp = ts_index
    #     if ts_index_temp <0: return None
        
    #     while ts_index_temp >=0:

    #         # temp_observation = self.getObservations(external,state,agt_id,entities,variables)
    #         # logger.debug(f'temp observation in identifyMemorization: {temp_observation}')
    #         temp_observation = ps[ts_index_temp]
    #         if not v_index in temp_observation or temp_observation[v_index] == None:
    #             ts_index_temp += -1
    #         else:
    #             return temp_observation[v_index]
        
    #     ts_index_temp = ts_index + 1
        
    #     while ts_index_temp < len(ps):

    #         # temp_observation = self.getObservations(external,state,agt_id,entities,variables)
    #         temp_observation = ps[ts_index_temp]
    #         if not v_index in temp_observation or temp_observation[v_index] == None:
    #             ts_index_temp += 1
    #         else:
    #             return temp_observation[v_index]        
    #     return None
    
    
    # # this is wrong
    # # def _identifyMemorizedValue(self,observation_list, ts_index,v_index):
    # #     ts_index_temp = ts_index
    # #     if ts_index_temp <0:
    # #         self.logger.debug("return None because agent has not seen this variable ever")
    # #         return None
        
    # #     self.logger.debug("observation list: [%s]",observation_list)
    # #     for i in range(len(observation_list)):
    # #         index = len(observation_list) - i -1
    # #         if v_index in observation_list[index].keys() and not observation_list[index][v_index] == None:
    # #             return observation_list[index][v_index]    
    # #     return None


    # # def _generateOnePerspectives(self,agt_id,p,p_path):
    #     # state_template = path[0][0]
    #     # new_path = []
        
    #     # observation_list = []
        
    #     # for i in range(len(path)):
    #     #     observation_list.append(self._getOneObservation(path[i][0],agt_id))
    #     # self.logger.debug('observation list is [%s]',observation_list)
    #     # for i in range(len(path)):
    #     #     new_state = self._generateOnePerspective(state_template,observation_list[:i+1])
    #     #     new_path.append((new_state,path[i][1]))
    #     # return new_path

    # # def _generateOnePerspective(self,state_template,observation_list):
    # #     new_state = {}
    # #     for v_index,e in state_template.items():
    # #         self.logger.debug('\t find history value for [%s],[%s]',v_index,e)
    # #         ts_index = self._identifyLastSeenTimestamp(observation_list,v_index)
    # #         self.logger.debug('\t last seen timestamp index: [%s]',ts_index)
    # #         value = self._identifyMemorizedValue( observation_list, ts_index,v_index)
    # #         self.logger.debug('\t [%s]"s value is: [%s]',v_index,value)
    # #         new_state.update({v_index:value})
    # #     return new_state 

    
    


    # def partially_converting_to_eq(self,eq_str):
    #     self.logger.debug(eq_str)
    #     match = re.search(EQ_PREFIX,eq_str)
    #     if match == None:
    #         self.logger.debug("match not found")
    #         # it means this might be a variable = value string instead of a eq_string
    #         # for example(= (face c) 'head'))
    #         # self.logger.debug("return eq string [%s]",eq_str)
    #         return eq_str
    #     else:
    #         eq_list = eq_str.split(" ")
    #         value_type = eq_list[0]
    #         header_str = eq_list[1]
    #         agents = eq_list[2]
    #         content = eq_str[len(header_str)+len(agents)+len(value_type)+3:]
    #         return EpistemicQuery(value_type,header_str,agents,content)
        