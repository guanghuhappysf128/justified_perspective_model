import logging 
import typing
from util import Function,FunctionSchema,Entity,EntityType,setup_logger,Type,special_value
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
        if not entities[agent_index].entity_type == EntityType.AGENT:
            raise ValueError(f"agent_index [{agent_index}] is not an agent")
        if var_name not in functions.keys():
            raise ValueError(f"var_name [{var_name}] not found in functions")
        
        function = functions[var_name]
        function_schemas_name = function.function_schema_name
        target_list = function.entity_index_list
        
        # for the bbl domain, all visibility function should be the same
        # based on whether the agents physically see the objects/agents or not
        # and all functions in bbl domain have only one entity
        if len(target_list) != 1:
            raise ValueError("all function in bbl should have only one entity",var_name)

        raise NotImplementedError("checkVisibility is not implemented")
        

    def get1o(self,parent_state,agt_id):
        new_state = dict()
        agent_calling_history_str = parent_state[f"called {agt_id}"]
        all_agent_calling_history_dict = dict()

        for var_index,value in parent_state.items():
            target_index = var_index.split(" ")[-1]
            if target_index == agt_id:
                # new_state.update({var_index: value})
                if "secret" in var_index:
                    # handle secret at the end
                    pass
                elif "called" in var_index:
                    new_state.update({var_index: value})
                    all_agent_calling_history_dict.update({agt_id: value})
                else:
                    raise ValueError("var_index [%s] not found",var_index)
            else:
                agent_calling_history_str.rfind(target_index)
                called_timestamp = agent_calling_history_str.rfind(target_index)
                if called_timestamp != -1:
                    if "secret" in var_index:
                        # new_state.update({var_index: value})
                        # handle secret at the end
                        pass
                    elif "called" in var_index:
                        new_state.update({var_index: value[:called_timestamp+1]})
                        all_agent_calling_history_dict.update({target_index: value[:called_timestamp+1]})
                else:
                    if "secret" in var_index:
                        # new_state.update({var_index: special_value.UNSEEN})
                        # handle secret at the end
                        pass
                    elif "called" in var_index:
                        new_state.update({var_index: "0"})
                    else:
                        raise ValueError("var_index [%s] not found",var_index)
        
        for var_index,value in parent_state.items():
            if "secret" in var_index:
                # handle secret at the end
                target_index = var_index.split(" ")[-1]
                known_secret = False
                for agt_id,history in all_agent_calling_history_dict.items():
                    if history.rfind(target_index) != -1:
                        known_secret = True
                        break
                if known_secret:
                    new_state.update({var_index: value})
                else:
                    new_state.update({var_index: special_value.UNSEEN})
            elif "called" in var_index:
                pass
            else:
                raise ValueError("var_index [%s] not found",var_index)
                    
            # if self.external.checkVisibility(parent_state,agt_id,var_index,self.entities,self.functions,self.function_schemas,self.types):
            #     new_state.update({var_index: value})
            # else:
            #     new_state.update({var_index: special_value.UNSEEN})

            
        return new_state