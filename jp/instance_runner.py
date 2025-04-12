
import datetime
import importlib
import json
import os

import sys
import traceback
from optparse import OptionParser
import pytz
import time
import gc

import logging
# import forward_pddl_model as pddl_model
# import pddl_model as pddl_model
from pddl_model import Problem

from pddl_parser import PDDLParser
# from latex_converter import epgoal2latex
# import util
from util import setup_logger_handlers,setup_logger

TIMEZONE = pytz.timezone('Australia/Melbourne')
DATE_FORMAT = '%d-%m-%Y_%H-%M-%S'
LOGGER_NAME = "instance_runner"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG

import importlib.util

def load_module_from_path(path):
    path = os.path.abspath(path)
    module_name = os.path.splitext(os.path.basename(path))[0]
    spec = importlib.util.spec_from_file_location(module_name, path)
    if spec is None or spec.loader is None:
        raise ImportError(f"Could not load spec from {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module




class Instance:
    problem_path = ""
    domain_path = ""
    instance_name = ""
    external_function = None
    search = None
    
    def __init__(self,instance_name="",problem_path="",domain_path="",external_function= "",search_module= None,search_name = "", debug=False):
        self.problem_path = ""
        self.domain_path = ""
        self.instance_name = ""
        self.external_function = None
        self.search_module = search_module
        
        self.instance_name = instance_name
        self.problem_path = problem_path
        self.domain_path = domain_path
        self.external_function = external_function
        self.search_name = search_name

    def validate(self,output_path,time_out, memory_out, time_debug=False,log_debug=False, plan_actions="",save_belief:str=None,schemas=None):
        if plan_actions:
            plan = plan_actions.split(',')
            plan = [action.strip() for action in plan]
        else:
            print("No plan provided. Please specify with --plan_actions.")
        start_time = datetime.datetime.now().astimezone(TIMEZONE)
        result = dict()
        if output_path == '':
            output_path = f"output/{start_time.strftime(DATE_FORMAT)}"
            
        if not os.path.isdir(output_path):
            os.makedirs(output_path)
        
        if log_debug:
            log_level = logging.DEBUG
        else:
            log_level = logging.INFO  
        
        logger_handlers = setup_logger_handlers(f'{output_path}/{self.instance_name}.log', c_logger_level=log_level, c_display=False)
        logger = setup_logger(LOGGER_NAME,logger_handlers,logger_level=LOGGER_LEVEL) 

        # read the pddl files
        pddl_parser = PDDLParser(logger_handlers)

        logger.info('parser domain and problem')
        logger.info(self.domain_path)
        logger.info(self.problem_path)
        domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals = pddl_parser.run(self.domain_path,self.problem_path)

        
        # loading external function
        if type(self.external_function) ==str:
            logger.info(f"loading external function: {self.external_function}")
            # external_path = self.external_function
            # print(external_path)
            # external_path = external_path.replace('.py','').replace('\\','.').replace('/','.').replace('..','')
            # try:
            #     external_module = importlib.import_module(external_path)
            #     self.external_function = external_module.ExternalFunction(logger_handlers)
            external_path = os.path.abspath(self.external_function)
            try:
                external_module = load_module_from_path(external_path)
                self.external_function = external_module.ExternalFunction(logger_handlers)
                logger.info(f"finish loading external function")

            except (NameError, ImportError, IOError):
                traceback.print_exc()
                exit()
            except:
                traceback.print_exc()
                exit()
        else:
            self.external_function.logger.handlers = logger.handlers
            logger.info(f"External function exists")
            
            
        logger.info(f'Initialize problem')
        problem = Problem(enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals,self.external_function,handlers=logger_handlers)
        problem.domain_path = self.domain_path
        problem.problem_path = self.problem_path
        problem.logger.handlers = logger.handlers

        logger.info(f'starting validate')############validate
        start_search_time = datetime.datetime.now().astimezone(TIMEZONE)
        
        if time_debug:
            search_class_ref = getattr( self.search_module, self.search_name)
            search_algorithm = search_class_ref(logger_handlers,self.search_name)
            temp_result = search_algorithm.validating(plan,problem,time_out,memory_out,save_belief,schemas)
            
            # result = search_algorithm.searching(problem)
            # print(result)
        else:
        
            search_class_ref = getattr( self.search_module, self.search_name)
            search_algorithm = search_class_ref(logger_handlers,self.search_name)
            temp_result = search_algorithm.validating(plan,problem,time_out,memory_out,save_belief,schemas)
            # result = search_algorithm.searching(problem)
            # print(result)

    def solve(self,output_path,time_out, memory_out, time_debug=False,log_debug=False):
        
        start_time = datetime.datetime.now().astimezone(TIMEZONE)
        result = dict()
        if output_path == '':
            output_path = f"output/{start_time.strftime(DATE_FORMAT)}"
            
        if not os.path.isdir(output_path):
            os.makedirs(output_path)
        
        if log_debug:
            log_level = logging.DEBUG
        else:
            log_level = logging.INFO  
        
        # Set up root logger, and add a file handler to root logger
        # logging.basicConfig(filename = f'{output_path}/{self.instance_name}.log',
        #                     level = debug_level,
        #                     format = '%(asctime)s:%(levelname)s:%(name)s:%(message)s')
        logger_handlers = setup_logger_handlers(f'{output_path}/{self.instance_name}.log', c_logger_level=log_level, c_display=False)
        logger = setup_logger(LOGGER_NAME,logger_handlers,logger_level=LOGGER_LEVEL) 

        # read the pddl files
        pddl_parser = PDDLParser(logger_handlers)

        logger.info('parser domain and problem')
        logger.info(self.domain_path)
        logger.info(self.problem_path)
        # pddl_parser.run(self.domain_path,self.problem_path)
        domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals = pddl_parser.run(self.domain_path,self.problem_path)
        # logger.info(f"loading problem file: {self.problem_path}")
        # variable_domains,i_state,g_states,agent_index,obj_index,variables,vd_name,p_name= pddl_parser.problemParser(self.problem_path)
        # logger.info(f"finish loading problem file: {p_name}")

        # logger.info(f"loading domain file: {self.domain_path}")
        # actions,domain_name = pddl_parser.domainParser(f"{self.domain_path}")
        # logger.info(f"finish loading domain file: {domain_name}")        
        
        
        # loading external function
        if type(self.external_function) ==str:
            logger.info(f"loading external function: {self.external_function}")
            external_path = self.external_function
            external_path = external_path.replace('.py','').replace('\\','.').replace('/','.').replace('..','')
            try:
                external_module = importlib.import_module(external_path)
                self.external_function = external_module.ExternalFunction(logger_handlers)
                
                logger.info(f"finish loading external function")
            except (NameError, ImportError, IOError):
                traceback.print_exc()
                exit()
            except:
                traceback.print_exc()
                exit()
        else:
            self.external_function.logger.handlers = logger.handlers
            logger.info(f"External function exists")
            
            
        logger.info(f'Initialize problem')
        problem = Problem(enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals,self.external_function,handlers=logger_handlers)
        problem.domain_path = self.domain_path
        problem.problem_path = self.problem_path
        problem.logger.handlers = logger.handlers

        logger.info(f'starting search')
        start_search_time = datetime.datetime.now().astimezone(TIMEZONE)
        
        if time_debug:
            search_class_ref = getattr( self.search_module, self.search_name)
            search_algorithm = search_class_ref(logger_handlers,self.search_name)
            temp_result = search_algorithm.searching(problem,time_out,memory_out)
            # result = search_algorithm.searching(problem)
        else:
        
            search_class_ref = getattr( self.search_module, self.search_name)
            search_algorithm = search_class_ref(logger_handlers,self.search_name)
            temp_result = search_algorithm.searching(problem,time_out,memory_out)

        end_search_time = datetime.datetime.now().astimezone(TIMEZONE)
        
        result = temp_result.copy()


        init_time = start_search_time - start_time
        search_time = end_search_time - start_search_time
        
        # ep_dict = problem.goals.epistemic_dict
        # ep_goal_latex_str = epgoal2latex(ep_dict)

        logger.info(f'initialization time: { init_time}')
        logger.info(f'search time: {search_time }') 
            
        result.update({'domain_name':domain_name})
        result.update({'problem_name':problem_name})
        result.update({'search':self.instance_name.split('_')[0]})
        result.update({'init_time':init_time.total_seconds()})
        result.update({'search_time':search_time.total_seconds()})
        # maybe ontic goal as well?
        # result.update({'goals':ep_goal_latex_str})
        
        

        print(result)
        result_json_path = f"{output_path}/{self.instance_name}.json"
        with open(result_json_path,'w') as f:
            json.dump(result,f) 
        
        if 'running' in result.keys() and result['running']=='MEMORYOUT':
            del temp_result
            del search_algorithm
            gc.collect() 
            time.sleep(10)
        else:
            del temp_result
            del search_algorithm
            gc.collect() 

        return result_json_path

def loadParameter():

    """
    Processes the command line input for running the tournament
    """
    usageStr = """
    USAGE:      python runner.py <options>

    """
    parser = OptionParser(usageStr)

    parser.add_option('-d', '--domain', dest="domain_path", help='path to the domain file', default='')
    parser.add_option('-p', '--problem', dest="problem_path", help='path to the problem file', default='')
    parser.add_option('-e', '--external', dest="external_path", help='path to the external function file', default='')
    parser.add_option('-o', '--output', dest="output_path", help='output directory for the running results (default: output/timestamp)',default='')
    parser.add_option('-s', '--search_path', dest="search_path", help='the name of the search algorithm', default='bfs')
    parser.add_option('--log_debug', dest="log_debug", action='store_true', help='enable logging level to debug', default=False)
    parser.add_option('-b', '--belief_mode', dest="belief_mode", type='int', help='should between 0-3', default=1)
    parser.add_option('--time_debug', dest="time_debug", action='store_true', help='enable cProfile', default=False)
    parser.add_option('-t', '--time_out', dest="time_out", help='time_out, default 300s', type='int', default=300)
    parser.add_option('-m', '--memory_out', dest="memory_out", help='memoryout, default 8GB', type='int', default=8)
    parser.add_option('--plan_actions', dest="plan_actions", help='comma-separated list of plan actions', default='')
    
    options, otherjunk = parser.parse_args(sys.argv[1:] )
    assert len(otherjunk) == 0, "Unrecognized options: " + str(otherjunk)

    return options


if __name__ == '__main__':

    start_time = datetime.datetime.now().astimezone(TIMEZONE)
    options = loadParameter()
    
    
    time_out = options.time_out
    memory_out = options.memory_out
    
    problem_path = options.problem_path
    domain_path = options.domain_path
    # initialise with path, the function will load it later
    external_function = options.external_path
    search_path = options.search_path
    output_path = ''
    plan_action = options.plan_actions

    
    
    # if '\\' in search:
    #     domain_name = domain_path.split('\\')[2]
    #     problem_name = problem_path.split('\\')[-1].replace('.pddl','')
    #     search_name = search.split('\\')[-1].replace('.py','')
    # elif '/' in search:
    #     domain_name = domain_path.split('/')[2]
    #     problem_name = problem_path.split('/')[-1].replace('.pddl','')
    #     search_name = search.split('/')[-1].replace('.py','')        
    # instance_name = f"{search_name}_{domain_name}_{problem_name}"


    print("loading search algorithm: [%s]" % (search_path))

    search_path = search_path
    module_list = os.path.normpath(search_path).split(os.sep)
    search_name = module_list[-1].replace(".py","")
    problem_name = os.path.normpath(problem_path).split(os.sep)[-1].replace('.pddl','')
    domain_name = os.path.normpath(domain_path).split(os.sep)[-2]
    module_path = ".".join( module_list)
    module_path = module_path.replace(".py","")
    instance_name = f"{search_name}_{domain_name}_{problem_name}"


    try:
        print("loading search module from: [%s]" % (module_path))
        search_module = importlib.import_module(module_path)
        # self.search = __import__(search_path)
        # logger.info(f"finish loading search algorithm:")
    except (NameError, ImportError, IOError):
        traceback.print_exc()
        exit()
    except:
        traceback.print_exc()
        exit()

    if search_module == None:
        print("ERRORRRRRRRRRRRRRR")

    if options.output_path == '':
        output_path = f"output/{start_time.strftime(DATE_FORMAT)}"
    if not os.path.isdir(output_path):
        os.makedirs(output_path)
        
    if options.time_debug:
        import cProfile
        import pstats, math
        import io
        import pandas as pd
        print("starting profiling")
        pr = cProfile.Profile()
        pr.enable()
        ins = Instance(instance_name=instance_name,problem_path=problem_path,domain_path=domain_path,external_function= external_function,search_module= search_module, search_name = search_name)
        #ins.solve(output_path = output_path,time_out=time_out, memory_out = memory_out)
        if options.plan_actions:
            ins.validate(output_path = output_path,time_out=time_out, memory_out = memory_out, plan_actions=plan_action)
        else:
            ins.solve(output_path = output_path,time_out=time_out, memory_out = memory_out)
        
        
        pr.disable()
        
        result = io.StringIO()
        pstats.Stats(pr,stream=result).print_stats()
        result=result.getvalue()
        # chop the string into a csv-like buffer
        result='ncalls'+result.split('ncalls')[-1]
        result='\n'.join([','.join(line.rstrip().split(None,5)) for line in result.split('\n')])
        # save it to disk
        file_path = f"{output_path}/{instance_name}_cprofile.csv"
        print(file_path)
        with open(f"{output_path}/{instance_name}_cprofile.csv", 'w+') as f:
            #f=open(result.rsplit('.')[0]+'.csv','w')
            f.write(result)
            f.close()

        
    else:
        ins = Instance(instance_name=instance_name,problem_path=problem_path,domain_path=domain_path,external_function= external_function,search_module=search_module,search_name=search_name)
        #ins.solve(output_path = output_path,time_out=time_out, memory_out = memory_out)
        if options.plan_actions:
            ins.validate(output_path = output_path,time_out=time_out, memory_out = memory_out, plan_actions=plan_action)
        else:
            ins.solve(output_path = output_path,time_out=time_out, memory_out = memory_out)

