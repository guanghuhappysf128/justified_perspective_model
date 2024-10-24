(define 
        (problem coin01) 
        (:domain coin)

        (:agents
            a b - agent
        )
        
        (:objects 
            c - obj
        )
    
        (:init
            (assign (peeking a) 'f')
            (assign (peeking b) 'f')
            (assign (coin c) 'head')
        )
    
        (:goal 
            (and 
                (= (coin c) 'tail')
                (= (@ep ("+ b [b]") (= (coin c) 'tail')) ep.true)
                (= (@ep ("+ b [a]") (= (coin c) 'head')) ep.true)
                (= (@ep ("+ b [b] + b [a]") (= (coin c) 'head')) ep.true)
            )
        )

        (:ranges
            (coin enumerate ['head','tail'])
            (peeking enumerate ['t','f'])
        )

        (:rules
        )
    )
    