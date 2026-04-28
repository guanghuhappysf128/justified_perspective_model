import enum
# import pddl_model
import typing
import re
import logging
import copy
from util import PDDL_TERNARY,EP_VALUE
from util import EpistemicQuery,EQ_TYPE,Q_TYPE


LOGGER_NAME = "forward_epistemic_model"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG
from util import setup_logger
from util import ActionList2DictKey,GLOBAL_PERSPECTIVE_INDEX
from util import intersectBeliefValue,intersectUpdates,unionBeliefValue,unionUpdate
from util import intersectKnowledgeValue,unionKnowledgeValue
PRE_INIT_PDICT_KEY = ActionList2DictKey([])


class EpistemicModel:
    logger = None
    external = None
    entities = {}
    variables = {}
    
    
    def __init__(self, handlers, entities, variables, external):
        self.logger = setup_logger(LOGGER_NAME,handlers,logger_level=LOGGER_LEVEL) 
        self.entities = entities
        self.variables = variables
        self.external = external
        self.goal_p_keys = None
        self.pre_p_keys = None
        self.all_p_keys = list()


    def allPerspectiveKeys(self, epistemic_goals_dict,prefix):
        self.logger.debug('')
        self.logger.debug('allPerspectiveKeys')
        self.logger.debug('prefix: [%s]',prefix)
        eq_dict = {}
        perspective_name_list = set([''])
        for epistemic_goal_str,value in epistemic_goals_dict.items():
            temp_eq = self.partially_converting_to_eq(epistemic_goal_str)
            if type(temp_eq) == str:
                # this is the end of eq
                # no need to generate perspectives
                # just need to evaluate the result and return value
                # key = f"{prefix} {temp_eq}"
                # perspective_name_list.add("")
                pass
                
            else:
                # it means the query is not to the last level yet
                agents_str = temp_eq.agents_str
                self.logger.debug("agent_str: [%s]",agents_str)
                content = temp_eq.q_content
                # key = f"{prefix} {temp_eq.header_str} {agents_str}"
                key = f"{temp_eq.header_str} {agents_str} "
                if key in eq_dict.keys():
                    eq_dict[key]['content'].update({content:value})
                else:
                    eq_dict[key] = {'q_type':temp_eq.q_type,'eq_type':temp_eq.eq_type,'q_group':temp_eq.q_group,'content':{content:value}}
                if "," in agents_str:
                    # it means this is a group query
                    agt_id_list = EpistemicQuery.agtStr2List(agents_str)
                    for i in agt_id_list:
                        agt_str = EpistemicQuery.agtList2Str([i])
                        agt_key = f"{temp_eq.header_str[1]} {agt_str} "
                        self.logger. debug("agent key is [%s]",agt_key)
                        if i in eq_dict.keys():
                            eq_dict[agt_key]['content'].update({content:None})
                        else:
                            eq_dict[agt_key] = {'q_type':temp_eq.q_type,'eq_type':temp_eq.eq_type,'q_group':temp_eq.q_group,'content':{content:None}}
                    
        self.logger. debug('eq_dict in allPerspectiveKeys [%s]',eq_dict)       
        
        for key,item in eq_dict.items():
            # generate perspectives
            new_path = []
            eq_type = item['eq_type']
            
            self.logger.debug("calling local perspective for [%s] and content [%s]",key,item['content'])
            local_p_keys_list = self.allPerspectiveKeys(item['content'],key)
            
            self.logger. debug("local_p_keys_list is [%s]",local_p_keys_list)
            # perspectives_dict.update(local_perspectives)
            self.logger.debug('perspectives_dict before adding local [%s]',perspective_name_list)
            for lp_key in local_p_keys_list:
                p_key = key+lp_key
                perspective_name_list.add(p_key)
            
            self.logger.debug('perspectives_dict after adding local [%s]',perspective_name_list)
        
        perspective_name_list = sorted(perspective_name_list, key=len)
        
        self.logger.debug('returned [%s]',perspective_name_list)
        return perspective_name_list
        


    def epistemicGoalsHandler(self,epistemic_goals_dict, prefix, path, p_path):
        
        self.logger.debug('')
        self.logger.debug('epistemicGoalHandler')
        self.logger.debug('prefix: [%s]',prefix)
        
        action_list = [a for s,a in path]
        
        previous_acts_name_str = ActionList2DictKey(action_list=action_list[:-1])
        acts_name_str = ActionList2DictKey(action_list=action_list)
        self.logger.debug("acts_name_str [%s], previous_acts_name_str [%s]",acts_name_str,previous_acts_name_str)
        
        # all_p_keys = self.allPerspectiveKeys(epistemic_goals_dict,prefix)
        

        # eq_dict = {}
        result_dict = dict()
        
        # there is no pervious perspectives path
        
        if PRE_INIT_PDICT_KEY not in p_path.keys():
            # Then there is no perspective before the initial perspectives
            p_path[PRE_INIT_PDICT_KEY] = dict()
        
        # the following session to generate pre_init perspectives
        for key in self.all_p_keys:
            
            if key not in p_path[PRE_INIT_PDICT_KEY].keys():
                self._initialize_P(key,path[-1][0],p_path)
                # # it mean this perspective has not been generated
                # # it should be true twice in a search
                # # 1. it is the first time check goals
                # # 2. it is the first time check all preconditions
                # if key == GLOBAL_PERSPECTIVE_INDEX:
                #     # global perspectives
                #     empty_update = dict()
                #     empty_state = dict()
                #     p_path[PRE_INIT_PDICT_KEY][key] = dict()
                #     for v_name in path[-1][0].keys():
                #         empty_update[v_name] = False
                #         empty_state[v_name] = EP_VALUE.HAVENT_SEEN
                #     # initial perspective for "" is the current global state
                #     p_path[PRE_INIT_PDICT_KEY][key]['states'] = [empty_state]
                #     p_path[PRE_INIT_PDICT_KEY][key]['updates'] =[empty_update]
                # else:
                #     p_path[PRE_INIT_PDICT_KEY][key] = dict()
                #     # every one level will have two space in between
                #     depth_indicator = key.count(' ')
                #     # assert(depth_indicator %2 == 0, f"wrong key {key} when generating perspectives")
                #     if depth_indicator >2:
                #         parent_key_index = key[:key[:key.rfind(" ")].rfind(" ")].rfind(' ')
                #         parent_key = key[:parent_key_index+1]
                #         current_key = key[parent_key_index+1:]
                        
                #         self.logger.debug("parent_key_index is [%s]",parent_key_index)
                #         self.logger.debug("key is [%s]",key)
                #         self.logger.debug("parent_key is [%s]",parent_key)
                #         self.logger.debug("current_key is [%s]",current_key)
                #     else:
                #         parent_key = GLOBAL_PERSPECTIVE_INDEX
                #         current_key = key
                #     # assert(parent_key not in p_path[' '].keys(), f"wrong order handling perspectives, exists {p_path['None'].keys()}, but doing {parent_key}")
                    
                #     eq_type_str = current_key.split(' ')[0]
                #     # agent_str = current_key.split(' ')[1][1:-1]
                #     # initial_p_path = dict()
                #     empty_state = dict()
                #     empty_updates = dict()
                #     for v_name in path[-1][0].keys():
                #         empty_state[v_name]= EP_VALUE.HAVENT_SEEN
                #         empty_updates[v_name]= False
                #     p_path[PRE_INIT_PDICT_KEY][key]['states'] = [empty_state]
                #     p_path[PRE_INIT_PDICT_KEY][key]['updates'] = [empty_updates]
                    
        self.logger.debug("p_path after initialization: [%s]",p_path)
        if acts_name_str not in p_path.keys():
            p_path[acts_name_str] = {}
            # all_p_keys list are sorted, the short perspectives are going to be generated first
        self.logger. debug("all_p_keys: [%s]",self.all_p_keys)
        for key in self.all_p_keys:
            if key not in p_path[acts_name_str].keys(): 
                if key == GLOBAL_PERSPECTIVE_INDEX:
                    empty_update = {}
                    state = [path[-1][0]]
                    p_path[acts_name_str][key] = dict()
                    for v_name in path[-1][0].keys():
                        # does not matter for the global state
                        empty_update[v_name] = False
                    # initial perspective for "" is the current global state
                    
                    self.logger.debug('acts_name_str [%s], key [%s], previous_acts_name_str [%s]',acts_name_str,key,previous_acts_name_str)
                    p_path[acts_name_str][key]['states'] = p_path[previous_acts_name_str][key]['states'] + state
                    p_path[acts_name_str][key]['updates'] = p_path[previous_acts_name_str][key]['updates']  + [empty_update]
                else:
                    p_path[acts_name_str][key] = dict()
                    # every one level will have two space
                    depth_indicator = key.count(" ")
                    # assert(depth_indicator %2 == 1, f"wrong key {key} when generating perspectives")
                    if depth_indicator >2:
                        parent_key_index = key[:key[:key.rfind(" ")].rfind(" ")].rfind(" ")
                        parent_key = key[:parent_key_index+1]
                        current_key = key[parent_key_index+1:]
                        
                        self.logger. debug("parent_key_index is [%s]",parent_key_index)
                        self.logger. debug("key is [%s]",key)
                        self.logger. debug("parent_key is [%s]",parent_key)
                        self.logger. debug("current_key is [%s]",current_key)
                    else:
                        parent_key = GLOBAL_PERSPECTIVE_INDEX
                        current_key = key
                    # assert(parent_key not in p_path[acts_name_str].keys(), f"wrong order handling perspectives, exists {p_path[acts_name_str].keys()}, but doing {parent_key}")
                    self.logger. debug("current key is [%s]",current_key)
                    eq_type_str = current_key.split(" ")[0]
                    # agent_str = current_key.split(' ')[1][1:-1]
                    # agent_list = agent_str.split(",")
                    assert eq_type_str in EpistemicQuery.mapping.keys(),"[%s] is not a valid eq_type_string" % eq_type_str
                    q_type,eq_type = EpistemicQuery.mapping[eq_type_str]
                    self.logger.debug("p_path keys are: [%s]",p_path.keys())
                    self.logger.debug("p_path [%s] is: [%s]",acts_name_str,p_path[acts_name_str])
                    self.logger.debug("p_path [%s] keys are: [%s]",acts_name_str,p_path[acts_name_str].keys())
                    self.logger.debug("p_path [%s] is: [%s]",parent_key,p_path[acts_name_str][parent_key])
                    self.logger.debug("p_path [%s] is: [%s]\n----",parent_key,p_path[acts_name_str][parent_key]['states'][-1])

                    self.logger.debug("p_path [%s] is: [%s]",previous_acts_name_str,p_path[previous_acts_name_str])
                    self.logger.debug("p_path [%s] is: [%s]",key,p_path[previous_acts_name_str][key])
                    self.logger.debug("p_path before generation: [p_path]")
                    if eq_type == EQ_TYPE.BELIEF:
                        # state,updating = self._generateGroupPerspectives(q_type,agent_list,p_path[acts_name_str][parent_key]['states'][-1],p_path[previous_acts_name_str])
                        self._generateGroupPerspectives(
                            q_type=q_type,
                            group_p_key=current_key,
                            acts_name_str=acts_name_str,
                            previous_acts_name_str=previous_acts_name_str,
                            parent_key= parent_key,
                            p_path=p_path)
                    elif eq_type == EQ_TYPE.KNOWLEDGE:
                        self._generateGroupObservations(q_type,current_key,p_path[acts_name_str][parent_key]['states'][-1],p_path[previous_acts_name_str])
                    elif eq_type == EQ_TYPE.SEEING:
                        self._generateGroupObservations(q_type,current_key,p_path[acts_name_str][parent_key]['states'][-1],p_path[previous_acts_name_str])
                    
                    # self.logger.debug("before p_path [%s][%s] is: [%s]",acts_name_str,key,p_path[acts_name_str][key])
                    # p_path[acts_name_str][key]['states'] = p_path[previous_acts_name_str][key]['states'] +[state]
                    # self.logger.debug("after p_path [%s][%s] is: [%s]",acts_name_str,key,p_path[acts_name_str][key])
                    # p_path[acts_name_str][key]['updates'] = p_path[previous_acts_name_str][key]['updates']+[updating]

        
        self.logger.debug("p_path is [%s]",p_path)
        
        for eq_str, value in epistemic_goals_dict.items():

            p_str = eq_str[:eq_str.rfind(' ')+1]
            eqv_str = eq_str[eq_str.rfind(' ')+1:][1:-1]
            v_name = eqv_str.split(',')[0][1:-1]
            v_value = eqv_str.split(',')[1][1:-1]
            self.logger.debug("acts_name_str is [%s] in p_path,keys: [%s]",acts_name_str,p_path.keys())
            self.logger.debug("acts_name_str is [%s] in p_path,keys: [%s]",p_str,p_path[acts_name_str].keys())
            perspective = p_path[acts_name_str][p_str]['states'][-1]
                
            if v_name in perspective.keys():
                if perspective[v_name] == EP_VALUE.HAVENT_SEEN:
                    
                    self.logger.debug("The eq_str [%s] is FALSE because of HAVENT_SEEN",eq_str)
                    result_dict[eq_str] = PDDL_TERNARY.FALSE

                elif perspective[v_name] == EP_VALUE.NOT_SEEING:
                    
                    self.logger.debug("The eq_str [%s] is UNKNOWN because of NOT_SEEING",eq_str)
                    result_dict[eq_str] = PDDL_TERNARY.UNKNOWN   
                     
                elif perspective[v_name] == v_value:
                    
                    self.logger.debug("The eq_str [%s] is TRUE because of value is same",eq_str)
                    result_dict[eq_str] = PDDL_TERNARY.TRUE
                else:
                    
                    self.logger.debug("The eq_str [%s] is FALSE because of value is different",eq_str)
                    result_dict[eq_str] = PDDL_TERNARY.FALSE
            else:
                
                self.logger.debug("The eq_str [%s] is UNKNOWN because of not in perspective",eq_str)
                result_dict[eq_str] = PDDL_TERNARY.UNKNOWN
                
        return result_dict


    def _initialize_P(self,p_key,any_full_state,p_path):
        # if action_key not in p_path.keys():
        #     p_path[action_key] = dict()
        

        # if action_key == PRE_INIT_PDICT_KEY:
        empty_state = dict()
        empty_updates = dict()
        for v_name in any_full_state.keys():
            empty_state[v_name]= EP_VALUE.HAVENT_SEEN
            empty_updates[v_name]= False
        p_path[PRE_INIT_PDICT_KEY][p_key] = dict()
        p_path[PRE_INIT_PDICT_KEY][p_key]['states'] = [empty_state]
        p_path[PRE_INIT_PDICT_KEY][p_key]['updates'] = [empty_updates]

    def _evaluateContent(self,path,temp_eq):

        state = path[-1][0]
        # optional to add keywords to represent the value of formula
        # and it can be put into the external function
        
        # assuming the query only about value of variables here
        content_list = temp_eq[1:-1].split(",")
        v_index = content_list[0].replace("'","")
        value = content_list[1].replace("'","")
        
        
        if v_index not in state.keys():
            return PDDL_TERNARY.UNKNOWN
        elif state[v_index] == value:
            return PDDL_TERNARY.TRUE
        else:
            return PDDL_TERNARY.FALSE
    
    def _generateGroupPerspectives(self,q_type,group_p_key,acts_name_str,previous_acts_name_str,parent_key,p_path):
        # if len(q_group) == 1:
        #     new_state,new_update = self._generateOnePerspectives(q_group[0],parent_state,p_path)
        #     return new_state,new_update
        # else:
        agent_str = group_p_key.split(' ')[1]
        q_group = EpistemicQuery.agtStr2List(agent_str=agent_str)
        full_group_p_key = parent_key + group_p_key


        if q_type == Q_TYPE.MUTUAL:
            
            new_state,new_update = self._mergePUs(q_group,group_p_key,parent_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag=True)
            p_path[acts_name_str][full_group_p_key]["states"] = p_path[previous_acts_name_str][full_group_p_key]["states"] + [new_state]
            p_path[acts_name_str][full_group_p_key]["updates"] = p_path[previous_acts_name_str][full_group_p_key]["updates"] + [new_update]
        elif q_type == Q_TYPE.DISTRIBUTION:
            new_state,new_update = self._mergePUs(q_group,group_p_key,parent_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag=False)
            p_path[acts_name_str][full_group_p_key]["states"] = p_path[previous_acts_name_str][full_group_p_key]["states"] + [new_state]
            p_path[acts_name_str][full_group_p_key]["updates"] = p_path[previous_acts_name_str][full_group_p_key]["updates"] + [new_update]
        elif q_type == Q_TYPE.COMMON:
            new_state,new_update = self._fixpointPUs(q_group,group_p_key,parent_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag=True)
            self.logger.debug("cb is [%s]",new_state)
            p_path[acts_name_str][full_group_p_key]["states"] = p_path[previous_acts_name_str][full_group_p_key]["states"] + [new_state]
            p_path[acts_name_str][full_group_p_key]["updates"] = p_path[previous_acts_name_str][full_group_p_key]["updates"] + [new_update]
        else:
            assert False,"wrong Q type"

    def _fixpointPUs(self,q_group,group_p_key,parent_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag = True):
        # generating first level
        full_group_p_key = parent_key+group_p_key.replace("c","e")
        new_state,new_update = self._mergePUs(q_group,full_group_p_key,parent_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag=True)
        if full_group_p_key not in p_path[previous_acts_name_str].keys():
            self._initialize_P(full_group_p_key,new_state,p_path)
        p_path[acts_name_str][full_group_p_key] = dict()
        p_path[acts_name_str][full_group_p_key]["states"] = p_path[previous_acts_name_str][full_group_p_key]["states"] + [new_state]
        p_path[acts_name_str][full_group_p_key]["updates"] = p_path[previous_acts_name_str][full_group_p_key]["updates"] + [new_update]
        temp_state = dict()
        temp_update = dict()
        temp_full_group_p_key = full_group_p_key
        while (not temp_state == new_state) or (not temp_update == new_update):
            
            temp_state = new_state
            temp_update = new_update
            self.logger.debug("temp_state is: [%s]",temp_state)
            full_group_p_key = temp_full_group_p_key.replace("c","e")
            new_state,new_update = self._mergePUs(q_group,group_p_key,full_group_p_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag=True)
            if full_group_p_key not in p_path[previous_acts_name_str].keys():
                self._initialize_P(full_group_p_key,new_state,p_path)
            p_path[acts_name_str][full_group_p_key] = dict()
            p_path[acts_name_str][full_group_p_key]["states"] = p_path[previous_acts_name_str][full_group_p_key]["states"] + [new_state]
            p_path[acts_name_str][full_group_p_key]["updates"] = p_path[previous_acts_name_str][full_group_p_key]["updates"] + [new_update]
            temp_full_group_p_key = full_group_p_key
        return new_state,new_update



    def _mergePUs(self,q_group,group_p_key,parent_key,acts_name_str,previous_acts_name_str,p_path,intersection_flag = True):

        self.logger.debug("merging perspectives")
        self.logger.debug("q_group is [%s]",q_group)
        self.logger.debug("parent key is [%s]",parent_key)
        self.logger.debug("group_p_key is [%s]",group_p_key)

        
        eq_type_str = group_p_key.split(" ")[0]
        if len(eq_type_str) > 1:
            eq_type_str = eq_type_str[1]
        agt_str = EpistemicQuery.agtList2Str([q_group[0]])
        agt_str = eq_type_str + " " + agt_str
        p_key = parent_key + agt_str + " " #if not parent_key == GLOBAL_PERSPECTIVE_INDEX else agt_str + " "
        # p_key = eq_type_str + " " + p_key
        self.logger. debug("p_key is [%s]",p_key)

        self.logger.debug("p_path [%s]'s keys are [%s]: ",acts_name_str, p_path[acts_name_str].keys())


        parent_state = p_path[acts_name_str][parent_key]["states"][-1]
        self.logger.debug("parent state [%s]: [%s]",parent_key,parent_state)
        
        if p_key not in p_path[previous_acts_name_str]:
            self._initialize_P(p_key,parent_state,p_path)
        previous_pu = p_path[previous_acts_name_str][p_key]
        

        new_state,new_update = self._generateOnePerspectives(q_group[0],parent_state,previous_pu)
        self.logger.debug("[%s] state: [%s]",p_key,new_state)
        self.logger.debug("[%s] new_update: [%s]",p_key,new_update)
        # update p_path for future reference

        p_path[acts_name_str][p_key] = dict()
        p_path[acts_name_str][p_key]['states'] = previous_pu['states'] + [new_state]
        p_path[acts_name_str][p_key]['updates'] = previous_pu['updates'] + [new_update]
        new_state_list = p_path[acts_name_str][p_key]['states'] 
        new_update_list = p_path[acts_name_str][p_key]['updates'] 


        self.logger.debug("[%s]'s p: [%s]",q_group[0],new_state)
        self.logger.debug("[%s]'s updates: [%s]",q_group[0],new_update)
        if len(q_group) > 1:
            for i in range(len(q_group)-1):
                temp_state = new_state
                temp_update = new_update
                temp_state_list = new_state_list
                temp_update_list = new_update_list


                agt_str = EpistemicQuery.agtList2Str([q_group[i+1]])
                agt_str = eq_type_str + " " + agt_str
                p_key = parent_key + agt_str + " " 


                if p_key not in p_path[previous_acts_name_str]:
                    self._initialize_P(p_key,parent_state,p_path)

                previous_pu = p_path[previous_acts_name_str][p_key]
                new_state,new_update = self._generateOnePerspectives(q_group[i+1],parent_state,previous_pu)
                # update p_path for future reference
                self.logger.debug("[%s] state: [%s]",p_key,new_state)
                self.logger.debug("[%s] new_update: [%s]",p_key,new_update)
                p_path[acts_name_str][p_key] = dict()
                p_path[acts_name_str][p_key]['states'] = previous_pu['states'] + [new_state]
                p_path[acts_name_str][p_key]['updates'] = previous_pu['updates'] + [new_update]
                # new_state_list = p_path[acts_name_str][p_key]['states'] 
                # new_update_list = p_path[acts_name_str][p_key]['updates'] 

                self.logger.debug("[%s]'s p: [%s]",q_group[i+1],new_state)
                self.logger.debug("[%s]'s updates: [%s]",q_group[i+1],new_update)
                new_state = self._mergeS(new_state,temp_state,intersection_flag=intersection_flag)
                new_update = self._mergeU(new_update,temp_update,intersection_flag=intersection_flag)
                # new_state_list,new_update_list = self._mergePU(new_state_list,new_update_list,temp_state_list,temp_update_list ,intersection_flag=True)
                # new_state = self._mergeS(new_state,temp_state,intersection_flag=intersection_flag)
                # new_updates = self._mergeU(new_updates,temp_update,intersection_flag=intersection_flag)
                self.logger.debug("p after merge: [%s]",new_state)
                
            
            # group_key = ",".join(q_group)
            # group_key = EpistemicQuery.agtList2Str(q_group) + " "
                
        return new_state,new_update





    def _mergePU(self,s_list1,u_list1,s_list2,u_list2,intersection_flag = True):
        self.logger. debug("p1 is [%s] and its len is [%s]",s_list1,len(s_list1))
        self.logger. debug("p2 is [%s] and its len is [%s]",s_list2,len(s_list2))
        assert (len(s_list1)==len(s_list2)),"merging two lists with different length"
        new_s_list = list()
        new_u_list = list()
        for i in range(len(s_list1)):
            temp_s = self._mergeS(s_list1[i],s_list2[i])
            new_s_list.append(temp_s)
            temp_u = self._mergeS(u_list1[i],u_list2[i])
            new_u_list.append(temp_u)            
        return new_s_list,new_u_list
        

    # def _mergeP(self,p1,p2, intersection_flag = True):
    #     self.logger.debug("p1 is [%s] and its len is [%s]",p1,len(p1))
    #     self.logger.debug("p2 is [%s] and its len is [%s]",p2,len(p2))
    #     assert (len(p1)==len(p2)),"merging two lists with different length"
    #     new_p = list()
    #     new_updates = list()
    #     for i in p1.items():
    #         temp_state = self._mergeS(p1[i],p2[i])
    #         temp_update = self._mergeU(us1[i],us2[i])
    #         new_p.append(temp_state)
    #         new_updates.append(temp_update)
    #     return new_p,new_updates

    def _mergeU(self,u1,u2, intersection_flag = True):
        assert (len(u1)==len(u2)),"merging two updates with different length"
        new_update = dict()
        for k,v1 in u1.items():
            v2=u2[k]
            if intersection_flag:
                new_update[k] = intersectUpdates(v1,v2)
            else:
                new_update[k] = unionUpdate(v1,v2)
        return new_update


    def _mergeS(self, s1,s2, intersection_flag = True):
        assert (len(s1)==len(s2)),"merging two states with different length"
        new_state = dict()
        for k,v1 in s1.items():
            v2=s2[k]
            if intersection_flag:
                new_state[k] = intersectBeliefValue(v1,v2)
            else:
                new_state[k] = unionBeliefValue(v1,v2)
        return new_state

    def _generateGroupObservations(self,q_type,q_group,parent_state,p_path):
        # initial perspectives 

        new_state,new_update = self._getOneObservation(parent_state,q_group[0])
        
        if len(q_group) == 1:
            return new_state,new_update
        else:
            if q_type == Q_TYPE.MUTUAL:
                pass
            elif q_type == Q_TYPE.DISTRIBUTION:
                pass
            elif q_type == Q_TYPE.COMMON:
                pass
            else:
                assert False,"wrong Q type"

    
    def _generateOnePerspectives(self,agt_id,parent_state,previous_p):
        self.logger.debug("parent state: [%s]",parent_state)
        self.logger.debug("previous_p: [%s]",previous_p)

        previous_update = previous_p['updates'][-1]
        previous_state = previous_p['states'][-1]

        self.logger.debug("previous_state: [%s]",previous_state)
        self.logger.debug("previous_update: [%s]",previous_update)

        observation,_ = self._getOneObservation(parent_state,agt_id)

        self.logger.debug("observation: [%s]",observation)

        
        new_update = previous_update.copy()
        new_state = previous_state.copy()

        
        for v_name, updating in previous_update.items():
            if updating:
                # it means the value has been seen before but have not been updated
                if parent_state[v_name]== EP_VALUE.NOT_SEEING:
                    # it means the value is not visible in its parent perspective
                    # we have nothing to update the value, 
                    # so update status stays the same, the value stays the same
                    #   which means it will get updated in the future

                    pass
                # the below should not happen
                elif parent_state[v_name] == EP_VALUE.HAVENT_SEEN:
                    # it means the value is not visible (has not been seen) in its parent perspective
                    pass

                elif parent_state[v_name] == EP_VALUE.CONFLICT:
                    # it means the value has conflict in its parent perspective
                    pass

                else:
                    # it means the value is visible in its parent perspective
                    new_state[v_name] = parent_state[v_name]
                    new_update[v_name] = False
            # elif updating and parent_state[v_name] == EP_VALUE.HAVENT_SEEN:
            #     # still no valid updates, will update in the next state
            #     pass
            # else:
            #     # the value does not need to be updated
            #     pass

        
        for v_name,value in observation.items():
            if value == EP_VALUE.NOT_SEEING or value == EP_VALUE.HAVENT_SEEN:
                # the agent observes this value
                # but the value is None due to its parent
                # so this value needed update once its parent seen this value
                new_update[v_name] = True
            else:
                new_state[v_name] = value
                new_update[v_name] = False

        self.logger.debug("new_state: [%s]",new_state)
        self.logger.debug("new_update: [%s]",new_update)
        return new_state,new_update
    
    def _getOneObservation(self,state,agt_id):
        new_state = {}
        new_update = {}

        for v_name,value in state.items():
            if self.external.checkVisibility(state,agt_id,v_name,self.entities,self.variables)==PDDL_TERNARY.TRUE:
                new_state.update({v_name: value})
            else:
                new_update.update({v_name:EP_VALUE.NOT_SEEING})

        return new_state,new_update
    
    
    def partially_converting_to_eq(self,eq_str):
        match = re.search("[edc]?[ksb] \[[0-9a-z_,]*\] ",eq_str)
        if match == None:
            self.logger.debug("return eq string [%s]",eq_str)
            return eq_str
        else:
            eq_list = eq_str.split(" ")
            header_str = eq_list[0]
            agents = eq_list[1]
            content = eq_str[len(header_str)+len(agents)+2:]
            return EpistemicQuery(header_str,agents,content)
        
    def intersectObservation(self,state1,state2):
            new_state = {}
            for k,v in state1.items():
                if k in state2.keys():
                    if v == state2[k]:
                        new_state[k] = v
            return new_state

        
        