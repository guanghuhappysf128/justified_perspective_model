(define
    (problem cb_1_from_epddl)
    (:domain coin_in_the_box_from_epddl)

    (:agents
        a b c - agent
    )

    (:agent_spec
        (= (nesting a) 3)
        (= (nesting b) 3)
        (= (nesting c) 3)
    )

    (:objects
    )

    (:init
        (assign (tails) 't')
        (assign (opened) 'f')
        (assign (announced) 'f')
        (assign (event) 'none')
        (assign (looking a) 't')
        (assign (looking b) 'f')
        (assign (looking c) 'f')
        (assign (has_key a) 't')
        (assign (has_key b) 'f')
        (assign (has_key c) 'f')
        (assign (peek_ready a) 'f')
        (assign (peek_ready b) 'f')
        (assign (peek_ready c) 'f')
        (assign (peeked a) 'f')
        (assign (peeked b) 'f')
        (assign (peeked c) 'f')
    )

    (:goal (and
        (= (@ep ("+ b [a]") (= (tails) 't')) ep.true)
    ))

    (:ranges
        (tails enumerate ['t','f'])
        (opened enumerate ['t','f'])
        (announced enumerate ['t','f'])
        (event enumerate ['none','peek_a','peek_b','peek_c','shout_a','shout_b','shout_c'])
        (looking enumerate ['t','f'])
        (has_key enumerate ['t','f'])
        (peek_ready enumerate ['t','f'])
        (peeked enumerate ['t','f'])
    )

    (:rules
    )
)
