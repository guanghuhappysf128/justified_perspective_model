(define 
    (domain muddy_children)

    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        teacher
        children
    )



    (:functions 
        (num_of_question ?t - teacher)
        (muddy ?c - children)
        (shouted)
    )

    (:action say_yes
        :parameters (?i - children)
        :precondition (and 
            (= (shouted) 'f')
            (= (@ep ("+ b [?i]") (= (muddy ?i) 't')) ep.true)
        )
        :effect (and 
            (assign (shouted) 't')
        )
    )


    ;define actions here
    (:action ask
        :parameters (?i - teacher)
        :precondition (
        )
        :effect (
            ; increase sth by 1
            (increase (num_of_question ?i) 1)
        )
    )


    

 
)