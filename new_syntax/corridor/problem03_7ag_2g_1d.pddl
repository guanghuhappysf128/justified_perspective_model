(define 
        (problem corridor03) 
        (:domain corridor)

        (:agents
            a b c d e f g - agent
        )
            
        (:objects
            s - secret
        )

        (:init
        ; valid locations are 1,2,3,4
        ; secret is at location -1 if not shared (avoid adjcent as well)
            (assign (agent_loc a) 1)
            (assign (agent_loc b) 2)
            (assign (agent_loc c) 3)
            (assign (agent_loc d) 1)
            (assign (agent_loc e) 3)
            (assign (agent_loc f) 2)
            (assign (agent_loc g) 4)


            (assign (movable a) 1)
            (assign (movable b) 0)
            (assign (movable c) 0)
            (assign (movable d) 0)
            (assign (movable e) 0)
            (assign (movable f) 0)
            (assign (movable g) 0)


            (assign (secret_loc s) 2)
            (assign (sensed s) 0)

            (assign (secret_truth_value s) 't')
            (assign (secret_lying_value s) 'f')

            (assign (shared_value s) 'f')
            (assign (shared_loc s) -1)

        )

    
        (:goal (and 
                ; (= (@ep ("+ b [b] $ b [c]") (= (secret_value as) 't')) ep.true)
                ; (= (@jp ("b [b] b [a]") (secret_value as)) 't')
                ; (= (@ep ("! s [b] $ s [c]") (= (secret_value as) 't')) ep.true)
                (= (@ep ("+ b [b] + b [b] + b [b] + b [b] + b [b]") (= (shared_value s) 'f')) ep.true)
                (= (@ep ("+ b [c] + b [c] + b [c] + b [c] + b [c]") (= (shared_value s) 't')) ep.true)
                ;seeing -> knowing whether
                ;K observer S action box1
            )
        )

        (:ranges
            (agent_loc integer [1,4])
            (secret_loc integer [1,4])
            (movable integer [0,1])
            (sensed integer [0,1])
            (shared_loc integer [-1,4])
            (secret_truth_value enumerate ['t','f'])
            (secret_lying_value enumerate ['t','f'])
            (shared_value enumerate ['t','f'])
        )

        (:rules
        
        )
    )
    