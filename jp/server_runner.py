












# This file is created by Guang Hu for running the tournament with cluster manager

import copy
import datetime
import importlib
import json
import os

import sys
import time
import traceback
from optparse import OptionParser
import pytz
from utils.pddl_generator import rank_to_combination,write_one_problems



import logging
from util import setup_logger_handlers,setup_logger
# from latex_converter import LatexConverter
import instance_runner

TIMEZONE = pytz.timezone('Australia/Melbourne')
DATE_FORMAT = '%d-%m-%Y_%H-%M-%S'



# Set up root logger, and add a file handler to root logger
# logging.basicConfig(filename = f'logs/{timestamp}.log',
#                     level = logging.INFO,
#                     format = '%(asctime)s:%(levelname)s:%(name)s:%(message)s')
# logger = logging.getLogger("runner")
LOGGER_NAME = "experiment_runner"

def loadParameter():

    """
    Processes the command line input for running the tournament
    """
    usageStr = """
    USAGE:      python experiment_runner.py <options>
    EXAMPLES:   (1) 



    """
    
    # logger.info("Parsing Options")
    parser = OptionParser(usageStr)
    
    parser.add_option('-t', '--time_out', dest="time_out", help='timeout, default 300s', type='int', default=300)
    parser.add_option('-m', '--memory_out', dest="memory_out", help='memoryout, default 8GB', type='int', default=8)
    parser.add_option('-o','--output_path', dest="output_path", help='output directory for the running results (default: output/)',default='output')
    parser.add_option('-s', '--search_path', dest="search_path", help='the path of the search algorithm', default='')
    parser.add_option('-d','--domain_path', dest="domain_path", help='the path to the domain file, which also should include files to generate problem.pddl',default='')
    parser.add_option('--goal_index', dest="goal_index", help='the index to the goal, should be a large int',type='int')
    parser.add_option('--goal_size', dest="goal_size", help='the size of the goal, should be a int',type='int')
    parser.add_option('--goal_depth', dest="goal_depth", help='the max depth of a goal set', type='int')
    parser.add_option('-i','--init_name', dest="init_name", help='the name of the init set, should be a string (dictionary key in a*_init.json)')
    parser.add_option('-a', '--agent', dest="num_of_agent", help='the number of agent used to find correct json files', type='int')

    options, otherjunk = parser.parse_args(sys.argv[1:] )
    assert len(otherjunk) == 0, "Unrecognized options: " + str(otherjunk)

    return options

if __name__ == '__main__':

    start_time = datetime.datetime.now().astimezone(TIMEZONE)

    options = loadParameter()
    time_out = options.time_out
    memory_out = options.memory_out
    output_path = options.output_path
    search_path = options.search_path
    domain_path = options.domain_path
    goal_index = options.goal_index
    goal_size = options.goal_size
    goal_depth = options.goal_depth
    init_name = options.init_name
    num_of_agent = options.num_of_agent
    
    # generate a temp path based on the timestamp
    if output_path == '':
        output_path = os.path.join("output",start_time.strftime(DATE_FORMAT))
    if not os.path.isdir(output_path):
        os.makedirs(output_path)
    

    concole_logger_level = logging.INFO    
    handlers = setup_logger_handlers(os.path.join(output_path,'server_runner.log'),c_logger_level= concole_logger_level, c_display= True)
    logger = setup_logger(LOGGER_NAME,handlers,logging.INFO)
    
    # generate problem.pddl
    domain_dir = os.path.dirname(domain_path)
    domain_path_component_list = domain_dir.split(os.sep)
    domain_name = domain_path_component_list[-1]
    problem_template_path = os.path.join(domain_dir,f"problem_template{num_of_agent}.py")
    init_dict_path = os.path.join(domain_dir,f"a{num_of_agent}_init.json")
    problem_base_path = os.path.join(domain_dir,f"a{num_of_agent}_problem_base.json")
    goal_index_info_path = os.path.join(domain_dir,f"a{num_of_agent}_goal_depth-goalsize_info.json")
    
    problem_name = f"{domain_name}_a{num_of_agent}_g{goal_size}_d{goal_depth}_{goal_index}"
    
    problem_path = os.path.join(domain_dir,"problem_"+problem_name+"_"+init_name+".pddl")
    try:
        with open(init_dict_path, 'r') as f:
            init_dict = json.load(f)
        init_list = init_dict[init_name]
        with open(problem_base_path, 'r') as f:
            problem_base = json.load(f)
            
        current_goal_base_size_list = []
        goal_base = dict()
        for i in range(1,goal_depth+1):
            current_goal_base_size_list.append(len(problem_base[str(i)]))
            goal_base.update(problem_base[str(i)])
        goal_base_size = sum(current_goal_base_size_list)
        
        with open(goal_index_info_path, 'r') as f:
            goal_index_info = json.load(f)
            max_index = goal_index_info[str(goal_depth)][str(goal_size)]
            if goal_index > max_index:
                raise ValueError(f"goal_index {goal_index} is larger than the max_index {max_index}")
        
        # print(f"goal base size: {goal_base_size}")
        # print(f"goal size: {goal_size}")
        goal_index_combination = rank_to_combination(goal_index-1,goal_size,goal_base_size)
        goal_str_list = []
        for local_goal_index in goal_index_combination:
            goal_str = goal_base[str(local_goal_index)] + f";; a{num_of_agent}_{goal_depth}_{local_goal_index:020d}"
            goal_str_list.append(goal_str)
        
        problem_template_module = importlib.import_module(problem_template_path.replace(os.sep,'.').replace('.py',''))
        problem_template = getattr(problem_template_module,"PDDL_Template")
        write_one_problems(problem_template,goal_str_list,init_list,problem_name,domain_name,problem_path)
    except:
        traceback.print_exc()
        exit()
    
    # loading search algorithm
    search_name = os.path.basename(search_path).replace('.py','')

    try:
        search_module = importlib.import_module(search_path.replace(os.sep,'.').replace('.py',''))
        logger.info(f"finish loading search algorithm:")
    except (NameError, ImportError, IOError):
        traceback.print_exc()
        exit()
    except:
        traceback.print_exc()
        exit()

    external_path = os.path.join(domain_dir,domain_name+".py")
        
    instance_name = f"{search_name}_{domain_name}_{problem_name}"
    logger.info(f"solving {instance_name}")
    start_time = datetime.datetime.now().astimezone(TIMEZONE)
    ins = instance_runner.Instance(
                    instance_name=instance_name,
                    problem_path=problem_path,
                    domain_path=domain_path,
                    external_function= external_path,
                    search_module= search_module,
                    search_name=search_name
                    )
    result_json_path = ins.solve(output_path = output_path,time_out=time_out, memory_out = memory_out)
    end_time = datetime.datetime.now().astimezone(TIMEZONE)
    used_time = end_time - start_time
    logger.info(f"solving time: {used_time}")
    del ins
    
    with open(result_json_path, 'r') as f:
        result_dict = json.load(f)
    
    result_dict["goal_index"] = goal_index
    result_dict["designed_goal_depth"] = goal_depth
    result_dict["init_name"] = init_name
    
    with open(result_json_path, 'w') as f:
        json.dump(result_dict,f,indent=4)
        
    
        # if options.latex_output:
        #     logger.info("Generating Latex for domain:")
        #     logger.info(domain_name)
        #     latex_converter = LatexConverter(input_dir=output_path,output_dir="../jair/temp_table_contents")
        #     latex_converter.table_generator()


    
    