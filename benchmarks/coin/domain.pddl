;Header and description

(define 
    (domain coin)

    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        obj agent
    )

    (:functions ;todo: define numeric functions here
        (peeking ?i - agent)
        (coin ?c - obj)
    )

    (:action peek
        :parameters (?i - agent)
        :precondition (and 
            (= (peeking a) 'f')
            (= (peeking b) 'f')
        )
        :effect (and 
            (assign (peeking ?i) 't')
            
        )
    )

    (:action return
        :parameters (?i - agent)
        :precondition (and 
            ; (= (peeking ?i) 't')
            (= (peeking ?i) 't')
        )
        :effect (and 
            (assign (peeking ?i) 'f')
        )
    )

    (:action turn_coin
        :parameters (?c - obj)
        :precondition (and )
        :effect (and 
            (increase (coin ?c) 1)
        )
    )
 
)