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
        print(function)
        # for the bbl domain, all visibility function should be the same
        # based on whether the agents physically see the objects/agents or not
        # and all functions in bbl domain have only one entity
        if len(target_list) != 1:
            raise ValueError("all function in magic domain should have only one entity: [%s]",var_name)

        return False
        # if 'peeking' == function_schemas_name:
        #     return True
        # elif 'coin' == function_schemas_name:
        #     return state[f"peeking {agent_index}"] == "t"
        # else:
        #     raise ValueError(f"function_schemas_name [{function_schemas_name}] not found")