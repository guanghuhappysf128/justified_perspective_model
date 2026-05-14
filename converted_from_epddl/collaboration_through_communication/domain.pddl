(define
    (domain collaboration_through_communication_from_epddl)

    (:types
        agent
        box
        room
    )

    (:functions
        (agent_loc ?a - agent)
        (actual ?b - box ?r - room)
        (known ?a - agent ?b - box ?r - room)
        (communicated ?s - agent ?l - agent ?b - box ?r - room)
    )

    (:action left_a
        :parameters ()
        :precondition (and
            (> (agent_loc a) 1)
        )
        :effect (and
            (decrease (agent_loc a) 1)
        )
    )

    (:action right_a
        :parameters ()
        :precondition (and
            (< (agent_loc a) 3)
        )
        :effect (and
            (increase (agent_loc a) 1)
        )
    )

    (:action left_b
        :parameters ()
        :precondition (and
            (> (agent_loc b) 1)
        )
        :effect (and
            (decrease (agent_loc b) 1)
        )
    )

    (:action right_b
        :parameters ()
        :precondition (and
            (< (agent_loc b) 3)
        )
        :effect (and
            (increase (agent_loc b) 1)
        )
    )

    (:action sense_a_box1_room1
        :parameters ()
        :precondition (and
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
        )
    )

    (:action sense_a_box1_room2
        :parameters ()
        :precondition (and
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box1 room2) (actual box1 room2))
        )
    )

    (:action sense_a_box1_room3
        :parameters ()
        :precondition (and
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
        )
    )

    (:action sense_a_box2_room1
        :parameters ()
        :precondition (and
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
        )
    )

    (:action sense_a_box2_room2
        :parameters ()
        :precondition (and
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box2 room2) (actual box2 room2))
        )
    )

    (:action sense_a_box2_room3
        :parameters ()
        :precondition (and
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
        )
    )

    (:action sense_b_box1_room1
        :parameters ()
        :precondition (and
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
        )
    )

    (:action sense_b_box1_room2
        :parameters ()
        :precondition (and
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box1 room2) (actual box1 room2))
        )
    )

    (:action sense_b_box1_room3
        :parameters ()
        :precondition (and
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
        )
    )

    (:action sense_b_box2_room1
        :parameters ()
        :precondition (and
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
        )
    )

    (:action sense_b_box2_room2
        :parameters ()
        :precondition (and
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box2 room2) (actual box2 room2))
        )
    )

    (:action sense_b_box2_room3
        :parameters ()
        :precondition (and
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
        )
    )

    (:action tell_a_box1_room1_from_room1
        :parameters ()
        :precondition (and
            (= (known a box1 room1) 'yes')
            (= (actual box1 room1) 'yes')
            (= (agent_loc a) 1)
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room1) 'yes')
            (assign (communicated b a box1 room1) 'yes')
        )
    )

    (:action tell_a_box1_room1_from_room2
        :parameters ()
        :precondition (and
            (= (known a box1 room1) 'yes')
            (= (actual box1 room1) 'yes')
            (= (agent_loc a) 2)
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room1) 'yes')
            (assign (communicated b a box1 room1) 'yes')
        )
    )

    (:action tell_a_box1_room1_from_room3
        :parameters ()
        :precondition (and
            (= (known a box1 room1) 'yes')
            (= (actual box1 room1) 'yes')
            (= (agent_loc a) 3)
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room1) 'yes')
            (assign (communicated b a box1 room1) 'yes')
        )
    )

    (:action tell_a_box1_room2_from_room1
        :parameters ()
        :precondition (and
            (= (known a box1 room2) 'yes')
            (= (actual box1 room2) 'yes')
            (= (agent_loc a) 1)
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room2) 'yes')
            (assign (communicated b a box1 room2) 'yes')
        )
    )

    (:action tell_a_box1_room2_from_room2
        :parameters ()
        :precondition (and
            (= (known a box1 room2) 'yes')
            (= (actual box1 room2) 'yes')
            (= (agent_loc a) 2)
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room2) 'yes')
            (assign (communicated b a box1 room2) 'yes')
        )
    )

    (:action tell_a_box1_room2_from_room3
        :parameters ()
        :precondition (and
            (= (known a box1 room2) 'yes')
            (= (actual box1 room2) 'yes')
            (= (agent_loc a) 3)
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room2) 'yes')
            (assign (communicated b a box1 room2) 'yes')
        )
    )

    (:action tell_a_box1_room3_from_room1
        :parameters ()
        :precondition (and
            (= (known a box1 room3) 'yes')
            (= (actual box1 room3) 'yes')
            (= (agent_loc a) 1)
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room3) 'yes')
            (assign (communicated b a box1 room3) 'yes')
        )
    )

    (:action tell_a_box1_room3_from_room2
        :parameters ()
        :precondition (and
            (= (known a box1 room3) 'yes')
            (= (actual box1 room3) 'yes')
            (= (agent_loc a) 2)
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room3) 'yes')
            (assign (communicated b a box1 room3) 'yes')
        )
    )

    (:action tell_a_box1_room3_from_room3
        :parameters ()
        :precondition (and
            (= (known a box1 room3) 'yes')
            (= (actual box1 room3) 'yes')
            (= (agent_loc a) 3)
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box1 room1) (actual box1 room1))
            (assign (known b box1 room2) (actual box1 room2))
            (assign (known b box1 room3) (actual box1 room3))
            (assign (communicated a b box1 room3) 'yes')
            (assign (communicated b a box1 room3) 'yes')
        )
    )

    (:action tell_a_box2_room1_from_room1
        :parameters ()
        :precondition (and
            (= (known a box2 room1) 'yes')
            (= (actual box2 room1) 'yes')
            (= (agent_loc a) 1)
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room1) 'yes')
            (assign (communicated b a box2 room1) 'yes')
        )
    )

    (:action tell_a_box2_room1_from_room2
        :parameters ()
        :precondition (and
            (= (known a box2 room1) 'yes')
            (= (actual box2 room1) 'yes')
            (= (agent_loc a) 2)
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room1) 'yes')
            (assign (communicated b a box2 room1) 'yes')
        )
    )

    (:action tell_a_box2_room1_from_room3
        :parameters ()
        :precondition (and
            (= (known a box2 room1) 'yes')
            (= (actual box2 room1) 'yes')
            (= (agent_loc a) 3)
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room1) 'yes')
            (assign (communicated b a box2 room1) 'yes')
        )
    )

    (:action tell_a_box2_room2_from_room1
        :parameters ()
        :precondition (and
            (= (known a box2 room2) 'yes')
            (= (actual box2 room2) 'yes')
            (= (agent_loc a) 1)
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room2) 'yes')
            (assign (communicated b a box2 room2) 'yes')
        )
    )

    (:action tell_a_box2_room2_from_room2
        :parameters ()
        :precondition (and
            (= (known a box2 room2) 'yes')
            (= (actual box2 room2) 'yes')
            (= (agent_loc a) 2)
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room2) 'yes')
            (assign (communicated b a box2 room2) 'yes')
        )
    )

    (:action tell_a_box2_room2_from_room3
        :parameters ()
        :precondition (and
            (= (known a box2 room2) 'yes')
            (= (actual box2 room2) 'yes')
            (= (agent_loc a) 3)
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room2) 'yes')
            (assign (communicated b a box2 room2) 'yes')
        )
    )

    (:action tell_a_box2_room3_from_room1
        :parameters ()
        :precondition (and
            (= (known a box2 room3) 'yes')
            (= (actual box2 room3) 'yes')
            (= (agent_loc a) 1)
            (= (agent_loc b) 1)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room3) 'yes')
            (assign (communicated b a box2 room3) 'yes')
        )
    )

    (:action tell_a_box2_room3_from_room2
        :parameters ()
        :precondition (and
            (= (known a box2 room3) 'yes')
            (= (actual box2 room3) 'yes')
            (= (agent_loc a) 2)
            (= (agent_loc b) 2)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room3) 'yes')
            (assign (communicated b a box2 room3) 'yes')
        )
    )

    (:action tell_a_box2_room3_from_room3
        :parameters ()
        :precondition (and
            (= (known a box2 room3) 'yes')
            (= (actual box2 room3) 'yes')
            (= (agent_loc a) 3)
            (= (agent_loc b) 3)
        )
        :effect (and
            (assign (known b box2 room1) (actual box2 room1))
            (assign (known b box2 room2) (actual box2 room2))
            (assign (known b box2 room3) (actual box2 room3))
            (assign (communicated a b box2 room3) 'yes')
            (assign (communicated b a box2 room3) 'yes')
        )
    )

    (:action tell_b_box1_room1_from_room1
        :parameters ()
        :precondition (and
            (= (known b box1 room1) 'yes')
            (= (actual box1 room1) 'yes')
            (= (agent_loc b) 1)
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room1) 'yes')
            (assign (communicated a b box1 room1) 'yes')
        )
    )

    (:action tell_b_box1_room1_from_room2
        :parameters ()
        :precondition (and
            (= (known b box1 room1) 'yes')
            (= (actual box1 room1) 'yes')
            (= (agent_loc b) 2)
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room1) 'yes')
            (assign (communicated a b box1 room1) 'yes')
        )
    )

    (:action tell_b_box1_room1_from_room3
        :parameters ()
        :precondition (and
            (= (known b box1 room1) 'yes')
            (= (actual box1 room1) 'yes')
            (= (agent_loc b) 3)
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room1) 'yes')
            (assign (communicated a b box1 room1) 'yes')
        )
    )

    (:action tell_b_box1_room2_from_room1
        :parameters ()
        :precondition (and
            (= (known b box1 room2) 'yes')
            (= (actual box1 room2) 'yes')
            (= (agent_loc b) 1)
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room2) 'yes')
            (assign (communicated a b box1 room2) 'yes')
        )
    )

    (:action tell_b_box1_room2_from_room2
        :parameters ()
        :precondition (and
            (= (known b box1 room2) 'yes')
            (= (actual box1 room2) 'yes')
            (= (agent_loc b) 2)
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room2) 'yes')
            (assign (communicated a b box1 room2) 'yes')
        )
    )

    (:action tell_b_box1_room2_from_room3
        :parameters ()
        :precondition (and
            (= (known b box1 room2) 'yes')
            (= (actual box1 room2) 'yes')
            (= (agent_loc b) 3)
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room2) 'yes')
            (assign (communicated a b box1 room2) 'yes')
        )
    )

    (:action tell_b_box1_room3_from_room1
        :parameters ()
        :precondition (and
            (= (known b box1 room3) 'yes')
            (= (actual box1 room3) 'yes')
            (= (agent_loc b) 1)
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room3) 'yes')
            (assign (communicated a b box1 room3) 'yes')
        )
    )

    (:action tell_b_box1_room3_from_room2
        :parameters ()
        :precondition (and
            (= (known b box1 room3) 'yes')
            (= (actual box1 room3) 'yes')
            (= (agent_loc b) 2)
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room3) 'yes')
            (assign (communicated a b box1 room3) 'yes')
        )
    )

    (:action tell_b_box1_room3_from_room3
        :parameters ()
        :precondition (and
            (= (known b box1 room3) 'yes')
            (= (actual box1 room3) 'yes')
            (= (agent_loc b) 3)
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box1 room1) (actual box1 room1))
            (assign (known a box1 room2) (actual box1 room2))
            (assign (known a box1 room3) (actual box1 room3))
            (assign (communicated b a box1 room3) 'yes')
            (assign (communicated a b box1 room3) 'yes')
        )
    )

    (:action tell_b_box2_room1_from_room1
        :parameters ()
        :precondition (and
            (= (known b box2 room1) 'yes')
            (= (actual box2 room1) 'yes')
            (= (agent_loc b) 1)
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room1) 'yes')
            (assign (communicated a b box2 room1) 'yes')
        )
    )

    (:action tell_b_box2_room1_from_room2
        :parameters ()
        :precondition (and
            (= (known b box2 room1) 'yes')
            (= (actual box2 room1) 'yes')
            (= (agent_loc b) 2)
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room1) 'yes')
            (assign (communicated a b box2 room1) 'yes')
        )
    )

    (:action tell_b_box2_room1_from_room3
        :parameters ()
        :precondition (and
            (= (known b box2 room1) 'yes')
            (= (actual box2 room1) 'yes')
            (= (agent_loc b) 3)
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room1) 'yes')
            (assign (communicated a b box2 room1) 'yes')
        )
    )

    (:action tell_b_box2_room2_from_room1
        :parameters ()
        :precondition (and
            (= (known b box2 room2) 'yes')
            (= (actual box2 room2) 'yes')
            (= (agent_loc b) 1)
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room2) 'yes')
            (assign (communicated a b box2 room2) 'yes')
        )
    )

    (:action tell_b_box2_room2_from_room2
        :parameters ()
        :precondition (and
            (= (known b box2 room2) 'yes')
            (= (actual box2 room2) 'yes')
            (= (agent_loc b) 2)
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room2) 'yes')
            (assign (communicated a b box2 room2) 'yes')
        )
    )

    (:action tell_b_box2_room2_from_room3
        :parameters ()
        :precondition (and
            (= (known b box2 room2) 'yes')
            (= (actual box2 room2) 'yes')
            (= (agent_loc b) 3)
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room2) 'yes')
            (assign (communicated a b box2 room2) 'yes')
        )
    )

    (:action tell_b_box2_room3_from_room1
        :parameters ()
        :precondition (and
            (= (known b box2 room3) 'yes')
            (= (actual box2 room3) 'yes')
            (= (agent_loc b) 1)
            (= (agent_loc a) 1)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room3) 'yes')
            (assign (communicated a b box2 room3) 'yes')
        )
    )

    (:action tell_b_box2_room3_from_room2
        :parameters ()
        :precondition (and
            (= (known b box2 room3) 'yes')
            (= (actual box2 room3) 'yes')
            (= (agent_loc b) 2)
            (= (agent_loc a) 2)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room3) 'yes')
            (assign (communicated a b box2 room3) 'yes')
        )
    )

    (:action tell_b_box2_room3_from_room3
        :parameters ()
        :precondition (and
            (= (known b box2 room3) 'yes')
            (= (actual box2 room3) 'yes')
            (= (agent_loc b) 3)
            (= (agent_loc a) 3)
        )
        :effect (and
            (assign (known a box2 room1) (actual box2 room1))
            (assign (known a box2 room2) (actual box2 room2))
            (assign (known a box2 room3) (actual box2 room3))
            (assign (communicated b a box2 room3) 'yes')
            (assign (communicated a b box2 room3) 'yes')
        )
    )

)
