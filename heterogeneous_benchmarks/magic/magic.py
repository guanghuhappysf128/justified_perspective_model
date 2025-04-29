import logging 
import typing
from util import Function,FunctionSchema,Entity,EntityType,setup_logger,Type
from datetime import datetime

LOGGER_NAME = "bbl"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG

#####
import numpy as np
import math
common_constants = {

}

dir_dict = {

}

#####

class ExternalFunction:
    logger = None
    
    def __init__(self, handlers):
        self.logger = setup_logger(LOGGER_NAME,handlers,logger_level=LOGGER_LEVEL) 
    
    def checkVisibility(self,state,agent_index,var_name,entities:typing.Dict[str,Entity],
                        functions:typing.Dict[str,Function],
                        function_schemas:typing.Dict[str,FunctionSchema],
                        types:typing.Dict[str,Type]):
        if not agent_index in entities.keys():
            raise ValueError(f"agent_index [{agent_index}] not found in entities")
        if not entities[agent_index].enetity_type == EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions.keys():
            raise ValueError(f"var_name [{var_name}] not found in functions")
        
        function = functions[var_name]
        function_schemas_name = function.function_schema_name
        target_list = function.entity_index_list
        # print(function)
        # for the bbl domain, all visibility function should be the same
        # based on whether the agents physically see the objects/agents or not
        # and all functions in bbl domain have only one entity
        if len(target_list) != 1:
            raise ValueError("all function in magic domain should have only one entity: [%s]",var_name)

        # print(entities)
        # print(types)
        agent_types = []
        for type_name,item in types.items():
            type_obj : Type = item
            if agent_index in type_obj.entity_index_list:
                agent_types.append(type_name)

        if 'magician' in agent_types:
            if "peeking" == function_schemas_name:
                return True
            elif "peeked" ==  function_schemas_name:
                return True
            elif "selected" == function_schemas_name:
                return True
            elif "selecting" == function_schemas_name:
                return True
            elif "surprised" == function_schemas_name:
                return True
            elif "number" == function_schemas_name:
                if f"peeked {agent_index}" in state and state[f"peeked {agent_index}"] == 1:
                    return True
                elif f"peeking {agent_index}" in state and state[f"peeking {agent_index}"] == 1:
                    return True
                else:
                    return False
            else:
                raise NotImplementedError("seeing rule for function <%s> has not been defined",var_name)
        elif 'audience' in agent_types:
            if "peeking" == function_schemas_name:
                return False
            elif "peeked" ==  function_schemas_name:
                return False
            elif "selected" == function_schemas_name:
                return True
            elif "selecting" == function_schemas_name:
                return True
            elif "surprised" == function_schemas_name:
                return True
            elif "number" == function_schemas_name:
                if f"selected {target_list[0]}" in state and state[f"selected {target_list[0]}"] == 1:
                    return False
                elif f"selecting {agent_index}" in state and state[f"selecting {agent_index}"] == 1:
                    return True
                else:
                    return False
            else:
                raise NotImplementedError("seeing rule for function <%s> has not been defined",var_name)
        else:
            raise NotImplementedError("agent types <%s> has not been defined",agent_types)


        return False
        # if 'peeking' == function_schemas_name:
        #     return True
        # elif 'coin' == function_schemas_name:
        #     return state[f"peeking {agent_index}"] == "t"
        # else:
        #     raise ValueError(f"function_schemas_name [{function_schemas_name}] not found")