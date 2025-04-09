# bpwp


The experiment is run by the command:
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

Validation example:

A wrong plan:
```bash
python ./instance_runner.py -s ./search_algorithms/bfs.py -e ./new_syntax/grapevine/grapevine.py -d ./new_syntax/grapevine/domain.pddl -p ./new_syntax/grapevine/problem01_4ag_2g_1d.pddl --plan_actions "sharing_own_secret a sa, quiet sa,sharing_own_secret a sa, quiet sa, move_right a, sharing_own_secret a sa, quiet sa,sharing_own_secret a sa, quiet sa, move_right c, lying_others_secret c sa, quiet sa"
```
A correct plan:
```bash
python ./instance_runner.py -s ./search_algorithms/bfs.py -e ./new_syntax/grapevine/grapevine.py -d ./new_syntax/grapevine/domain.pddl -p ./new_syntax/grapevine/problem01_4ag_2g_1d.pddl --plan_actions "lying_own_secret a as, quiet as, move_right c, sharing_own_secret a as" 
```





