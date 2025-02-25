import logging 
import typing
from util import Function,FunctionSchema,Entity,EntityType,setup_logger
from datetime import datetime

LOGGER_NAME = "bbl"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG

#####
import numpy as np
import math
common_constants = {
    # 'angle a': 89,
    # 'angle b': 89,
}

dir_dict = {
    # 'n': 90,
    # 'ne': 45,
    # 'e':0,
    # 'se':-45,
    # 's':-90,
    # 'sw':-135,
    # 'w':180,
    # 'nw':135,
}

#####

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
        
        # for the bbl domain, all visibility function should be the same
        # based on whether the agents physically see the objects/agents or not
        # and all functions in bbl domain have only one entity
        if len(target_list) > 1:
            raise ValueError("all function in muddy children should have only one or zero entity",var_name)

        target_index = None
        if not target_list==[]:
            target_index = target_list[0]

            if not target_index in entities.keys():
                raise ValueError(f"target_index [{target_index}] not found in entities")

        if function_schemas_name == "muddy":
            # in muddy children, the agent can see other's forehead not their own
            if not agent_index == target_index:
                return True
            else:
                visible_muddy_children_list = []
                num_of_question = -1
                for key,value in state.items():
                    if key.startswith("muddy ") and not key==f"muddy {agent_index}" and value == 't':
                        visible_muddy_children_list.append(key)
                    elif key.startswith("num_of_question"):
                        num_of_question = int(value)
                # if the question has been asked one more times as the muddy children the agent sees
                # then the agent can see its own forehead and it should be muddy
                if num_of_question == -1:
                    raise ValueError("num_of_question not found")
                print(agent_index)
                print(num_of_question)
                print(visible_muddy_children_list)
                if len(visible_muddy_children_list) == num_of_question-1:

                    # if state[f"muddy_{agent_index}"] == 'f':
                    #     raise ValueError(f"agent {agent_index} can see its own forehead but it is clean")
                    return True
                
                # one of the children already know,
                # so, the other will also know
                if state["shouted"] == 't':
                    return True

                return False
                

        elif function_schemas_name == "shouted":
            return True
        elif function_schemas_name == "num_of_question":
            return True