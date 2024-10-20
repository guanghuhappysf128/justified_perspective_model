(define (domain corridor)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_l1)
        (not_at_l2)
        (not_at_l3)
        (not_at_l4)
        (not_secret)
        (not_succ_l1_l1)
        (not_succ_l1_l2)
        (not_succ_l1_l3)
        (not_succ_l1_l4)
        (not_succ_l2_l1)
        (not_succ_l2_l2)
        (not_succ_l2_l3)
        (not_succ_l2_l4)
        (not_succ_l3_l1)
        (not_succ_l3_l2)
        (not_succ_l3_l3)
        (not_succ_l3_l4)
        (not_succ_l4_l1)
        (not_succ_l4_l2)
        (not_succ_l4_l3)
        (not_succ_l4_l4)
        (Ba_not_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_secret)
        (Bd_not_secret)
        (Bd_secret)
        (Be_not_secret)
        (Be_secret)
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
        (Pd_not_secret)
        (Pd_secret)
        (Pe_not_secret)
        (Pe_secret)
        (at_l1)
        (at_l2)
        (at_l3)
        (at_l4)
        (secret)
        (succ_l1_l1)
        (succ_l1_l2)
        (succ_l1_l3)
        (succ_l1_l4)
        (succ_l2_l1)
        (succ_l2_l2)
        (succ_l2_l3)
        (succ_l2_l4)
        (succ_l3_l1)
        (succ_l3_l2)
        (succ_l3_l3)
        (succ_l3_l4)
        (succ_l4_l1)
        (succ_l4_l2)
        (succ_l4_l3)
        (succ_l4_l4)
    )

    (:action fib-1
        :precondition (and (at_l1)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #27968: origin
                    (Bb_not_secret)

                    ; #42489: <==closure== 84778 (pos)
                    (Pd_not_secret)

                    ; #84778: origin
                    (Bd_not_secret)

                    ; #91199: <==closure== 27968 (pos)
                    (Pb_not_secret)

                    ; #26310: <==negation-removal== 27968 (pos)
                    (not (Pb_secret))

                    ; #63205: <==negation-removal== 84778 (pos)
                    (not (Pd_secret))

                    ; #67583: <==negation-removal== 91199 (pos)
                    (not (Bb_secret))

                    ; #95907: <==negation-removal== 42489 (pos)
                    (not (Bd_secret))))

    (:action fib-2
        :precondition (and (at_l2)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #26386: <==closure== 31169 (pos)
                    (Pe_not_secret)

                    ; #27968: origin
                    (Bb_not_secret)

                    ; #31169: origin
                    (Be_not_secret)

                    ; #35885: origin
                    (Bc_not_secret)

                    ; #42489: <==closure== 84778 (pos)
                    (Pd_not_secret)

                    ; #75136: <==closure== 35885 (pos)
                    (Pc_not_secret)

                    ; #84778: origin
                    (Bd_not_secret)

                    ; #91199: <==closure== 27968 (pos)
                    (Pb_not_secret)

                    ; #12810: <==negation-removal== 26386 (pos)
                    (not (Be_secret))

                    ; #21810: <==negation-removal== 75136 (pos)
                    (not (Bc_secret))

                    ; #26310: <==negation-removal== 27968 (pos)
                    (not (Pb_secret))

                    ; #61592: <==negation-removal== 31169 (pos)
                    (not (Pe_secret))

                    ; #63205: <==negation-removal== 84778 (pos)
                    (not (Pd_secret))

                    ; #67583: <==negation-removal== 91199 (pos)
                    (not (Bb_secret))

                    ; #83405: <==negation-removal== 35885 (pos)
                    (not (Pc_secret))

                    ; #95907: <==negation-removal== 42489 (pos)
                    (not (Bd_secret))))

    (:action fib-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #26386: <==closure== 31169 (pos)
                    (Pe_not_secret)

                    ; #27968: origin
                    (Bb_not_secret)

                    ; #31169: origin
                    (Be_not_secret)

                    ; #35885: origin
                    (Bc_not_secret)

                    ; #75136: <==closure== 35885 (pos)
                    (Pc_not_secret)

                    ; #91199: <==closure== 27968 (pos)
                    (Pb_not_secret)

                    ; #12810: <==negation-removal== 26386 (pos)
                    (not (Be_secret))

                    ; #21810: <==negation-removal== 75136 (pos)
                    (not (Bc_secret))

                    ; #26310: <==negation-removal== 27968 (pos)
                    (not (Pb_secret))

                    ; #61592: <==negation-removal== 31169 (pos)
                    (not (Pe_secret))

                    ; #67583: <==negation-removal== 91199 (pos)
                    (not (Bb_secret))

                    ; #83405: <==negation-removal== 35885 (pos)
                    (not (Pc_secret))))

    (:action fib-4
        :precondition (and (at_l4)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #26386: <==closure== 31169 (pos)
                    (Pe_not_secret)

                    ; #31169: origin
                    (Be_not_secret)

                    ; #35885: origin
                    (Bc_not_secret)

                    ; #75136: <==closure== 35885 (pos)
                    (Pc_not_secret)

                    ; #12810: <==negation-removal== 26386 (pos)
                    (not (Be_secret))

                    ; #21810: <==negation-removal== 75136 (pos)
                    (not (Bc_secret))

                    ; #61592: <==negation-removal== 31169 (pos)
                    (not (Pe_secret))

                    ; #83405: <==negation-removal== 35885 (pos)
                    (not (Pc_secret))))

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #63920: origin
                    (at_l1)

                    ; #70715: origin
                    (not_at_l1)

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #63920: origin
                    (at_l1)

                    ; #76925: origin
                    (not_at_l2)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #19604: origin
                    (not_at_l3)

                    ; #63920: origin
                    (at_l1)

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #63920: origin
                    (at_l1)

                    ; #77429: origin
                    (not_at_l4)

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #70715: origin
                    (not_at_l1)

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #76925: origin
                    (not_at_l2)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #19604: origin
                    (not_at_l3)

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #77429: origin
                    (not_at_l4)

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #68714: origin
                    (at_l3)

                    ; #70715: origin
                    (not_at_l1)

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #68714: origin
                    (at_l3)

                    ; #76925: origin
                    (not_at_l2)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #19604: origin
                    (not_at_l3)

                    ; #68714: origin
                    (at_l3)

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #68714: origin
                    (at_l3)

                    ; #77429: origin
                    (not_at_l4)

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #70715: origin
                    (not_at_l1)

                    ; #81830: origin
                    (at_l4)

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #76925: origin
                    (not_at_l2)

                    ; #81830: origin
                    (at_l4)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #19604: origin
                    (not_at_l3)

                    ; #81830: origin
                    (at_l4)

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #77429: origin
                    (not_at_l4)

                    ; #81830: origin
                    (at_l4)

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #63920: origin
                    (at_l1)

                    ; #70715: origin
                    (not_at_l1)

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #70715: origin
                    (not_at_l1)

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #68714: origin
                    (at_l3)

                    ; #70715: origin
                    (not_at_l1)

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #70715: origin
                    (not_at_l1)

                    ; #81830: origin
                    (at_l4)

                    ; #63920: <==negation-removal== 70715 (pos)
                    (not (at_l1))

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #63920: origin
                    (at_l1)

                    ; #76925: origin
                    (not_at_l2)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #76925: origin
                    (not_at_l2)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #68714: origin
                    (at_l3)

                    ; #76925: origin
                    (not_at_l2)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #76925: origin
                    (not_at_l2)

                    ; #81830: origin
                    (at_l4)

                    ; #17045: <==negation-removal== 76925 (pos)
                    (not (at_l2))

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #19604: origin
                    (not_at_l3)

                    ; #63920: origin
                    (at_l1)

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #19604: origin
                    (not_at_l3)

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #19604: origin
                    (not_at_l3)

                    ; #68714: origin
                    (at_l3)

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #19604: origin
                    (not_at_l3)

                    ; #81830: origin
                    (at_l4)

                    ; #68714: <==negation-removal== 19604 (pos)
                    (not (at_l3))

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #63920: origin
                    (at_l1)

                    ; #77429: origin
                    (not_at_l4)

                    ; #70715: <==negation-removal== 63920 (pos)
                    (not (not_at_l1))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #17045: origin
                    (at_l2)

                    ; #77429: origin
                    (not_at_l4)

                    ; #76925: <==negation-removal== 17045 (pos)
                    (not (not_at_l2))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #68714: origin
                    (at_l3)

                    ; #77429: origin
                    (not_at_l4)

                    ; #19604: <==negation-removal== 68714 (pos)
                    (not (not_at_l3))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #77429: origin
                    (not_at_l4)

                    ; #81830: origin
                    (at_l4)

                    ; #77429: <==negation-removal== 81830 (pos)
                    (not (not_at_l4))

                    ; #81830: <==negation-removal== 77429 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #17590: <==closure== 42626 (pos)
                    (Pa_secret)

                    ; #42626: origin
                    (Ba_secret)

                    ; #43272: <==negation-removal== 17590 (pos)
                    (not (Ba_not_secret))

                    ; #64279: <==negation-removal== 42626 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #26310: <==closure== 67583 (pos)
                    (Pb_secret)

                    ; #63205: <==closure== 95907 (pos)
                    (Pd_secret)

                    ; #67583: origin
                    (Bb_secret)

                    ; #95907: origin
                    (Bd_secret)

                    ; #27968: <==negation-removal== 26310 (pos)
                    (not (Bb_not_secret))

                    ; #42489: <==negation-removal== 95907 (pos)
                    (not (Pd_not_secret))

                    ; #84778: <==negation-removal== 63205 (pos)
                    (not (Bd_not_secret))

                    ; #91199: <==negation-removal== 67583 (pos)
                    (not (Pb_not_secret))))

    (:action shout-2
        :precondition (and (at_l2)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #12810: origin
                    (Be_secret)

                    ; #21810: origin
                    (Bc_secret)

                    ; #26310: <==closure== 67583 (pos)
                    (Pb_secret)

                    ; #61592: <==closure== 12810 (pos)
                    (Pe_secret)

                    ; #63205: <==closure== 95907 (pos)
                    (Pd_secret)

                    ; #67583: origin
                    (Bb_secret)

                    ; #83405: <==closure== 21810 (pos)
                    (Pc_secret)

                    ; #95907: origin
                    (Bd_secret)

                    ; #26386: <==negation-removal== 12810 (pos)
                    (not (Pe_not_secret))

                    ; #27968: <==negation-removal== 26310 (pos)
                    (not (Bb_not_secret))

                    ; #31169: <==negation-removal== 61592 (pos)
                    (not (Be_not_secret))

                    ; #35885: <==negation-removal== 83405 (pos)
                    (not (Bc_not_secret))

                    ; #42489: <==negation-removal== 95907 (pos)
                    (not (Pd_not_secret))

                    ; #75136: <==negation-removal== 21810 (pos)
                    (not (Pc_not_secret))

                    ; #84778: <==negation-removal== 63205 (pos)
                    (not (Bd_not_secret))

                    ; #91199: <==negation-removal== 67583 (pos)
                    (not (Pb_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #12810: origin
                    (Be_secret)

                    ; #21810: origin
                    (Bc_secret)

                    ; #26310: <==closure== 67583 (pos)
                    (Pb_secret)

                    ; #61592: <==closure== 12810 (pos)
                    (Pe_secret)

                    ; #67583: origin
                    (Bb_secret)

                    ; #83405: <==closure== 21810 (pos)
                    (Pc_secret)

                    ; #26386: <==negation-removal== 12810 (pos)
                    (not (Pe_not_secret))

                    ; #27968: <==negation-removal== 26310 (pos)
                    (not (Bb_not_secret))

                    ; #31169: <==negation-removal== 61592 (pos)
                    (not (Be_not_secret))

                    ; #35885: <==negation-removal== 83405 (pos)
                    (not (Bc_not_secret))

                    ; #75136: <==negation-removal== 21810 (pos)
                    (not (Pc_not_secret))

                    ; #91199: <==negation-removal== 67583 (pos)
                    (not (Pb_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #12810: origin
                    (Be_secret)

                    ; #21810: origin
                    (Bc_secret)

                    ; #61592: <==closure== 12810 (pos)
                    (Pe_secret)

                    ; #83405: <==closure== 21810 (pos)
                    (Pc_secret)

                    ; #26386: <==negation-removal== 12810 (pos)
                    (not (Pe_not_secret))

                    ; #31169: <==negation-removal== 61592 (pos)
                    (not (Be_not_secret))

                    ; #35885: <==negation-removal== 83405 (pos)
                    (not (Bc_not_secret))

                    ; #75136: <==negation-removal== 21810 (pos)
                    (not (Pc_not_secret))))

)