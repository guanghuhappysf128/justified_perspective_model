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
    'angle a': 89,
    'angle b': 89,
}

dir_dict = {
    'n': 90,
    'ne': 45,
    'e':0,
    'se':-45,
    's':-90,
    'sw':-135,
    'w':180,
    'nw':135,
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
        if len(target_list) != 1:
            raise ValueError("all function in bbl should have only one entity",var_name)

        target_index = target_list[0]
        try:
            #extract necessary variables from state
            # logger.debug(f"loading variables from state")
            target_x = state[f"x {target_index}"]
            target_y = state[f"y {target_index}"]
            agent_x = state[f"x {agent_index}"]
            agent_y = state[f"y {agent_index}"]
            agent_dir = dir_dict[state[f"dir {agent_index}"]]
            
            # extract necessary common constants from given domain
            # logger.debug(f"necessary common constants from given domain")
            agent_angle = common_constants[f"angle {agent_index}"]
            
            # agent is able to see anything in the same location
            if target_x == agent_x and target_y == agent_y:
                return True
            
            # generate two vector
            v1 = np.array((target_y - agent_y,target_x - agent_x))
            v1 = v1 / np.linalg.norm(v1)
            radians = math.radians(agent_dir)
            v2 = np.array((math.cos(radians),math.sin(radians)))
            # logger.debug(f'v1 {v1}, v2 {v2}')
            cos_ = v1.dot(v2)
            d_radians = math.acos(cos_)
            d_degrees = math.degrees(d_radians)
            # logger.debug(f'delta angle degree is {round(d_degrees,3)}')
            
            if d_degrees <= agent_angle/2.0 and d_degrees >= - agent_angle/2.0:
                inside = True
            else:
                inside = False
            # logger.debug(f'visibility is {inside}')
            return inside
        except KeyError as e:
            self.logger.debug(e)
            self.logger.debug("state: %s",state)
            return False
        except TypeError as e:
            self.logger.debug(e)
            self.logger.debug("state: %s",state)
            return False
