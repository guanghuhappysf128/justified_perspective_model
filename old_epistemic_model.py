import enum
import pddl_model
import typing
import re
import logging
import copy


LOGGER_NAME = "epistemic_model"
LOGGER_LEVEL = logging.INFO
from util import setup_logger


class Q_TYPE(enum.Enum):
    MUTUAL = 0
    DISTRIBUTION = -1
    COMMON = 1
    
class EQ_TYPE(enum.Enum):
    KNOWLEDGE = 1
    SEEING = 0
    BELIEF = 2
    
class EpistemicQuery:
    q_type = None
    q_content = None
    eq_type = None
    q_group = []
    mapping = {
        'k': (Q_TYPE.MUTUAL, EQ_TYPE.KNOWLEDGE),
        'ek': (Q_TYPE.MUTUAL, EQ_TYPE.KNOWLEDGE),
        'dk': (Q_TYPE.DISTRIBUTION ,EQ_TYPE.KNOWLEDGE),
        'ck': (Q_TYPE.COMMON, EQ_TYPE.KNOWLEDGE),
        's': (Q_TYPE.MUTUAL, EQ_TYPE.SEEING),
        'es': (Q_TYPE.MUTUAL, EQ_TYPE.SEEING),
        'ds': (Q_TYPE.DISTRIBUTION, EQ_TYPE.SEEING),
        'cs': (Q_TYPE.COMMON, EQ_TYPE.SEEING),
        'b': (Q_TYPE.MUTUAL, EQ_TYPE.BELIEF),
        'eb': (Q_TYPE.MUTUAL, EQ_TYPE.BELIEF),
        'db': (Q_TYPE.DISTRIBUTION, EQ_TYPE.BELIEF),
        'cb': (Q_TYPE.COMMON, EQ_TYPE.BELIEF),
    }
    
    def __init__(self,input1,input2,input3,content=None):
        
        if content is None:
            # convert from string, header, g_group, content
            self.q_type,self.eq_type = self.mapping[input1]
            self.q_group = input2.split(",")
            self.q_content = input3
        else:    
            # initialize manually
            self.q_type = input1
            self.eq_type = input2
            self.q_group = input3
            self.q_content = content
        
        
    def __str__(self): # show only in the print(object)
        output = f"<epistemic: q_type: {self.q_type}; eq_type: {self.eq_type}; q_group: {self.q_group}; q_content: {self.q_content} >"
        # if type(self.q_content) == str:
        #     output += "\n\n"
        return output

    def __repr__(self): # show when in a dictionary
        output = f"<epistemic: q_type: {self.q_type}; eq_type: {self.eq_type}; q_group: {self.q_group}; q_content: {self.q_content} >"
        # if type(self.q_content) == str:
        #     output += "\n\n"
        return output


class EpistemicModel:
    logger = None
    def __init__(self, handler):
        self.logger = setup_logger(LOGGER_NAME,handler,LOGGER_LEVEL) 

    def generateEpistemicQuery(self,eq_str):
        match = re.search("[edc]?[ksb] \[[0-9a-z_,]*\] ",eq_str)
        if match == None:
            self.logger.debug(f"return eq string {eq_str}")
            return eq_str
        else:
            eq_list = eq_str.split(" ")
            header = eq_list[0]
            agents = eq_list[1][1:-1]
            content = eq_str[len(header)+len(agents)+4:]
            return EpistemicQuery(header,agents,self.generateEpistemicQuery(content))
        

    # def checkingEQs(external,eq_str_list:typing.List,path:typing.List):
    #     eq_pair_list = [(generateEpistemicQuery(eq_str),value) for eq_str,value in eq_str_list]
    #     logger.debug(f"{eq_pair_list}")
    #     for eq,value in eq_pair_list:
    #         print(value)
    #         if not checkingEQ(external,eq,path,path[-1][0]) == value:
    #             return False
    #     return True

    # update this function if we change how the model works
    def getObservations(self,external,state,agt_id_nest_lst,entities,variables):
        # logger.debug(f"generating observation of agent {agt_id_nest_lst} from state: {state}")
        new_state = state.copy()
        temp_agt_nest_list = agt_id_nest_lst.copy()
        while not temp_agt_nest_list == []:
            temp_agent_list =  temp_agt_nest_list.pop()
            temp_state = self.getOneObservation(external,new_state,temp_agent_list[0],entities,variables)
            new_state = self.intersectObservation(new_state,temp_state)
            # while not temp_agent_list ==[]:
            #     getOneObservation
        # logger.debug(f'observation of agent {agt_id_nest_lst} is {new_state}')
        return new_state

    def intersectObservation(self,state1,state2):
        new_state = {}
        for k,v in state1.items():
            if k in state2.keys():
                if v == state2[k]:
                    new_state[k] = v
        return new_state




    def getOneObservation(self,external,state,agt_id,entities,variables):
        new_state = {}
        for var_index,value in state.items():
            if external.checkVisibility(external,state,agt_id,var_index,entities,variables)==PDDL_TERNARY.TRUE:
            # if bbl.checkVisibility(external,state,agt_id,var_index)==PDDL_TERNARY.TRUE:
            #     new_state.update({var_index: (value if not value == VALUE.UNSEEN else VALUE.SEEN)})
            # else:
            #     new_state.update({var_index:VALUE.UNSEEN})
                new_state.update({var_index: value})
        return new_state

    # def generatePerspective(external:Problem, path:typing.List, agt_index):
    #     logger.debug("generatePerspective")
    #     if path == []:
    #         return {}
    #     # assert(path == [])
    #     state, action = path[-1]
    #     new_state = getObservations(external,state,agt_index)
    #     memory = generateMemorization(external, path[:-1],agt_index)

    def identifyMemorizedValue(self,external, path:typing.List, agt_id_nest_lst, ts_index,variable_index,entities,variables):
        ts_index_temp = ts_index
        if ts_index_temp <0: return None
        
        while ts_index_temp >=0:
            state,action = path[ts_index_temp]
            temp_observation = self.getObservations(external,state,agt_id_nest_lst,entities,variables)
            # logger.debug(f'temp observation in identifyMemorization: {temp_observation}')
            if not variable_index in temp_observation or temp_observation[variable_index] == None:
                ts_index_temp += -1
            else:
                return temp_observation[variable_index]
        
        ts_index_temp = ts_index + 1
        
        while ts_index_temp < len(path):
            state,action = path[ts_index_temp]
            temp_observation = self.getObservations(external,state,agt_id_nest_lst,entities,variables)
            if not variable_index in temp_observation or temp_observation[variable_index] == None:
                ts_index_temp += 1
            else:
                return temp_observation[variable_index]        
        return None

    def identifyLastSeenTimestamp(self,external, path:typing.List, agt_id_nest_lst,variable_index,entities,variables):
        ts_index_temp = len(path) -1
        
        # checking whether the variable has been seen by the agent list before
        while ts_index_temp >=0:
            
            state,action = path[ts_index_temp]

            # checking with observation
            if variable_index in self.getObservations(external,state,agt_id_nest_lst,entities,variables) :
                return ts_index_temp
            else:
                ts_index_temp -= 1
        return -1

    def generatePerspective(self,external, path:typing.List, agt_id_nest_lst,entities,variables):
        # logger.debug("generatePerspective")
        if path == []:
            return {}
        # assert(path == [])
        # logger.debug(f'path: {path}')
        state, action = path[-1]
        new_state = {}
        # logger.debug(f'current state: {state}')
        
        
        for v,e in state.items():
            # logger.debug(f'\t find history value for {v},{e}')
            ts_index = self.identifyLastSeenTimestamp(external, path, agt_id_nest_lst,v,entities,variables)
            # logger.debug(f'\t timestamp index: {ts_index}')
            value = self.identifyMemorizedValue(external, path, agt_id_nest_lst, ts_index,v,entities,variables)
            # logger.debug(f'\t {v}"s value is: {value}')
            new_state.update({v:value})
        return new_state 


    #     for var_index,value in state.items():
    #         if var_index not in new_state.keys():
    #             if memory == {}:
    #                 new_state.update({var_index:None})
    #             else:
    #                 new_state.update({var_index:memory[var_index]})
    #     return new_state

    # def generateMemorization(external:Problem,path:typing.List,agt_index):
    #     # if there is no state ahead, then return empty
    #     # this can be altered to handle different initial BELIEF
    #     if path == []:
    #         return {}
    #     new_state = {}
    #     print(path)
    #     state,action=path[-1]
    #     observation = getObservations(external,state,agt_index)
    #     perspective = generatePerspective(external,path[:-1],agt_index)
    #     for var_index,value in perspective.items():
    #         if not var_index in observation.keys():
    #             new_state.update({var_index,value})
    #     return new_state

    def checkingEQstr(self,external,eq_str,path:typing.List,state,entities,variables):
        # logger.debug(f'checking for eq string: {eq_str}')
        eq = self.generateEpistemicQuery(eq_str) 
        return self.checkingEQ(external, eq, path, state, entities, variables)

    def checkingEQstrP(self,external,eq_str,path:typing.List,state,entities,variables):
        # logger.debug(f'checking for eq string: {eq_str}')
        eq = self.generateEpistemicQuery(eq_str) 
        return self.checkingEQP(external, eq, path, state, entities, variables)



    def checkingEQ(self,external,eq:EpistemicQuery,path:typing.List,state,entities,variables):
        var_list = external.extractVariables(eq)
        # logger.debug(f"checking eq {eq}, {eq.eq_type}")
        # logger.debug(f'current state: {state}')
        # logger.debug(f'var_list: {var_list}')

        if eq.eq_type == EQ_TYPE.BELIEF:
            
            # logger.debug(f"checking belief for {eq}")
            # generate the state
            # new_observation = getObservations(external,state,eq.q_group,entities,variables)
            new_path = []
            for i in range(len(path)):
                # logger.debug(f'generate perspective from timestamp {i}')
                # logger.debug(path)
                state,action = path[i]
                new_state = self.generatePerspective(external,path[:i+1],eq.q_group,entities,variables)
                # logger.debug(new_state)
                new_path.append((new_state,action))
            # logger.debug(f"{eq.q_group}'s perspective (new path) {new_path}")
            if len(eq.q_group)>1:
                pass
            # logger.debug(f'perspectives:')
            # for state,action in new_path:
            #     logger.debug(state)
            last_state,action = new_path[-1]
            eva = 2
            # logger.debug(f"checking belief for {eq.q_content}")
            if type(eq.q_content) == str:
                for var_name,value in var_list:

                    if not var_name in last_state.keys():
                        # logger.debug(f"return 0 due to {var_name} {len(var_name)} not in { last_state.keys() }")
                        return 0
                    if not last_state[var_name] == value:
                        # logger.debug(f"return 0 due to {value} not equal to {last_state[var_name]}")
                        return 0
                eva = external.evaluateS(last_state,eq.q_content)
            else:
                eva = self.checkingEQ(external,eq.q_content,new_path,last_state,entities,variables)
            
            return eva
        # if eq.eq_type == EQ_TYPE.BELIEF:
            
        #     logger.debug(f"checking belief for {eq}")
        #     # generate the state
        #     # new_observation = getObservations(external,state,eq.q_group,entities,variables)
        #     new_state = generatePerspective(external,path,eq.q_group,entities,variables)
        #     logger.debug(f"{eq.q_group}'s perspective {new_state}")
        #     if len(eq.q_group)>1:
        #         pass
        #     eva = 2
        #     logger.debug(f"checking belief for {eq.q_content}")
        #     if type(eq.q_content) == str:
        #         for var_name,value in var_list:

        #             if not var_name in new_state.keys():
        #                 logger.debug(f"return 0 due to {var_name} {len(var_name)} not in { new_state.keys() }")
        #                 return 0
        #             if not new_state[var_name] == value:
        #                 logger.debug(f"return 0 due to {value} not equal to {new_state[var_name]}")
        #                 return 0
        #         eva = external.evaluateS(new_state,eq.q_content)
        #     else:
        #         eva = checkingEQ(external,eq.q_content,path,new_state,entities,variables)
            
        #     return eva

        elif eq.eq_type == EQ_TYPE.SEEING:
            
            self.logger.debug(f"checking seeing for {eq}")
            # generate the state
            new_state = self.getObservations(external,state,eq.q_group,entities,variables)
            self.logger.debug(f"{eq.q_group}'s observation {new_state}")
            if len(eq.q_group) > 1:
                # merging observation
                pass
            if type(eq.q_content) == str:
                return external.evaluateS(new_state,eq.q_content)
            else:
                for var_name,value in var_list:
                    if not var_name in new_state.keys():
                        return 2
                result = self.checkingEQ(external,eq.q_content,path,new_state,entities,variables)
                if not result == 2:
                    return 1
                else:
                    return 0
                # return not checkingEQ(external,eq.q_content,path,state) == 2
        elif eq.eq_type == EQ_TYPE.KNOWLEDGE:   
            
            self.logger.debug(f"checking knowledge for {eq}")
            # generate the state
            new_state = self.getObservations(external,state,eq.q_group,entities,variables)
            self.logger.debug(f"b's observation {new_state}")
            if len(eq.q_group) > 1:
                # merging observation
                pass
            self.logger.debug(type(eq.q_content))
            if type(eq.q_content) == str:
                for var_name,value in var_list:
                    if not var_name in new_state.keys():
                        return 0
                    if not new_state[var_name] == value:
                        return 0
                return external.evaluateS(new_state,eq.q_content)
            else:
                # for var_name,value in var_list:
                    # if not var_name in new_state.keys():
                    #     return 2
                    # if not new_state[var_name] == value:
                    #     return 0
                eqs = EpistemicQuery(eq.q_type,EQ_TYPE.SEEING,eq.q_group,copy.deepcopy(eq.q_content))
                result = self.checkingEQ(external,eq.q_content,path,state,entities,variables)*self.checkingEQ(external,eqs,path,state,entities,variables)
                if result >2:
                    return 2
                else:
                    return result
        else:
            self.logger.error(f"not found eq_type in the query: {eq}")
            
            
    def checkingEQP(self,external,eq:EpistemicQuery,path:typing.List,state,entities,variables):
        var_list = external.extractVariables(eq)
        p_dict = {}
        self.logger.debug(f"checking eq {eq}, {eq.eq_type}")
        self.logger.debug(f'current state: {state}')
        self.logger.debug(f'var_list: {var_list}')

        if eq.eq_type == EQ_TYPE.BELIEF:
            
            self.logger.debug(f"checking belief for {eq}")
            # generate the state
            # new_observation = getObservations(external,state,eq.q_group,entities,variables)
            new_path = []
            for i in range(len(path)):
                # logger.debug(f'generate perspective from timestamp {i}')
                # logger.debug(path)
                state,action = path[i]
                new_state = self.generatePerspective(external,path[:i+1],eq.q_group,entities,variables)
                # logger.debug(new_state)
                new_path.append((new_state,action))
            # logger.debug(f"{eq.q_group}'s perspective (new path) {new_path}")
            if len(eq.q_group)>1:
                pass
            # logger.debug(f'perspectives:')
            # for state,action in new_path:
            #     logger.debug(state)
            last_state,action = new_path[-1]
            eva = 2
            p_dict.update({str(eq.q_group):last_state})
            # logger.debug(f"checking belief for {eq.q_content}")
            if type(eq.q_content) == str:
                for var_name,value in var_list:

                    if not var_name in last_state.keys():
                        # logger.debug(f"return 0 due to {var_name} {len(var_name)} not in { last_state.keys() }")
                        return 0,p_dict
                    if not last_state[var_name] == value:
                        # logger.debug(f"return 0 due to {value} not equal to {last_state[var_name]}")
                        return 0,p_dict
                eva = external.evaluateS(last_state,eq.q_content)
                p_dict.update({f"f<{eq.q_group}>":last_state})
            else:
                eva,temp_p_dict = self.checkingEQP(external,eq.q_content,new_path,last_state,entities,variables)
                for key,v in temp_p_dict.items():
                    p_dict.update({f"f<{eq.q_group}>{key}":v})
            return eva,p_dict
        # if eq.eq_type == EQ_TYPE.BELIEF:
            
        #     logger.debug(f"checking belief for {eq}")
        #     # generate the state
        #     # new_observation = getObservations(external,state,eq.q_group,entities,variables)
        #     new_state = generatePerspective(external,path,eq.q_group,entities,variables)
        #     logger.debug(f"{eq.q_group}'s perspective {new_state}")
        #     if len(eq.q_group)>1:
        #         pass
        #     eva = 2
        #     logger.debug(f"checking belief for {eq.q_content}")
        #     if type(eq.q_content) == str:
        #         for var_name,value in var_list:

        #             if not var_name in new_state.keys():
        #                 logger.debug(f"return 0 due to {var_name} {len(var_name)} not in { new_state.keys() }")
        #                 return 0
        #             if not new_state[var_name] == value:
        #                 logger.debug(f"return 0 due to {value} not equal to {new_state[var_name]}")
        #                 return 0
        #         eva = external.evaluateS(new_state,eq.q_content)
        #     else:
        #         eva = checkingEQ(external,eq.q_content,path,new_state,entities,variables)
            
        #     return eva

        elif eq.eq_type == EQ_TYPE.SEEING:
            
            self.logger.debug(f"checking seeing for {eq}")
            # generate the state
            new_state = self.getObservations(external,state,eq.q_group,entities,variables)
            self.logger.debug(f"{eq.q_group}'s observation {new_state}")
            if len(eq.q_group) > 1:
                # merging observation
                pass
            if type(eq.q_content) == str:
                return external.evaluateS(new_state,eq.q_content)
            else:
                for var_name,value in var_list:
                    if not var_name in new_state.keys():
                        return 2
                result = self.checkingEQ(external,eq.q_content,path,new_state,entities,variables)
                if not result == 2:
                    return 1
                else:
                    return 0
                # return not checkingEQ(external,eq.q_content,path,state) == 2
        elif eq.eq_type == EQ_TYPE.KNOWLEDGE:   
            
            self.logger.debug(f"checking knowledge for {eq}")
            # generate the state
            new_state = self.getObservations(external,state,eq.q_group,entities,variables)
            self.logger.debug(f"b's observation {new_state}")
            if len(eq.q_group) > 1:
                # merging observation
                pass
            self.logger.debug(type(eq.q_content))
            if type(eq.q_content) == str:
                for var_name,value in var_list:
                    if not var_name in new_state.keys():
                        return 0
                    if not new_state[var_name] == value:
                        return 0
                return external.evaluateS(new_state,eq.q_content)
            else:
                # for var_name,value in var_list:
                    # if not var_name in new_state.keys():
                    #     return 2
                    # if not new_state[var_name] == value:
                    #     return 0
                eqs = EpistemicQuery(eq.q_type,EQ_TYPE.SEEING,eq.q_group,copy.deepcopy(eq.q_content))
                result = self.checkingEQ(external,eq.q_content,path,state,entities,variables)*self.checkingEQ(external,eqs,path,state,entities,variables)
                if result >2:
                    return 2
                else:
                    return result
        else:
            self.logger.error(f"not found eq_type in the query: {eq}")
        
