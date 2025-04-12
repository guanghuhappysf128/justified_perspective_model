


import logging
from enum import Enum
formatter = logging.Formatter('%(asctime)s %(name)s %(levelname)s %(message)s')

import inspect
import sys
import re
import traceback
import typing


GLOBAL_PERSPECTIVE_INDEX = ""
ROOT_NODE_ACTION = ""

def setup_logger_handlers(log_filename, c_display = False, c_logger_level = logging.INFO):

    f_handler = logging.FileHandler(log_filename)
    c_handler = logging.StreamHandler()
    c_format = logging.Formatter('%(name)s - %(levelname)s - %(message)s')
    f_format = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    # f_format = logging.Formatter('%(levelname)s - %(message)s')
    c_handler.setFormatter(c_format)
    f_handler.setFormatter(f_format)  
    # default handler level are info for terminal output
    # and debug for the log output
    c_handler.setLevel(c_logger_level)
    f_handler.setLevel(logging.DEBUG)

    # if the logger exist, it does not create a new one
    handlers = [f_handler]
    if c_display:
        handlers.append(c_handler)
    return handlers

def setup_logger(name, handlers=[],logger_level=logging.INFO):
    """To setup as many loggers as you want"""
    logger = logging.getLogger(name)
    logger.handlers = handlers
    logger.setLevel(logger_level)
    return logger

import heapq
class PriorityQueue:
    """
      Implements a priority queue data structure. Each inserted item
      has a priority associated with it and the client is usually interested
      in quick retrieval of the lowest-priority item in the queue. This
      data structure allows O(1) access to the lowest-priority item.
    """
    def  __init__(self):
        self.heap = []
        self.count = 0

    def getMinimumPriority(self):
        return self.heap[0][0]

    def push(self, item=None, priority=None):
        entry = (priority, self.count, item)
        heapq.heappush(self.heap, entry)
        self.count += 1

    def pop(self):
        (_, _, item) = heapq.heappop(self.heap)
        return item        

    def pop_full(self):
        # (_, _, item) = 
        return heapq.heappop(self.heap)


    def isEmpty(self):
        return len(self.heap) == 0

    def update(self, item=None, priority=None):
        # If item already in priority queue with higher priority, update its priority and rebuild the heap.
        # If item already in priority queue with equal or lower priority, do nothing.
        # If item not in priority queue, do the same thing as self.push.
        for index, (p, c, i) in enumerate(self.heap):
            if i == item:
                if p <= priority:
                    break
                del self.heap[index]
                self.heap.append((priority, c, item))
                heapq.heapify(self.heap)
                break
        else:
            self.push(item, priority)
            









# class EP_VALUE(Enum):
#     HAVENT_SEEN = 1
#     NOT_SEEING = 2
#     CONFLICT = 3

# def intersectBeliefValue(v1,v2):
#     if v1 == v2:
#         return v1
#     elif v1 == EP_VALUE.HAVENT_SEEN or v2 == EP_VALUE.HAVENT_SEEN:
#         return EP_VALUE.HAVENT_SEEN
#     elif v1 == EP_VALUE.NOT_SEEING or v2 == EP_VALUE.NOT_SEEING:
#         return EP_VALUE.NOT_SEEING
#     else:
#         return EP_VALUE.CONFLICT

# def intersectUpdates(v1,v2):
#     return v1 and v2

# def intersectKnowledgeValue(v1,v2):
#     if v1 == v2:
#         return v1
#     else:
#         return EP_VALUE.NOT_SEEING
    
# def unionBeliefValue(v1,v2):
#     if v1 == v2:
#         return v1
#     elif v1 == EP_VALUE.HAVENT_SEEN:
#         if not v2 == EP_VALUE.NOT_SEEING:
#             return v2
#         else:
#             return v1
#     elif v2 == EP_VALUE.HAVENT_SEEN:
#         if not v1 == EP_VALUE.NOT_SEEING:
#             return v1
#         else:
#             return v2
#     else:
#         return EP_VALUE.CONFLICT

# def unionUpdate(v1,v2):
#     return v1 or v2

# def unionKnowledgeValue(v1,v2):
#     if v1 == v2:
#         return v1
#     elif v1 == EP_VALUE.NOT_SEEING:
#         return v2
#     elif v2 == EP_VALUE.NOT_SEEING:
#         return v1
#     else:
#         assert False, "value conflicted in the knowledge, which should not happen"


# class Variable():
#     v_name = None
#     v_domain_name = None
#     v_parent = None
    
#     def __init__(self,name,domain_name,v_parent):
#         self.v_name = name
#         self.v_domain_name = domain_name
#         self.v_parent = v_parent
        
#     def __str__(self): # show only in the print(object)
#         return f"<Variable: v_name: {self.v_name}; v_domain_name: {self.v_domain_name}; v_parent: {self.v_parent}>\n"

#     def __repr__(self): # show when in a dictionary
#         return f"<Variable: v_name: {self.v_name}; v_domain_name: {self.v_domain_name}; v_parent: {self.v_parent}>\n"
        
# def eval_var_from_str(logger,eval_str,state):
#     # for example(= (face c) 'head'))\
#     logger.debug("eval_str: [%s]" % (eval_str))
#     while eval_str[0] == "(":
#         # removing top level brackets
#         eval_str = eval_str[1:-1]
#     var_list  = re.findall("\([0-9a-z_, -]*\)",eval_str)
#     logger.debug("eq string is [%s]",eval_str)
#     logger.debug("state is [%s]",state)
#     # currently only support at most two variables
#     if len(var_list) == 1:
#         key1 = var_list[0][1:-1]
#         value1 = state[key1] if key1 in state.keys() else EP_VALUE.NOT_SEEING
#         value2_str = eval_str.split(" ")[-1]
#         if "'" not in value2_str and '"' not in value2_str:
#             value2 = int(value2_str)
#         else:
#             value2 = value2_str.replace("'","").replace('"',"")
#     elif len(var_list) == 2:
#         key1 = var_list[0][1:-1]
#         key2 = var_list[1][1:-1]
#         value1 = state[key1] if key1 in state.keys() else EP_VALUE.NOT_SEEING
#         value2 = state[key2] if key2 in state.keys() else EP_VALUE.NOT_SEEING
#     else:
#         raiseNotDefined()
        
    
#     symbol = eval_str.split(" ")[0]
    
#     if symbol == "=":
#         if value1 == EP_VALUE.NOT_SEEING or value2 == EP_VALUE.NOT_SEEING or value1 == None or value2 == None:
#             return PDDL_TERNARY.UNKNOWN
#         elif value1 == value2:
#             return PDDL_TERNARY.TRUE
#         else:
#             return PDDL_TERNARY.FALSE
#     elif symbol == ">":
#         if value1 == EP_VALUE.NOT_SEEING or value2 == EP_VALUE.NOT_SEEING or value1 == None or value2 == None:
#             return PDDL_TERNARY.UNKNOWN
#         elif value1 > value2:
#             return PDDL_TERNARY.TRUE
#         else:
#             return PDDL_TERNARY.FALSE
#     elif symbol == ">=":
#         if value1 == EP_VALUE.NOT_SEEING or value2 == EP_VALUE.NOT_SEEING or value1 == None or value2 == None:
#             return PDDL_TERNARY.UNKNOWN
#         elif value1 >= value2:
#             return PDDL_TERNARY.TRUE
#         else:
#             return PDDL_TERNARY.FALSE
#     elif symbol == "<":
#         if value1 == EP_VALUE.NOT_SEEING or value2 == EP_VALUE.NOT_SEEING or value1 == None or value2 == None:
#             return PDDL_TERNARY.UNKNOWN
#         elif value1 < value2:
#             return PDDL_TERNARY.TRUE
#         else:
#             return PDDL_TERNARY.FALSE    
#     elif symbol == "<=":
#         if value1 == EP_VALUE.NOT_SEEING or value2 == EP_VALUE.NOT_SEEING or value1 == None or value2 == None:
#             return PDDL_TERNARY.UNKNOWN
#         elif value1 <= value2:
#             return PDDL_TERNARY.TRUE
#         else:
#             return PDDL_TERNARY.FALSE
#     elif symbol == "-=":
#         # not equal
#         if value1 == EP_VALUE.NOT_SEEING or value2 == EP_VALUE.NOT_SEEING or value1 == None or value2 == None:
#             return PDDL_TERNARY.UNKNOWN
#         elif not value1 == value2:
#             return PDDL_TERNARY.TRUE
#         else:
#             return PDDL_TERNARY.FALSE
#     else:
#         traceback.print_exc()
#         raise ValueError()
#         # equality relation
#         # equality relation
#         # equality relation
#         # match = re.search("\([0-9a-z_, -]*\)",eval_str)
        
    
# def convertBooltoPDDL_TERNARY(bool):
#     return PDDL_TERNARY.TRUE if bool else PDDL_TERNARY.FALSE
   
        
# class Domain():
#     d_name = None
#     d_values = None
#     d_type = None
#     agency = False
    
#     def __init__(self,d_name,d_values,agency,d_type):
#         self.d_name = d_name
#         self.d_values = d_values
#         self.agency = agency
#         self.d_type = d_type
    
#     def __str__(self): # show only in the print(object)
#         return f"<d_name: {self.d_name}; d_values: {self.d_type}; d_values: {self.d_values}; isAgent?(agency): {self.agency}>\n"

#     def __repr__(self): # show when in a dictionary
#         return f"<d_name: {self.d_name}; d_values: {self.d_type}; d_values: {self.d_values}; isAgent?(agency): {self.agency}>\n"
    
#     def isAgent(self):
#         return self.agency

# class Conditions():
#     ontic_dict = dict()
#     epistemic_dict = dict()

#     def __init__(self,ontic_list,epistemic_list) -> None:
#         self.ontic_dict = dict()
#         self.epistemic_dict = dict()

#         for ontic_tuple in ontic_list:
#             # print(ontic_tuple)
#             # (key,symbol,variable,value)
#             key,symbol,variable,value = ontic_tuple
#             # value = PDDL_TERNARY(int(value))
#             self.ontic_dict[key] = OnticCondition(symbol,variable,value)
#         for epistemic_tuple in epistemic_list:
#             # (key,query_str,query_prefix,symbol,variable,value)
#             key,query_str,query_prefix,symbol,variable,value = epistemic_tuple
#             # value = PDDL_TERNARY(int(value))
#             self.epistemic_dict[key] = EpistemicCondition(query_str,query_prefix,symbol,variable,value)

#     def __str__(self) -> str:
#         return f"Conditions: \n Ontic: {self.ontic_dict} \n Epistemic: {self.epistemic_dict}"

# class OnticCondition():
#     variable_name = ""
#     v_value = ""
#     value = ""
#     symbol = ""
    
#     def __init__(self,symbol,variable_name,value) -> None:
#         self.symbol = symbol
#         self.variable_name = variable_name
#         self.value =  value

#     def __str__(self): # show only in the print(object)
#         return f" symbol is {self.symbol}; variable_name is {self.variable_name}; value is {self.value}; \n"

#     def __repr__(self): # show when in a dictionary
#         return f" symbol is {self.symbol}; variable_name is {self.variable_name}; value is {self.value}; \n"



# class EpistemicCondition():
#     variable_name = ""
#     v_value = ""
#     value = ""
#     symbol = ""
#     query = ""

#     # "(:epistemic + db [a,b,c,d] + eb [a,b,c,d] (= (secret-a) 't'))"
#     # query_str,query_prefix,symbol,variable,value
#     def __init__(self,query_str,query_prefix,symbol,variable,value) -> None:
#         self.symbol = symbol # = 
#         self.query = query_str # "+ db [a,b,c,d] + eb [a,b,c,d] (= (secret-a) 't')"
#         self.query_prefix = query_prefix # "+ db [a,b,c,d] + eb [a,b,c,d]"
#         self.variable_name = variable #"secret-a"
#         self.value =  value # 't'
 
#     def __str__(self): # show only in the print(object)
#         return f" symbol is {self.symbol};\n variable_name is {self.variable_name};\n value is {self.value}; \n query is {self.query};\n query_prefix is {self.query_prefix}.\n\n"

#     def __repr__(self): # show when in a dictionary
#         return f" symbol is {self.symbol};\n variable_name is {self.variable_name};\n value is {self.value}; \n query is {self.query};\n query_prefix is {self.query_prefix}.\n\n"

# # the following classes are for epistemic model
# class Q_TYPE(Enum):
#     MUTUAL = 0
#     DISTRIBUTION = -1
#     COMMON = 1
    
# class EQ_TYPE(Enum):
#     KNOWLEDGE = 1
#     SEEING = 0
#     BELIEF = 2
    
# class EpistemicQuery:
#     q_type = None
#     q_content = None
#     eq_type = None
#     ep_value = None
#     value_type = None
#     header_str = ""
#     agents_str = ""
#     q_group = []
#     value_type_mapping = {
#         '+': PDDL_TERNARY.TRUE,
#         '-': PDDL_TERNARY.FALSE,
#         '$': PDDL_TERNARY.UNKNOWN
#     }
    
#     mapping = {
#         'k': (Q_TYPE.MUTUAL, EQ_TYPE.KNOWLEDGE),
#         'ek': (Q_TYPE.MUTUAL, EQ_TYPE.KNOWLEDGE),
#         'dk': (Q_TYPE.DISTRIBUTION ,EQ_TYPE.KNOWLEDGE),
#         'ck': (Q_TYPE.COMMON, EQ_TYPE.KNOWLEDGE),
#         's': (Q_TYPE.MUTUAL, EQ_TYPE.SEEING),
#         'es': (Q_TYPE.MUTUAL, EQ_TYPE.SEEING),
#         'ds': (Q_TYPE.DISTRIBUTION, EQ_TYPE.SEEING),
#         'cs': (Q_TYPE.COMMON, EQ_TYPE.SEEING),
#         'b': (Q_TYPE.MUTUAL, EQ_TYPE.BELIEF),
#         'eb': (Q_TYPE.MUTUAL, EQ_TYPE.BELIEF),
#         'db': (Q_TYPE.DISTRIBUTION, EQ_TYPE.BELIEF),
#         'cb': (Q_TYPE.COMMON, EQ_TYPE.BELIEF),
#     }
    
#     # def __init__(self,header_str,agents_str,value,content):
#     def __init__(self,value_type_str,header_str,agents_str,content):    
#         self.q_type,self.eq_type = self.mapping[header_str]
#         self.header_str = header_str
#         self.agents_str = agents_str
#         self.q_group = agents_str[1:-1].split(",")
#         self.q_content = content
#         self.value_type = self.value_type_mapping[value_type_str]
        
#     def show(self):
#         # for debug purpose
#         output = f"<epistemic: q_type: {self.q_type}; eq_type: {self.eq_type}; q_group: {self.q_group}; q_content: {self.q_content} >"
#         return output
        
#     def __str__(self): 
#         # show only in the print(object)
#         output = f"{self.header_str} {self.agents_str} {self.q_content}"
#         return output

#     def __repr__(self): 
#         # show when in a dictionary
#         output = f"{self.header_str} {self.agents_str} {self.q_content}"
#         return output
    
#     def agtStr2List(agent_str="[]"):
#         return agent_str[1:-1].split(",")
    
#     def agtList2Str(agent_list=[]):

#         return "[" + ",".join(agent_list)+ "]"
    
#     def partial_eq2str(q_type,eq_type,agent_list):
        
#         q_type_str = ""
#         if q_type == Q_TYPE.MUTUAL:
#             if len(agent_list) > 1:
#                 q_type_str = "e"
#         elif q_type == Q_TYPE.DISTRIBUTION:
#             q_type_str = "d"
#         elif q_type == Q_TYPE.COMMON:
#             q_type_str = "c"
#         else:
#             raiseNotDefined()
            
#         eq_type_str = ""
        
#         if eq_type == EQ_TYPE.SEEING:
#             eq_type_str = "s"
#         elif eq_type == EQ_TYPE.KNOWLEDGE:
#             eq_type_str = "k"
#         elif eq_type == EQ_TYPE.BELIEF:
#             eq_type_str = "b"
#         else:
#             raiseNotDefined()
#         return f"{q_type_str}{eq_type_str} {EpistemicQuery.agtList2Str(agent_list)} "
                



def raiseNotDefined():
    fileName = inspect.stack()[1][1]
    line = inspect.stack()[1][2]
    method = inspect.stack()[1][3]

    print(f"*** Method not implemented: {method} at line {line} of {fileName}")
    sys.exit(1)


class Queue:
    "A container with a first-in-first-out (FIFO) queuing policy."
    def __init__(self):
        self.list = []

    def push(self,item):
        "Enqueue the 'item' into the queue"
        self.list.insert(0,item)

    def pop(self):
        """
          Dequeue the earliest enqueued item still in the queue. This
          operation removes the item from the queue.
        """
        return self.list.pop()

    def isEmpty(self):
        "Returns true if the queue is empty"
        return len(self.list) == 0

def valid_variable(v_name,problem):
    if v_name not in problem.variables.keys():
        raise ValueError("%s is not in variables %s. Probably you spelled it wrong."%(v_name,str(problem.variables.keys())))
    
    
# class E_TYPE(Enum):
#     AGENT = 1
#     OBJECT = 2

# def eTypeConvert(logger,str):
#     logger.debug(f"converting E_TYPE for {str}")
#     if str == "agent":
#         return EntityType.AGENT
#     elif str == "object":
#         return EntityType.OBJECT
#     else:
#         logger.error(f"E_TYPE not found for {str}")

# new syntax ________________
VARIABLE_FILLER = " "
     
class Type:
    def __init__(self,type_name) -> None:
        self.parent_type_name = None
        self.entity_index_list = set()
        self.name = type_name
        self.children_type_list = set()
        pass

    def __repr__(self) -> str:
        output_str = f"(Type {self.name}): [{self.parent_type_name}, {self.entity_index_list}]"
        return output_str
    
    def __str__(self) -> str:
        return self.__repr__()
    
class FunctionSchema:
    def __init__(self,name) -> None:
        self.value_range = None
        self.value_type = None

        # a list of type
        self.content_type_list: typing.list[str] = []
        self.name = name
        pass
    
    def __repr__(self) -> str:
        output_str = f"(FunctionSchema {self.name}): {self.content_type_list}"

        if self.value_type == VALUE_TYPE.INTEGER:
            output_str += f" {self.value_range}, {self.value_type}."
        elif self.value_type == VALUE_TYPE.ENUMERATE:
            output_str += f" [{','.join(self.value_range)}], {self.value_type}."
        else:
            output_str += f"{self.value_range}, {self.value_type}."
            # raise ValueError("Value type not found. Probably did not define %s in the problem :ranges",self.name)
        return output_str
    
    def __str__(self) -> str:
        return self.__repr__()    

NONE_VALUE = "jp.none"

class Function:
    def __init__(self,function_name,function_schema_name,entity_index_list) -> None:
        self.function_schema_name = function_schema_name
        self.function_name = function_name
        self.entity_index_list = entity_index_list
        # self.rule_type = None
        # self.rule_content = list()
        pass
    def __repr__(self) -> str:
        output_str = f"(Function {self.function_name}): "
        output_str += f"{self.function_schema_name}, [{self.entity_index_list}]"
        # output_str += f"{self.function_schema_name}, [{self.entity_index_list}], {self.rule_type}, [{self.rule_content}]"
        return output_str
    
    def __str__(self) -> str:
        return self.__repr__()    

class Rule:
    def __init__(self,function_name,rule_type,rule_content) -> None:
        self.function_name = function_name
        self.rule_type = rule_type
        self.rule_content = rule_content
        pass

VALUE_TYPE = Enum("VALUE_TYPE", "ENUMERATE INTEGER")

value_type_dict = {
    "enumerate": VALUE_TYPE.ENUMERATE,
    "integer": VALUE_TYPE.INTEGER,
}


RULE_TYPE = Enum("RULE_TYPE", "STATIC LINEAR SIN POLY_2ND POLY_3RD")

rule_type_dict = {
    "static": RULE_TYPE.STATIC,
    "linear": RULE_TYPE.LINEAR,
    "sin": RULE_TYPE.SIN,
    "2nd_poly": RULE_TYPE.POLY_2ND,
    "3rd_poly": RULE_TYPE.POLY_3RD,
}

class Parameters(dict):
    def __init_subclass__(cls) -> None:
        return super().__init_subclass__()

class EffectType(Enum):
    ASSIGN = 1
    INCREASE = 2
    DECREASE = 3

class UpdateType(Enum):
    CONSTENT = 1
    ONTIC = 2
    EPSITEMIC = 3


class Effect:
    def __init__(self) -> None:
        self.effect_type = None
        self.target_variable_name = None
        self.update_type = None
        # update can be a value as constant or it can be a variable or it can be a ep formula
        self.update = None
        pass
    def __repr__(self) -> str:

        output_str = f"(Effect {self.effect_type.name} {self.target_variable_name} {self.update})"
        return output_str
    
    def __str__(self) -> str:
        return self.__repr__()    

def updateEffect(logger,effect_type:EffectType,value1,value2,function_schema: FunctionSchema):
    # print(value1,type(value1),value2,type(value2),function_schema.value_type,function_schema.value_range)
    if effect_type == EffectType.ASSIGN:
        if function_schema.value_type == VALUE_TYPE.INTEGER:
            if not type(value2) == int:
                raise ValueError("Effect Error: the second value in Assign should be an integer")
            else:
                if value2 < function_schema.value_range[0] or value2 > function_schema.value_range[1]:
                    logger.error("value out of range: when assign %s in function_schema: %s",value2,function_schema.name)
                    return None
                else:
                    return value2
        elif function_schema.value_type == VALUE_TYPE.ENUMERATE:
            if not value2 in function_schema.value_range:
                # self.logger.debug(value2,function_schema.value_range)
                raise ValueError("Effect Error: the second value in Assign should be in the value range")
            else:
                return value2
    elif effect_type == EffectType.INCREASE:
        if function_schema.value_type == VALUE_TYPE.INTEGER:
            if not type(value2) == int:
                raise ValueError("Effect Error: the second value in Increase should be an integer")
            else:
                if value1 + value2 < function_schema.value_range[0] or value1 + value2 > function_schema.value_range[1]:
                    logger.error("value out of range: when increase %s + %s in function_schema: %s",value1,value2,function_schema.name)
                    return None
                else:
                    return value1 + value2
        elif function_schema.value_type == VALUE_TYPE.ENUMERATE:
            if not type(value2) == int:
                raise ValueError("Effect Error: the second value in Increase should be an integer")
            else:
                return function_schema.value_range[(function_schema.value_range.index(value1)+value2)%len(function_schema.value_range)]
    elif effect_type == EffectType.DECREASE:
        if function_schema.value_type == VALUE_TYPE.INTEGER:
            if not type(value2) == int:
                raise ValueError("Effect Error: the second value in Decrease should be an integer")
            else:
                if value1 - value2 < function_schema.value_range[0] or value1 - value2 > function_schema.value_range[1]:
                    logger.error("value out of range: when decrease %s - %s in function_schema: %s",value1,value2,function_schema.name)
                    return None
                else:
                    return value1 - value2
        elif function_schema.value_type == VALUE_TYPE.ENUMERATE:
            if not type(value2) == int:
                raise ValueError("Effect Error: the second value in Decrease should be an integer")
            else:
                return function_schema.value_range[(function_schema.value_range.index(value1)-value2)%len(function_schema.value_range)]

class ActionSchema:
    def __init__(self,name,parameters,preconditions,effects) -> None:
        self.name = name
        self.parameters = parameters
        self.preconditions = preconditions
        self.effects = effects
        pass
    
    def __str__(self) -> str:
        return f"ActionSchema: {self.name} \n{self.parameters} \n{self.preconditions} \n{self.effects}\n"
    
    def __repr__(self) -> str:
        return self.__str__()

class Action:
    def __init__(self,name,parameters,preconditions,effects) -> None:
        self.name = name
        self.parameters = parameters
        self.preconditions = preconditions
        self.effects = effects
    
    def __str__(self) -> str:
        return f"ActionSchema: {self.name} \n{self.parameters} \n{self.preconditions} \n{self.effects}\n"
    
    def __repr__(self) -> str:
        return self.__str__()


class EntityType(Enum):
    AGENT = 1
    OBJECT = 2



class Entity:
   
    def __init__(self,enetity_name, enetity_type):
        self.enetity_name = enetity_name
        self.enetity_type = enetity_type

    def __str__(self): # show only in the print(object)
        return f"<Entity: e_name: {self.enetity_name}; e_type: {self.enetity_type}>\n"

    def __repr__(self): # show when in a dictionary
        return self.__str__()
        # return self
        
        
EPFType = Enum("EPFType", "EP JP")
        
class EP_formula:
    
    def __init__(self) -> None:
        self.epf_type = None
        self.ep_query = None
        self.ep_varphi = None
        self.ep_variable = None
        self.ep_formula_str = None
        pass
    
    def __str__(self) -> str:
        ep_varphi = self.ep_varphi if self.ep_varphi != None else "No Varphi"
        ep_variable = self.ep_variable if self.ep_variable != None else "No Variable"
        ep_formula_str = self.ep_formula_str if self.ep_formula_str != None else "No Formula"
        
            
        return " {"+f" EP_formula: <{self.epf_type}> <{self.ep_query}>: [<{ep_variable}>;  <{ep_formula_str}>: <{ep_varphi}>]" + "} "
    
    def __repr__(self) -> str:
        return self.__str__()

ConditionType = Enum("ConditionType", "EP ONTIC")

ConditionOperatorType = Enum("ConditionOperatorType", "EQUAL GREATER GREATER_EQUAL LESS LESS_EQUAL NOT_EQUAL")

condition_operator_dict = {
    "=": ConditionOperatorType.EQUAL,
    ">": ConditionOperatorType.GREATER,
    ">=": ConditionOperatorType.GREATER_EQUAL,
    "<": ConditionOperatorType.LESS,
    "<=": ConditionOperatorType.LESS_EQUAL,
    "!=": ConditionOperatorType.NOT_EQUAL,
}

class Condition:
    def __init__(self) -> None:
        self.condition_operator = None
        self.condition_type = None
        self.target_value = None
        self.condition_variable = None
        self.target_variable = None
        
        # this is for ep
        self.condition_formula = None
        
        pass
    
    def __str__(self) -> str:
        condition_formula = self.condition_formula if self.condition_formula != None else "No condition formula"
        condition_variable = self.condition_variable if self.condition_variable != None else "No condition variable"
        target_variable = self.target_variable if self.target_variable != None else "No target variable"
        target_value = self.target_value if self.target_value != None else "No target Value"
        return " {"+f"Condition: <{self.condition_operator}> <{self.condition_type}> [<{condition_formula}> <{condition_variable}>] [<{target_variable}> <{target_value}>]" + "} "
    
    def __repr__(self) -> str:
        return self.__str__()

Ternary = Enum("Ternary", "TRUE FALSE UNKNOWN")
eq_ternay_dict = {
    '+': Ternary.TRUE,
    '!': Ternary.FALSE,
    "$": Ternary.UNKNOWN

}

def find_each_section(s):
    stack = []
    pairs = []

    for i, char in enumerate(s):
        if char == '(':
            stack.append(i)
        elif char == ')':
            if stack:
                start = stack.pop()
                if stack == []:
                    pairs.append(s[start:i+1])

    return pairs

def extract_v_from_s(variable_name, state):
    if variable_name in state.keys():
        return state[variable_name]
    else:
        raise ValueError("Variable not found in the state", variable_name, state)

bool2Ternary_dict = {
    True: Ternary.TRUE,
    False: Ternary.FALSE
}

def global_state_evaluation(logger,operator,value1,value2):
    # logger.debug("operator: %s, value1: %s, value2: %s",operator,value1,value2)
    if operator == ConditionOperatorType.EQUAL:
        return value1 == value2
    elif operator == ConditionOperatorType.GREATER:
        return value1 > value2
    elif operator == ConditionOperatorType.GREATER_EQUAL:
        return value1 >= value2
    elif operator == ConditionOperatorType.LESS:
        return value1 < value2
    elif operator == ConditionOperatorType.LESS_EQUAL:
        return value1 <= value2
    elif operator == ConditionOperatorType.NOT_EQUAL:
        return value1 != value2
    else:
        raise ValueError("Operator not found", operator,value1,value2)


def evaluation(logger,operator,value1,value2):
    # logger.debug("operator: %s, value1: %s, value2: %s",operator,value1,value2)
    # self.logger.debug("operator: %s, value1: %s, value2: %s",operator,value1,value2)
    if operator == ConditionOperatorType.NOT_EQUAL:
        return bool2Ternary_dict[value1 != value2]
    
    if value1 == special_value.UNSEEN and value2 != special_value.UNSEEN:
        return Ternary.UNKNOWN
    if value1 == special_value.HAVENT_SEEN and value2 != special_value.HAVENT_SEEN:
        return Ternary.UNKNOWN
    if operator == ConditionOperatorType.EQUAL:
        return bool2Ternary_dict[value1 == value2]
    elif operator == ConditionOperatorType.GREATER:
        return bool2Ternary_dict[value1 > value2]
    elif operator == ConditionOperatorType.GREATER_EQUAL:
        return bool2Ternary_dict[value1 >= value2]
    elif operator == ConditionOperatorType.LESS:
        return bool2Ternary_dict[value1 < value2]
    elif operator == ConditionOperatorType.LESS_EQUAL:
        return bool2Ternary_dict[value1 <= value2]
    elif operator == ConditionOperatorType.NOT_EQUAL:
        return bool2Ternary_dict[value1 != value2]
    else:
        raise ValueError("Operator not found", operator,value1,value2)
    
    
EpistemicType = Enum("EpistemicType", "Knowledge Seeing Belief")
EpistemicGroupType = Enum("EpistemicGroupType", "Individual Uniform Distribution Common")

ep_type_dict = {
    "k": (EpistemicGroupType.Individual,EpistemicType.Knowledge),
    "ek": (EpistemicGroupType.Uniform,EpistemicType.Knowledge),
    "dk": (EpistemicGroupType.Distribution,EpistemicType.Knowledge),
    "ck": (EpistemicGroupType.Common,EpistemicType.Knowledge),
    "s": (EpistemicGroupType.Individual,EpistemicType.Seeing),
    "es": (EpistemicGroupType.Uniform,EpistemicType.Seeing),
    "ds": (EpistemicGroupType.Distribution,EpistemicType.Seeing),
    "cs": (EpistemicGroupType.Common,EpistemicType.Seeing),
    "b": (EpistemicGroupType.Individual,EpistemicType.Belief),
    "eb": (EpistemicGroupType.Uniform,EpistemicType.Belief),
    "db": (EpistemicGroupType.Distribution,EpistemicType.Belief),
    "cb": (EpistemicGroupType.Common,EpistemicType.Belief),
}

def compareTernary(t1,t2):
    if t1 == t2:
        return Ternary.TRUE
    else:
        if t2 == Ternary.UNKNOWN:
            return Ternary.UNKNOWN
        else:
            return Ternary.FALSE
        
def format_JPstr2PerspectiveKey(jp_str):
    jp_content_list = jp_str.split(" ")
    perspective_key = ""
    for jp_content in jp_content_list:
        if "[" in jp_content:
            # then it means agents
            pass
        else:
            jp_content = jp_content.replace("s","o").replace("k","o").replace("b","f")
        perspective_key += jp_content
        perspective_key += " "
    return perspective_key


def str_replace_last(s, old, new):
    li = s.rsplit(old, 1)
    return new.join(li)

special_value  = Enum("special_value", "UNSEEN HAVENT_SEEN")


def multiple_parameter_replace(text, replacements, fillers):
    """
    Replace multiple substrings in text based on a list of tuples (target, replacement).

    Parameters:
    text (str): The original string.
    replacements (list of tuples): A list of (target, replacement) tuples.

    Returns:
    str: The modified string.
    """
    for target, replacement in replacements:
        text = text.replace(target, fillers+replacement)
    return text

def multiple_parameter_replace_with_ep(text,replacements,fillers):
    ep_possible_filler1 = "["
    ep_possible_filler2 = ","
    
    ep_possible_replacements1 = [(ep_possible_filler1+k,ep_possible_filler1+v) for k,v in replacements]
    ep_possible_replacements2 = [(ep_possible_filler2+k,ep_possible_filler2+v) for k,v in replacements]
    text  = multiple_parameter_replace(text,ep_possible_replacements1,"")
    text = multiple_parameter_replace(text,ep_possible_replacements2,"")
    text = multiple_parameter_replace(text,replacements,fillers)
    return text
    
    
def make_hashable(obj):
    """
    Convert a nested structure to a hashable type.
    
    Parameters:
    obj: The object to convert (could be a dict, list, tuple, set, etc.)

    Returns:
    A hashable version of the object.
    """
    if isinstance(obj, dict):
        return frozenset((k, make_hashable(v)) for k, v in obj.items())
    elif isinstance(obj, list):
        return tuple(make_hashable(i) for i in obj)
    elif isinstance(obj, set):
        return frozenset(make_hashable(i) for i in obj)
    else:
        return obj