(define
    (problem amc_1_from_epddl)
    (:domain muddy_children)

    (:agents
        child1 child2 child3 child4 child5 - children
        t - teacher
    )

    (:objects
    )

    (:init
        (assign (num_of_question t) 0)
        (assign (muddy child1) 't')
        (assign (muddy child2) 't')
        (assign (muddy child3) 't')
        (assign (muddy child4) 'f')
        (assign (muddy child5) 'f')
        (assign (shouted) 'f')
    )

    (:goal (and
        (= (@ep ("+ b [child1]") (= (muddy child1) 't')) ep.true)
    ))

    (:ranges
        (num_of_question integer [0,5])
        (muddy enumerate ['t','f'])
        (shouted enumerate ['t','f'])
    )

    (:rules
    )
)
