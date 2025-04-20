# bpwp


<!-- The experiment is run by the command:
```bash
python experiment_runner.py -s forward_search/fbfsdc.py -i .\examples\GROUP_CONFIG_NUM
python .\experiment_runner.py -s .\forward_search\fbfsdc.py -i .\examples\GROUP_CONFIG_BBL
python .\experiment_runner.py -s .\forward_search\fbfsdc.py -i .\examples\GROUP_CONFIG_GRAPEVINE
```

One instance can be run by this command:
```bash
python .\instance_runner.py -s .\forward_search\fbfsdc.py -e .\examples\group_number\group_number.py -d .\examples\group_number\domain.pddl -p .\examples\group_number\problem07.pddl
```


```
python server_runner.py -t 1200 -m 8 -o output -s search_algorithms/bfsdc.py -d experiments/bbl/domain.pddl --goal_size 1 --goal_depth 1 -a 2 -i init_a2_00000  --goal_index 0
```


 -->

Adding heterogeneous reasoning
```
python -m jp.instance_runner -s jp/search_algorithms/bfsdc.py -e benchmarks/coin/coin.py -d benchmarks/coin/domain.pddl -p heterogeneous_benchmarks/coin/problem_06.pddl
```










