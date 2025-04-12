(define 
        (problem thief_pro1) 
        (:domain thief)

        (:agents
            g - guard
            t - thief
        )
            
        (:objects

        )

        (:init

            (assign (posture g) 'hiding')
            (assign (posture t) 'hiding')

            (assign (existing g) 1)
            (assign (existing t) 1)

            (assign (goal_achieved g) 0)
            (assign (goal_achieved t) 0)
        )

    
        (:goal (and 
                ; (= (@ep ("+ b [b] $ b [c]") (= (secret_value as) 't')) ep.true)
                ; (= (@jp ("b [b] b [a]") (secret_value as)) 't')
                ; (= (@ep ("+ s [b] $ s [c]") (= (secret_value as) 't')) ep.true)
                (= (goal_achieved t) 1)
            )
        )

        (:ranges
            (posture enumerate ['hiding','peeking'])
            (existing integer [0,1])
            (goal_achieved integer [0,1])
        )

        (:rules
            (static (posture g) [])
            (static (posture t) [])
            (static (existing g) [])
            (static (existing t) [])
            (static (goal_achieved g) [])
            (static (goal_achieved t) [])

        )
    )
    