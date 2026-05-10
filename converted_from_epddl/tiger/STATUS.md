# Tiger

Support level: `unsupported`

The bundled EPDDL problem file currently fails to parse in plank and has no F-PDDL mapping yet.

Source files:
- Domain: `/home/guangh_ubuntu/projects/competition/iepc/plank/benchmarks/domains/Tiger/tig.epddl`
- Problem: `/home/guangh_ubuntu/projects/competition/iepc/plank/benchmarks/domains/Tiger/instances/problem_1.epddl`

Grounding failures:
- `benchmarks/domains/Tiger/instances/problem_1.epddl`: `plank export did not create problem_1.json for /home/guangh_ubuntu/projects/competition/iepc/plank/benchmarks/domains/Tiger/instances/problem_1.epddl: [===] plank 1.0 - The DEL-based epistemic planning toolkit.
[===]
Parsing...
In file '/home/guangh_ubuntu/projects/competition/iepc/plank/benchmarks/domains/Tiger/instances/problem_1.epddl' at (37:14):
. . In declaration of problem 'tig-5-3':
. . . . In declaration of finitary-S5 theory:
. . . . . . Syntax error: expected ')' at end of declaration of finitary-S5 theory.`
