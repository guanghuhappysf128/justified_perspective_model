


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
        self.nesting_level = 0

    def __str__(self): # show only in the print(object)
        return f"<Entity: e_name: {self.enetity_name}; e_type: {self.enetity_type}; nesting_level: {self.nesting_level}>\n"

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
    
# -------heterogeneous state representation------------------

class EpistemicState:
    def __init__(self) -> None:
        self.assignments = dict()
        self.nesting_base = set() # empty setting means uniform and unbounded level of nesting
        pass

    def __str__(self) -> str:
        return f"State: {self.state}\n Nesting Bases: {self.nesting_base}"
    
    def __repr__(self) -> str:
        return self.__str__()
    
def extract_v_from_s(variable_name, state):
    if variable_name in state.keys():
        return state[variable_name]
    else:
        raise ValueError("Variable [%s] not found in the state [%s]", variable_name, state)

# class heterogeneous_state(state):
#     def __init__(self) -> None:
#         super().__init__()
#         self.nesting_matrix = set() # empty setting means uniform and unbounded level of nesting
#         pass

#     def __str__(self) -> str:
#         return f"State: {self.state}"
    
#     def __repr__(self) -> str:
#         return self.__str__()

def USSequence(state_sequence):
    output_sequence = []

    for state in state_sequence:
        temp_state = dict()
        for key in state.keys():
            temp_state[key] = special_value.UNSEEN
        output_sequence.append(temp_state)
    return output_sequence

def HSSequence(state_sequence):
    output_sequence = []

    for state in state_sequence:
        temp_state = dict()
        for key in state.keys():
            temp_state[key] = special_value.HAVENT_SEEN
        output_sequence.append(temp_state)
    return output_sequence

def inNestingBase(agent_index,nesting_base):
    agent_prefix = agent_index + "-"
    for nesting_str in nesting_base:
        if nesting_str.startswith(agent_prefix) or nesting_str == agent_index:
            return True
    return False

def NestingUpdate(agent_index,nesting_base):
    result = set()

    agent_prefix = agent_index +"-"
    for nesting_str in nesting_base:
        if nesting_str.startswith(agent_prefix):
            # result.add(nesting_str)
            surfix = nesting_str[len(agent_prefix):]
            if surfix in nesting_base:
                result.add(surfix)
    return result