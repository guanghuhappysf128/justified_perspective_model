(define 
    (domain bbl)

    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        locatable
        turnable askable - locatable
    )



    (:functions 
        (dir ?a - turnable)
        (x ?a - locatable)
        (y ?a - locatable)
        (v ?a - askable)
    )

    ;define actions here
    (:action turn_clockwise
        :parameters (?i - turnable)
        :precondition (
        )
        :effect (
            ; increase sth by 1
            (increase (dir ?i) 1)
        )
    )

    (:action turn_anti_clockwise
        :parameters (?i - turnable)
        :precondition (
        )
        :effect (
            ; increase sth by 1
            (decrease (dir ?i) 1)
        )
    )
 
)