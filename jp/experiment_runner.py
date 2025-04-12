












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




import logging
from util import setup_logger_handlers,setup_logger
# from latex_converter import LatexConverter
from instance_runner import Instance

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
    
    parser.add_option('-t', '--timeout', dest="timeout", help='timeout, default 300s', type='int', default=600)
    parser.add_option('-m', '--memoryout', dest="memoryout", help='memoryout, default 8GB', type='int', default=8)
    parser.add_option('-o','--output', dest="output_path", help='output directory for the running results (default: output/<timestamp>)',default='')
    parser.add_option('-s', '--search_path', dest="search_path", help='the path of the search algorithm', default='search_algorithms/bfs.py')
    # parser.add_option('-d','--debug', dest="log_debug", action='store_true', help='enable logging level to debug', default=False)
    parser.add_option('--console_debug', dest="console_debug", action='store_true', help='enable logging level to debug', default=False)
    # parser.add_option('--time_debug', dest="time_debug", action='store_true', help='enable logging level to debug', default=False)
    # parser.add_option('-i','--input', dest="input_path", help='input directory for the experiments (default: examples/*)',default='examples')
    parser.add_option('-i','--input', dest="input_domain_names", help='input for the experiment config (default: examples/*)',default='examples/CONFIG')
    # parser.add_option('-b', '--belief_mode', dest="belief_mode", type='int', help='should between 0-3', default=1)
    parser.add_option('--latex_output', dest="latex_output", action='store_true', help='automatically generater latex tables', default=False)
    # parser.add_option('-s','--savefiles', action='store_true', help='keep the student repos', default=False)
    # parser.add_option('--tag', help='the tag for submission', default='submission')
    options, otherjunk = parser.parse_args(sys.argv[1:] )
    assert len(otherjunk) == 0, "Unrecognized options: " + str(otherjunk)

    return options

if __name__ == '__main__':

    start_time = datetime.datetime.now().astimezone(TIMEZONE)

    options = loadParameter()
    output_path = options.output_path
    if output_path == '':
        output_path = os.path.join("output",start_time.strftime(DATE_FORMAT))
    if not os.path.isdir(output_path):
        os.makedirs(output_path)
    
    if options.console_debug:
        c_logger_level = logging.DEBUG
    else:
        c_logger_level = logging.INFO    
    
    handlers = setup_logger_handlers(os.path.join(output_path,'main.log'),c_logger_level= c_logger_level, c_display= True)
    logger = setup_logger(LOGGER_NAME,handlers,logging.INFO)
    
    
    # loading search algorithm
    search_path = options.search_path.replace('.py','')
    module_list = os.path.normpath(search_path).split(os.sep)
    search_name = module_list[-1]
    module_path = ".".join(module_list)
    print(search_name)
        

        
    try:
        search_module = importlib.import_module(module_path, package=__package__)
        logger.info(f"finish loading search algorithm:")
    except (NameError, ImportError, IOError):
        traceback.print_exc()
        exit()
    except:
        traceback.print_exc()
        exit()

    
    
    domain_name_list = []
    example_folder_path = ""
    try:
        with open(options.input_domain_names, 'r') as f:
            domain_name_str = f.readline()
            domain_name_list = domain_name_str.split(" ")
        directory_breaker = "/"
        
        
        example_folder_path = os.path.dirname(options.input_domain_names)
        # example_folder_path = directory_breaker.join(options.input_domain_names.split("/")[:-1])
        for domain_name in domain_name_list:
            if not os.path.exists(os.path.join(example_folder_path,domain_name)):
                raise FileNotFoundError(os.path.join(example_folder_path,domain_name))
    except:
        traceback.print_exc()
        exit()
    
    
    for domain_name in domain_name_list:
        problem_folder = os.path.join(example_folder_path,domain_name)
        domain_path = os.path.join(problem_folder,"domain.pddl")
        external_path = os.path.join(problem_folder,f"{domain_name}.py")
        
        
        # loading external function
        external_function = external_path

        for problem_name in sorted(os.listdir(problem_folder)):
            if '.pddl' in problem_name and not problem_name == 'domain.pddl':
                problem_path = os.path.join(problem_folder,problem_name)
                instance_name = f"{search_name}_{domain_name}_{problem_name}"
                logger.info(f"solving {instance_name} - {problem_folder}")
                start_time = datetime.datetime.now().astimezone(TIMEZONE)
                ins = Instance(
                    instance_name=instance_name,
                    problem_path=problem_path,
                    domain_path=domain_path,
                    external_function= external_function,
                    search_module= search_module,
                    search_name=search_name
                    )
                ins.solve(time_out=options.timeout,log_debug = options.console_debug, output_path = output_path,memory_out=options.memoryout)
                end_time = datetime.datetime.now().astimezone(TIMEZONE)
                used_time = end_time - start_time
                logger.info(f"solving time: {used_time}")
                del ins
    
        # if options.latex_output:
        #     logger.info("Generating Latex for domain:")
        #     logger.info(domain_name)
        #     latex_converter = LatexConverter(input_dir=output_path,output_dir="../jair/temp_table_contents")
        #     latex_converter.table_generator()


    
    