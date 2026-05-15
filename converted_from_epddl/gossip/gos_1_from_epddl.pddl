(define
    (problem gos_1_from_epddl)
    (:domain gossip_from_epddl)

    (:agents
        a b c d e - agent
    )

    (:objects
    )

    (:init
        (assign (delivered a a) 1)
        (assign (delivered a b) 0)
        (assign (delivered a c) 0)
        (assign (delivered a d) 0)
        (assign (delivered a e) 0)
        (assign (delivered b a) 0)
        (assign (delivered b b) 1)
        (assign (delivered b c) 0)
        (assign (delivered b d) 0)
        (assign (delivered b e) 0)
        (assign (delivered c a) 0)
        (assign (delivered c b) 0)
        (assign (delivered c c) 1)
        (assign (delivered c d) 0)
        (assign (delivered c e) 0)
        (assign (delivered d a) 0)
        (assign (delivered d b) 0)
        (assign (delivered d c) 0)
        (assign (delivered d d) 1)
        (assign (delivered d e) 0)
        (assign (delivered e a) 0)
        (assign (delivered e b) 0)
        (assign (delivered e c) 0)
        (assign (delivered e d) 0)
        (assign (delivered e e) 1)
    )

    (:goal (and
            (= (delivered a a) 1)
            (= (delivered b a) 1)
            (= (delivered c a) 1)
            (= (delivered d a) 1)
            (= (delivered e a) 1)
            (= (delivered a b) 1)
            (= (delivered b b) 1)
            (= (delivered c b) 1)
            (= (delivered d b) 1)
            (= (delivered e b) 1)
            (= (delivered a c) 1)
            (= (delivered b c) 1)
            (= (delivered c c) 1)
            (= (delivered d c) 1)
            (= (delivered e c) 1)
            (= (delivered a d) 1)
            (= (delivered b d) 1)
            (= (delivered c d) 1)
            (= (delivered d d) 1)
            (= (delivered e d) 1)
            (= (delivered a e) 1)
            (= (delivered b e) 1)
            (= (delivered c e) 1)
            (= (delivered d e) 1)
            (= (delivered e e) 1)
    ))

    (:ranges
        (delivered integer [0,1])
    )

    (:rules
    )
)
