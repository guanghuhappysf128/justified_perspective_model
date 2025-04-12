;Header and description
(define 
    (domain corridor)

    (:types
        secret agent

    )

    (:functions
        (agent_loc ?a - agent)
        (movable ?a - agent)
        (secret_loc ?s - secret)
        (sensed ?s - secret)

        (secret_lying_value ?s - secret)
        (secret_truth_value ?s - secret)
        (shared_value ?s - secret)
        (shared_loc ?s - secret)
    )

    ;define actions here
    (:action move_right
        :parameters (?a - agent)
        :precondition (
            (= (movable ?a) 1)
            ; (= (sharing) 0)
        )
        :effect ( 
            (increase (agent_loc ?a) 1)
        )
    )
    
    (:action move_left
        :parameters (?a - agent)
        :precondition (
             (= (movable ?a) 1)
        )
        :effect (
            (decrease (agent_loc ?a) 1)
        )
    )

    (:action sense
        :parameters (?a - agent, ?s - secret)
        :precondition (
            ; (= (sharing) 1)
            (= (movable ?a) 1)
            (= (agent_loc ?a) (secret_loc ?s))
            
        )
        :effect (
            (assign (sensed ?s) 1)
        )
    )
    

    (:action shout_truth
        :parameters (?a - agent, ?s - secret)
        :precondition (
            (= (movable ?a) 1)
            (= (sensed ?s) 1)
        )
        :effect (
            (assign (shared_loc ?s) (agent_loc ?a))
            (assign (shared_value ?s) (secret_truth_value ?s))
        )
    )

    (:action shout_lie
        :parameters (?a - agent, ?s - secret)
        :precondition (
            (= (movable ?a) 1)
            (= (sensed ?s) 1)
        )
        :effect (
            (assign (shared_loc ?s) (agent_loc ?a))
            (assign (shared_value ?s) (secret_lying_value ?s))
        )
    )
)