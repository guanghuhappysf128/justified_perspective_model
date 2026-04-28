(define 
        (problem coin02) 
        (:domain coin)

        (:agents
            a b - agent
        )

        (:agent_spec
            (= (nesting a) 1)
            (= (nesting b) 2)
        )

        ; specific nesting map for this problem instance
        ; if it is ignored, these are determined by each agent's nesting ability above
        ; if it is specified, the planner will verfiy it aligned with agent's nesting ability above
        ;       then, the planner will follow it
        ; (:nesting
        ;     a-a-a a-a-b a-b-b  a-b b-a a-b-a b-a-b
        ; )
        
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
    