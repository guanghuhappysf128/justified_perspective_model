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
PDDL_PREFIX = r"(define"
PDDL_SURFIX = r")"

# domain file constants
DOMAIN_NAME_REG_PREFIX = r"\(domain "
DOMAIN_NAME_REG = r"[0-9a-z_]*"
DOMAIN_NAME_REG_SURFIX = r"\)"

TYPING_REG_PREFIX = r"\(:types"
TYPING_REG = r"[&0-9a-z_\- ]*"
TYPING_REG_SURFIX = r"\)"

FUNC_REG_PREFIX = r"\(:functions"
FUNC_REG = r"(\([\w \-\?]*\))*"
FUNC_REG_SURFIX = r"\)"

ACTION_REG_PREFIX = r"\(:action "
ACTION_REG = r".*"
ACTION_REG_SURFIX = r"\)"

PARAMETERS_REG_PREFIX = r":parameters\("
PARAMETERS_REG = r"(.*?)"
PARAMETERS_REG_SURFIX = r"\)"

EFFECT_REG_PREFIX = r":effect\("
EFFECT_REG = r".*"
EFFECT_REG_SURFIX = r"\)"

PRECONDITION_REG_PREFIX = r":precondition\("
PRECONDITION_REG = r".*"
PRECONDITION_REG_SURFIX = r"\)"

# EFFECT_CONDITION_REG_PREFIX = r"\("
# EFFECT_CONDITION_REG = r"(assign|increase|decrease) \(\w*\??\w*\) \(\@jp \(\"[\w \[\]]*\"\) \(\w*\??\w*\)\)"
# EFFECT_CONDITION_REG_SURFIX = r"\)"
JP_PREFIX = r"@jp"

# problem file constants
PROBLEM_NAME_REG_PREFIX = r"\(problem "
PROBLEM_NAME_REG = r"\w*"
PROBLEM_NAME_REG_SURFIX = r"\)"

PROBLEM_DOMAIN_NAME_REG_PREFIX = r"\(:domain "
PROBLEM_DOMAIN_NAME_REG = r"[0-9a-z_]*"
PROBLEM_DOMAIN_NAME_REG_SURFIX = r"\)"


AGENT_REG_PREFIX = r"\(:agents"
AGENT_REG = r"[\w \&\-]*"
AGENT_REG_SURFIX = r"\)"

OBJECT_REG_PREFIX = r"\(:objects"
OBJECT_REG = r"[\w \&\-]*"
OBJECT_REG_SURFIX = r"\)"

INIT_REG_PREFIX = r"\(:init"
INIT_REG = r"(\(assign [\w \'\"\(\)]*\))*"
INIT_REG_SURFIX = r"\)"

RANGE_REG_PREFIX = r"\(:ranges"
RANGE_REG = r"(\([\w \[\]\'\,]*\))*"
RANGE_REG_SURFIX = r"\)"

RULE_REG_PREFIX = r"\(:rules"
RULE_REG = r"(\(\w* \([\w ]*\) \[[\w,]*\]\))*"
RULE_REG_SURFIX = r"\)"

GOAL_REG_PREFIX = r"\(:goal\(and"
GOAL_REG = r".*"
GOAL_REG_SURFIX = r"\)\)"

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
        domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals = self.problemParser(problem_str,domain_name,types,function_schemas,action_schemas)
        return domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals

    def problemParser(self,problem_str,domain_name,types:typing.Dict[str,Type],function_schemas: typing.Dict[str,FunctionSchema] ,action_schemas: typing.Dict[str,ActionSchema]):

        # checking the prefix and surface of the whole domain file
        if not problem_str.startswith(PDDL_PREFIX):
            self.logger.error("the problem file does not start with '%s'",PDDL_PREFIX)
            exit()
        elif not problem_str.endswith(PDDL_SURFIX):
            self.logger.error("the problem file does not end with '%s'",PDDL_SURFIX)
            exit()
        problem_str = problem_str[len(PDDL_PREFIX):-len(PDDL_SURFIX):]
        self.logger.debug(repr(problem_str))

        # extract problem name
        problem_name,problem_str = self.keyWordParser("problem_name",PROBLEM_NAME_REG_PREFIX,PROBLEM_NAME_REG,PROBLEM_NAME_REG_SURFIX,problem_str)
        self.logger.debug(problem_name)

        # extract domain name
        problem_domain_name,problem_str = self.keyWordParser(
            "problem_domain_name",
            PROBLEM_DOMAIN_NAME_REG_PREFIX,
            PROBLEM_DOMAIN_NAME_REG,
            PROBLEM_DOMAIN_NAME_REG_SURFIX,
            problem_str)
        self.logger.debug(problem_domain_name)

        # extract agents
        enetities : typing.Dict[str,Entity] = {}
        agents_str,problem_str = self.keyWordParser("agents",AGENT_REG_PREFIX,AGENT_REG,AGENT_REG_SURFIX,problem_str)
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

        # extract objects
        objects_str,problem_str = self.keyWordParser("objects",OBJECT_REG_PREFIX,OBJECT_REG,OBJECT_REG_SURFIX,problem_str)
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

        rules : typing.Dict[str,Rule] = {}
        # extract rules first
        rules_str,len_holder = self.keyWordParser("rules",RULE_REG_PREFIX,RULE_REG,RULE_REG_SURFIX,problem_str)
        problem_str = problem_str[:len(len_holder)]
        self.logger.debug(rules_str)
        self.logger.debug(problem_str)
        pattern = r"\(\w* \([\w ]*\) \[[\w,]*\]\)"
        single_rule_str_list = re.findall(pattern, rules_str)
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



        # extract the range first
        ranges_str,len_holder = self.keyWordParser("ranges",RANGE_REG_PREFIX,RANGE_REG,RANGE_REG_SURFIX,problem_str)
        problem_str = problem_str[:len(len_holder)]
        self.logger.debug(ranges_str)
        self.logger.debug(problem_str)
        pattern = r"\([\w \[\]\'\,]*\)"
        single_range_str_list = re.findall(pattern, ranges_str)
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


        # generate a template state
        # TODO
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

        # intialise static rule for all functions that does not have a rule
        for function_name in functions.keys():
            if not function_name in rules.keys():
                rules.update({function_name:Rule(function_name,RULE_TYPE.STATIC,[])})
        print(len(functions))
        print(len(rules))


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

        self.logger.debug(repr(problem_str))
        initial_state: typing.Dict[str,any] = {}
        # extract initial state
        init_str,problem_str = self.keyWordParser("init",INIT_REG_PREFIX,INIT_REG,INIT_REG_SURFIX,problem_str)
        self.logger.debug(init_str)
        pattern = r"\(assign \([\w ]*\) [ \w\'\"]*\)"
        single_init_str_list = re.findall(pattern, init_str)
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
                initial_state.update({variable_name:value})
        
        self.logger.debug(initial_state)     
        
        self.logger.debug(problem_str)           
        # extract goal
        goal_str,problem_str = self.keyWordParser("goal",GOAL_REG_PREFIX,GOAL_REG,GOAL_REG_SURFIX,problem_str)
        self.logger.debug(goal_str)
        # extract goal propositions
        # regualr expression does not work
        # pattern = r'\(.*?\)'
        # goal_proposition_str_list = re.findall(pattern, goal_str)
        
        
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
            self.logger.debug(goal_content_str)
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
                new_condition.target_value = self.str2value(value_type,value_str)
            goals.update({goal_condition_name:new_condition})
                # self.logger.debug(goal_proposition_str)
                # effect = self.parsingEffect(goal_proposition_str,"goal")
                # self.logger.debug(effect)
        self.logger.debug(goals)
        return domain_name,problem_name,enetities,types,function_schemas,action_schemas,rules,functions,initial_state,goals

    def keyWordParser(self,keyword,reg_prefix,reg_str,reg_surfix,input_str):
        self.logger.debug("extract %s",keyword)
        inner_str = str()
        try:
            pattern = reg_prefix+reg_str+reg_surfix
            found = re.search(pattern,input_str).group(0)
            lp = len(re.sub(r'\\([.*+()])', r'\1', reg_prefix))
            ls = len(re.sub(r'\\([.*+()])', r'\1', reg_surfix))
            inner_str = found[lp:-ls:]
            self.logger.debug("Found %s: [%s]",keyword,inner_str)
        except:
            
            self.logger.error("error when extract %s",keyword)
            self.logger.error("pattern is %s",pattern)
            self.logger.error("target is %s",input_str)
            # self.logger.error(traceback.format_exc())
            exit()  
        output_str = input_str[lp+len(inner_str)+ls:]
        self.logger.debug(repr(input_str))
        return inner_str,output_str



    def domainParser(self,domain_str):
        actions = {}
        # checking the prefix and surface of the whole domain file
        if not domain_str.startswith(PDDL_PREFIX):
            self.logger.error("the domain file does not start with '%s'",PDDL_PREFIX)
            exit()
        elif not domain_str.endswith(PDDL_SURFIX):
            self.logger.error("the domain file does not end with '%s'",PDDL_SURFIX)
            exit()
        domain_str = domain_str[len(PDDL_PREFIX):-len(PDDL_SURFIX):]
        self.logger.debug(repr(domain_str))
        
        # extract domain name
        domain_name,domain_str = self.keyWordParser("domain_name",DOMAIN_NAME_REG_PREFIX,DOMAIN_NAME_REG,DOMAIN_NAME_REG_SURFIX,domain_str)

        # extract typing
        typing_str,domain_str = self.keyWordParser("types",TYPING_REG_PREFIX,TYPING_REG,TYPING_REG_SURFIX,domain_str)
        # types: typing.List[Type] = []
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
        function_schemas : typing.Dict[str,FunctionSchema] = {}
        all_function_schema_str,domain_str = self.keyWordParser("function_schemas",FUNC_REG_PREFIX,FUNC_REG,FUNC_REG_SURFIX,domain_str)
        self.logger.debug(all_function_schema_str)
        function_schema_str_list = re.findall(r'\(.*?\)', all_function_schema_str)
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
        pattern = r"\(:action.*?(?=\(:action|$)"
        action_str_list = re.findall(pattern, domain_str)
        for action_str in action_str_list:
            self.logger.debug(action_str)
            action_content_str,_ = self.keyWordParser("action",ACTION_REG_PREFIX,ACTION_REG,ACTION_REG_SURFIX,action_str)
            self.logger.debug(action_content_str)
            temp_list = action_content_str.split(LINE_BREAK)
            action_name = temp_list[0]
            self.logger.debug(action_name)
            action_content_str = temp_list[1]
            
            # find parameter string
            self.logger.debug(action_content_str)
            parameter_str,action_content_str = self.keyWordParser("parameters",PARAMETERS_REG_PREFIX,PARAMETERS_REG,PARAMETERS_REG_SURFIX,action_content_str)
            self.logger.debug(parameter_str)
            self.logger.debug(action_content_str)
            
            # extract parameter
            pattern = r'\?\w*'
            match_variables = re.findall(pattern, parameter_str)
            pattern = r'\?\w+\-\w+'
            match_types = re.findall(pattern, parameter_str)
            if not len(match_variables) == len(match_types):
                raise ValueError('missing variable or types in parameter [%s] for action [%s]',parameter_str,action_name)
            parameters = Parameters()
            for i in range(len(match_types)):
                parameters[match_variables[i]] = match_types[i].replace(match_variables[i]+"-",str())
            self.logger.debug(parameters)
            self.logger.debug(action_content_str)
            
            # find effect first, which is easier for the re
            # extract effects
            effects_str,len_holder = self.keyWordParser("effect",EFFECT_REG_PREFIX,EFFECT_REG,EFFECT_REG_SURFIX,action_content_str)
            # take the len of the len_holder, which is the string with pre and effect removing the length of the whole effect
            # the precondition comes before the effect, so we keep the first len(len_holder) from the old string
            # which is effectively the precondition string
            action_content_str = action_content_str[:len(len_holder)]            
            # since there are uncertain nesting level of brackets in the effect
            # using manual approach instead of regular expression
            effects : typing.Dict[str,Effect] = dict()
            # effects_str = effects_str[1:-1] # remove the first and last bracket
            # for effect_str in effects_str.split(")("):

            #     effects.append(self.parsingEffect(effect_str,action_name))
            effect_str_list = find_each_section(effects_str)
            self.logger.debug(effect_str_list)
            for effect_str in effect_str_list:
                effect_name = effect_str
                self.logger.debug(effect_str)
                effect_str = effect_str[1:-1:]
                self.logger.debug(effect_str)
                effect = self.parsingEffect(effect_str,action_name)
                effects.update({effect_name:effect})
            
            # TODO I need to apply the action and check goal at the same time.
            
            # extract preconditions
            preconditions: typing.Dict[str,Condition] = {}
            # find precondition string
            preconditions_str, remaining_str = self.keyWordParser("precondition",PRECONDITION_REG_PREFIX,PRECONDITION_REG,PRECONDITION_REG_SURFIX,action_content_str)
            if not remaining_str == str():
                raise ValueError("The remaining string [%s] after action parsing is not empty",remaining_str)

            precondition_str_list = find_each_section(preconditions_str)
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
            
            # TODO
            # match the preconditions
            
            
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



    # assuming the input is one epistemic string
    # def epistemic_decoder(self,ep_str):
    #     self.logger.debug("extract epistemic formulea")
    #     self.logger.debug("input epistemic str: [%s]",ep_str)
    #                     # preconditions["epistemic_p"] = list()
    #     p,q = re.search('\( = \(:epistemic [\?+\- 0-9a-z_\[\],]*\((?:>|<| =|> =|< =)+ \([ 0-9a-z_\? ]*\) (?:[0-9a-z_\'\"-]+|\([0-9a-z_ ]+\))\)\) [0-9a-z-]*\)',ep_str).span()
    #     epistemic_prefix = "( = (:epistemic "
    #     epistemic_surfix = ")"
        
    #     ep_str = ep_str[p+len(epistemic_prefix):q+len(epistemic_surfix)]
    #     self.logger.debug(ep_str)
    #     import sys
    #     sys.exit()
    
    
    def predicator_convertor(self,pred_list):
        result = dict()
        result["ontic"] = list()
        result["epistemic"] = list()
        
        for pred_str in pred_list:
            self.logger.debug(pred_str)
            self.logger.debug(ONTIC_STR_PREFIX)
            #  this is for precondition, it is also fine with the goal for now
            key = pred_str.replace(' ?',"?")
            if ONTIC_STR_PREFIX[1:] in pred_str:
                # this is an ontic predictor
                
                self.logger.debug(pred_str)
                
                
                
                
                pred_str = pred_str[len(ONTIC_STR_PREFIX)+1:-1]
                self.logger.debug(pred_str)
                self.logger.debug(pred_str)
                pre_comp_list = pred_str.split(" ")
                symbol = pre_comp_list[0]
                # value = goal_str_list[-1]
                pred_str = pred_str[(len(symbol)+2):]
                self.logger.debug(pred_str)
                
                # self.logger.debug(goal_str)
                temp_list = pred_str.split(')')
                old_variable = temp_list[0]
                variable = old_variable.replace(' ?','?').replace(' ','-')
                key = key.replace(old_variable,variable)
                self.logger.debug(temp_list)
                if len(temp_list) ==2:
                    value = temp_list[1][1:]
                    if "'" in value:
                        value = value.replace("'",str())
                    elif '"' in value:
                        value = value.replace('"',str())
                    else:
                        value =int(value)      
                elif len(temp_list) ==3:
                    # it means the second argument is also a variable
                    value = temp_list[1][2:].replace(' ?','?').replace(' ','-')
                else:
                    raise ValueError("error in decoding ontic [%s]",key)
                self.logger.debug("ontic: [%s]",(key,symbol,variable,value))

                result["ontic"].append((key,symbol,variable,value))
            elif EPISTEMIC_STR_PREFIX[1:] in pred_str:
                # this is an epistemic predictor
                
                self.logger.debug(pred_str)
                
                # this is for precondition, it is also fine with the goal for now
                
                
                query_str = key[len(EPISTEMIC_STR_PREFIX):]
                self.logger.debug("query string: [%s]",query_str)
                separator_index = query_str.index("(")
                query_prefix = query_str[:separator_index]
                self.logger.debug("query prefix [%s]" % (query_prefix))
                query_suffix_str = query_str[separator_index:]
                self.logger.debug("query suffix [%s]" % (query_suffix_str))                
                # pre_comp_list = pred_str.split("(")
                
                symbol = query_suffix_str[1:].split(" ")[0]
                # pre_comp_list[0]
                # value = goal_str_list[-1]
                query_suffix_str = query_suffix_str[(len(symbol)+3):]
                self.logger.debug(query_suffix_str)
                
                # self.logger.debug(goal_str)
                temp_list = query_suffix_str.split(')')
                old_variable = temp_list[0]
                variable = old_variable.replace(' ?','?').replace(' ','-')
                key = key.replace(old_variable,variable)
                query_str = query_str.replace(old_variable,variable)
                if len(temp_list) ==2:
                    value = temp_list[1][1:]
                    if "'" in value:
                        value = value.replace("'",str())
                    elif '"' in value:
                        value = value.replace('"',str())
                    else:
                        value =int(value)      
                elif len(temp_list) ==3:
                    # it means the second argument is also a variable
                    value = temp_list[1][2:].replace(' ?','?').replace(' ','-')
                else:
                    raise ValueError("error in decoding epistemic [%s]",key)
                self.logger.debug("epistemic:(%s,%s,%s,%s,%s,%s)" % (key,query_str,query_prefix,symbol,variable,value))

                result["epistemic"].append((key,query_str,query_prefix,symbol,variable,value))
            elif pred_str == str():
                pass
            else:
                raise ValueError("[predicate type not found] error in decoding [%s]",key)
        
        return result
                







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
        return input_str      
    
    def str2value(self,value_type,value_str):
        if value_type == VALUE_TYPE.ENUMERATE:
            if value_str == 'jp.none':##################################
                value = special_value.HAVENT_SEEN################
            else:
                value = value_str.replace("'",str())
        elif value_type == VALUE_TYPE.INTEGER:
            if value_str == 'jp.none':##################################
                value = special_value.HAVENT_SEEN################
            else:
                value = int(value_str)
        else:
            raise ValueError("value type %s does not exist %s",value_type,value_str)
        
        return value
    # def epistemic_converter(self,ep_content):
    #     self.logger.debug("epistemic converter: [%s]",ep_content)
    #     header_index = ep_content.find(" ")
    #     header_str =  ep_content[1:header_index]
    #     self.logger.debug("header string: [%s]",header_str)
    #     ep_content = ep_content[:header_index]
    #     agent_index = ep_content.find(" ")
    #     agents_str = ep_content[2:agent_index-1]

    #     ep = EpistemicQuery(header_str,agents_str,value,content)

    #     ep_value = 
    #     self.logger.debug(epistemic_pre_list)
    #                     for pre_str in epistemic_pre_list:
    
    #                         key = pre_str.replace(' ?',"?")
    #                         self.logger.debug(pre_str)
    #                         pre_str = pre_str[len(epistemic_prefix):-len(epistemic_surfix):]
    #                         self.logger.debug(pre_str)
    #                         pre_str_list = pre_str.split(" ")
    #                         # symbol = goal_str_list[0]
    #                         value = pre_str_list[-1]
    #                         pre_str = pre_str[:-(len(value)+2):]
    #                         value = int(value)
    #                         query = pre_str
    #                         self.logger.debug(pre_str)
                            
    #                         # i,j = re.search('\)\) .*',goal_str).span()
    #                         # value1 = int(goal_str[i+3:j:])
                            
    #                         p,q = re.search('(?:>|<| =|> =|< =)+ \([ 0-9a-z_\? ]*\) (?:[0-9a-z_\'\"-]+|\([0-9a-z_ ]+\))\)',pre_str).span()
    #                         # query = pre_str[:p-1]
    #                         pre_str = pre_str[p:q-1]
                            
                            
    #                         pre_str_list = pre_str.split(' ')
    #                         symbol = pre_str_list[0]
    #                         pre_str = pre_str[(len(symbol)+2)::]
    #                         pre_str_list = pre_str.split(') ')
    #                         old_variable = pre_str_list[0]
    #                         variable = pre_str_list[0].replace(' ?','?').replace(' ','-')
    #                         self.logger.debug("old variable string: [%s]",old_variable)
    #                         self.logger.debug("new variable string: [%s]",variable)
    #                         self.logger.debug("query string: [%s]",query)
    #                         query = query.replace(old_variable,variable) 
    #                         self.logger.debug("query string: [%s]",query)
    #                         key = key.replace(old_variable,variable)
    #                         v_value = pre_str_list[1]
    #                         if "'" in v_value:
    #                             v_value = v_value.replace("'",str())
    #                         elif '"' in v_value:
    #                             v_value = v_value.replace('"',str())
    #                         elif '?' in v_value:
    #                             v_value = v_value.replace(' ?',"?").replace(')','').replace('(','')
    #                         elif "(" in v_value and ")" in v_value:
    #                             old_v_value = v_value
    #                             v_value = v_value[1:-1]
    #                             v_value = v_value.replace(" ","-")
    #                             query = query.replace(old_v_value,v_value)
                                
                                
    #                         else:
    #                             v_value =int(v_value)
    #                         self.logger.debug("epistemic_p: [%s]",(key,symbol,query,variable,v_value,value))
    #                         preconditions["epistemic_p"].append((key,symbol,query,variable,v_value,value))
    #                 except AttributeError:
                        
    #                     self.logger.error("error when extract precondition")
    #                     self.logger.error(traceback.format_exc())
    #                     traceback.self.logger.debug_exc()
    #                     exit() 
    
