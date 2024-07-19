import pymongo
import os
import json
import pandas as pd
import yaml
from optparse import OptionParser
import sys
import itertools
import traceback
import re
import random
import matplotlib.pyplot as plt
import seaborn as sns

def get_config_by_yaml(path):
    with open(path, "r") as input:
        try:
            options = yaml.safe_load(input)
            return options
            # print(a)
        except yaml.YAMLError as error:
            traceback.print_exc()
            print(error) 

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
    parser.add_option('-c','--config', dest="config_path", help='path to the config yaml file to display the results',default='scripts/configs/bbl/bbl-a1-g1-solvable_search_node.yaml')
    parser.add_option('-m','--mdb_config', dest="mdb_config_path", help='path to the mdb config yaml file to load data',default='scripts/config/mdb_config.yaml')

    options, otherjunk = parser.parse_args(sys.argv[1:] )
    assert len(otherjunk) == 0, "Unrecognized options: " + str(otherjunk)

    return options



if __name__ == "__main__":
    options = loadParameter()
    config_path = options.config_path
    mdb_config_path = options.mdb_config_path
    
    with open (mdb_config_path) as f:
         mdb_config_config = yaml.safe_load(f)
    username =  mdb_config_config.get('username')
    password =  mdb_config_config.get('password')
    url =  mdb_config_config.get('url')
    client = pymongo.MongoClient(url, username=username, password=password)
    db_name = mdb_config_config.get('db_name')
    db = client[db_name]
    main_collection_name = mdb_config_config.get('main_collection_name')
    main_collection = db[main_collection_name]
    
    job_record_collection_name = mdb_config_config.get('job_record_collection_name')
    job_record_collection = db[job_record_collection_name]

    
    job_record_backup_collection_name = mdb_config_config.get('job_record_backup_collection_name')
    
    job_record_backup_collection = db[job_record_backup_collection_name]
    
    job_index_collection_name = mdb_config_config.get('job_index_name')
    job_index_collection = db[job_index_collection_name]
    
    # updating_search_name = "greedy"

    # query = {"domain_name": "bbl", "search": updating_search_name, "num_of_unknown_goals": {"$gt":0}}
    
    # query = {"domain_name": "bbl", "search": "bfsdcu","num_of_unknown_goals": 0}
    
    # query = {"num_of_agents":2}
    
    job_index_dict = {}
    counter = 0
    for item in job_index_collection.find({"num_of_agent":2}):
        goal_size = item["goal_size"]
        designed_goal_depth = item["goal_depth"]
        if goal_size not in job_index_dict:
            job_index_dict[goal_size] = {}
        job_index_dict[goal_size][designed_goal_depth] = item['instances']
        
        
    wrong_goal_dict = {}   
    for item in main_collection.find({"num_of_agents":2}):
        goal_size = item["total_goal_size"]
        designed_goal_depth = item["designed_goal_depth"]
        init_name = item["init_name"]
        goal_index = item["goal_index"]
        
        key = [init_name,goal_index]
        # if goal_size not in job_index_dict:
        #     print(f"not found {goal_size}")
        #     print(item["_id"])
        if goal_size == 0:
            if designed_goal_depth in wrong_goal_dict:
                wrong_goal_dict[designed_goal_depth].append(goal_index)
            else:
                wrong_goal_dict[designed_goal_depth] = [goal_index]
            _id = item["_id"]
            job_record_backup_collection.delete_one({"_id": _id})
        else:
            if key in job_index_dict[goal_size][designed_goal_depth]:
                # print(f"found {key} in {goal_size} {designed_goal_depth}")  
                pass
            else:
                # _id = item["_id"]
                # job_record_backup_collection.delete_one({"_id": _id})
                print(f"not found {key} in {goal_size} {designed_goal_depth}")
                counter+=1
            
    print(counter)
    print(wrong_goal_dict)
        # if goal_size not in job_index_dict:
        #     job_index_dict[goal_size] = {}
        # if designed_goal_depth not in job_index_dict[goal_size]:
        #     job_index_dict[goal_size][designed_goal_depth] = []
        # job_index_dict[goal_size][designed_goal_depth].append(item)
        
        
    
    
    
    
    
    
    # query = {"num_of_agent":2}
    
    
    # for item in job_index_collection.find(query):
    #     num_of_instance = item["num_of_instance"]
        
    #     _id = item["_id"]
    #     if num_of_instance > 1000:
    #         if num_of_instance == 2000:
    #             # keep the first 1000
    #             # delete the rest
    #             instances = item["instances"]
    #             new_instances = instances[:1000]
    #             updates = {"$set": {"instances": new_instances,"num_of_instance": 1000}}
    #             job_index_collection.update_one({"_id": _id}, updates)
    #         else:
    #             # select 1000 from instance list
    #             new_instances = random.sample(item["instances"], 1000)
    #             updates = {"$set": {"instances": new_instances,"num_of_instance": 1000}}
    #             job_index_collection.update_one({"_id": _id}, updates)
    #     instance_size  = item["instance_size"]
    #     if not instance_size == 1000:
    #         updates = {"$set": {"instance_size": 1000}}
    #         job_index_collection.update_one({"_id": _id}, updates)
    # all_matches = list(main_collection.find(query))
    # print(len(all_matches))
    # print(main_collection.count_documents(query))
    # deleted = main_collection.delete_many(query)
    # print(deleted.deleted_count)
    # bfs_query = {"domain_name": "bbl", "search": "bfs","num_of_unknown_goals": {"$gt":0}}
    
    # new_job_records = []    
    # for item in main_collection.find(bfs_query):
    #     domain_name = item["domain_name"]
    #     num_of_agent = item["num_of_agents"]
    #     goal_size = item["total_goal_size"]
    #     designed_goal_depth = item["designed_goal_depth"]
    #     init_name = item["init_name"]
    #     goal_index = item["goal_index"]
    #     search_name = updating_search_name
    #     time_out = item["timeout"]
    #     memory_out = item["memoryout"]

    #     new_item = {
    #         "domain_name": domain_name,
    #         "num_of_agent": num_of_agent,
    #         "goal_size": goal_size,
    #         "designed_goal_depth": designed_goal_depth,
    #         "init_name": init_name,
    #         "goal_index": goal_index,
    #         "search_name": search_name,
    #         "time_out": time_out,
    #         "memory_out": memory_out
    #     }
    #     new_job_records.append(new_item)
    
    # job_record_collection.insert_many(new_job_records)
    # Execute the aggregation pipeline
    # results = list(main_collection.aggregate(pipeline))

    # # Print the results
    # for result in results:
    #     print(result)
    # print(len(results))
