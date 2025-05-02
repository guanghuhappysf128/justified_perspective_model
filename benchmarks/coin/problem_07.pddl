(define 
        (problem coin06) 
        (:domain coin)

        (:agents
            a b - agent
        )

        ; (:agent_spec
        ;     (= (nesting a) 3)
        ;     (= (nesting b) 3)
        ; )
        
        (:objects 
            c - obj
        )


    
        (:init
            (assign (peeking a) 'f')
            (assign (peeking b) 'f')
            (assign (coin c) 'head')
        )
    
        (:goal (and 
            (= (@ep ("+ b [b] + b [a]") (= (coin c) 'head')) ep.true)
            (= (@ep ("+ b [b]") (= (coin c) 'tail')) ep.true)
            (= (@ep ("+ b [a] + b [b]") (= (coin c) 'tail')) ep.true)
            (= (@ep ("+ b [a]") (= (coin c) 'head')) ep.true)
        ))

        (:ranges
            (coin enumerate ['head','tail'])
            (peeking enumerate ['t','f'])
        )

        (:rules

        )
    )
    