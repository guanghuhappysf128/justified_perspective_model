(define 
        (problem magic01) 
        (:domain magic)

        (:agents
            m - magician
            a - audience
        )

        (:agent_spec
            (= (nesting a) 1)
            (= (nesting m) 3)
        )

        (:objects 
            c - card
        )

        (:init
            (assign (number c) '1')
            (assign (selected c) 0)
            (assign (selecting a) 0)
            (assign (peeking m) 0)
            (assign (peeked m) 0)
            (assign (surprised a) 0)

        )

        ; the @ represent this is an epistemic evaluation
        ; 
        (:goal 
            (and 
                ; (= (surprised a) 1)
                ; (= (peeked m) 1)
                (!= (@jp ("b [a]") (number c)) jp.none)
                (= (surprised a) 0)
                (= (number c) '2')
                (!= (@jp ("b [a]") (number c)) (number c))
            )
        )

        ; D, domain of variables, in order to differentiate from the domain, we use range as key word
        (:ranges
            (number enumerate ['1','2','3','4','5','6','7','8','9','10','j','q','k'])
            (selected integer [0,1])
            (selecting integer [0,1])
            (peeking integer [0,1])
            (peeked integer [0,1])
            (surprised integer [0,1])
        )

        (:rules

        )
    )