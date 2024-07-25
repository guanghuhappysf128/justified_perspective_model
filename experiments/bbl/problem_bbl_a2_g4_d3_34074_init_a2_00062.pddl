(define 
    (problem bbl_a2_g4_d3_34074) 
    (:domain bbl)

    (:agents
        a b - turnable
    )
    
    (:objects 
        p - askable
    )
    
    (:init
        (assign (dir a) 's')
        (assign (dir b) 'sw')

        (assign (x a) 3)
        (assign (x b) 2)
        (assign (x p) 1)
        (assign (y a) 3)
        (assign (y b) 2)
        (assign (y p) 1)
        (assign (v p) 't')
    )

    (:goal (and 
          (= (@ep ("+ b [a] ") (= (v p) 't')) ep.true);; a2_3_00000000000000000000
          (= (@ep ("+ b [b] + b [a] ") (= (v p) 't')) ep.true);; a2_3_00000000000000000015
          (= (@ep ("+ b [a] $ b [b] + b [a] ") (= (v p) 't')) ep.true);; a2_3_00000000000000000027
          (= (@ep ("! b [a] $ b [b] $ b [a] ") (= (v p) 't')) ep.true);; a2_3_00000000000000000046

        )
    )

    (:ranges
        (dir enumerate ['w','nw','n','ne','e','se','s','sw'])
        (x integer [0,4])
        (y integer [0,4])
        (v enumerate ['t','f'])
    )

    (:rules
        (static (dir a) [])
        (static (dir b) [])
        (static (dir p) [])
        (static (x a) [])
        (static (x b) [])
        (static (x p) [])
        (static (y a) [])
        (static (y b) [])
        (static (y p) [])
        (static (v p) [])
    )
)
    