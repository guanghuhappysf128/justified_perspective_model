;Header and description
(define 
    (domain thief)

    (:types
        agent
        guard thief - agent
    )

    (:functions
        (posture ?a - agent)
        (existing ?a - agent)
        (goal_achieved ?a - agent)
    )

    (:action peeking
        :parameters (?i - agent)
        :precondition ( 
            (= (posture ?i) 'hiding')
        )
        :effect ( 
           (assign (posture ?i) 'peeking')
        )
    )  

    ; trick is the goal condition for the thief
    (:action trick
        :parameters (?t - thief, ?g - guard)
        :precondition ( 
            ;thief knows guard's position
            (= (@ep ("+ b [?t]") (= (existing ?g) 1)) ep.true)
            ;thief knwos guard does not know thief's position
            (= (@ep ("+ b [?t] $ b [?g]") (= (existing ?t) 1)) ep.true)
        )
        :effect (and 
            (assign (goal_achieved ?t) 1)
        )
    )


    ; rush is the goal condition for the thief
    (:action rush
        :parameters (?t - thief, ?g - guard)
        :precondition ( 
            ;thief knows guard's position
            (= (@ep ("+ b [?t]") (= (existing ?g) 1)) ep.false)
            ;thief knwos guard does not know thief's position
            ; (= (@ep ("+ b [?t] $ b [?g]") (= (existing ?t) 1)) ep.true)
        )
        :effect (and 
            (assign (goal_achieved ?t) 1)
        )
    )
    
    ; ambush is the goal condition for the guard
    (:action ambush
        :parameters (?g - guard, ?t - thief)
        :precondition (and 
            ;guard knows thief's position
            (= (@ep ("+ b [?g]") (= (existing ?t) 1)) ep.true)
            ;guard knows thief does not know guard's position
            (= (@ep ("+ b [?g] $ b [?t]") (= (existing ?g) 1)) ep.true)
        )
        :effect (and 
            (assign (goal_achieved ?g) 1)
        )
    )


)