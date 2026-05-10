(define
    (problem cc_2_2_3_6_from_epddl)
    (:domain collaboration_through_communication_from_epddl)

    (:agents
        a b - agent
    )

    (:agent_spec
        (= (nesting a) 3)
        (= (nesting b) 3)
    )

    (:objects
        box1 box2 - box
        room1 room2 room3 - room
    )

    (:init
        (assign (agent_loc a) 2)
        (assign (agent_loc b) 2)

        (assign (actual box1 room1) 'yes')
        (assign (actual box1 room2) 'no')
        (assign (actual box1 room3) 'no')
        (assign (actual box2 room1) 'no')
        (assign (actual box2 room2) 'no')
        (assign (actual box2 room3) 'yes')

        (assign (known a box1 room1) 'unknown')
        (assign (known a box1 room2) 'no')
        (assign (known a box1 room3) 'unknown')
        (assign (known a box2 room1) 'unknown')
        (assign (known a box2 room2) 'no')
        (assign (known a box2 room3) 'unknown')
        (assign (known b box1 room1) 'unknown')
        (assign (known b box1 room2) 'no')
        (assign (known b box1 room3) 'unknown')
        (assign (known b box2 room1) 'unknown')
        (assign (known b box2 room2) 'no')
        (assign (known b box2 room3) 'unknown')

        (assign (communicated a b box1 room1) 'no')
        (assign (communicated a b box1 room2) 'no')
        (assign (communicated a b box1 room3) 'no')
        (assign (communicated a b box2 room1) 'no')
        (assign (communicated a b box2 room2) 'no')
        (assign (communicated a b box2 room3) 'no')
        (assign (communicated b a box1 room1) 'no')
        (assign (communicated b a box1 room2) 'no')
        (assign (communicated b a box1 room3) 'no')
        (assign (communicated b a box2 room1) 'no')
        (assign (communicated b a box2 room2) 'no')
        (assign (communicated b a box2 room3) 'no')
    )

    (:goal (and
        (= (@ep ("+ b [a]") (= (actual box1 room1) 'yes')) ep.true)
        (= (@ep ("+ b [a]") (= (actual box2 room3) 'yes')) ep.true)
        (= (@ep ("+ b [b]") (= (actual box1 room1) 'yes')) ep.true)
        (= (@ep ("+ b [b]") (= (actual box2 room3) 'yes')) ep.true)
        (!= (@ep ("+ b [a] + b [b]") (= (actual box1 room1) 'yes')) ep.true)
        (!= (@ep ("+ b [a] + b [b]") (= (actual box2 room3) 'yes')) ep.true)
        (!= (@ep ("+ b [b] + b [a]") (= (actual box1 room1) 'yes')) ep.true)
        (!= (@ep ("+ b [b] + b [a]") (= (actual box2 room3) 'yes')) ep.true)
        (= (@ep ("+ b [a]") (= (agent_loc a) 3)) ep.true)
        (= (@ep ("+ b [b]") (= (agent_loc a) 3)) ep.true)
    ))

    (:ranges
        (agent_loc integer [1,3])
        (actual enumerate ['yes','no'])
        (known enumerate ['yes','no','unknown'])
        (communicated enumerate ['yes','no'])
    )

    (:rules
    )
)
