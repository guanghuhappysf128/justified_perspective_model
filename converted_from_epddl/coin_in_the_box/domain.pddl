(define
    (domain coin_in_the_box_from_epddl)

    (:types
        agent
    )

    (:functions
        (tails)
        (opened)
        (announced)
        (event)
        (looking ?i - agent)
        (has_key ?i - agent)
        (peek_ready ?i - agent)
        (peeked ?i - agent)
    )

    (:action open_a
        :parameters ()
        :precondition (and
            (= (opened) 'f')
            (= (looking a) 't')
            (= (has_key a) 't')
        )
        :effect (and
            (assign (opened) 't')
            (assign (event) 'none')
        )
    )

    (:action open_b
        :parameters ()
        :precondition (and
            (= (opened) 'f')
            (= (looking b) 't')
            (= (has_key b) 't')
        )
        :effect (and
            (assign (opened) 't')
            (assign (event) 'none')
        )
    )

    (:action open_c
        :parameters ()
        :precondition (and
            (= (opened) 'f')
            (= (looking c) 't')
            (= (has_key c) 't')
        )
        :effect (and
            (assign (opened) 't')
            (assign (event) 'none')
        )
    )

    (:action signal_a_b
        :parameters ()
        :precondition (and
            (= (looking a) 't')
            (= (looking b) 'f')
        )
        :effect (and
            (assign (looking b) 't')
            (assign (peek_ready b) 't')
            (assign (event) 'none')
        )
    )

    (:action signal_a_c
        :parameters ()
        :precondition (and
            (= (looking a) 't')
            (= (looking c) 'f')
        )
        :effect (and
            (assign (looking c) 't')
            (assign (peek_ready c) 't')
            (assign (event) 'none')
        )
    )

    (:action signal_b_a
        :parameters ()
        :precondition (and
            (= (looking b) 't')
            (= (looking a) 'f')
        )
        :effect (and
            (assign (looking a) 't')
            (assign (peek_ready a) 't')
            (assign (event) 'none')
        )
    )

    (:action signal_b_c
        :parameters ()
        :precondition (and
            (= (looking b) 't')
            (= (looking c) 'f')
        )
        :effect (and
            (assign (looking c) 't')
            (assign (peek_ready c) 't')
            (assign (event) 'none')
        )
    )

    (:action signal_c_a
        :parameters ()
        :precondition (and
            (= (looking c) 't')
            (= (looking a) 'f')
        )
        :effect (and
            (assign (looking a) 't')
            (assign (peek_ready a) 't')
            (assign (event) 'none')
        )
    )

    (:action signal_c_b
        :parameters ()
        :precondition (and
            (= (looking c) 't')
            (= (looking b) 'f')
        )
        :effect (and
            (assign (looking b) 't')
            (assign (peek_ready b) 't')
            (assign (event) 'none')
        )
    )

    (:action distract_a_b
        :parameters ()
        :precondition (and
            (= (looking a) 't')
            (= (looking b) 't')
        )
        :effect (and
            (assign (looking b) 'f')
            (assign (event) 'none')
        )
    )

    (:action distract_a_c
        :parameters ()
        :precondition (and
            (= (looking a) 't')
            (= (looking c) 't')
        )
        :effect (and
            (assign (looking c) 'f')
            (assign (event) 'none')
        )
    )

    (:action distract_b_a
        :parameters ()
        :precondition (and
            (= (looking b) 't')
            (= (looking a) 't')
        )
        :effect (and
            (assign (looking a) 'f')
            (assign (peek_ready b) 't')
            (assign (peek_ready c) 't')
            (assign (event) 'none')
        )
    )

    (:action distract_b_c
        :parameters ()
        :precondition (and
            (= (looking b) 't')
            (= (looking c) 't')
        )
        :effect (and
            (assign (looking c) 'f')
            (assign (event) 'none')
        )
    )

    (:action distract_c_a
        :parameters ()
        :precondition (and
            (= (looking c) 't')
            (= (looking a) 't')
        )
        :effect (and
            (assign (looking a) 'f')
            (assign (peek_ready b) 't')
            (assign (peek_ready c) 't')
            (assign (event) 'none')
        )
    )

    (:action distract_c_b
        :parameters ()
        :precondition (and
            (= (looking c) 't')
            (= (looking b) 't')
        )
        :effect (and
            (assign (looking b) 'f')
            (assign (event) 'none')
        )
    )

    (:action peek_a
        :parameters ()
        :precondition (and
            (= (opened) 't')
        )
        :effect (and
            (assign (peeked a) (tails))
            (assign (event) 'peek_a')
        )
    )

    (:action shout_tails_a
        :parameters ()
        :precondition (and
            (= (tails) 't')
            (= (peeked a) 't')
            (= (looking a) 't')
        )
        :effect (and
            (assign (announced) 't')
            (assign (event) 'shout_a')
        )
    )

    (:action peek_b
        :parameters ()
        :precondition (and
            (= (opened) 't')
            (= (announced) 't')
            (= (peek_ready b) 't')
        )
        :effect (and
            (assign (peeked b) (tails))
            (assign (event) 'peek_b')
        )
    )

    (:action shout_tails_b
        :parameters ()
        :precondition (and
            (= (tails) 't')
            (= (peeked b) 't')
            (= (looking b) 't')
        )
        :effect (and
            (assign (announced) 't')
            (assign (event) 'shout_b')
        )
    )

    (:action peek_c
        :parameters ()
        :precondition (and
            (= (opened) 't')
            (= (announced) 't')
            (= (peek_ready c) 't')
        )
        :effect (and
            (assign (peeked c) (tails))
            (assign (event) 'peek_c')
        )
    )

    (:action shout_tails_c
        :parameters ()
        :precondition (and
            (= (tails) 't')
            (= (peeked c) 't')
            (= (looking c) 't')
        )
        :effect (and
            (assign (announced) 't')
            (assign (event) 'shout_c')
        )
    )

)
