# cd MEP_backup

mkdir -p examples/grid-doxastic/NonbroadcastCommunication/prob1
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/NonbroadcastCommunication/prob1.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/NonbroadcastCommunication/prob1
mv pdkb-domain.pddl examples/grid-doxastic/NonbroadcastCommunication/prob1
mv pdkb-plan.out examples/grid-doxastic/NonbroadcastCommunication/prob1
mv pdkb-plan.txt examples/grid-doxastic/NonbroadcastCommunication/prob1
mv pdkb-problem.pddl examples/grid-doxastic/NonbroadcastCommunication/prob1

mkdir -p examples/grid-doxastic/NonbroadcastCommunication/prob2
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/NonbroadcastCommunication/prob2.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/NonbroadcastCommunication/prob2
mv pdkb-domain.pddl examples/grid-doxastic/NonbroadcastCommunication/prob2
mv pdkb-plan.out examples/grid-doxastic/NonbroadcastCommunication/prob2
mv pdkb-plan.txt examples/grid-doxastic/NonbroadcastCommunication/prob2
mv pdkb-problem.pddl examples/grid-doxastic/NonbroadcastCommunication/prob2

mkdir -p examples/grid-doxastic/NonbroadcastCommunication/prob3
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/NonbroadcastCommunication/prob3.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/NonbroadcastCommunication/prob3
mv pdkb-domain.pddl examples/grid-doxastic/NonbroadcastCommunication/prob3
mv pdkb-plan.out examples/grid-doxastic/NonbroadcastCommunication/prob3
mv pdkb-plan.txt examples/grid-doxastic/NonbroadcastCommunication/prob3
mv pdkb-problem.pddl examples/grid-doxastic/NonbroadcastCommunication/prob3

mkdir -p examples/grid-doxastic/NonbroadcastCommunication/prob4
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/NonbroadcastCommunication/prob4.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/NonbroadcastCommunication/prob4
mv pdkb-domain.pddl examples/grid-doxastic/NonbroadcastCommunication/prob4
mv pdkb-plan.out examples/grid-doxastic/NonbroadcastCommunication/prob4
mv pdkb-plan.txt examples/grid-doxastic/NonbroadcastCommunication/prob4
mv pdkb-problem.pddl examples/grid-doxastic/NonbroadcastCommunication/prob4



