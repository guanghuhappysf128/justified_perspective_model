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
    job_collection = db[job_record_collection_name]
    
    # query = {'search_name': 'bfsdcu'}
    # job_collection.delete_many(query)
    
    # for item in main_collection.find():
    #     problem_name = item['problem_name']
    #     goal_index = item['goal_index']
    #     correct_goal_index_str = problem_name.split("_")[-1]
    #     correct_goal_index = int(correct_goal_index_str)
    #     if goal_index != correct_goal_index:
    #         query = {'_id': item['_id']}
    #         updates = {'$set': {'goal_index': correct_goal_index}}
    #         main_collection.update_one(query, updates)


    bfs_query = {'search': 'bfs'}
    
    # bfs_update_query = {'search': 'bfs', 'bfs_ratio_search_time': {'$exists': False}}
    # bfs_update = {'$set': {'bfs_ratio_search_time': 1}}
    # main_collection.update_many(bfs_update_query, bfs_update)
    
    # bfs_update_query = {'search': 'bfs', 'bfs_ratio_expanded': {'$exists': False}}
    # bfs_update = {'$set': {'bfs_ratio_expanded': 1}}
    # main_collection.update_many(bfs_update_query, bfs_update)
    
    # bfs_update_query = {'search': 'bfs', 'bfs_ratio_generated': {'$exists': False}}
    # bfs_update = {'$set': {'bfs_ratio_generated': 1}}
    # main_collection.update_many(bfs_update_query, bfs_update)
    
    
    bfs_dict = dict()    
    for item in main_collection.find(bfs_query):
        problem_name = item['problem_name']
        init_name = item['init_name']
        
        # search_time = item['search_time']
        # expanded = item['expanded']
        if problem_name not in bfs_dict:
            bfs_dict[problem_name] = dict()
        
        if init_name not in bfs_dict[problem_name]:
            bfs_dict[problem_name][init_name] = dict()
            bfs_dict[problem_name][init_name]['search_time'] = item['search_time']
            bfs_dict[problem_name][init_name]['expanded'] = item['expanded']
            bfs_dict[problem_name][init_name]['generated'] = item['generated']
        else:
            print(f"problem name {problem_name} init name {init_name} already exists")
        

    bfs_dict_item_count = 0
    for problem_name, problem_item in bfs_dict.items():
        for init_name, init_item in problem_item.items():
            bfs_dict_item_count += 1
            
    print(f"bfs_dict_item_count {bfs_dict_item_count}")

    other_query = {"search": {"$ne": "bfs"}}

    json_list = list()
    for item in main_collection.find(other_query):

        problem_name = item['problem_name']
        init_name = item['init_name']
        _id = item['_id']
        if problem_name not in bfs_dict:
            print(f"problem name not found, deleting {problem_name} {init_name}")
            # main_collection.delete_one({'_id': _id})
        elif init_name not in bfs_dict[problem_name]:
            print(f"init name not found, deleting {problem_name} {init_name}")
            # main_collection.delete_one({'_id': _id})
        else:
            # bfs_search_time = bfs_dict[problem_name][init_name]
            # ratio = search_time / bfs_search_time
            bfs_ratio_search_time = item['search_time'] / bfs_dict[problem_name][init_name]['search_time']
            bfs_ratio_expanded = item['expanded'] / bfs_dict[problem_name][init_name]['expanded'] if bfs_dict[problem_name][init_name]['expanded'] != 0 else 1
            bfs_ratio_generated = item['generated'] / bfs_dict[problem_name][init_name]['generated'] if bfs_dict[problem_name][init_name]['generated'] != 0 else 1
            query = {'_id': _id}
            updates = {'$set': {'bfs_ratio_search_time': bfs_ratio_search_time, 'bfs_ratio_expanded': bfs_ratio_expanded, 'bfs_ratio_generated': bfs_ratio_generated}}
            main_collection.update_one(query, updates)

            if bfs_ratio_search_time > 2 or bfs_ratio_expanded > 2 or bfs_ratio_generated > 2:
                json_list.append(item)
    
    with open("bfs_ratio.txt", "w") as f:
        for item in json_list:
            f.write(f"{item}\n")

    with open("bfs_ratio.json", "w") as f:
        json.dump(json_list, f, indent=4)
        
    # bfsdcu_query = {'search': 'bfsdcu'}
    # for item in main_collection.find(bfsdcu_query):
    #     problem_name = item['problem_name']
    #     init_name = item['init_name']
    #     _id = item['_id']
    #     if problem_name not in astar_dict:
    #         main_collection.delete_one({'_id': _id})
    #     elif init_name not in astar_dict[problem_name]:
    #         main_collection.delete_one({'_id': _id})
    
        # domain_name = item["domain_name"]
        # num_of_agent = item["num_of_agents"]
        # goal_size = item["total_goal_size"]
        # designed_goal_depth = item["designed_goal_depth"]
        # init_name = item["init_name"]
        # goal_index = item["goal_index"]
        # search_name = updating_search_name
        # time_out = item["timeout"]
        # memory_out = item["memoryout"]

        # new_item = {
        #     "domain_name": domain_name,
        #     "num_of_agent": num_of_agent,
        #     "goal_size": goal_size,
        #     "designed_goal_depth": designed_goal_depth,
        #     "init_name": init_name,
        #     "goal_index": goal_index,
        #     "search_name": search_name,
        #     "time_out": time_out,
        #     "memory_out": memory_out
        # }
        # new_job_records.append(new_item)
    
    
    
    # update_operation = {
    #     '$set': {'running': 'SUCC'}  # Replace 'default_value' with the desired default value
    # }
    # result = main_collection.update_many(
    #     {'running': {'$exists': False}},
    #     update_operation
    # )
    # # Aggregation pipeline
    # pipeline = [
    #     {
    #         "$group": {
    #             "_id": {
    #                 "problem_name": "$problem_name",
    #                 "init_name": "$init_name"
    #             },
    #             "algorithms": {
    #                 "$push": {
    #                     "search": "$search",
    #                     "domain_name": "$solvable"
    #                 }
    #             },
    #             "solvable_count": {
    #                 "$sum": {
    #                     "$cond": ["$solvable", 1, 0]
    #                 }
    #             },
    #             "unsolvable_count": {
    #                 "$sum": {
    #                     "$cond": ["$solvable", 0, 1]
    #                 }
    #             }
    #         }
    #     },
    #     {
    #         "$match": {
    #             "solvable_count": {"$gt": 0},
    #             "unsolvable_count": {"$gt": 0}
    #         }
    #     },
    #     {
    #         "$project": {
    #             "_id": 0,
    #             "problem_name": "$_id.problem_name",
    #             "init_name": "$_id.init_name",
    #             "algorithms": 1
    #         }
    #     }
    # ]

    # # Execute the aggregation pipeline
    # results = list(main_collection.aggregate(pipeline))

    # Print the results
    # for result in results:
    #     print(result)
