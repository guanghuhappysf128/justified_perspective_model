import logging 
import typing
from util import Function,FunctionSchema,Entity,EntityType,setup_logger
from datetime import datetime

LOGGER_NAME = "thief"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG
 
# declare common variables
common_constants = {

}

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
        
        
        if 'posture'  == function_schemas_name:
            return True
        if 'goal_achieved' == function_schemas_name:
            return True
        if 'existing' == function_schemas_name:
            if target_list[0]  == agent_index:
                return True
            elif state[f"posture {agent_index}"] == 'peeking':
                return True
            else:
                return False
        else:
            raise ValueError(f"function_schemas_name [{function_schemas_name}] not found")

