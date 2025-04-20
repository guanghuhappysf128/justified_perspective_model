import os
import logging
import datetime
import pytz
import re
import traceback
import typing

TIMEZONE = pytz.timezone('Australia/Melbourne')
DATE_FORMAT = '%d-%m-%Y_%H-%M-%S'
timestamp = datetime.datetime.now().astimezone(TIMEZONE).strftime(DATE_FORMAT)
# logging.basicConfig(filename =f'logs/{timestamp}.log', level =logging.DEBUG)

LINE_BREAK = r"&"
NESTING_BREAK = r"-"
PDDL_PREFIX = "(define"
PDDL_SURFIX = ")"
JP_PREFIX = r"@jp"

LOGGER_NAME = r"pddl_parser"
LOGGER_LEVEL = logging.INFO
# LOGGER_LEVEL = logging.DEBUG
from util import setup_logger,find_each_section
from util import Type,FunctionSchema,Parameters,EffectType,Effect,UpdateType,ActionSchema,EntityType,Entity
from util import VALUE_TYPE,value_type_dict,RULE_TYPE,rule_type_dict
from util import Function,Rule,EP_formula,EPFType,Condition,ConditionType,Ternary,condition_operator_dict
from util import special_value

EFFECT_TYPE_DICT = {
    "increase": EffectType.INCREASE,
    "decrease": EffectType.DECREASE,
    "assign":EffectType.ASSIGN
}

DOMAIN_NAME_PREFIX = "(domain "
DOMAIN_NAME_SURFIX = ")"

TYPE_PREFIX = "(:types"
TYPE_SURFIX = ")"

FUNCTIONS_PREFIX = "(:functions"
FUNCTIONS_SURFIX = ")"

ACTION_PREFIX = "(:action"
ACTION_SURFIX = ")"

PROBLEM_NAME_PREFIX = "(problem "
PROBLEM_NAME_SURFIX = ")"

PROBLEM_DOMAIN_NAME_PREFIX = "(:domain "
PROBLEM_DOMAIN_NAME_SURFIX = ")"

AGENT_PREFIX = "(:agents"
AGENT_SURFIX = ")"

AGENT_SPEC_PREFIX = "(:agent_spec"
AGENT_SPEC_SURFIX = ")"
AGENT_SPEC_NESTING_PREFIX = "(= (nesting "
AGENT_SPEC_NESTING_SURFIX = ")"

NESTING_PREFIX = "(:nesting"
NESTING_SURFIX = ")"

OBJECT_PREFIX = "(:objects"
OBJECT_SURFIX = ")"

INIT_PREFIX = "(:init"
INIT_SURFIX = ")"
SINGLE_INIT_PREFIX = "(assign"
SINGLE_INIT_SURFIX = ")"

GOAL_PREFIX = "(:goal"
GOAL_SURFIX = ")"

RANGES_PREFIX = "(:ranges"
RANGES_SURFIX = ")"

RULES_PREFIX = "(:rules"
RULES_SURFIX = ")"

class PDDLParser:


    def __init__(self,handlers):
        self.logger = setup_logger(LOGGER_NAME,handlers,logger_level =LOGGER_LEVEL) 
        self.logger.debug("PDDL PARSER initialized")

    def run(self,domain_path,problem_path):
        # this should decode the domain first and then problem

        self.logger.info("Reading domain file")
        self.logger.info(domain_path)
        domain_file = str()
        with open(domain_path,"r") as f:
            domain_file = f.read()

        self.logger.debug(repr(domain_file))
        self.logger.debug("format document")
        domain_str = self.formatDocument(domain_file)

        self.logger.info("Parsing domain file")
        domain_name,types,function_schemas,action_schemas = self.domainParser(domain_str)
        
        self.logger.info("Reading problem file")
        self.logger.info(problem_path)
        problem_file = str()
        with open(problem_path,"r") as f:
            problem_file = f.read()
            
        self.logger.debug(repr(problem_file))
        self.logger.debug("format document")
        problem_str = self.formatDocument(problem_file)
        
        self.logger.info("Parsing problem file")
        domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals,nesting_base = self.problemParser(problem_str,domain_name,types,function_schemas,action_schemas)
        return domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals,nesting_base

    def problemParser(self,raw_problem_str,domain_name,types:typing.Dict[str,Type],function_schemas: typing.Dict[str,FunctionSchema] ,action_schemas: typing.Dict[str,ActionSchema]):

        # checking the prefix and surface of the whole domain file
        if not raw_problem_str.startswith(PDDL_PREFIX):
            self.logger.error("the problem file does not start with '%s'",PDDL_PREFIX)
            exit()
        elif not raw_problem_str.endswith(PDDL_SURFIX):
            self.logger.error("the problem file does not end with '%s'",PDDL_SURFIX)
            exit()
        raw_problem_str = raw_problem_str[len(PDDL_PREFIX):-len(PDDL_SURFIX):]
        self.logger.debug(repr(raw_problem_str))

        sectional_text_list = find_each_section(raw_problem_str)
        self.logger.debug(sectional_text_list)
        if len(sectional_text_list) < 7:
            raise ValueError("the problem file should at least contain 6 sections:\n problem_name,domain_name,objects,agents,rules, init and goal")
        
        # extract problem name
        # problem_name,problem_str = self.keyWordParser("problem_name",PROBLEM_NAME_REG_PREFIX,PROBLEM_NAME_REG,PROBLEM_NAME_REG_SURFIX,problem_str)
        # self.logger.debug(problem_name)
        problem_name_str = sectional_text_list.pop(0)
        if not problem_name_str.startswith(PROBLEM_NAME_PREFIX):
            raise ValueError("problem name string should start with %s",PROBLEM_NAME_PREFIX)
        problem_name = problem_name_str[len(PROBLEM_NAME_PREFIX):-len(PROBLEM_NAME_SURFIX)]
        self.logger.debug(problem_name)

        # extract domain name
        problem_domain_name_str = sectional_text_list.pop(0)
        if not problem_domain_name_str.startswith(PROBLEM_DOMAIN_NAME_PREFIX):
            raise ValueError("problem domain name string should start with %s",PROBLEM_DOMAIN_NAME_PREFIX)
        problem_domain_name = problem_domain_name_str[len(PROBLEM_DOMAIN_NAME_PREFIX):-len(PROBLEM_DOMAIN_NAME_SURFIX)]
        self.logger.debug(problem_domain_name)

        if not problem_domain_name == domain_name:
            raise ValueError("problem domain name [%s] does not match domain name [%s]",problem_domain_name,domain_name)

        # extract agents
        enetities : typing.Dict[str,Entity] = {}
        # agents_str,problem_str = self.keyWordParser("agents",AGENT_REG_PREFIX,AGENT_REG,AGENT_REG_SURFIX,problem_str)
        agents_raw_string = sectional_text_list.pop(0)
        if not agents_raw_string.startswith(AGENT_PREFIX):
            raise ValueError("agents string should start with %s",AGENT_PREFIX)
        agents_str = agents_raw_string[len(AGENT_PREFIX):-len(AGENT_SURFIX)]
        self.logger.debug(agents_str)
        pattern = r"\&[\w -]*"
        single_type_agents_str_list = re.findall(pattern, agents_str)
        self.logger.debug(single_type_agents_str_list)
        agent_set = set()
        for single_type_agents_str in single_type_agents_str_list:
            single_type_agents_str = single_type_agents_str[1:]
            agent_list_str = single_type_agents_str.split("-")[0]
            type_str = single_type_agents_str.split("-")[1]
            for agent_index in agent_list_str.split(" "):
                types[type_str].entity_index_list.add(agent_index)
                parent_type = types[type_str].parent_type_name
                if not parent_type == str():
                    types[parent_type].entity_index_list.add(agent_index)
                agent_set.add(agent_index)
        for agent_index in agent_set:
            enetities.update({agent_index:Entity(agent_index,EntityType.AGENT)})
        self.logger.debug(types)

        # optional section
        # extract agent_spec
        agent_spec_changed = False
        local_agent_nesting_dict = dict()
        agent_spec_str = sectional_text_list.pop(0)
        self.logger.debug(agent_spec_str)
        if agent_spec_str.startswith(AGENT_SPEC_PREFIX):
            # handle agent specs
            self.logger.debug("handle agent spec")
            agent_spec_str = agent_spec_str[len(AGENT_SPEC_PREFIX):-len(AGENT_SPEC_SURFIX):]
            self.logger.debug(agent_spec_str)
            agent_spec_str_list = find_each_section(agent_spec_str)
            self.logger.debug(agent_spec_str_list)
            for individual_agent_spec_str in agent_spec_str_list:
                self.logger.debug(individual_agent_spec_str)
                if not individual_agent_spec_str.startswith(AGENT_SPEC_NESTING_PREFIX):
                    raise ValueError("The current code can only handle nesting, agent spec string should start with %s",AGENT_SPEC_NESTING_PREFIX)
                individual_agent_spec_str = individual_agent_spec_str[len(AGENT_SPEC_NESTING_PREFIX):-len(AGENT_SPEC_NESTING_SURFIX):]
                self.logger.debug(individual_agent_spec_str)
                individual_spec_list = individual_agent_spec_str.split(") ")
                agent_index = individual_spec_list[0]
                nesting_level = int(individual_spec_list[1])
                enetities[agent_index].nesting_level = nesting_level
                agent_spec_changed = True
                local_agent_nesting_dict[agent_index] = nesting_level

        else:
            # this is not an agent spec, put it back
            sectional_text_list.insert(0,agent_spec_str)
        self.logger.debug(enetities)
        self.logger.debug(local_agent_nesting_dict)


        # opitional section
        # extract nesting
        nesting_base = set()
        nesting_str = sectional_text_list.pop(0)
        if nesting_str.startswith(NESTING_PREFIX):
            # handle nesting
            self.logger.debug("handle nesting")
            self.logger.debug(nesting_str)
            nesting_str = nesting_str[len(NESTING_PREFIX):-len(NESTING_SURFIX):]
            self.logger.debug(nesting_str)
            if nesting_str.startswith(LINE_BREAK):
                nesting_str = nesting_str[1:]
            self.logger.debug(nesting_str)
            nesting_base_list = nesting_str.split(" ")
            for nesting_base_str in nesting_base_list:
                if not self.isValidNB(local_agent_nesting_dict,nesting_base_str):
                    raise ValueError("nesting base string [%s] is not valid",nesting_base_str)
                else:
                    nesting_base.add(nesting_base_str)
        else:
            # this is not a nesting, put it back
            sectional_text_list.insert(0,nesting_str)
            if not agent_spec_changed:
                nesting_base = None # default uniformly unbounded level of nesting
            else:
                # generate all nesting based on agent's nesting level
                nesting_base = self.generateNestingBase(local_agent_nesting_dict)
        print(nesting_base)


        # extract objects
        # objects_str,problem_str = self.keyWordParser("objects",OBJECT_REG_PREFIX,OBJECT_REG,OBJECT_REG_SURFIX,problem_str)
        objects_str = sectional_text_list.pop(0)[len(OBJECT_PREFIX):-len(OBJECT_SURFIX)]
        self.logger.debug(objects_str)
        pattern = r"\&[\w -]*"
        single_type_objects_str_list = re.findall(pattern, objects_str)
        self.logger.debug(single_type_objects_str_list)
        object_set = set()
        for single_type_objects_str in single_type_objects_str_list:
            self.logger.debug(single_type_objects_str)
            single_type_objects_str = single_type_objects_str[1:]
            self.logger.debug(single_type_objects_str)
            object_list_str = single_type_objects_str.split("-")[0]
            type_str = single_type_objects_str.split("-")[1]
            for object_index in object_list_str.split(" "):
                self.logger.debug(object_index)
                self.logger.debug(type_str)
                types[type_str].entity_index_list.add(object_index)
                parent_type = types[type_str].parent_type_name
                if not parent_type == str():
                    types[parent_type].entity_index_list.add(object_index)
                object_set.add(object_index)
        for object_index in object_set:
            enetities.update({object_index:Entity(object_index,EntityType.OBJECT)})
        self.logger.debug(types)

        # with types and function_schema (domain.pddl)
        # adding objects and agents, we can ground all functions
        # initialise all functions
        functions : typing.Dict[str,Function] = {}
        for function_schema in function_schemas.values():
            if function_schema.content_type_list == []:
                # this function_schema does not have any input
                function_name = function_schema.name
                functions.update({function_name:Function(function_name,function_schema.name,[])})
            else:
                
                entity_list = [[]]
                for type_name in function_schema.content_type_list:
                    temp_entity = types[type_name].entity_index_list
                    entity_list = [x + [y] for x in entity_list for y in temp_entity]
                for entity in entity_list:

                    function_name = f"{function_schema.name} {' '.join(entity)}"
                    functions.update({function_name:Function(function_name,function_schema.name,entity)})
        self.logger.debug(functions)


        
        # extract initial state str
        # init states can only be extracted when the range is finalised
        init_str  = sectional_text_list.pop(0)
        self.logger.debug(init_str)
        if not init_str.startswith(INIT_PREFIX):
            raise ValueError("init string should start with %s",INIT_PREFIX)
        init_str = init_str[len(INIT_PREFIX):-len(INIT_SURFIX):]
        self.logger.debug(init_str)

        # exrtact goal str
        # goal states can only be extracted when the range is finalised
        goal_str = sectional_text_list.pop(0)
        self.logger.debug(goal_str)
        if not goal_str.startswith(GOAL_PREFIX):
            raise ValueError("goal string should start with %s",GOAL_PREFIX)
        goal_str = goal_str[len(GOAL_PREFIX):-len(GOAL_SURFIX):]
        self.logger.debug(goal_str)

       # extract the ranges and update the function_schemas
        # ranges_str,len_holder = self.keyWordParser("ranges",RANGE_REG_PREFIX,RANGE_REG,RANGE_REG_SURFIX,problem_str)
        ranges_str = sectional_text_list.pop(0)
        self.logger.debug(ranges_str)
        if not ranges_str.startswith(RANGES_PREFIX):
            raise ValueError("ranges string should start with %s",RANGES_PREFIX)
        ranges_str = ranges_str[len(RANGES_PREFIX):-len(RANGES_SURFIX):]
        single_range_str_list = find_each_section(ranges_str)
        self.logger.debug(single_range_str_list)
        for single_range_str in single_range_str_list:
            self.logger.debug("single range")
            self.logger.debug(single_range_str)
            range_str = single_range_str[1:-1:]
            # self.logger.debug(range_str)
            
            range_content_list = range_str.split(" ")
            if not len(range_content_list) == 3:
                raise ValueError("range should have 3 components: %s",range_content_list)
            function_schema_name = range_content_list[0]
            value_type_str =  range_content_list[1]
            value_type = value_type_dict[value_type_str]
            value_range_str = range_content_list[2]
            
            if value_type == VALUE_TYPE.ENUMERATE:
                self.logger.debug(value_range_str[1:-1:].replace("'",str()).split(","))
                function_schemas[function_schema_name].value_range = value_range_str[1:-1:].replace("'",str()).split(",")
            elif value_type == VALUE_TYPE.INTEGER:
                bounds = value_range_str[1:-1:].split(",")
                if len(bounds) == 2:
                    function_schemas[function_schema_name].value_range = (int(bounds[0]),int(bounds[1]))
                else:
                    raise ValueError("integer range should have 2 components: %s",bounds)
            
            # elif value_type_str == VALUE_TYPE.STRING:
            #     pass
            else:
                raise ValueError("value type %s does not exist",value_type)
            function_schemas[function_schema_name].value_type = value_type




        # optional section
        # extract rules first
        # rules_str,len_holder = self.keyWordParser("rules",RULE_REG_PREFIX,RULE_REG,RULE_REG_SURFIX,problem_str)
        rules : typing.Dict[str,Rule] = {}
        rules_str = sectional_text_list.pop(0)
        self.logger.debug(rules_str)
        if rules_str.startswith(RULES_PREFIX):
            rules_str = rules_str[len(RULES_PREFIX):-len(RULES_SURFIX):]
            self.logger.debug(rules_str)
            single_rule_str_list = find_each_section(rules_str)
            self.logger.debug(single_rule_str_list)
            for single_rule_str in single_rule_str_list:
                self.logger.debug(single_rule_str)
                rule_str = single_rule_str[1:-1:]
                self.logger.debug(rule_str)
                rule_type_str = rule_str.split(" ")[0]
                rule_type = rule_type_dict[rule_type_str]
                rule_str = rule_str[len(rule_type_str)+2:]
                function_name = rule_str.split(") ")[0]
                rule_content = rule_str.split(") ")[1][1:-1].split(",")
                new_rule = Rule(function_name,rule_type,rule_content)
                rules.update({function_name:new_rule})
            self.logger.debug(rules)
        else:
            raise ValueError("rules string should start with %s",RULES_PREFIX)


        # intialise static rule for all functions without a specified rule
        for function_name in functions.keys():
            if not function_name in rules.keys():
                rules.update({function_name:Rule(function_name,RULE_TYPE.STATIC,[])})

        # init_str,problem_str = self.keyWordParser("init",INIT_REG_PREFIX,INIT_REG,INIT_REG_SURFIX,problem_str)
        # pattern = r"\(assign \([\w ]*\) [ \-\w\'\"]*\)"
        # single_init_str_list = re.findall(pattern, init_str)
        init: typing.Dict[str,any] = {}
        single_init_str_list = find_each_section(init_str)
        self.logger.debug(single_init_str_list)
        for single_init_str in single_init_str_list:
            if not single_init_str.startswith("(assign"):
                raise ValueError("Error when parsing initial state [%s] (it should start with '(assign')",single_init_str)
            else:
                single_init_str = single_init_str[8:-1]
                variable_name = single_init_str.split(") ")[0][1:]
                value_str = single_init_str.split(") ")[1]
                function_schema_name = functions[variable_name].function_schema_name
                value_type = function_schemas[function_schema_name].value_type
                value = self.str2value(value_type,value_str)
                init.update({variable_name:value})
                  
        # extract goal
        if goal_str.startswith("(and"):
            goal_str = goal_str[4:-1:]
        goal_proposition_str_list = find_each_section(goal_str)
        self.logger.debug(goal_proposition_str_list)
        goals : typing.Dict[str,Condition] = {}
        for goal_proposition_str in goal_proposition_str_list:
            goal_condition_name = goal_proposition_str
            self.logger.debug(goal_proposition_str)
            goal_proposition_str = goal_proposition_str[1:-1:]
            self.logger.debug(goal_proposition_str)
            operator_str = goal_proposition_str.split(" ")[0]
            new_condition = Condition()
            if not operator_str in condition_operator_dict.keys():
                raise ValueError("Error when parsing goal [%s] (it should start with a valid operator)",goal_proposition_str)
            new_condition.condition_operator = condition_operator_dict[operator_str] 
            value_str = goal_proposition_str.split(" ")[-1]
            goal_content_str = goal_proposition_str[len(operator_str)+2:-len(value_str)-2:]
            # self.logger.debug(goal_content_str)
            if "@jp" in goal_proposition_str:
                goal_proposition_str = goal_proposition_str[4:-1:]
                new_condition.condition_type = ConditionType.EP
                new_condition.target_value = self.str2value(value_type,value_str)
                jp_content_list = find_each_section(goal_proposition_str)
                if not len(jp_content_list) == 2:
                    raise ValueError("jp goal should have 2 components: %s",jp_content_list)
                self.logger.debug(jp_content_list)
                new_jp_formula = EP_formula()
                new_jp_formula.ep_variable = jp_content_list[1][1:-1:]
                new_jp_formula.ep_query = jp_content_list[0][2:-2]
                new_jp_formula.epf_type = EPFType.JP
                new_condition.condition_formula = new_jp_formula
            elif "@ep" in goal_proposition_str:

                goal_proposition_str = goal_proposition_str[4::]
                ep_content = find_each_section(goal_proposition_str)
                if not len(ep_content) == 2:
                    raise ValueError("epistemic goal should have 2 components: %s",ep_content)
                new_ep_formula = EP_formula()
                new_ep_formula.ep_formula_str = goal_proposition_str
                new_ep_formula.epf_type = EPFType.EP
                new_ep_formula.ep_query = ep_content[0][2:-2:]
                varphi_str = ep_content[1][1:-1:]
                varphi_list = varphi_str.split(" ")
                varphi_operator_str = varphi_list[0]
                if not varphi_operator_str in condition_operator_dict.keys():
                    raise ValueError("Error when parsing goal [%s] (it should start with a valid operator)",goal_proposition_str)
                varphi_value_str = varphi_list[-1]
                self.logger.debug(varphi_str)
                self.logger.debug(varphi_value_str)
                varphi_content_str = varphi_str[len(varphi_operator_str)+2:-len(varphi_value_str)-2:]
                self.logger.debug(varphi_content_str)
                function_schema_name = functions[varphi_content_str].function_schema_name
                value_type = function_schemas[function_schema_name].value_type
                self.logger.debug(varphi_content_str)
                varphi_value = self.str2value(value_type,varphi_value_str)
                varphi = Condition()
                varphi.condition_operator = condition_operator_dict[varphi_operator_str]
                varphi.target_value = varphi_value
                varphi.condition_type = ConditionType.ONTIC
                varphi.condition_variable = varphi_content_str
                new_ep_formula.ep_varphi = varphi
                new_condition.condition_type = ConditionType.EP
                if value_str == "ep.true":
                    new_condition.target_value = Ternary.TRUE
                elif value_str == "ep.false":
                    new_condition.target_value = Ternary.FALSE
                elif value_str == "ep.unknown":
                    new_condition.target_value = Ternary.UNKNOWN
                else:
                    ternary_name_list = [n.name for n in Ternary] 
                    raise ValueError("Ternary value type %s does not exist in %s when generate goal: %s",value_str,ternary_name_list,goal_proposition_str)
                new_condition.condition_formula = new_ep_formula
            else:
                new_condition.condition_type = ConditionType.ONTIC
                new_condition.condition_variable = goal_content_str

                function_schema_name = functions[goal_content_str].function_schema_name
                value_type = function_schemas[function_schema_name].value_type
                new_condition.target_value = self.str2value(value_type,value_str)
            goals.update({goal_condition_name:new_condition})
                # self.logger.debug(goal_proposition_str)
                # effect = self.parsingEffect(goal_proposition_str,"goal")
                # self.logger.debug(effect)
        self.logger.debug(goals)


 



        # update the action_schema
        for action_schema in action_schemas.values():
            self.logger.debug(action_schema.name)
            for pre_str,precondition in action_schema.preconditions.items():
                if not precondition.target_value == None:
                    if precondition.condition_type == ConditionType.ONTIC:
                        function_schema_name = self.precondition_variable2function_schema_name(precondition.condition_variable)
                        value_type = function_schemas[function_schema_name].value_type
                        precondition.target_value = self.str2value(value_type,precondition.target_value)
                    elif precondition.condition_type == ConditionType.EP:
                        ep_formula = precondition.condition_formula
                        ep_formula_type = ep_formula.epf_type
                        if ep_formula_type == EPFType.JP:
                            function_schema_name = self.precondition_variable2function_schema_name(ep_formula.ep_variable)
                            value_type = function_schemas[function_schema_name].value_type
                            precondition.target_value = self.str2value(value_type,precondition.target_value)
                        elif ep_formula_type == EPFType.EP:
                            varphi = ep_formula.ep_varphi
                            function_schema_name = self.precondition_variable2function_schema_name(varphi.condition_variable)
                            value_type = function_schemas[function_schema_name].value_type
                            varphi.target_value = self.str2value(value_type,varphi.target_value)
                            # precondition.condition_formula = ep_formula
                        else:
                            raise ValueError("precondition %s epf type is invalid",precondition)
                    else:
                        raise ValueError("precondition %s condition_type is invalid",precondition)
            
            for effect in action_schema.effects.values():
                if not effect.target_variable_name == None:
                    if effect.update_type == UpdateType.ONTIC:
                        # there is nothing to change for an ontic effect
                        pass
                    elif effect.update_type == UpdateType.CONSTENT:
                        function_schema_name = self.precondition_variable2function_schema_name(effect.target_variable_name)
                        value_type = function_schemas[function_schema_name].value_type
                        effect.update = self.str2value(value_type,effect.update)
                        if effect.effect_type == EffectType.INCREASE or effect.effect_type == EffectType.DECREASE:
                            effect.update = int(effect.update)
                    elif effect.update_type == UpdateType.EPSITEMIC:
                        # there is nothing to change for an epistemic effect
                        pass
                    else:
                        raise ValueError("effect %s update type is invalid",effect)
        self.logger.debug(action_schemas)


        return domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,init,goals,nesting_base

    def domainParser(self,raw_domain_str):
        actions = {}
        # checking the prefix and surface of the whole domain file
        if not raw_domain_str.startswith(PDDL_PREFIX):
            self.logger.error("the domain file does not start with '%s'",PDDL_PREFIX)
            exit()
        elif not raw_domain_str.endswith(PDDL_SURFIX):
            self.logger.error("the domain file does not end with '%s'",PDDL_SURFIX)
            exit()
        raw_domain_str = raw_domain_str[len(PDDL_PREFIX):-len(PDDL_SURFIX):]
        self.logger.debug(repr(raw_domain_str))

        sectional_text_list = find_each_section(raw_domain_str)
        if len(sectional_text_list) < 4:
            raise ValueError("the domain file should at least contain 4 sections:\n domain_name,types,functions and at least one action")
        
        # extract domain name
        domain_name_str = sectional_text_list.pop(0)
        if not domain_name_str.startswith(DOMAIN_NAME_PREFIX):
            raise ValueError("domain name string should start with %s",DOMAIN_NAME_PREFIX)
        domain_name = domain_name_str[len(DOMAIN_NAME_PREFIX):-len(DOMAIN_NAME_SURFIX)]
        self.logger.debug(domain_name)


        # extract typing
        type_str = sectional_text_list.pop(0)
        if not type_str.startswith(TYPE_PREFIX):
            raise ValueError("type string should start with %s",TYPE_PREFIX)
        typing_str = type_str[len(TYPE_PREFIX):-len(TYPE_SURFIX)]
        self.logger.debug(typing_str)

        types: typing.Dict[str,Type] = {}
        for type_str in typing_str.split(LINE_BREAK):
            if type_str == str():
                continue
            elif '-' in type_str:
                # it has parent types:
                type_str_list = type_str.split("-")
                type_str = type_str_list[0]
                parent_type_name = type_str_list[1]
            else:
                parent_type_name = str()

            for type_name in type_str.split(" "):
                new_type = Type(type_name)
                new_type.parent_type_name = parent_type_name
                types.update({type_name:new_type})
        self.logger.debug(types)
        # double check the parent types
        type_names = types.keys()
        for k,item in types.items():
            p_name = item.parent_type_name
            if not p_name == str():
                if not p_name in type_names:
                    raise ValueError("checking type %s: parent type name not found in types: %s",k,p_name)
                else:
                    types[p_name].children_type_list.add(k)


        # extra function_schemas
        function_str = sectional_text_list.pop(0)
        if not function_str.startswith(FUNCTIONS_PREFIX):
            raise ValueError("function string should start with %s",FUNCTIONS_PREFIX)
        function_schemas : typing.Dict[str,FunctionSchema] = {}
        # all_function_schema_str,domain_str = self.keyWordParser("function_schemas",FUNC_REG_PREFIX,FUNC_REG,FUNC_REG_SURFIX,function_str)
        all_function_schema_str = function_str[len(FUNCTIONS_PREFIX):-len(FUNCTIONS_SURFIX)]
        self.logger.debug(all_function_schema_str)

        # function_schema_str_list = re.findall(r'\(.*?\)', all_function_schema_str)
        function_schema_str_list = find_each_section(all_function_schema_str)
        for function_schema_str in function_schema_str_list:
            parts = list()
            new_function_schema = None
            function_schema_str = function_schema_str[1:-1]
            parts = re.split(r'\?\w+-', function_schema_str)
            function_schema_name = parts[0]
            new_function_schema = FunctionSchema(function_schema_name)
            parts = parts[1:]
            for type_name in parts:
                new_function_schema.content_type_list.append(type_name)
            function_schemas.update({function_schema_name:new_function_schema})
        self.logger.debug(function_schemas)
        
        # extract actions
        action_schemas: typing.Dict[str,ActionSchema] = {}        
        # pattern = r"\(:action.*?(?=\(:action|$)"
        # action_str_list = re.findall(pattern, domain_str)
        action_str_list = sectional_text_list
        self.logger.debug(action_str_list)
        for raw_action_str in action_str_list:
            self.logger.debug(raw_action_str)
            # action_content_str,_ = self.keyWordParser("action",ACTION_REG_PREFIX,ACTION_REG,ACTION_REG_SURFIX,action_str)
            if not raw_action_str.startswith(ACTION_PREFIX):
                raise ValueError("action string should start with %s",ACTION_PREFIX)
            action_content_str = raw_action_str[len(ACTION_PREFIX):-len(ACTION_SURFIX)]
            self.logger.debug(action_content_str)
            temp_list = action_content_str.split(LINE_BREAK)
            action_name = temp_list[0]
            self.logger.debug(action_name)
            action_content_str = temp_list[1]
            
            content_str_list = find_each_section(action_content_str)
            self.logger.debug(content_str_list)
            
            if not len(content_str_list) == 3:
                raise ValueError("The content of an action should contain three section: parameters, precondition and effect")
            parameter_content_str= content_str_list[0]
            precondition_content_str = content_str_list[1]
            effect_content_str = content_str_list[2]

            # find parameter string
            # parameter_str,action_content_str = self.keyWordParser("parameters",PARAMETERS_REG_PREFIX,PARAMETERS_REG,PARAMETERS_REG_SURFIX,action_content_str)
            parameter_content_str = parameter_content_str[1:-1] # remove brackets
            self.logger.debug(parameter_content_str)
            
            # extract parameter
            pattern = r'\?\w*'
            match_variables = re.findall(pattern, parameter_content_str)
            pattern = r'\?\w+\-\w+'
            match_types = re.findall(pattern, parameter_content_str)
            if not len(match_variables) == len(match_types):
                raise ValueError('missing variable or types in parameter [%s] for action [%s]',parameter_content_str,action_name)
            parameters = Parameters()
            for i in range(len(match_types)):
                parameters[match_variables[i]] = match_types[i].replace(match_variables[i]+"-",str())
            self.logger.debug(parameters)
            

            # extract preconditions
            preconditions: typing.Dict[str,Condition] = {}
            # find precondition string
            # preconditions_str, remaining_str = self.keyWordParser("precondition",PRECONDITION_REG_PREFIX,PRECONDITION_REG,PRECONDITION_REG_SURFIX,action_content_str)
            # if not remaining_str == str():
            #     raise ValueError("The remaining string [%s] after action parsing is not empty",remaining_str)
            # self.logger.debug(precondition_content_str)
            precondition_content_str = precondition_content_str[1:-1]
            precondition_str_list = find_each_section(precondition_content_str)
            self.logger.debug(precondition_str_list)
            
            for precondition_str in precondition_str_list:
                precondition_name = precondition_str
                self.logger.debug(precondition_str)
                precondition_str = precondition_str[1:-1:]
                operator_str = precondition_str.split(" ")[0]
                if not operator_str in condition_operator_dict.keys():
                    raise ValueError("Error when parsing precondition [%s] (it should start with a valid operator)",precondition_str)
                new_condition = Condition()
                
                new_condition.condition_operator = condition_operator_dict[operator_str]
                value_str = precondition_str.split(" ")[-1]
                precondition_content_str = precondition_str[len(operator_str)+2:-len(value_str)-2:]
                if value_str.startswith("(") and value_str.endswith(")"):
                    new_condition.target_variable = value_str[1:-1:]
                else:
                    new_condition.target_value = value_str

                if "@jp" in precondition_str:
                    precondition_str = precondition_str[4:-1:]
                    new_condition.condition_type = ConditionType.EP
                    # new_condition.target_value = value_str
                    
                    jp_content_list = find_each_section(precondition_str)
                    if not len(jp_content_list) == 2:
                        raise ValueError("jp precondition should have 2 components: %s",jp_content_list)
                    self.logger.debug(jp_content_list)
                    new_jp_formula = EP_formula()
                    new_jp_formula.ep_variable = jp_content_list[1][1:-1:]
                    new_jp_formula.ep_query = jp_content_list[0][2:-2]
                    new_jp_formula.epf_type = EPFType.JP
                    new_condition.condition_formula = new_jp_formula
                    # function_schema_name = self.precondition_variable2function_schema_name(precondition_content_str)
                    # value_type = function_schemas[function_schema_name].value_type
                    # new_condition.target_value = self.str2value(value_type,value_str)
                    
                    
                elif "@ep" in precondition_str:
                    precondition_proposition_str = precondition_str[4:-1:]
                    ep_content = find_each_section(precondition_proposition_str)
                    if not len(ep_content) == 2:
                        raise ValueError("epistemic precondition should have 2 components: %s",ep_content)
                    new_ep_formula = EP_formula()
                    
                    new_ep_formula.epf_type = EPFType.EP
                    new_ep_formula.ep_query = ep_content[0][2:-2:]
                    varphi_str = ep_content[1]
                    new_ep_formula.ep_formula_str = varphi_str
                    varphi_str = varphi_str[1:-1:]
                    varphi_list = varphi_str.split(" ")
                    varphi_operator_str = varphi_list[0]
                    if not varphi_operator_str in condition_operator_dict.keys():
                        raise ValueError("Error when parsing precondition [%s] (it should start with a valid operator)",precondition_str)
                    
                    
                    varphi_value_str = varphi_list[-1]
                    
                    varphi_content_str = varphi_str[len(varphi_operator_str)+2:-len(varphi_value_str)-2:]

                    varphi = Condition()
                    varphi.condition_operator = condition_operator_dict[varphi_operator_str]
                    # varphi.target_value = varphi_value_str
                    if varphi_value_str.startswith("(") and value_str.endswith(")"):
                        varphi.target_variable = value_str[1:-1:]
                    else:
                        varphi.target_value = varphi_value_str
                    varphi.condition_variable = varphi_content_str
                    
                    varphi.condition_type = ConditionType.ONTIC
                    
                    new_ep_formula.ep_varphi = varphi                    
                    new_condition.condition_type = ConditionType.EP
                    if value_str == "ep.true":
                        new_condition.target_value = Ternary.TRUE
                    elif value_str == "ep.false":
                        new_condition.target_value = Ternary.FALSE
                    elif value_str == "ep.unknown":
                        new_condition.target_value = Ternary.UNKNOWN
                    else:
                        ternary_name_list = [n.name for n in Ternary] 
                        raise ValueError("Ternary value type %s does not exist in %s when generate precondition: %s",value_str,ternary_name_list,precondition_str)
                    new_condition.condition_formula = new_ep_formula
                else:
                    new_condition.condition_type = ConditionType.ONTIC
                    new_condition.condition_variable = precondition_content_str
                    # new_condition.target_value = value_str
                preconditions.update({precondition_name:new_condition})
            self.logger.debug(preconditions)

            # extract effects
            # effects_str,len_holder = self.keyWordParser("effect",EFFECT_REG_PREFIX,EFFECT_REG,EFFECT_REG_SURFIX,action_content_str)
            effects : typing.Dict[str,Effect] = dict()
            effect_content_str = effect_content_str[1:-1]# remove the first and last bracket
            effect_str_list = find_each_section(effect_content_str)
            self.logger.debug(effect_str_list)
            for effect_str in effect_str_list:
                effect_name = effect_str
                self.logger.debug(effect_str)
                effect_str = effect_str[1:-1:]
                self.logger.debug(effect_str)
                effect = self.parsingEffect(effect_str,action_name)
                effects.update({effect_name:effect})

            
            new_action = ActionSchema(action_name,parameters,preconditions,effects)
            action_schemas.update({action_name:new_action})
        self.logger.debug(action_schemas)
        
        return domain_name,types,function_schemas,action_schemas

    def precondition_variable2function_schema_name(self, pre_str):
        if "?" in pre_str:
            function_schema_name = pre_str.split("?")[0]
        elif " " in pre_str:
            function_schema_name = pre_str.split(" ")[0]
        else:
            function_schema_name = pre_str
        return function_schema_name

    def parsingEffect(self,effect_str,action_name):
    
        new_effect = Effect()
        effect_content_list = effect_str.split(" ")
        effect_type_str = effect_content_list[0]
        if not effect_type_str in EFFECT_TYPE_DICT.keys():
            raise ValueError("Error effect [%s] for action [%s] is not a valid effect from: [%s]",effect_str,action_name,EFFECT_TYPE_DICT.keys())
        effect_type = EFFECT_TYPE_DICT[effect_type_str]
        new_effect.effect_type = effect_type
        
        if JP_PREFIX in effect_str:
            
            # this is a effect that contain jp
            effect_str = effect_str[len(effect_type_str)+1::]
            effect_content_list = find_each_section(effect_str)
            if not len(effect_content_list) == 2:
                raise ValueError("Error when parsing effect [%s] for action [%s]: an effect should have 2 components",effect_content_list,action_name)
            target_variable_name = effect_content_list[0][1:-1]
            new_effect.target_variable_name = target_variable_name
            new_effect.update_type = UpdateType.EPSITEMIC
            jp_str = effect_content_list[1][1:-1]
            jp_content_list = find_each_section(jp_str)
            if not len(jp_content_list) == 2:
                raise ValueError("Error when parsing effect [%s] for action [%s]: a jp effect should have 2 components",jp_content_list,action_name)
            query_str = jp_content_list[0][2:-2]
            ep_variable_str = jp_content_list[1][1:-1]
            new_jp = EP_formula()
            
            new_jp.ep_query = query_str
            new_jp.ep_variable = ep_variable_str
            new_jp.epf_type = EPFType.JP
            new_effect.update = new_jp
            self.logger.debug(effect_content_list)
        else:
            self.logger.debug(effect_str)
            if not len(effect_content_list) == 3:
                raise ValueError("Error when parsing effect [%s] for action [%s]: a normal effect should have 3 components",effect_str,action_name)
            target_variable_name = effect_content_list[1][1:-1]
            new_effect.target_variable_name = target_variable_name
            update_str = effect_content_list[2]
            pattern = r'^\(\w*\??\w*\)$'
            self.logger.debug(repr(update_str))
            if re.match(pattern, update_str):
                # then this is a variable too
                new_effect.update_type = UpdateType.ONTIC
                new_effect.update = update_str[1:-1]
                self.logger.debug("udpdate is a variable")
            else:
                new_effect.update = update_str
                new_effect.update_type = UpdateType.CONSTENT
        return new_effect
    
    def formatDocument(self,input_str):
        # this should remove all the comments
            # . match anything but the endline
            # * match 0 or more preceding RE
            # $ matchs end line
        input_str = re.sub(';.*$',str(),input_str,flags =re.MULTILINE).lower()
        self.logger.debug(repr(input_str))
        
        # removing useless space
        # ^ match any start of the newline in multiline mode
        input_str = re.sub('^ *| *$|^\n',str(),input_str,flags =re.MULTILINE)
        input_str = re.sub(' *, *',",",input_str,flags =re.MULTILINE)
        input_str = re.sub(' *- *',"-",input_str,flags =re.MULTILINE)
        input_str = re.sub('\[ *',"[",input_str,flags =re.MULTILINE)
        input_str = re.sub(' *\]',"]",input_str,flags =re.MULTILINE)
        input_str = re.sub(':goal *',":goal",input_str,flags =re.MULTILINE)
        input_str = re.sub(':action *',":action ",input_str,flags =re.MULTILINE)
        input_str = re.sub(':parameters *',":parameters",input_str,flags =re.MULTILINE)
        input_str = re.sub(':precondition *',":precondition",input_str,flags =re.MULTILINE)
        input_str = re.sub(':effect *',":effect",input_str,flags =re.MULTILINE)
        input_str = re.sub(' \?',"?",input_str,flags =re.MULTILINE)
        self.logger.debug(repr(input_str))
        
        # removing useless \n
        input_str = re.sub('\( *|(\n)*\((\n)*',"(",input_str,flags =re.MULTILINE)
        input_str = re.sub(' *\)|(\n)*\)(\n)*',")",input_str,flags =re.MULTILINE)
        input_str = re.sub('\)\n',")",input_str,flags =re.MULTILINE)
        self.logger.debug(repr(input_str))
        
        input_str = re.sub('\n',LINE_BREAK,input_str,flags =re.MULTILINE)
        self.logger.debug(repr(input_str)) 

        # adding back space for negative number
        input_str = re.sub('\)-',') -',input_str,flags =re.MULTILINE)
        return input_str      
    
    def str2value(self,value_type,value_str):
        if value_type == VALUE_TYPE.ENUMERATE:
            if value_str == '.none':##################################
                value = special_value.HAVENT_SEEN################
            else:
                value = value_str.replace("'",str())
        elif value_type == VALUE_TYPE.INTEGER:
            if value_str == '.none':##################################
                value = special_value.HAVENT_SEEN################
            else:
                value = int(value_str)
        else:
            raise ValueError("value type %s does not exist %s",value_type,value_str)
        
        return value


    def isValidNB(self,nesting_dict:typing.Dict[str,int],nesting_base_string:str):
        self.logger.debug(nesting_dict)
        nesting_list = nesting_base_string.split(NESTING_BREAK)
        for i,agent in enumerate(nesting_list):
            self.logger.debug(agent)
            self.logger.debug(i)
            if not agent in nesting_dict.keys():
                raise ValueError("agent %s not found in nesting dict %s",agent,nesting_dict.keys())
            if nesting_dict[agent] <= 0:
                raise ValueError("agent %s nesting level should be greater than 0",agent)
            if not len(nesting_list) - i -1 < nesting_dict[agent]:
                return False
            if i < len(nesting_list)-1 and agent == nesting_list[i+1]:
                return False
        return True

    def generateNestingBase(self,nesting_dict:typing.Dict[str,int]):
        max_nesting = max(nesting_dict.values())
        nesting_base = set()
        agent_list = list(nesting_dict.keys())
        temp_base = agent_list.copy()
        nesting_base = set(temp_base)
        current_depth = 1
        while 1:
            temp_agent_list = []
            new_temp_base = []
            for agent in agent_list:
                if nesting_dict[agent] > current_depth:
                    temp_agent_list.append(agent)
                    for string in temp_base:
                        # if not string.startswith(agent):
                            new_temp_base.append(agent + NESTING_BREAK + string)
            agent_list = temp_agent_list
            if new_temp_base == []:
                break
            temp_base = new_temp_base
            nesting_base.update(temp_base)
            current_depth += 1
        return nesting_base

