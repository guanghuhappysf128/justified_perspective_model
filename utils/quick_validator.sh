#!/bin/bash

# Define the Python version and scripts
python -m jp.instance_runner -s jp/search_algorithms/bfsdc.py -e benchmarks/coin/coin.py -d benchmarks/coin/domain.pddl -p benchmarks/coin/problem_07.pddl
python -m jp.instance_runner -s jp/search_algorithms/bfsdc.py -e benchmarks/bbl/bbl.py -d benchmarks/bbl/domain.pddl -p benchmarks/bbl/problem01.pddl 
python -m jp.instance_runner -s jp/search_algorithms/bfsdc.py -e benchmarks/corridor/corridor.py -d benchmarks/corridor/domain.pddl -p benchmarks/corridor/problem01_3ag_2g_1d.pddl 
python -m jp.instance_runner -s jp/search_algorithms/bfsdc.py -e benchmarks/grapevine/grapevine.py -d benchmarks/grapevine/domain.pddl -p benchmarks/grapevine/problem01_4ag_2g_1d.pddl 
python -m jp.instance_runner -s jp/search_algorithms/greedy.py -e benchmarks/grid/grid.py -d benchmarks/grid/domain.pddl -p benchmarks/grid/problem_EpGoal_prob1.pddl
python -m jp.instance_runner -s jp/search_algorithms/greedy.py -e benchmarks/new_corridor/new_corridor.py -d benchmarks/new_corridor/domain.pddl -p benchmarks/new_corridor/problem01_3ag_2g_1d.pddl
python -m jp.instance_runner -s jp/search_algorithms/bfsdc.py -e benchmarks/muddy_children/muddy_children.py -d benchmarks/muddy_children/domain.pddl -p benchmarks/muddy_children/problem02.pddl 




wait
echo "All scripts executed."