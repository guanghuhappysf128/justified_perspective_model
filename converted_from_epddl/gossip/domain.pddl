(define
    (domain gossip_from_epddl)

    (:types
        agent
    )

    (:functions
        (delivered ?receiver - agent ?owner - agent)
    )

    (:action tell_a_b
        :parameters ()
        :precondition (and
            (= (delivered b a) 0)
        )
        :effect (and
            (assign (delivered b a) 1)
        )
    )

    (:action tell_a_c
        :parameters ()
        :precondition (and
            (= (delivered c a) 0)
        )
        :effect (and
            (assign (delivered c a) 1)
        )
    )

    (:action tell_a_d
        :parameters ()
        :precondition (and
            (= (delivered d a) 0)
        )
        :effect (and
            (assign (delivered d a) 1)
        )
    )

    (:action tell_a_e
        :parameters ()
        :precondition (and
            (= (delivered e a) 0)
        )
        :effect (and
            (assign (delivered e a) 1)
        )
    )

    (:action tell_b_a
        :parameters ()
        :precondition (and
            (= (delivered a b) 0)
        )
        :effect (and
            (assign (delivered a b) 1)
        )
    )

    (:action tell_b_c
        :parameters ()
        :precondition (and
            (= (delivered c b) 0)
        )
        :effect (and
            (assign (delivered c b) 1)
        )
    )

    (:action tell_b_d
        :parameters ()
        :precondition (and
            (= (delivered d b) 0)
        )
        :effect (and
            (assign (delivered d b) 1)
        )
    )

    (:action tell_b_e
        :parameters ()
        :precondition (and
            (= (delivered e b) 0)
        )
        :effect (and
            (assign (delivered e b) 1)
        )
    )

    (:action tell_c_a
        :parameters ()
        :precondition (and
            (= (delivered a c) 0)
        )
        :effect (and
            (assign (delivered a c) 1)
        )
    )

    (:action tell_c_b
        :parameters ()
        :precondition (and
            (= (delivered b c) 0)
        )
        :effect (and
            (assign (delivered b c) 1)
        )
    )

    (:action tell_c_d
        :parameters ()
        :precondition (and
            (= (delivered d c) 0)
        )
        :effect (and
            (assign (delivered d c) 1)
        )
    )

    (:action tell_c_e
        :parameters ()
        :precondition (and
            (= (delivered e c) 0)
        )
        :effect (and
            (assign (delivered e c) 1)
        )
    )

    (:action tell_d_a
        :parameters ()
        :precondition (and
            (= (delivered a d) 0)
        )
        :effect (and
            (assign (delivered a d) 1)
        )
    )

    (:action tell_d_b
        :parameters ()
        :precondition (and
            (= (delivered b d) 0)
        )
        :effect (and
            (assign (delivered b d) 1)
        )
    )

    (:action tell_d_c
        :parameters ()
        :precondition (and
            (= (delivered c d) 0)
        )
        :effect (and
            (assign (delivered c d) 1)
        )
    )

    (:action tell_d_e
        :parameters ()
        :precondition (and
            (= (delivered e d) 0)
        )
        :effect (and
            (assign (delivered e d) 1)
        )
    )

    (:action tell_e_a
        :parameters ()
        :precondition (and
            (= (delivered a e) 0)
        )
        :effect (and
            (assign (delivered a e) 1)
        )
    )

    (:action tell_e_b
        :parameters ()
        :precondition (and
            (= (delivered b e) 0)
        )
        :effect (and
            (assign (delivered b e) 1)
        )
    )

    (:action tell_e_c
        :parameters ()
        :precondition (and
            (= (delivered c e) 0)
        )
        :effect (and
            (assign (delivered c e) 1)
        )
    )

    (:action tell_e_d
        :parameters ()
        :precondition (and
            (= (delivered d e) 0)
        )
        :effect (and
            (assign (delivered d e) 1)
        )
    )

)
