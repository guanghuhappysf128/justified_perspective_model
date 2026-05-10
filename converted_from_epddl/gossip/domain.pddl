(define
    (domain gossip_from_epddl)

    (:types
        agent
    )

    (:functions
        (called ?i - agent)
        (secret ?i - agent)
    )

    (:action calling_a_b
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-b')
            (increase (called b) '-a')
            (increase (called c) '-0')
            (increase (called d) '-0')
            (increase (called e) '-0')
        )
    )

    (:action calling_a_c
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-c')
            (increase (called b) '-0')
            (increase (called c) '-a')
            (increase (called d) '-0')
            (increase (called e) '-0')
        )
    )

    (:action calling_a_d
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-d')
            (increase (called b) '-0')
            (increase (called c) '-0')
            (increase (called d) '-a')
            (increase (called e) '-0')
        )
    )

    (:action calling_a_e
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-e')
            (increase (called b) '-0')
            (increase (called c) '-0')
            (increase (called d) '-0')
            (increase (called e) '-a')
        )
    )

    (:action calling_b_c
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-0')
            (increase (called b) '-c')
            (increase (called c) '-b')
            (increase (called d) '-0')
            (increase (called e) '-0')
        )
    )

    (:action calling_b_d
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-0')
            (increase (called b) '-d')
            (increase (called c) '-0')
            (increase (called d) '-b')
            (increase (called e) '-0')
        )
    )

    (:action calling_b_e
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-0')
            (increase (called b) '-e')
            (increase (called c) '-0')
            (increase (called d) '-0')
            (increase (called e) '-b')
        )
    )

    (:action calling_c_d
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-0')
            (increase (called b) '-0')
            (increase (called c) '-d')
            (increase (called d) '-c')
            (increase (called e) '-0')
        )
    )

    (:action calling_c_e
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-0')
            (increase (called b) '-0')
            (increase (called c) '-e')
            (increase (called d) '-0')
            (increase (called e) '-c')
        )
    )

    (:action calling_d_e
        :parameters ()
        :precondition (and
        )
        :effect (and
            (increase (called a) '-0')
            (increase (called b) '-0')
            (increase (called c) '-0')
            (increase (called d) '-e')
            (increase (called e) '-d')
        )
    )

)
