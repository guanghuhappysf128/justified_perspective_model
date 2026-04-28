(define 
        (problem magic01) 
        (:domain magic)

        (:agents
            m - magician
            a - audience
        )

        (:agent_spec
            (= (nesting a) 2)
            (= (nesting m) 3)
        )

        (:objects 
            c - card
        )

        (:init
        ; initially the top of the deck is card 1, and it is revealed to both magician and audience
            (assign (revealed c) 1)
            (assign (number c) '1')
            (assign (initial_number c) '1')
            (assign (audience_chosen_number c) 'j')
            (assign (shuffled c) 0)
            (assign (shuffling a) 0)
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
                ; (!= (@jp ("b [a]") (number c)) jp.none)
                (= (surprised a) 1)
                ; ; (= (number c) '2')
                ; (!= (@jp ("b [a]") (number c)) (number c))
            )
        )

        ; D, domain of variables, in order to differentiate from the domain, we use range as key word
        (:ranges
            (number enumerate ['1','2','3','4','5','6','7','8','9','10','j','q','k'])
            (initial_number enumerate ['1','2','3','4','5','6','7','8','9','10','j','q','k'])
            (audience_chosen_number enumerate ['1','2','3','4','5','6','7','8','9','10','j','q','k'])
            (shuffled integer [0,1])
            (revealed integer [0,1])
            (shuffling integer [0,1])
            (peeking integer [0,1])
            (peeked integer [0,1])
            (surprised integer [0,1])
        )

        (:rules

        )
    )