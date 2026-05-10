(define
    (problem gos_1_from_epddl)
    (:domain gossip_from_epddl)

    (:agents
        a b c d e - agent
    )

    (:objects
    )

    (:init
        (assign (called a) '0')
        (assign (called b) '0')
        (assign (called c) '0')
        (assign (called d) '0')
        (assign (called e) '0')
        (assign (secret a) 1)
        (assign (secret b) 2)
        (assign (secret c) 3)
        (assign (secret d) 4)
        (assign (secret e) 5)
    )

    (:goal (and
            (= (@ep ("+ b [a]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [b]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [c]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [d]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [e]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [a]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [b]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [c]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [d]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [e]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [a]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [b]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [c]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [d]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [e]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [a]") (= (secret d) 4)) ep.true)
            (= (@ep ("+ b [b]") (= (secret d) 4)) ep.true)
            (= (@ep ("+ b [c]") (= (secret d) 4)) ep.true)
            (= (@ep ("+ b [d]") (= (secret d) 4)) ep.true)
            (= (@ep ("+ b [e]") (= (secret d) 4)) ep.true)
            (= (@ep ("+ b [a]") (= (secret e) 5)) ep.true)
            (= (@ep ("+ b [b]") (= (secret e) 5)) ep.true)
            (= (@ep ("+ b [c]") (= (secret e) 5)) ep.true)
            (= (@ep ("+ b [d]") (= (secret e) 5)) ep.true)
            (= (@ep ("+ b [e]") (= (secret e) 5)) ep.true)
    ))

    (:ranges
        (called string None)
        (secret integer [0,5])
    )

    (:rules
    )
)
