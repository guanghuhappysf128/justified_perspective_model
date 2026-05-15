(define
    (domain blocks_world_from_epddl)

    (:types
        agent
    )

    (:functions
        (clear_b1)
        (clear_b2)
        (clear_b3)
        (clear_b4)
        (clear_c1)
        (clear_c2)
        (clear_c3)
        (on_b1_b1)
        (on_b1_b2)
        (on_b1_b3)
        (on_b1_b4)
        (on_b1_c1)
        (on_b1_c2)
        (on_b1_c3)
        (on_b2_b1)
        (on_b2_b2)
        (on_b2_b3)
        (on_b2_b4)
        (on_b2_c1)
        (on_b2_c2)
        (on_b2_c3)
        (on_b3_b1)
        (on_b3_b2)
        (on_b3_b3)
        (on_b3_b4)
        (on_b3_c1)
        (on_b3_c2)
        (on_b3_c3)
        (on_b4_b1)
        (on_b4_b2)
        (on_b4_b3)
        (on_b4_b4)
        (on_b4_c1)
        (on_b4_c2)
        (on_b4_c3)
    )

    (:action move_b1_b1_b1
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (on_b1_b1) 't')
        )
    )

    (:action move_b1_b1_b2
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b2) 'f')
            (assign (on_b1_b1) 'f')
            (assign (on_b1_b2) 't')
        )
    )

    (:action move_b1_b1_b3
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b3) 'f')
            (assign (on_b1_b1) 'f')
            (assign (on_b1_b3) 't')
        )
    )

    (:action move_b1_b1_b4
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b4) 'f')
            (assign (on_b1_b1) 'f')
            (assign (on_b1_b4) 't')
        )
    )

    (:action move_b1_b1_c1
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c1) 'f')
            (assign (on_b1_b1) 'f')
            (assign (on_b1_c1) 't')
        )
    )

    (:action move_b1_b1_c2
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b1_b1) 'f')
            (assign (on_b1_c2) 't')
        )
    )

    (:action move_b1_b1_c3
        :parameters ()
        :precondition (and
            (= (on_b1_b1) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b1_b1) 'f')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b1_b2_b1
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b2) 't')
            (assign (on_b1_b1) 't')
            (assign (on_b1_b2) 'f')
        )
    )

    (:action move_b1_b2_b2
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (on_b1_b2) 't')
        )
    )

    (:action move_b1_b2_b3
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b3) 'f')
            (assign (on_b1_b2) 'f')
            (assign (on_b1_b3) 't')
        )
    )

    (:action move_b1_b2_b4
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b4) 'f')
            (assign (on_b1_b2) 'f')
            (assign (on_b1_b4) 't')
        )
    )

    (:action move_b1_b2_c1
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c1) 'f')
            (assign (on_b1_b2) 'f')
            (assign (on_b1_c1) 't')
        )
    )

    (:action move_b1_b2_c2
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c2) 'f')
            (assign (on_b1_b2) 'f')
            (assign (on_b1_c2) 't')
        )
    )

    (:action move_b1_b2_c3
        :parameters ()
        :precondition (and
            (= (on_b1_b2) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b1_b2) 'f')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b1_b3_b1
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b3) 't')
            (assign (on_b1_b1) 't')
            (assign (on_b1_b3) 'f')
        )
    )

    (:action move_b1_b3_b2
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b3) 't')
            (assign (on_b1_b2) 't')
            (assign (on_b1_b3) 'f')
        )
    )

    (:action move_b1_b3_b3
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (on_b1_b3) 't')
        )
    )

    (:action move_b1_b3_b4
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_b4) 'f')
            (assign (on_b1_b3) 'f')
            (assign (on_b1_b4) 't')
        )
    )

    (:action move_b1_b3_c1
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c1) 'f')
            (assign (on_b1_b3) 'f')
            (assign (on_b1_c1) 't')
        )
    )

    (:action move_b1_b3_c2
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c2) 'f')
            (assign (on_b1_b3) 'f')
            (assign (on_b1_c2) 't')
        )
    )

    (:action move_b1_b3_c3
        :parameters ()
        :precondition (and
            (= (on_b1_b3) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c3) 'f')
            (assign (on_b1_b3) 'f')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b1_b4_b1
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b4) 't')
            (assign (on_b1_b1) 't')
            (assign (on_b1_b4) 'f')
        )
    )

    (:action move_b1_b4_b2
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b4) 't')
            (assign (on_b1_b2) 't')
            (assign (on_b1_b4) 'f')
        )
    )

    (:action move_b1_b4_b3
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_b4) 't')
            (assign (on_b1_b3) 't')
            (assign (on_b1_b4) 'f')
        )
    )

    (:action move_b1_b4_b4
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (on_b1_b4) 't')
        )
    )

    (:action move_b1_b4_c1
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c1) 'f')
            (assign (on_b1_b4) 'f')
            (assign (on_b1_c1) 't')
        )
    )

    (:action move_b1_b4_c2
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c2) 'f')
            (assign (on_b1_b4) 'f')
            (assign (on_b1_c2) 't')
        )
    )

    (:action move_b1_b4_c3
        :parameters ()
        :precondition (and
            (= (on_b1_b4) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c3) 'f')
            (assign (on_b1_b4) 'f')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b1_c1_b1
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c1) 't')
            (assign (on_b1_b1) 't')
            (assign (on_b1_c1) 'f')
        )
    )

    (:action move_b1_c1_b2
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c1) 't')
            (assign (on_b1_b2) 't')
            (assign (on_b1_c1) 'f')
        )
    )

    (:action move_b1_c1_b3
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c1) 't')
            (assign (on_b1_b3) 't')
            (assign (on_b1_c1) 'f')
        )
    )

    (:action move_b1_c1_b4
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c1) 't')
            (assign (on_b1_b4) 't')
            (assign (on_b1_c1) 'f')
        )
    )

    (:action move_b1_c1_c1
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (on_b1_c1) 't')
        )
    )

    (:action move_b1_c1_c2
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b1_c1) 'f')
            (assign (on_b1_c2) 't')
        )
    )

    (:action move_b1_c1_c3
        :parameters ()
        :precondition (and
            (= (on_b1_c1) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b1_c1) 'f')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b1_c2_b1
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b1_b1) 't')
            (assign (on_b1_c2) 'f')
        )
    )

    (:action move_b1_c2_b2
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c2) 't')
            (assign (on_b1_b2) 't')
            (assign (on_b1_c2) 'f')
        )
    )

    (:action move_b1_c2_b3
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c2) 't')
            (assign (on_b1_b3) 't')
            (assign (on_b1_c2) 'f')
        )
    )

    (:action move_b1_c2_b4
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c2) 't')
            (assign (on_b1_b4) 't')
            (assign (on_b1_c2) 'f')
        )
    )

    (:action move_b1_c2_c1
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b1_c1) 't')
            (assign (on_b1_c2) 'f')
        )
    )

    (:action move_b1_c2_c2
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (on_b1_c2) 't')
        )
    )

    (:action move_b1_c2_c3
        :parameters ()
        :precondition (and
            (= (on_b1_c2) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b1_c2) 'f')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b1_c3_b1
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b1_b1) 't')
            (assign (on_b1_c3) 'f')
        )
    )

    (:action move_b1_c3_b2
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b1_b2) 't')
            (assign (on_b1_c3) 'f')
        )
    )

    (:action move_b1_c3_b3
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c3) 't')
            (assign (on_b1_b3) 't')
            (assign (on_b1_c3) 'f')
        )
    )

    (:action move_b1_c3_b4
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c3) 't')
            (assign (on_b1_b4) 't')
            (assign (on_b1_c3) 'f')
        )
    )

    (:action move_b1_c3_c1
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b1_c1) 't')
            (assign (on_b1_c3) 'f')
        )
    )

    (:action move_b1_c3_c2
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b1_c2) 't')
            (assign (on_b1_c3) 'f')
        )
    )

    (:action move_b1_c3_c3
        :parameters ()
        :precondition (and
            (= (on_b1_c3) 't')
            (= (clear_b1) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c3) 't')
            (assign (on_b1_c3) 't')
        )
    )

    (:action move_b2_b1_b1
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (on_b2_b1) 't')
        )
    )

    (:action move_b2_b1_b2
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b2) 'f')
            (assign (on_b2_b1) 'f')
            (assign (on_b2_b2) 't')
        )
    )

    (:action move_b2_b1_b3
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b3) 'f')
            (assign (on_b2_b1) 'f')
            (assign (on_b2_b3) 't')
        )
    )

    (:action move_b2_b1_b4
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b4) 'f')
            (assign (on_b2_b1) 'f')
            (assign (on_b2_b4) 't')
        )
    )

    (:action move_b2_b1_c1
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c1) 'f')
            (assign (on_b2_b1) 'f')
            (assign (on_b2_c1) 't')
        )
    )

    (:action move_b2_b1_c2
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b2_b1) 'f')
            (assign (on_b2_c2) 't')
        )
    )

    (:action move_b2_b1_c3
        :parameters ()
        :precondition (and
            (= (on_b2_b1) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b2_b1) 'f')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b2_b2_b1
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b2) 't')
            (assign (on_b2_b1) 't')
            (assign (on_b2_b2) 'f')
        )
    )

    (:action move_b2_b2_b2
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (on_b2_b2) 't')
        )
    )

    (:action move_b2_b2_b3
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b3) 'f')
            (assign (on_b2_b2) 'f')
            (assign (on_b2_b3) 't')
        )
    )

    (:action move_b2_b2_b4
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b4) 'f')
            (assign (on_b2_b2) 'f')
            (assign (on_b2_b4) 't')
        )
    )

    (:action move_b2_b2_c1
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c1) 'f')
            (assign (on_b2_b2) 'f')
            (assign (on_b2_c1) 't')
        )
    )

    (:action move_b2_b2_c2
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c2) 'f')
            (assign (on_b2_b2) 'f')
            (assign (on_b2_c2) 't')
        )
    )

    (:action move_b2_b2_c3
        :parameters ()
        :precondition (and
            (= (on_b2_b2) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b2_b2) 'f')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b2_b3_b1
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b3) 't')
            (assign (on_b2_b1) 't')
            (assign (on_b2_b3) 'f')
        )
    )

    (:action move_b2_b3_b2
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b3) 't')
            (assign (on_b2_b2) 't')
            (assign (on_b2_b3) 'f')
        )
    )

    (:action move_b2_b3_b3
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (on_b2_b3) 't')
        )
    )

    (:action move_b2_b3_b4
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_b4) 'f')
            (assign (on_b2_b3) 'f')
            (assign (on_b2_b4) 't')
        )
    )

    (:action move_b2_b3_c1
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c1) 'f')
            (assign (on_b2_b3) 'f')
            (assign (on_b2_c1) 't')
        )
    )

    (:action move_b2_b3_c2
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c2) 'f')
            (assign (on_b2_b3) 'f')
            (assign (on_b2_c2) 't')
        )
    )

    (:action move_b2_b3_c3
        :parameters ()
        :precondition (and
            (= (on_b2_b3) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c3) 'f')
            (assign (on_b2_b3) 'f')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b2_b4_b1
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b4) 't')
            (assign (on_b2_b1) 't')
            (assign (on_b2_b4) 'f')
        )
    )

    (:action move_b2_b4_b2
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b4) 't')
            (assign (on_b2_b2) 't')
            (assign (on_b2_b4) 'f')
        )
    )

    (:action move_b2_b4_b3
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_b4) 't')
            (assign (on_b2_b3) 't')
            (assign (on_b2_b4) 'f')
        )
    )

    (:action move_b2_b4_b4
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (on_b2_b4) 't')
        )
    )

    (:action move_b2_b4_c1
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c1) 'f')
            (assign (on_b2_b4) 'f')
            (assign (on_b2_c1) 't')
        )
    )

    (:action move_b2_b4_c2
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c2) 'f')
            (assign (on_b2_b4) 'f')
            (assign (on_b2_c2) 't')
        )
    )

    (:action move_b2_b4_c3
        :parameters ()
        :precondition (and
            (= (on_b2_b4) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c3) 'f')
            (assign (on_b2_b4) 'f')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b2_c1_b1
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c1) 't')
            (assign (on_b2_b1) 't')
            (assign (on_b2_c1) 'f')
        )
    )

    (:action move_b2_c1_b2
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c1) 't')
            (assign (on_b2_b2) 't')
            (assign (on_b2_c1) 'f')
        )
    )

    (:action move_b2_c1_b3
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c1) 't')
            (assign (on_b2_b3) 't')
            (assign (on_b2_c1) 'f')
        )
    )

    (:action move_b2_c1_b4
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c1) 't')
            (assign (on_b2_b4) 't')
            (assign (on_b2_c1) 'f')
        )
    )

    (:action move_b2_c1_c1
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (on_b2_c1) 't')
        )
    )

    (:action move_b2_c1_c2
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b2_c1) 'f')
            (assign (on_b2_c2) 't')
        )
    )

    (:action move_b2_c1_c3
        :parameters ()
        :precondition (and
            (= (on_b2_c1) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b2_c1) 'f')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b2_c2_b1
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b2_b1) 't')
            (assign (on_b2_c2) 'f')
        )
    )

    (:action move_b2_c2_b2
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c2) 't')
            (assign (on_b2_b2) 't')
            (assign (on_b2_c2) 'f')
        )
    )

    (:action move_b2_c2_b3
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c2) 't')
            (assign (on_b2_b3) 't')
            (assign (on_b2_c2) 'f')
        )
    )

    (:action move_b2_c2_b4
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c2) 't')
            (assign (on_b2_b4) 't')
            (assign (on_b2_c2) 'f')
        )
    )

    (:action move_b2_c2_c1
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b2_c1) 't')
            (assign (on_b2_c2) 'f')
        )
    )

    (:action move_b2_c2_c2
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (on_b2_c2) 't')
        )
    )

    (:action move_b2_c2_c3
        :parameters ()
        :precondition (and
            (= (on_b2_c2) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b2_c2) 'f')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b2_c3_b1
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b2_b1) 't')
            (assign (on_b2_c3) 'f')
        )
    )

    (:action move_b2_c3_b2
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b2_b2) 't')
            (assign (on_b2_c3) 'f')
        )
    )

    (:action move_b2_c3_b3
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c3) 't')
            (assign (on_b2_b3) 't')
            (assign (on_b2_c3) 'f')
        )
    )

    (:action move_b2_c3_b4
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c3) 't')
            (assign (on_b2_b4) 't')
            (assign (on_b2_c3) 'f')
        )
    )

    (:action move_b2_c3_c1
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b2_c1) 't')
            (assign (on_b2_c3) 'f')
        )
    )

    (:action move_b2_c3_c2
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b2_c2) 't')
            (assign (on_b2_c3) 'f')
        )
    )

    (:action move_b2_c3_c3
        :parameters ()
        :precondition (and
            (= (on_b2_c3) 't')
            (= (clear_b2) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c3) 't')
            (assign (on_b2_c3) 't')
        )
    )

    (:action move_b3_b1_b1
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (on_b3_b1) 't')
        )
    )

    (:action move_b3_b1_b2
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b2) 'f')
            (assign (on_b3_b1) 'f')
            (assign (on_b3_b2) 't')
        )
    )

    (:action move_b3_b1_b3
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b3) 'f')
            (assign (on_b3_b1) 'f')
            (assign (on_b3_b3) 't')
        )
    )

    (:action move_b3_b1_b4
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b4) 'f')
            (assign (on_b3_b1) 'f')
            (assign (on_b3_b4) 't')
        )
    )

    (:action move_b3_b1_c1
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c1) 'f')
            (assign (on_b3_b1) 'f')
            (assign (on_b3_c1) 't')
        )
    )

    (:action move_b3_b1_c2
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b3_b1) 'f')
            (assign (on_b3_c2) 't')
        )
    )

    (:action move_b3_b1_c3
        :parameters ()
        :precondition (and
            (= (on_b3_b1) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b3_b1) 'f')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b3_b2_b1
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b2) 't')
            (assign (on_b3_b1) 't')
            (assign (on_b3_b2) 'f')
        )
    )

    (:action move_b3_b2_b2
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (on_b3_b2) 't')
        )
    )

    (:action move_b3_b2_b3
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b3) 'f')
            (assign (on_b3_b2) 'f')
            (assign (on_b3_b3) 't')
        )
    )

    (:action move_b3_b2_b4
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b4) 'f')
            (assign (on_b3_b2) 'f')
            (assign (on_b3_b4) 't')
        )
    )

    (:action move_b3_b2_c1
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c1) 'f')
            (assign (on_b3_b2) 'f')
            (assign (on_b3_c1) 't')
        )
    )

    (:action move_b3_b2_c2
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c2) 'f')
            (assign (on_b3_b2) 'f')
            (assign (on_b3_c2) 't')
        )
    )

    (:action move_b3_b2_c3
        :parameters ()
        :precondition (and
            (= (on_b3_b2) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b3_b2) 'f')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b3_b3_b1
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b3) 't')
            (assign (on_b3_b1) 't')
            (assign (on_b3_b3) 'f')
        )
    )

    (:action move_b3_b3_b2
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b3) 't')
            (assign (on_b3_b2) 't')
            (assign (on_b3_b3) 'f')
        )
    )

    (:action move_b3_b3_b3
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (on_b3_b3) 't')
        )
    )

    (:action move_b3_b3_b4
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_b4) 'f')
            (assign (on_b3_b3) 'f')
            (assign (on_b3_b4) 't')
        )
    )

    (:action move_b3_b3_c1
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c1) 'f')
            (assign (on_b3_b3) 'f')
            (assign (on_b3_c1) 't')
        )
    )

    (:action move_b3_b3_c2
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c2) 'f')
            (assign (on_b3_b3) 'f')
            (assign (on_b3_c2) 't')
        )
    )

    (:action move_b3_b3_c3
        :parameters ()
        :precondition (and
            (= (on_b3_b3) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c3) 'f')
            (assign (on_b3_b3) 'f')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b3_b4_b1
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b4) 't')
            (assign (on_b3_b1) 't')
            (assign (on_b3_b4) 'f')
        )
    )

    (:action move_b3_b4_b2
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b4) 't')
            (assign (on_b3_b2) 't')
            (assign (on_b3_b4) 'f')
        )
    )

    (:action move_b3_b4_b3
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_b4) 't')
            (assign (on_b3_b3) 't')
            (assign (on_b3_b4) 'f')
        )
    )

    (:action move_b3_b4_b4
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (on_b3_b4) 't')
        )
    )

    (:action move_b3_b4_c1
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c1) 'f')
            (assign (on_b3_b4) 'f')
            (assign (on_b3_c1) 't')
        )
    )

    (:action move_b3_b4_c2
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c2) 'f')
            (assign (on_b3_b4) 'f')
            (assign (on_b3_c2) 't')
        )
    )

    (:action move_b3_b4_c3
        :parameters ()
        :precondition (and
            (= (on_b3_b4) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c3) 'f')
            (assign (on_b3_b4) 'f')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b3_c1_b1
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c1) 't')
            (assign (on_b3_b1) 't')
            (assign (on_b3_c1) 'f')
        )
    )

    (:action move_b3_c1_b2
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c1) 't')
            (assign (on_b3_b2) 't')
            (assign (on_b3_c1) 'f')
        )
    )

    (:action move_b3_c1_b3
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c1) 't')
            (assign (on_b3_b3) 't')
            (assign (on_b3_c1) 'f')
        )
    )

    (:action move_b3_c1_b4
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c1) 't')
            (assign (on_b3_b4) 't')
            (assign (on_b3_c1) 'f')
        )
    )

    (:action move_b3_c1_c1
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (on_b3_c1) 't')
        )
    )

    (:action move_b3_c1_c2
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b3_c1) 'f')
            (assign (on_b3_c2) 't')
        )
    )

    (:action move_b3_c1_c3
        :parameters ()
        :precondition (and
            (= (on_b3_c1) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b3_c1) 'f')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b3_c2_b1
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b3_b1) 't')
            (assign (on_b3_c2) 'f')
        )
    )

    (:action move_b3_c2_b2
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c2) 't')
            (assign (on_b3_b2) 't')
            (assign (on_b3_c2) 'f')
        )
    )

    (:action move_b3_c2_b3
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c2) 't')
            (assign (on_b3_b3) 't')
            (assign (on_b3_c2) 'f')
        )
    )

    (:action move_b3_c2_b4
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c2) 't')
            (assign (on_b3_b4) 't')
            (assign (on_b3_c2) 'f')
        )
    )

    (:action move_b3_c2_c1
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b3_c1) 't')
            (assign (on_b3_c2) 'f')
        )
    )

    (:action move_b3_c2_c2
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (on_b3_c2) 't')
        )
    )

    (:action move_b3_c2_c3
        :parameters ()
        :precondition (and
            (= (on_b3_c2) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b3_c2) 'f')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b3_c3_b1
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b3_b1) 't')
            (assign (on_b3_c3) 'f')
        )
    )

    (:action move_b3_c3_b2
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b3_b2) 't')
            (assign (on_b3_c3) 'f')
        )
    )

    (:action move_b3_c3_b3
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c3) 't')
            (assign (on_b3_b3) 't')
            (assign (on_b3_c3) 'f')
        )
    )

    (:action move_b3_c3_b4
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c3) 't')
            (assign (on_b3_b4) 't')
            (assign (on_b3_c3) 'f')
        )
    )

    (:action move_b3_c3_c1
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b3_c1) 't')
            (assign (on_b3_c3) 'f')
        )
    )

    (:action move_b3_c3_c2
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b3_c2) 't')
            (assign (on_b3_c3) 'f')
        )
    )

    (:action move_b3_c3_c3
        :parameters ()
        :precondition (and
            (= (on_b3_c3) 't')
            (= (clear_b3) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c3) 't')
            (assign (on_b3_c3) 't')
        )
    )

    (:action move_b4_b1_b1
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (on_b4_b1) 't')
        )
    )

    (:action move_b4_b1_b2
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b2) 'f')
            (assign (on_b4_b1) 'f')
            (assign (on_b4_b2) 't')
        )
    )

    (:action move_b4_b1_b3
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b3) 'f')
            (assign (on_b4_b1) 'f')
            (assign (on_b4_b3) 't')
        )
    )

    (:action move_b4_b1_b4
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_b4) 'f')
            (assign (on_b4_b1) 'f')
            (assign (on_b4_b4) 't')
        )
    )

    (:action move_b4_b1_c1
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c1) 'f')
            (assign (on_b4_b1) 'f')
            (assign (on_b4_c1) 't')
        )
    )

    (:action move_b4_b1_c2
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b4_b1) 'f')
            (assign (on_b4_c2) 't')
        )
    )

    (:action move_b4_b1_c3
        :parameters ()
        :precondition (and
            (= (on_b4_b1) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b4_b1) 'f')
            (assign (on_b4_c3) 't')
        )
    )

    (:action move_b4_b2_b1
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b2) 't')
            (assign (on_b4_b1) 't')
            (assign (on_b4_b2) 'f')
        )
    )

    (:action move_b4_b2_b2
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (on_b4_b2) 't')
        )
    )

    (:action move_b4_b2_b3
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b3) 'f')
            (assign (on_b4_b2) 'f')
            (assign (on_b4_b3) 't')
        )
    )

    (:action move_b4_b2_b4
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_b4) 'f')
            (assign (on_b4_b2) 'f')
            (assign (on_b4_b4) 't')
        )
    )

    (:action move_b4_b2_c1
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c1) 'f')
            (assign (on_b4_b2) 'f')
            (assign (on_b4_c1) 't')
        )
    )

    (:action move_b4_b2_c2
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c2) 'f')
            (assign (on_b4_b2) 'f')
            (assign (on_b4_c2) 't')
        )
    )

    (:action move_b4_b2_c3
        :parameters ()
        :precondition (and
            (= (on_b4_b2) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b4_b2) 'f')
            (assign (on_b4_c3) 't')
        )
    )

    (:action move_b4_b3_b1
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b3) 't')
            (assign (on_b4_b1) 't')
            (assign (on_b4_b3) 'f')
        )
    )

    (:action move_b4_b3_b2
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b3) 't')
            (assign (on_b4_b2) 't')
            (assign (on_b4_b3) 'f')
        )
    )

    (:action move_b4_b3_b3
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (on_b4_b3) 't')
        )
    )

    (:action move_b4_b3_b4
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_b4) 'f')
            (assign (on_b4_b3) 'f')
            (assign (on_b4_b4) 't')
        )
    )

    (:action move_b4_b3_c1
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c1) 'f')
            (assign (on_b4_b3) 'f')
            (assign (on_b4_c1) 't')
        )
    )

    (:action move_b4_b3_c2
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c2) 'f')
            (assign (on_b4_b3) 'f')
            (assign (on_b4_c2) 't')
        )
    )

    (:action move_b4_b3_c3
        :parameters ()
        :precondition (and
            (= (on_b4_b3) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b3) 't')
            (assign (clear_c3) 'f')
            (assign (on_b4_b3) 'f')
            (assign (on_b4_c3) 't')
        )
    )

    (:action move_b4_b4_b1
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_b4) 't')
            (assign (on_b4_b1) 't')
            (assign (on_b4_b4) 'f')
        )
    )

    (:action move_b4_b4_b2
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_b4) 't')
            (assign (on_b4_b2) 't')
            (assign (on_b4_b4) 'f')
        )
    )

    (:action move_b4_b4_b3
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_b4) 't')
            (assign (on_b4_b3) 't')
            (assign (on_b4_b4) 'f')
        )
    )

    (:action move_b4_b4_b4
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (on_b4_b4) 't')
        )
    )

    (:action move_b4_b4_c1
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c1) 'f')
            (assign (on_b4_b4) 'f')
            (assign (on_b4_c1) 't')
        )
    )

    (:action move_b4_b4_c2
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c2) 'f')
            (assign (on_b4_b4) 'f')
            (assign (on_b4_c2) 't')
        )
    )

    (:action move_b4_b4_c3
        :parameters ()
        :precondition (and
            (= (on_b4_b4) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_b4) 't')
            (assign (clear_c3) 'f')
            (assign (on_b4_b4) 'f')
            (assign (on_b4_c3) 't')
        )
    )

    (:action move_b4_c1_b1
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c1) 't')
            (assign (on_b4_b1) 't')
            (assign (on_b4_c1) 'f')
        )
    )

    (:action move_b4_c1_b2
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c1) 't')
            (assign (on_b4_b2) 't')
            (assign (on_b4_c1) 'f')
        )
    )

    (:action move_b4_c1_b3
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c1) 't')
            (assign (on_b4_b3) 't')
            (assign (on_b4_c1) 'f')
        )
    )

    (:action move_b4_c1_b4
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c1) 't')
            (assign (on_b4_b4) 't')
            (assign (on_b4_c1) 'f')
        )
    )

    (:action move_b4_c1_c1
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (on_b4_c1) 't')
        )
    )

    (:action move_b4_c1_c2
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c2) 'f')
            (assign (on_b4_c1) 'f')
            (assign (on_b4_c2) 't')
        )
    )

    (:action move_b4_c1_c3
        :parameters ()
        :precondition (and
            (= (on_b4_c1) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c1) 't')
            (assign (clear_c3) 'f')
            (assign (on_b4_c1) 'f')
            (assign (on_b4_c3) 't')
        )
    )

    (:action move_b4_c2_b1
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b4_b1) 't')
            (assign (on_b4_c2) 'f')
        )
    )

    (:action move_b4_c2_b2
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c2) 't')
            (assign (on_b4_b2) 't')
            (assign (on_b4_c2) 'f')
        )
    )

    (:action move_b4_c2_b3
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c2) 't')
            (assign (on_b4_b3) 't')
            (assign (on_b4_c2) 'f')
        )
    )

    (:action move_b4_c2_b4
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c2) 't')
            (assign (on_b4_b4) 't')
            (assign (on_b4_c2) 'f')
        )
    )

    (:action move_b4_c2_c1
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c2) 't')
            (assign (on_b4_c1) 't')
            (assign (on_b4_c2) 'f')
        )
    )

    (:action move_b4_c2_c2
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (on_b4_c2) 't')
        )
    )

    (:action move_b4_c2_c3
        :parameters ()
        :precondition (and
            (= (on_b4_c2) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c2) 't')
            (assign (clear_c3) 'f')
            (assign (on_b4_c2) 'f')
            (assign (on_b4_c3) 't')
        )
    )

    (:action move_b4_c3_b1
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_b1) 't')
        )
        :effect (and
            (assign (clear_b1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b4_b1) 't')
            (assign (on_b4_c3) 'f')
        )
    )

    (:action move_b4_c3_b2
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_b2) 't')
        )
        :effect (and
            (assign (clear_b2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b4_b2) 't')
            (assign (on_b4_c3) 'f')
        )
    )

    (:action move_b4_c3_b3
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_b3) 't')
        )
        :effect (and
            (assign (clear_b3) 'f')
            (assign (clear_c3) 't')
            (assign (on_b4_b3) 't')
            (assign (on_b4_c3) 'f')
        )
    )

    (:action move_b4_c3_b4
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_b4) 't')
        )
        :effect (and
            (assign (clear_b4) 'f')
            (assign (clear_c3) 't')
            (assign (on_b4_b4) 't')
            (assign (on_b4_c3) 'f')
        )
    )

    (:action move_b4_c3_c1
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_c1) 't')
        )
        :effect (and
            (assign (clear_c1) 'f')
            (assign (clear_c3) 't')
            (assign (on_b4_c1) 't')
            (assign (on_b4_c3) 'f')
        )
    )

    (:action move_b4_c3_c2
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_c2) 't')
        )
        :effect (and
            (assign (clear_c2) 'f')
            (assign (clear_c3) 't')
            (assign (on_b4_c2) 't')
            (assign (on_b4_c3) 'f')
        )
    )

    (:action move_b4_c3_c3
        :parameters ()
        :precondition (and
            (= (on_b4_c3) 't')
            (= (clear_b4) 't')
            (= (clear_c3) 't')
        )
        :effect (and
            (assign (clear_c3) 't')
            (assign (on_b4_c3) 't')
        )
    )

)
