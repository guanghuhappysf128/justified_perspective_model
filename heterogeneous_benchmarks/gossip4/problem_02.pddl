(define 
; problem file must contain order sections: problem, :domain, :agents, :agent_spec, :nesting, :objects, :init, :goal, :range, :rules
; Sections agent_spec, nesting, rules are optional
        (problem gossip4_01) 
        (:domain gossip4)

        (:agents
            a b c d - agent
        )

        ; (:agent_spec
        ;     (= (nesting a) 1)
        ;     (= (nesting b) 3)
        ; )

        ; specific nesting map for this problem instance
        ; if it is ignored, these are determined by each agent's nesting ability above
        ; if it is specified, the planner will verfiy it aligned with agent's nesting ability above
        ;       then, the planner will follow it
        ; (:nesting
        ;     a-a-a a-a-b a-b-b  a-b b-a a-b-a b-a-b
        ; )
        
        (:objects 

        )
    
        (:init
            (assign (called a) '0')
            (assign (called b) '0')
            (assign (called c) '0')
            (assign (called d) '0')
            (assign (secret a) 1)
            (assign (secret b) 2)
            (assign (secret c) 3)
            (assign (secret d) 4)

        )
    
        (:goal (and 
            ; (= (@ep ("+ b [a]") (= (coin c) 'head')) ep.true)
            ; (= (@ep ("+ b [a]") (= (coin c) 'tail')) ep.true)
            ; (= (called a) '0-b')
            ; (= (called b) '0-a')
            ; (= (called c) '0-0')
            ; (= (called d) '0-0')
            
            ; (= (@ep ("+ b [a]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [a]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [a]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [a]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [b]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [b]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [b]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [b]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [c]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [c]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [c]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [c]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [d]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [d]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [d]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [d]") (= (secret d) 4)) ep.true)

            (= (@ep ("+ b [a] + b [b]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [a] + b [b]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [a] + b [b]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [a] + b [b]") (= (secret d) 4)) ep.true)



            ; (= (@ep ("+ b [a] + b [c]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [a] + b [c]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [a] + b [c]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [a] + b [c]") (= (secret d) 4)) ep.true)
            
            ; (= (@ep ("+ b [a] + b [d]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [a] + b [d]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [a] + b [d]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [a] + b [d]") (= (secret d) 4)) ep.true)

            (= (@ep ("+ b [b] + b [a]") (= (secret a) 1)) ep.true)
            (= (@ep ("+ b [b] + b [a]") (= (secret b) 2)) ep.true)
            (= (@ep ("+ b [b] + b [a]") (= (secret c) 3)) ep.true)
            (= (@ep ("+ b [b] + b [a]") (= (secret d) 4)) ep.true)

            (= (@ep ("+ b [b] + b [c]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [b] + b [c]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [b] + b [c]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [b] + b [c]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [b] + b [d]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [b] + b [d]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [b] + b [d]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [b] + b [d]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [c] + b [a]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [c] + b [a]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [c] + b [a]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [c] + b [a]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [c] + b [b]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [c] + b [b]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [c] + b [b]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [c] + b [b]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [c] + b [d]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [c] + b [d]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [c] + b [d]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [c] + b [d]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [d] + b [a]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [d] + b [a]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [d] + b [a]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [d] + b [a]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [d] + b [b]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [d] + b [b]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [d] + b [b]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [d] + b [b]") (= (secret d) 4)) ep.true)

            ; (= (@ep ("+ b [d] + b [c]") (= (secret a) 1)) ep.true)
            ; (= (@ep ("+ b [d] + b [c]") (= (secret b) 2)) ep.true)
            ; (= (@ep ("+ b [d] + b [c]") (= (secret c) 3)) ep.true)
            ; (= (@ep ("+ b [d] + b [c]") (= (secret d) 4)) ep.true)
        )



        ))

        (:ranges
            (called string None)
            (secret integer [0,5])
        )

        (:rules

        )
    )
    