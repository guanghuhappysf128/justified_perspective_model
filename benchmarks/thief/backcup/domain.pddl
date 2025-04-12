(define 
    (domain thief)

    (:action make-noise
        :parameters (?i - agent)
        :precondition (and 
        )
        :effect (and 
           (= (noise ?i) 't')
        )
    )

    (:action peeking
        :parameters (?i - agent)
        :precondition (and 
        )
        :effect (and 
           (= (peeking ?i) 't')
        )
    )   

    ; trick is the goal condition for the thief
    (:action trick
        :parameters (?t - agent, ?g - agent)
        :precondition (and 
            (:ontic (= (position ?t) 'r1'))
            ;thief knows guard's position
            (:epistemic + b [?t] (= (position ?g) 'r2'))
            ;thief knwos guard does not know theif's position
            (:epistemic + b [?t] $ b [?g] (= (position ?t) 'r1'))
        )
        :effect (and 
           (= (goal ?t) 't')
        )
    )
    ; ambush is the goal condition for the guard
    (:action ambush
        :parameters (?g - agent, ?t - agent)
        :precondition (and 
            (:ontic (= (position ?g) 'r2'))
            ;guard knows thief's position
            (:epistemic + b [?g] (= (position ?t) 'r1'))
            ;guard knows thief does not know guard's position
            (:epistemic + b [?g] $ b [?t] (= (position ?g) 'r2')
        )
        :effect (and 
           (= (goal ?g) 't')
        )
    )


)

    