(define 
; this is for testing the initial state of the problem
        (problem muddy_children_01) 
        (:domain muddy_children)

        (:agents
            a b c - children
            t - teacher
        )

        (:objects 

        )

        (:init


            (assign (num_of_question t) 0)
            ; need to have at least one child muddy
            (assign (muddy a) 'f')
            (assign (muddy b) 't')
            (assign (muddy c) 't')
            (assign (shouted) 'f')
        )

        ; the @ represent this is an epistemic evaluation
        ; 
        (:goal 
            (and 
                ; (= (@ep ("+ b [a]") (= (muddy a) 'f')) ep.true)
                (= (@ep ("+ b [a]") (= (muddy b) 't')) ep.true)
                (= (@ep ("+ b [a]") (= (muddy c) 't')) ep.true)

                (= (@ep ("+ b [b]") (= (muddy a) 'f')) ep.true)
                ; (= (@ep ("+ b [b]") (= (muddy b) 't')) ep.true)
                (= (@ep ("+ b [b]") (= (muddy c) 't')) ep.true)

                (= (@ep ("+ b [c]") (= (muddy a) 'f')) ep.true)
                (= (@ep ("+ b [c]") (= (muddy b) 't')) ep.true)
                ; (= (@ep ("+ b [c]") (= (muddy c) 't')) ep.true)
            )
        )

        ; D, domain of variables, in order to differentiate from the domain, we use range as key word
        (:ranges
            (num_of_question integer [0,99])
            (muddy enumerate ['t','f'])
        )

        (:rules

        )
    )