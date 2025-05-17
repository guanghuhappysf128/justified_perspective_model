;Header and description

(define 
    ; composulory
    (domain gossip4)

    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        agent
    )

    (:functions ;todo: define numeric functions here
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
            
        )
    )
    (:action calling_b_c
        :parameters ()
        :precondition (and
        )
        :effect (and 
            (increase (called a) '-0')
            (increase (called b) '-c')
            (increase (called c) '-0')
            (increase (called d) '-0')
            
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
            (increase (called d) '-0')
            
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
            (increase (called d) '-0')
            
        )
    ) 
)