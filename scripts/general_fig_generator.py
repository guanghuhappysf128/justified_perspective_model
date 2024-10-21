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
from functools import reduce
import numpy as np

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

class GeneralFigGenerator():
    
    
    def __init__(self,mdb_config_path) -> None:
        with open (mdb_config_path) as f:
            self.config = yaml.safe_load(f)
        username = self.config.get('username')
        password = self.config.get('password')
        url = self.config.get('url')
        client = pymongo.MongoClient(url,username=username,password=password)
        # client = pymongo.MongoClient("mongodb://localhost:27017",username="admin",password="90054")
        db_name = self.config.get('db_name')
        self.db  = client[db_name]
        # main_collection_name = self.config.get('main_collection_name')
        # job_index_name = self.config.get('job_index_name')
        # self.main_collection = db[main_collection_name]


    def run(self,config_path,shareY=True):
        print(config_path)
        folder_path,file_name = os.path.split(config_path)
        result_path = folder_path.replace('configs','figs')
        if not os.path.exists(result_path):
            os.makedirs(result_path)
        result_file_name = file_name.replace('yaml','png')
        result_file_path = os.path.join(result_path,result_file_name)
        config_yaml = get_config_by_yaml(config_path)


        filters = config_yaml.get('filters')
        filter_query = dict()
        for item in filters:
            name = item.get('name')
            value = item.get('value')
            filter_query.update({name:value})
        print(filter_query)
        
        # find data
        collection_name = config_yaml.get('collection_name')
        my_collection = self.db[collection_name]
        data = my_collection.find(filter_query)
        data_list = list(data)
        if data_list == []:
            print("No data found")
            return
        df = pd.DataFrame(data_list)
        
        subplot_matrix = []
        if 'subplot_y' in config_yaml:
            subplot_y = config_yaml.get('subplot_y')
            subplot_y_name = subplot_y.get('name')
            subplot_y_values = subplot_y.get('values')
            print(subplot_y_values)
            if subplot_y_values == []:
                subplot_y_values = df[subplot_y_name].unique()
        else:
            subplot_y_values = [None]
            subplot_y_name = "None Y"
            
        for subplot_y_value in subplot_y_values:
            if subplot_y_value == None:
                subplot_y_query = ""
                filtered_df = df
                subplot_title = ""
            else:
                subplot_y_query = f"{subplot_y_name} == {subplot_y_value}"
                filtered_df = df.query(subplot_y_query)
                subplot_title = f"{subplot_y_name}: {subplot_y_value}\n"
            
            subplot_x_list = []
            if 'subplot_x' in config_yaml:
                subplot_x = config_yaml.get('subplot_x')
                subplot_x_name = subplot_x.get('name')
                subplot_x_values = subplot_x.get('values')
                if subplot_x_values == []:
                    subplot_x_values = filtered_df[subplot_x_name].unique()
                for subplot_x_value in subplot_x_values:
                    if subplot_x_value == None:
                        raise ValueError("No subplot_x_value found",subplot_x_name)
                    else:
                        subplot_x_query = f"{subplot_x_name} == {subplot_x_value}"
                        print(subplot_x_query)
                        filtered_df_x = filtered_df.query(subplot_x_query)
                    subplot_dict = {
                        'filtered_df':filtered_df_x,
                        'subplot_x_name': subplot_x_name,
                        'subplot_x_value': subplot_x_value,
                        'subplot_x_query': subplot_x_query,
                        'subplot_y_name': subplot_y_name,
                        'subplot_y_value': subplot_y_value,
                        'subplot_y_query': subplot_y_query,
                        'subplot_title': subplot_title + f"{subplot_x_name}: {subplot_x_value}"
                    }
                    subplot_x_list.append(subplot_dict)
            else:
                raise ValueError("No subplot_x found")
            
            subplot_matrix.append(subplot_x_list)

        for i in range(len(subplot_matrix)):
            for j in range(len(subplot_matrix[i])):
                query_item = subplot_matrix[i][j]
                filtered_df = query_item['filtered_df']
                subplot_x_name = query_item['subplot_x_name']
                subplot_x_value = query_item['subplot_x_value']
                subplot_x_query = query_item['subplot_x_query']
                subplot_y_name = query_item['subplot_y_name']
                subplot_y_value = query_item['subplot_y_value']
                subplot_y_query = query_item['subplot_y_query']
                subplot_title = query_item['subplot_title']
                print(subplot_title)
                # print(filtered_df)

        
        figure_type = config_yaml.get('figure_type')
        
        if figure_type == 'box':
            self.generate_boxplot_fig(subplot_matrix,config_yaml,result_file_path)
        elif figure_type == 'bar':
            self.generate_bar_fig(subplot_matrix,config_yaml,result_file_path)
        elif figure_type == 'stacked_bar':
            self.generate_stacked_bar_fig(subplot_matrix,config_yaml,result_file_path)
        elif figure_type == 'violin':
            self.generate_violin_fig(subplot_matrix,config_yaml,result_file_path)
        else:
            print("No figure type found")
        # elif:
        #     self.generate_boxplot_fig(subplot_matrix,config_yaml,result_file_path)
            
        # print(df)
    def generate_boxplot_fig(self,subplot_matrix,config_yaml,result_file_path,shareY=True,shareX=False):
        # num_of_subplots = len(subplot_matrix)
        y_len = len(subplot_matrix)
        x_len = len(subplot_matrix[0])
        
        fig, axes = plt.subplots(
            nrows=y_len, 
            ncols=x_len, 
            figsize=(20, 14), sharey=shareY, sharex=shareX)
        # axes[0].set_ylabel('Scores')
        
        box_key = config_yaml.get('box_key')

        for y in range(y_len):
            for x in range(x_len):
                query_item = subplot_matrix[y][x]
                query_name = query_item['subplot_title']
                print(query_name)
                query_df = query_item['filtered_df']
                # total_counts = query_df.shape[0]
                # conditional_value_matrix = [[] for _ in stack_conditions]
                if not 'box_x' in config_yaml:
                    raise ValueError("No box_x found")
                
                box_x = config_yaml.get('box_x')
                box_x_name = box_x.get('name')
                box_x_values = box_x.get('values')
                if box_x_values == []:
                    box_x_values = query_df[box_x_name].unique()
                    box_x_values.sort()
                

                barWidth = 0.5

                
                matrix_values = []
                for bar_x_value in box_x_values:
                    filtered_query_df = query_df.query(f"{box_x_name} == '{bar_x_value}'")
                    # total_counts = filtered_query_df.shape[0]
                    # stack_counts = []
                    box_values = filtered_query_df[box_key]
                    # for i,stack_condition_list in enumerate(stack_conditions):
                    #     combined_condition = reduce(lambda x,y: x & y, [query_df[condition[0]] == condition[1] for condition in stack_condition_list])
                    #     num_of_apprearance = filtered_query_df[combined_condition].shape[0]
                    #     # stack_counts.append(num_of_apprearance)
                    #     percentage = round(num_of_apprearance/total_counts*100,1)
                    #     # stack_values.append(percentage)
                    #     # conditional_value_matrix[i].append(percentage)
                    #     stack_values.append(percentage)
                    matrix_values.append(box_values)
                    # conditional_value_matrix.append(stack_values)
                    # barWidth = 0.5
                # print(matrix_values)
                
                axes[y][x].boxplot(matrix_values, labels=box_x_values)

                axes[y][x].set_xlabel(box_x_name)
                axes[y][x].set_ylabel("Percentage")
                axes[y][x].set_title(query_name)

        # fig.legend(handles, stack_conditions, loc='upper center', ncol=len(stack_conditions))
        fig.subplots_adjust(bottom=0.15,top=0.95,right=0.95,left=0.05,hspace=0.90) 
        plt.tight_layout(rect=[0, 0, 1, 0.95]) 
        plt.savefig(result_file_path, dpi=600, bbox_inches='tight')
        # plt.savefig(result_file_path, dpi=300, bbox_inches='tight')
        # plt.show()
            
        plt.close()


    
    # Function to add value labels on bars
    def add_value_labels(self, ax, bars):
        for bar in bars:
            height = bar.get_height()
            ax.text(
                bar.get_x() + bar.get_width() / 2,
                height,
                f'{height}',
                ha='center',
                va='bottom'
            )

        
    def generate_bar_fig(self,subplot_matrix,config_yaml,result_file_path,shareY=True,shareX=False):
        
        y_len = len(subplot_matrix)
        x_len = len(subplot_matrix[0])
        
        bar_conditions = []
        for bar_key in config_yaml.get('bar_keys'):
            if type(bar_key) == list:
                condition_list = []
                for item in bar_key:
                    condition_list.append((item.get('name'),item.get('value')))
                bar_conditions.append(condition_list)
            else:
                bar_conditions.append([(bar_key.get('name'),bar_key.get('value'))])
        colors = sns.color_palette("deep", len(bar_conditions))
        
        fig, axes = plt.subplots(y_len,x_len, figsize=(20, 14), sharey=shareY, sharex=shareX)
        
        for y in range(y_len):
            for x in range(x_len):
                query_item = subplot_matrix[y][x]
                query_name = query_item['subplot_title']
                query_df = query_item['filtered_df']
                # total_counts = query_df.shape[0]
                # conditional_value_matrix = [[] for _ in bar_conditions]
                conditional_value_matrix = []
                
                for i, bar_condition_list in enumerate(bar_conditions):
                    combined_condition = reduce(lambda x,y: x & y, [query_df[condition[0]] == condition[1] for condition in bar_condition_list])
                    num_of_apprearance = query_df[combined_condition].shape[0]
                    conditional_value_matrix.append(num_of_apprearance)
                    
                bar_size = range(len(conditional_value_matrix))
                bars = axes[y][x].bar(bar_size, conditional_value_matrix,color=colors)
                axes[y][x].set_title(query_name)
                axes[y][x].set_xticks(bar_size)
                # axes[i].set_xticklabels(column_names)
                self.add_value_labels(axes[y][x], bars)
        
        fig.subplots_adjust(bottom=0.15,top=0.95,right=0.95,left=0.05,hspace=0.90) 
        plt.savefig(result_file_path, dpi=600, bbox_inches='tight')
        # plt.savefig(result_file_path, dpi=300, bbox_inches='tight')
        # plt.show()
            
        plt.close()
                
    def generate_stacked_bar_fig(self,subplot_matrix,config_yaml,result_file_path,shareY=True,shareX=False):
        
        y_len = len(subplot_matrix)
        x_len = len(subplot_matrix[0])

        stack_conditions = []
        stack_names = []
        # stack_condition_labels = []
        for stack_key in config_yaml.get('stack_keys'):
            display_name = stack_key.get('display_name')
            print(display_name)
            stack_names.append(display_name)
            content = stack_key.get('content')
            if type(content) == list:
                condition_list = []
                for item in content:
                    condition_list.append((item.get('name'),item.get('value')))
                stack_conditions.append(condition_list)
            else:
                raise ValueError("the stack content should be a list")
        
        print(y_len,x_len)
        fig, axes = plt.subplots(y_len,x_len, figsize=(20, 14), sharey=shareY, sharex=shareX)
        
        handles = []
        
        for y in range(y_len):
            for x in range(x_len):
                query_item = subplot_matrix[y][x]
                query_name = query_item['subplot_title']
                print(query_name)
                query_df = query_item['filtered_df']
                # total_counts = query_df.shape[0]
                # conditional_value_matrix = [[] for _ in stack_conditions]
                if not 'bar_x' in config_yaml:
                    raise ValueError("No bar_x found")
                
                bar_x = config_yaml.get('bar_x')
                bar_x_name = bar_x.get('name')
                bar_x_values = bar_x.get('values')
                if bar_x_values == []:
                    bar_x_values = query_df[bar_x_name].unique()
                    bar_x_values.sort()
                
                column_names = bar_x_values
                colors = sns.color_palette("deep", len(column_names))
                barWidth = 0.5
                
                
                matrix_values = []
                for bar_x_value in bar_x_values:
                    filtered_query_df = query_df.query(f"{bar_x_name} == '{bar_x_value}'")
                    total_counts = filtered_query_df.shape[0]
                    # stack_counts = []
                    stack_values = []
                    for i,stack_condition_list in enumerate(stack_conditions):
                        combined_condition = reduce(lambda x,y: x & y, [query_df[condition[0]] == condition[1] for condition in stack_condition_list])
                        num_of_apprearance = filtered_query_df[combined_condition].shape[0]
                        # stack_counts.append(num_of_apprearance)
                        percentage = round(num_of_apprearance/total_counts*100,1)
                        # stack_values.append(percentage)
                        # conditional_value_matrix[i].append(percentage)
                        stack_values.append(percentage)
                    matrix_values.append(stack_values)
                    # conditional_value_matrix.append(stack_values)
                    # barWidth = 0.5
                print(matrix_values)
                
                bottom = [0] * len(bar_x_values)
                for i,stack_condition_list in enumerate(stack_conditions):
                    
                    stack_values = [item[i] for item in matrix_values]
                    bars = axes[y][x].bar(bar_x_values, stack_values, width=barWidth, label=bar_x_values,bottom=bottom)
                    if x == 0 and y ==0:  # Collect handles and labels from the first subplot
                        handles.append(bars[0])
                    bottom = [sum(x) for x in zip(bottom, stack_values)]

                # x = range(len(column_values))
                percentage_stack = np.zeros(len(bar_x_values))
                for i,stack_condition_list in enumerate(stack_conditions):
                    
                    for j in range(len(bar_x_values)):
                        
                        percentage = matrix_values[j][i]
                        # print(percentage)
                        if percentage < 1:
                            continue
                        elif percentage < 4:
                            axes[y][x].text(j, percentage_stack[j] + percentage +1.5, f'{percentage}%', ha='center', va='center', color='black', fontsize=8)
                        else: 
                            axes[y][x].text(j, percentage_stack[j] + percentage / 2.0, f'{percentage}%', ha='center', va='center', color='black')
                        percentage_stack[j] += percentage
                axes[y][x].set_xlabel("Search Algorithm")
                axes[y][x].set_ylabel("Percentage")
                axes[y][x].set_title(query_name)
        
        fig.legend(handles, stack_names, loc='upper center', ncol=len(stack_names))
        fig.subplots_adjust(bottom=0.15,top=0.95,right=0.95,left=0.05,hspace=0.90) 
        plt.tight_layout(rect=[0, 0, 1, 0.95]) 
        plt.savefig(result_file_path, dpi=600, bbox_inches='tight')
        # plt.savefig(result_file_path, dpi=300, bbox_inches='tight')
        # plt.show()
            
        plt.close()
        

    def generate_violin_fig(self,subplot_matrix,config_yaml,result_file_path,shareY=True,shareX=False):
                # print(list(data))
        # if list(data) == []:
        #     print("No data found")
        #     return
        # print(list(data))

        # print(df)
        # print(config_yaml)
        x_axis = config_yaml.get('x_axis')
        y_axis = config_yaml.get('y_axis')


        # print(df)

        fig, axes = plt.subplots(
            nrows=len(subplot_matrix), 
            ncols=len(subplot_matrix[0]), 
            figsize=(20, 14), sharey=shareY, sharex=shareX)
            
        # min_y = 999
        # max_y = 0

        if len(subplot_matrix) > 1:
            for i in range(len(subplot_matrix)):
                for j in range(len(subplot_matrix[i])):
                
                    query_item = subplot_matrix[i][j]
                    subplot_title = query_item['subplot_title']
                    query_df : pd.DataFrame = query_item['filtered_df']
                    axes[i][j].scatter(x=query_df[x_axis], y=query_df[y_axis], s=10, alpha=0.5, color='black')
                    
                    axes[i][j].set_title(subplot_title)
                    data_size = query_df[x_axis].size
                # print(data_size)
                # if data_size < 10:
                #     continue
                # ax = sns.kdeplot(x=query_df[x_axis], y=query_df[y_axis],cmap="Blues", fill=True, thresh=0.05, ax=axes[i])
                # ax.xaxis.set_major_formatter(plt.FuncFormatter(lambda x, _: int(x)))
                # data_list = [query_df[f'{key}'].to_list() for key in display_column_names]
                # axes[i].boxplot(data_list, labels=display_column_keys)

        elif len(subplot_matrix[0])>1:
            
            for i in range(len(subplot_matrix[0])):
                # print(subplot_matrix[0][i])
                query_item = subplot_matrix[0][i]

                        # 'filtered_df':filtered_df_x,
                        # 'subplot_x_name': subplot_x_name,
                        # 'subplot_x_value': subplot_x_value,
                        # 'subplot_x_query': subplot_x_query,
                        # 'subplot_y_name': subplot_y_name,
                        # 'subplot_y_value': subplot_y_value,
                        # 'subplot_y_query': subplot_y_query,
                        # 'subplot_title': subplot_title + f"{subplot_x_name}: {subplot_x_value}"



                subplot_title = query_item['subplot_title']
                query_df : pd.DataFrame = query_item['filtered_df']
                axes[i].scatter(x=query_df[x_axis], y=query_df[y_axis], s=10, alpha=0.5, color='black')
                
                axes[i].set_title(subplot_title)
                data_size = query_df[x_axis].size
                # print(data_size)
                # if data_size < 10:
                #     continue
                # ax = sns.kdeplot(x=query_df[x_axis], y=query_df[y_axis],cmap="Blues", fill=True, thresh=0.05, ax=axes[i])
                # ax.xaxis.set_major_formatter(plt.FuncFormatter(lambda x, _: int(x)))
                # data_list = [query_df[f'{key}'].to_list() for key in display_column_names]
                # axes[i].boxplot(data_list, labels=display_column_keys)
        else:
            query_item = subplot_matrix[0][0]
            print(query_item)
            query_name = query_item['query_name']
            query_df : pd.DataFrame = query_item['df']
            axes.scatter(x=query_df[x_axis], y=query_df[y_axis], s=10, alpha=0.5, color='black')
            
            axes.set_title(query_name)

        fig.subplots_adjust(bottom=0.15,top=0.95,right=0.95,left=0.05,hspace=0.90) 
        plt.savefig(result_file_path, dpi=600, bbox_inches='tight')
        # plt.savefig(result_file_path, dpi=300, bbox_inches='tight')
        # plt.show()
            
        plt.close()

if __name__ == '__main__':

    options = loadParameter()
    mdb_config_path = options.mdb_config_path
    config_path = options.config_path
    
    gfg = GeneralFigGenerator(mdb_config_path)
    gfg.run(config_path=config_path)
