(define (problem corridor-prob)

    (:domain corridor)

    (:init
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
        (at_l1)
        (succ_l1_l2)
        (succ_l2_l3)
        (succ_l3_l4)
    )

    (:goal (and
        (Bc_secret)
        (Pb_not_secret)
        (Pc_secret)
    ))
)