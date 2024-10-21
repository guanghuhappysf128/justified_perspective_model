;Header and description

(define 
    (domain coin)

    ;remove requirements that are not needed
    ; (:requirements :strips)

z

    ; un-comment following line if constants are needed
    ;(:constants )

    ; (:predicates ;todo: define predicates here
    ; )


    ; (:functions ;todo: define numeric functions here
    ; )

    ;define actions here
    ; (:action peek
    ;     :parameters (?i - agent)
    ;     :precondition (and 
    ;         ;(= (peeking ?i) 'f')
    ;         (= (:ontic (= (peeking ?i) 'f')) 1)
    ;     )
    ;     :effect (and 
    ;         (= (peeking ?i) 't')
            
    ;     )
    ; )

    (:action single_peek
        :parameters (?i - agent)
        :precondition (and 
            (= (:ontic (= (peeking-a) 'f')) 1)
            (= (:ontic (= (peeking-b) 'f')) 1)
        )
        :effect (and 
            (= (peeking ?i) 't')
            
        )
    )

    (:action return
        :parameters (?i - agent)
        :precondition (and 
            ; (= (peeking ?i) 't')
            (= (:ontic (= (peeking ?i) 't')) 1)
        )
        :effect (and 
            (= (peeking ?i) 'f')
        )
    )

    (:action turn_coin
        :parameters (?i - object)
        :precondition (and )
        :effect (and 
            (= (face ?i) (-1)))
        )
    )
 
)