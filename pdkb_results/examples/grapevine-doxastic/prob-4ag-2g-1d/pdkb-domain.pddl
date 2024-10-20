(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_a_l3)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_b_l3)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_c_l3)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_at_d_l3)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l1_l3)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_connected_l2_l3)
        (not_connected_l3_l1)
        (not_connected_l3_l2)
        (not_connected_l3_l3)
        (not_initialized)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (not_secret_d)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_not_secret_d)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Ba_secret_d)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_not_secret_d)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bb_secret_d)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_not_secret_d)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Bc_secret_d)
        (Bd_not_secret_a)
        (Bd_not_secret_b)
        (Bd_not_secret_c)
        (Bd_not_secret_d)
        (Bd_secret_a)
        (Bd_secret_b)
        (Bd_secret_c)
        (Bd_secret_d)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_not_secret_d)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pa_secret_d)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_not_secret_d)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pb_secret_d)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_not_secret_d)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (Pc_secret_d)
        (Pd_not_secret_a)
        (Pd_not_secret_b)
        (Pd_not_secret_c)
        (Pd_not_secret_d)
        (Pd_secret_a)
        (Pd_secret_b)
        (Pd_secret_c)
        (Pd_secret_d)
        (at_a_l1)
        (at_a_l2)
        (at_a_l3)
        (at_b_l1)
        (at_b_l2)
        (at_b_l3)
        (at_c_l1)
        (at_c_l2)
        (at_c_l3)
        (at_d_l1)
        (at_d_l2)
        (at_d_l3)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l1_l3)
        (connected_l2_l1)
        (connected_l2_l2)
        (connected_l2_l3)
        (connected_l3_l1)
        (connected_l3_l2)
        (connected_l3_l3)
        (initialized)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
    )

    (:action fib_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #21576: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #23193: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #40025: <==closure== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #49465: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #71679: <==closure== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #76289: <==closure== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #76775: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #80381: <==closure== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #10092: <==negation-removal== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #14421: <==negation-removal== 80381 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #30535: <==negation-removal== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #42472: <==uncertain_firing== 21576 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #43941: <==uncertain_firing== 80381 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #44237: <==uncertain_firing== 40025 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #50861: <==negation-removal== 40025 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #54800: <==uncertain_firing== 49465 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #54941: <==uncertain_firing== 23193 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #65575: <==uncertain_firing== 76289 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #66339: <==uncertain_firing== 76775 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #67482: <==negation-removal== 71679 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #67805: <==negation-removal== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #69158: <==negation-removal== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #70323: <==uncertain_firing== 71679 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80205: <==negation-removal== 76289 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (Ba_secret_a)
                           (at_a_l2)
                           (Pa_secret_a)
                           (initialized))
        :effect (and
                    ; #22890: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #24872: <==closure== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #33278: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #41342: <==closure== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #66439: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83014: <==closure== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #85866: <==closure== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #89675: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #12421: <==negation-removal== 24872 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #20034: <==negation-removal== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #28752: <==uncertain_firing== 83014 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #29045: <==uncertain_firing== 85866 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #29507: <==uncertain_firing== 24872 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #42478: <==uncertain_firing== 89675 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #47237: <==negation-removal== 83014 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #47602: <==uncertain_firing== 33278 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49416: <==uncertain_firing== 22890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #56132: <==negation-removal== 85866 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #57218: <==negation-removal== 41342 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #61470: <==negation-removal== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #66637: <==negation-removal== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #66872: <==uncertain_firing== 41342 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #74358: <==uncertain_firing== 66439 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #81944: <==negation-removal== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (Ba_secret_a)
                           (at_a_l3)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #18840: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #56717: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #57386: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71424: <==closure== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #79279: <==closure== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #86491: <==closure== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #86722: <==closure== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #97581: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #13960: <==uncertain_firing== 18840 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #34359: <==uncertain_firing== 97581 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #38678: <==negation-removal== 86491 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #51793: <==uncertain_firing== 57386 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #51952: <==negation-removal== 79279 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #54531: <==negation-removal== 86722 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #66545: <==negation-removal== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #68263: <==negation-removal== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #69613: <==uncertain_firing== 71424 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #70168: <==negation-removal== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #73706: <==negation-removal== 71424 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #78122: <==uncertain_firing== 86722 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #81241: <==negation-removal== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #83368: <==uncertain_firing== 56717 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85746: <==uncertain_firing== 86491 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #86633: <==uncertain_firing== 79279 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (Ba_secret_b)
                           (initialized)
                           (Pa_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #16680: <==closure== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #20150: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #32589: <==closure== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #63455: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #73054: <==closure== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #73875: <==closure== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #79050: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87781: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #16226: <==negation-removal== 16680 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #16831: <==uncertain_firing== 87781 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #17090: <==negation-removal== 73875 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #18400: <==negation-removal== 32589 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #24254: <==negation-removal== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #36057: <==uncertain_firing== 32589 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #41998: <==uncertain_firing== 73054 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #44895: <==uncertain_firing== 63455 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #59678: <==negation-removal== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #60724: <==negation-removal== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #64790: <==negation-removal== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #66630: <==uncertain_firing== 79050 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #71852: <==uncertain_firing== 16680 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #72092: <==uncertain_firing== 20150 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #74487: <==uncertain_firing== 73875 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #79993: <==negation-removal== 73054 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #18174: <==closure== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19814: <==closure== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #25180: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35645: <==closure== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #61571: <==closure== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72463: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #80104: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #85504: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #19052: <==uncertain_firing== 72463 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #25636: <==negation-removal== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #26875: <==uncertain_firing== 19814 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #28157: <==uncertain_firing== 25180 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #29523: <==negation-removal== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #29964: <==negation-removal== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #30715: <==negation-removal== 35645 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #45886: <==uncertain_firing== 61571 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #46469: <==negation-removal== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #55044: <==uncertain_firing== 85504 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #56082: <==uncertain_firing== 35645 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #59464: <==negation-removal== 18174 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #77812: <==uncertain_firing== 80104 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #78476: <==negation-removal== 19814 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #85928: <==negation-removal== 61571 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #87583: <==uncertain_firing== 18174 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (Ba_secret_b)
                           (at_a_l3)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #15797: <==closure== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #28277: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #31176: <==closure== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #59819: <==closure== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #69503: <==closure== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #76014: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #77215: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #84152: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #13399: <==uncertain_firing== 76014 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #15547: <==negation-removal== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #17551: <==negation-removal== 59819 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #19083: <==negation-removal== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #26499: <==uncertain_firing== 84152 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27739: <==negation-removal== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #31829: <==uncertain_firing== 59819 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #32926: <==negation-removal== 15797 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40106: <==negation-removal== 69503 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #41972: <==uncertain_firing== 28277 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #53357: <==uncertain_firing== 69503 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #56624: <==uncertain_firing== 15797 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64160: <==negation-removal== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #72696: <==uncertain_firing== 31176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #79205: <==uncertain_firing== 77215 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #82598: <==negation-removal== 31176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #20557: <==closure== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #34478: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #34969: <==closure== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #46182: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #57822: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #73184: <==closure== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75188: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #83325: <==closure== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #11385: <==uncertain_firing== 20557 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #12026: <==negation-removal== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #20435: <==negation-removal== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #23643: <==uncertain_firing== 57822 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #23867: <==negation-removal== 73184 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #23938: <==negation-removal== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25779: <==uncertain_firing== 73184 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #42683: <==uncertain_firing== 34969 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #45840: <==uncertain_firing== 83325 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #47030: <==uncertain_firing== 46182 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #54590: <==negation-removal== 34969 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #55194: <==negation-removal== 83325 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #70015: <==uncertain_firing== 75188 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #78770: <==negation-removal== 20557 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #79546: <==negation-removal== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #97693: <==uncertain_firing== 34478 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (Pa_secret_c)
                           (at_a_l2)
                           (initialized)
                           (Ba_secret_c))
        :effect (and
                    ; #27565: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #35464: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #39495: <==closure== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #41808: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #53145: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #56219: <==closure== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #68202: <==closure== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #79944: <==closure== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #12348: <==uncertain_firing== 35464 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #14688: <==negation-removal== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21800: <==uncertain_firing== 56219 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #25434: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #28746: <==uncertain_firing== 53145 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #31772: <==negation-removal== 56219 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35284: <==negation-removal== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #44105: <==uncertain_firing== 79944 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #47459: <==negation-removal== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59700: <==uncertain_firing== 27565 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #65594: <==negation-removal== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #67794: <==negation-removal== 68202 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #69795: <==negation-removal== 79944 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70574: <==uncertain_firing== 39495 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #77377: <==uncertain_firing== 68202 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #91274: <==negation-removal== 39495 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (Pa_secret_c)
                           (at_a_l3)
                           (initialized)
                           (Ba_secret_c))
        :effect (and
                    ; #20719: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #22121: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #33497: <==closure== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #62810: <==closure== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #69459: <==closure== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70301: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #88464: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #92142: <==closure== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #16144: <==negation-removal== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22349: <==uncertain_firing== 62810 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #36516: <==uncertain_firing== 33497 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #43535: <==negation-removal== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #50255: <==uncertain_firing== 92142 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51029: <==negation-removal== 69459 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #67961: <==negation-removal== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #70711: <==uncertain_firing== 20719 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #74446: <==uncertain_firing== 22121 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #75239: <==negation-removal== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #81269: <==negation-removal== 92142 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83936: <==uncertain_firing== 88464 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #84163: <==negation-removal== 33497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #86585: <==uncertain_firing== 69459 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87740: <==uncertain_firing== 70301 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88818: <==negation-removal== 62810 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (initialized)
                           (Pa_secret_d)
                           (Ba_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #18702: <==closure== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #28009: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #42225: <==closure== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #43286: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #60061: <==closure== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #80946: <==closure== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #86647: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #86922: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #20647: <==uncertain_firing== 60061 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #22290: <==uncertain_firing== 80946 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31195: <==negation-removal== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #32206: <==negation-removal== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #34361: <==uncertain_firing== 18702 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #47305: <==uncertain_firing== 42225 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #58654: <==uncertain_firing== 86647 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #63061: <==negation-removal== 60061 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64387: <==negation-removal== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #65851: <==negation-removal== 18702 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #76964: <==uncertain_firing== 86922 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #81997: <==uncertain_firing== 28009 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l1))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #82603: <==negation-removal== 80946 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #84277: <==uncertain_firing== 43286 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #84426: <==negation-removal== 42225 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #85465: <==negation-removal== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (Pa_secret_d)
                           (at_a_l2)
                           (Ba_secret_d)
                           (initialized))
        :effect (and
                    ; #18625: <==closure== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #23533: <==closure== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #41867: <==closure== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #43154: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #44504: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #66233: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #70335: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #89280: <==closure== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11214: <==negation-removal== 23533 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #11811: <==uncertain_firing== 44504 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12895: <==negation-removal== 18625 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #27142: <==uncertain_firing== 43154 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36084: <==uncertain_firing== 18625 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #36479: <==negation-removal== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #41773: <==negation-removal== 89280 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #44477: <==negation-removal== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #51490: <==uncertain_firing== 89280 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #75834: <==uncertain_firing== 23533 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #81903: <==uncertain_firing== 66233 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #83082: <==uncertain_firing== 41867 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #88221: <==negation-removal== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #88668: <==negation-removal== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #89536: <==negation-removal== 41867 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #90699: <==uncertain_firing== 70335 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (Pa_secret_d)
                           (at_a_l3)
                           (Ba_secret_d)
                           (initialized))
        :effect (and
                    ; #11863: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #22599: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40092: <==closure== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #65539: <==closure== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71948: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #80169: <==closure== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #83380: <==closure== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11876: <==uncertain_firing== 11863 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12688: <==uncertain_firing== 40092 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #14503: <==negation-removal== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #14641: <==negation-removal== 65539 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #18316: <==negation-removal== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #28625: <==negation-removal== 40092 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31902: <==uncertain_firing== 65539 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #34374: <==negation-removal== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #40287: <==negation-removal== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #52097: <==uncertain_firing== 83380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #56918: <==negation-removal== 83380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #57726: <==uncertain_firing== 80169 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58429: <==uncertain_firing== 18593 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #59435: <==uncertain_firing== 71948 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #62188: <==negation-removal== 80169 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #76867: <==uncertain_firing== 22599 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a)
                           (initialized))
        :effect (and
                    ; #21576: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #23193: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #40025: <==closure== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #49465: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #71679: <==closure== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #76289: <==closure== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #76775: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #80381: <==closure== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #10092: <==negation-removal== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #14421: <==negation-removal== 80381 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #30535: <==negation-removal== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #42472: <==uncertain_firing== 21576 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #43941: <==uncertain_firing== 80381 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #44237: <==uncertain_firing== 40025 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #50861: <==negation-removal== 40025 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #54800: <==uncertain_firing== 49465 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #54941: <==uncertain_firing== 23193 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #65575: <==uncertain_firing== 76289 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #66339: <==uncertain_firing== 76775 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #67482: <==negation-removal== 71679 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #67805: <==negation-removal== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #69158: <==negation-removal== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #70323: <==uncertain_firing== 71679 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80205: <==negation-removal== 76289 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (Bb_secret_a)
                           (at_b_l2)
                           (Pb_secret_a)
                           (initialized))
        :effect (and
                    ; #22890: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #24872: <==closure== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #33278: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #41342: <==closure== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #66439: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83014: <==closure== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #85866: <==closure== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #89675: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #12421: <==negation-removal== 24872 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #20034: <==negation-removal== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #28752: <==uncertain_firing== 83014 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #29045: <==uncertain_firing== 85866 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #29507: <==uncertain_firing== 24872 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #42478: <==uncertain_firing== 89675 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #47237: <==negation-removal== 83014 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #47602: <==uncertain_firing== 33278 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49416: <==uncertain_firing== 22890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #56132: <==negation-removal== 85866 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #57218: <==negation-removal== 41342 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #61470: <==negation-removal== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #66637: <==negation-removal== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #66872: <==uncertain_firing== 41342 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #74358: <==uncertain_firing== 66439 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #81944: <==negation-removal== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (Bb_secret_a)
                           (initialized)
                           (Pb_secret_a)
                           (at_b_l3))
        :effect (and
                    ; #18840: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #56717: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #57386: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71424: <==closure== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #79279: <==closure== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #86491: <==closure== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #86722: <==closure== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #97581: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #13960: <==uncertain_firing== 18840 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #34359: <==uncertain_firing== 97581 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #38678: <==negation-removal== 86491 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #51793: <==uncertain_firing== 57386 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #51952: <==negation-removal== 79279 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #54531: <==negation-removal== 86722 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #66545: <==negation-removal== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #68263: <==negation-removal== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #69613: <==uncertain_firing== 71424 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #70168: <==negation-removal== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #73706: <==negation-removal== 71424 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #78122: <==uncertain_firing== 86722 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #81241: <==negation-removal== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #83368: <==uncertain_firing== 56717 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85746: <==uncertain_firing== 86491 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #86633: <==uncertain_firing== 79279 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #16680: <==closure== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #20150: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #32589: <==closure== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #63455: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #73054: <==closure== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #73875: <==closure== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #79050: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87781: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #16226: <==negation-removal== 16680 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #16831: <==uncertain_firing== 87781 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #17090: <==negation-removal== 73875 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #18400: <==negation-removal== 32589 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #24254: <==negation-removal== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #36057: <==uncertain_firing== 32589 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #41998: <==uncertain_firing== 73054 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #44895: <==uncertain_firing== 63455 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #59678: <==negation-removal== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #60724: <==negation-removal== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #64790: <==negation-removal== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #66630: <==uncertain_firing== 79050 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #71852: <==uncertain_firing== 16680 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #72092: <==uncertain_firing== 20150 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #74487: <==uncertain_firing== 73875 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #79993: <==negation-removal== 73054 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #18174: <==closure== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19814: <==closure== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #25180: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35645: <==closure== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #61571: <==closure== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72463: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #80104: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #85504: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #19052: <==uncertain_firing== 72463 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #25636: <==negation-removal== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #26875: <==uncertain_firing== 19814 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #28157: <==uncertain_firing== 25180 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #29523: <==negation-removal== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #29964: <==negation-removal== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #30715: <==negation-removal== 35645 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #45886: <==uncertain_firing== 61571 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #46469: <==negation-removal== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #55044: <==uncertain_firing== 85504 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #56082: <==uncertain_firing== 35645 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #59464: <==negation-removal== 18174 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #77812: <==uncertain_firing== 80104 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #78476: <==negation-removal== 19814 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #85928: <==negation-removal== 61571 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #87583: <==uncertain_firing== 18174 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #15797: <==closure== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #28277: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #31176: <==closure== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #59819: <==closure== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #69503: <==closure== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #76014: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #77215: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #84152: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #13399: <==uncertain_firing== 76014 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #15547: <==negation-removal== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #17551: <==negation-removal== 59819 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #19083: <==negation-removal== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #26499: <==uncertain_firing== 84152 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27739: <==negation-removal== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #31829: <==uncertain_firing== 59819 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #32926: <==negation-removal== 15797 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40106: <==negation-removal== 69503 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #41972: <==uncertain_firing== 28277 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #53357: <==uncertain_firing== 69503 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #56624: <==uncertain_firing== 15797 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64160: <==negation-removal== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #72696: <==uncertain_firing== 31176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #79205: <==uncertain_firing== 77215 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #82598: <==negation-removal== 31176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #20557: <==closure== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #34478: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #34969: <==closure== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #46182: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #57822: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #73184: <==closure== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75188: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #83325: <==closure== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #11385: <==uncertain_firing== 20557 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #12026: <==negation-removal== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #20435: <==negation-removal== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #23643: <==uncertain_firing== 57822 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #23867: <==negation-removal== 73184 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #23938: <==negation-removal== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25779: <==uncertain_firing== 73184 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #42683: <==uncertain_firing== 34969 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #45840: <==uncertain_firing== 83325 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #47030: <==uncertain_firing== 46182 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #54590: <==negation-removal== 34969 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #55194: <==negation-removal== 83325 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #70015: <==uncertain_firing== 75188 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #78770: <==negation-removal== 20557 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #79546: <==negation-removal== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #97693: <==uncertain_firing== 34478 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (Pb_secret_c)
                           (at_b_l2)
                           (initialized)
                           (Bb_secret_c))
        :effect (and
                    ; #27565: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #35464: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #39495: <==closure== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #41808: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #53145: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #56219: <==closure== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #68202: <==closure== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #79944: <==closure== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #12348: <==uncertain_firing== 35464 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #14688: <==negation-removal== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21800: <==uncertain_firing== 56219 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #25434: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #28746: <==uncertain_firing== 53145 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #31772: <==negation-removal== 56219 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35284: <==negation-removal== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #44105: <==uncertain_firing== 79944 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #47459: <==negation-removal== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59700: <==uncertain_firing== 27565 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #65594: <==negation-removal== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #67794: <==negation-removal== 68202 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #69795: <==negation-removal== 79944 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70574: <==uncertain_firing== 39495 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #77377: <==uncertain_firing== 68202 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #91274: <==negation-removal== 39495 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #20719: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #22121: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #33497: <==closure== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #62810: <==closure== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #69459: <==closure== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70301: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #88464: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #92142: <==closure== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #16144: <==negation-removal== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22349: <==uncertain_firing== 62810 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #36516: <==uncertain_firing== 33497 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #43535: <==negation-removal== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #50255: <==uncertain_firing== 92142 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51029: <==negation-removal== 69459 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #67961: <==negation-removal== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #70711: <==uncertain_firing== 20719 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #74446: <==uncertain_firing== 22121 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #75239: <==negation-removal== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #81269: <==negation-removal== 92142 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83936: <==uncertain_firing== 88464 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #84163: <==negation-removal== 33497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #86585: <==uncertain_firing== 69459 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87740: <==uncertain_firing== 70301 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88818: <==negation-removal== 62810 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (at_b_l1)
                           (Pb_secret_d))
        :effect (and
                    ; #18702: <==closure== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #28009: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #42225: <==closure== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #43286: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #60061: <==closure== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #80946: <==closure== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #86647: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #86922: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #20647: <==uncertain_firing== 60061 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #22290: <==uncertain_firing== 80946 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31195: <==negation-removal== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #32206: <==negation-removal== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #34361: <==uncertain_firing== 18702 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #47305: <==uncertain_firing== 42225 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #58654: <==uncertain_firing== 86647 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #63061: <==negation-removal== 60061 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64387: <==negation-removal== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #65851: <==negation-removal== 18702 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #76964: <==uncertain_firing== 86922 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #81997: <==uncertain_firing== 28009 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l1))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #82603: <==negation-removal== 80946 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #84277: <==uncertain_firing== 43286 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #84426: <==negation-removal== 42225 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #85465: <==negation-removal== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (at_b_l2)
                           (initialized)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #18625: <==closure== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #23533: <==closure== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #41867: <==closure== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #43154: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #44504: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #66233: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #70335: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #89280: <==closure== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11214: <==negation-removal== 23533 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #11811: <==uncertain_firing== 44504 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12895: <==negation-removal== 18625 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #27142: <==uncertain_firing== 43154 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36084: <==uncertain_firing== 18625 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #36479: <==negation-removal== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #41773: <==negation-removal== 89280 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #44477: <==negation-removal== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #51490: <==uncertain_firing== 89280 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #75834: <==uncertain_firing== 23533 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #81903: <==uncertain_firing== 66233 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #83082: <==uncertain_firing== 41867 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #88221: <==negation-removal== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #88668: <==negation-removal== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #89536: <==negation-removal== 41867 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #90699: <==uncertain_firing== 70335 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #11863: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #22599: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40092: <==closure== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #65539: <==closure== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71948: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #80169: <==closure== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #83380: <==closure== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11876: <==uncertain_firing== 11863 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12688: <==uncertain_firing== 40092 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #14503: <==negation-removal== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #14641: <==negation-removal== 65539 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #18316: <==negation-removal== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #28625: <==negation-removal== 40092 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31902: <==uncertain_firing== 65539 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #34374: <==negation-removal== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #40287: <==negation-removal== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #52097: <==uncertain_firing== 83380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #56918: <==negation-removal== 83380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #57726: <==uncertain_firing== 80169 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58429: <==uncertain_firing== 18593 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #59435: <==uncertain_firing== 71948 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #62188: <==negation-removal== 80169 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #76867: <==uncertain_firing== 22599 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (initialized)
                           (Pc_secret_a))
        :effect (and
                    ; #21576: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #23193: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #40025: <==closure== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #49465: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #71679: <==closure== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #76289: <==closure== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #76775: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #80381: <==closure== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #10092: <==negation-removal== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #14421: <==negation-removal== 80381 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #30535: <==negation-removal== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #42472: <==uncertain_firing== 21576 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #43941: <==uncertain_firing== 80381 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #44237: <==uncertain_firing== 40025 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #50861: <==negation-removal== 40025 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #54800: <==uncertain_firing== 49465 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #54941: <==uncertain_firing== 23193 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #65575: <==uncertain_firing== 76289 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #66339: <==uncertain_firing== 76775 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #67482: <==negation-removal== 71679 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #67805: <==negation-removal== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #69158: <==negation-removal== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #70323: <==uncertain_firing== 71679 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80205: <==negation-removal== 76289 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (Bc_secret_a)
                           (initialized)
                           (at_c_l2)
                           (Pc_secret_a))
        :effect (and
                    ; #22890: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #24872: <==closure== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #33278: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #41342: <==closure== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #66439: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83014: <==closure== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #85866: <==closure== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #89675: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #12421: <==negation-removal== 24872 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #20034: <==negation-removal== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #28752: <==uncertain_firing== 83014 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #29045: <==uncertain_firing== 85866 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #29507: <==uncertain_firing== 24872 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #42478: <==uncertain_firing== 89675 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #47237: <==negation-removal== 83014 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #47602: <==uncertain_firing== 33278 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49416: <==uncertain_firing== 22890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #56132: <==negation-removal== 85866 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #57218: <==negation-removal== 41342 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #61470: <==negation-removal== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #66637: <==negation-removal== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #66872: <==uncertain_firing== 41342 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #74358: <==uncertain_firing== 66439 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #81944: <==negation-removal== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #18840: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #56717: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #57386: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71424: <==closure== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #79279: <==closure== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #86491: <==closure== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #86722: <==closure== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #97581: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #13960: <==uncertain_firing== 18840 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #34359: <==uncertain_firing== 97581 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #38678: <==negation-removal== 86491 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #51793: <==uncertain_firing== 57386 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #51952: <==negation-removal== 79279 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #54531: <==negation-removal== 86722 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #66545: <==negation-removal== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #68263: <==negation-removal== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #69613: <==uncertain_firing== 71424 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #70168: <==negation-removal== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #73706: <==negation-removal== 71424 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #78122: <==uncertain_firing== 86722 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #81241: <==negation-removal== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #83368: <==uncertain_firing== 56717 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85746: <==uncertain_firing== 86491 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #86633: <==uncertain_firing== 79279 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (Bc_secret_b)
                           (at_c_l1)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #16680: <==closure== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #20150: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #32589: <==closure== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #63455: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #73054: <==closure== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #73875: <==closure== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #79050: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87781: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #16226: <==negation-removal== 16680 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #16831: <==uncertain_firing== 87781 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #17090: <==negation-removal== 73875 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #18400: <==negation-removal== 32589 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #24254: <==negation-removal== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #36057: <==uncertain_firing== 32589 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #41998: <==uncertain_firing== 73054 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #44895: <==uncertain_firing== 63455 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #59678: <==negation-removal== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #60724: <==negation-removal== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #64790: <==negation-removal== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #66630: <==uncertain_firing== 79050 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #71852: <==uncertain_firing== 16680 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #72092: <==uncertain_firing== 20150 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #74487: <==uncertain_firing== 73875 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #79993: <==negation-removal== 73054 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (Bc_secret_b)
                           (at_c_l2)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #18174: <==closure== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19814: <==closure== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #25180: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35645: <==closure== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #61571: <==closure== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72463: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #80104: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #85504: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #19052: <==uncertain_firing== 72463 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #25636: <==negation-removal== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #26875: <==uncertain_firing== 19814 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #28157: <==uncertain_firing== 25180 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #29523: <==negation-removal== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #29964: <==negation-removal== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #30715: <==negation-removal== 35645 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #45886: <==uncertain_firing== 61571 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #46469: <==negation-removal== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #55044: <==uncertain_firing== 85504 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #56082: <==uncertain_firing== 35645 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #59464: <==negation-removal== 18174 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #77812: <==uncertain_firing== 80104 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #78476: <==negation-removal== 19814 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #85928: <==negation-removal== 61571 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #87583: <==uncertain_firing== 18174 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_b)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #15797: <==closure== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #28277: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #31176: <==closure== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #59819: <==closure== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #69503: <==closure== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #76014: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #77215: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #84152: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #13399: <==uncertain_firing== 76014 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #15547: <==negation-removal== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #17551: <==negation-removal== 59819 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #19083: <==negation-removal== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #26499: <==uncertain_firing== 84152 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27739: <==negation-removal== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #31829: <==uncertain_firing== 59819 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #32926: <==negation-removal== 15797 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40106: <==negation-removal== 69503 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #41972: <==uncertain_firing== 28277 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #53357: <==uncertain_firing== 69503 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #56624: <==uncertain_firing== 15797 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64160: <==negation-removal== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #72696: <==uncertain_firing== 31176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #79205: <==uncertain_firing== 77215 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #82598: <==negation-removal== 31176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (Pc_secret_c)
                           (at_c_l1)
                           (Bc_secret_c)
                           (initialized))
        :effect (and
                    ; #20557: <==closure== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #34478: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #34969: <==closure== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #46182: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #57822: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #73184: <==closure== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75188: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #83325: <==closure== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #11385: <==uncertain_firing== 20557 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #12026: <==negation-removal== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #20435: <==negation-removal== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #23643: <==uncertain_firing== 57822 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #23867: <==negation-removal== 73184 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #23938: <==negation-removal== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25779: <==uncertain_firing== 73184 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #42683: <==uncertain_firing== 34969 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #45840: <==uncertain_firing== 83325 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #47030: <==uncertain_firing== 46182 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #54590: <==negation-removal== 34969 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #55194: <==negation-removal== 83325 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #70015: <==uncertain_firing== 75188 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #78770: <==negation-removal== 20557 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #79546: <==negation-removal== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #97693: <==uncertain_firing== 34478 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (Pc_secret_c)
                           (at_c_l2)
                           (Bc_secret_c)
                           (initialized))
        :effect (and
                    ; #27565: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #35464: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #39495: <==closure== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #41808: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #53145: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #56219: <==closure== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #68202: <==closure== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #79944: <==closure== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #12348: <==uncertain_firing== 35464 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #14688: <==negation-removal== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21800: <==uncertain_firing== 56219 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #25434: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #28746: <==uncertain_firing== 53145 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #31772: <==negation-removal== 56219 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35284: <==negation-removal== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #44105: <==uncertain_firing== 79944 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #47459: <==negation-removal== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59700: <==uncertain_firing== 27565 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #65594: <==negation-removal== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #67794: <==negation-removal== 68202 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #69795: <==negation-removal== 79944 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70574: <==uncertain_firing== 39495 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #77377: <==uncertain_firing== 68202 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #91274: <==negation-removal== 39495 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized))
        :effect (and
                    ; #20719: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #22121: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #33497: <==closure== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #62810: <==closure== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #69459: <==closure== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70301: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #88464: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #92142: <==closure== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #16144: <==negation-removal== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22349: <==uncertain_firing== 62810 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #36516: <==uncertain_firing== 33497 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #43535: <==negation-removal== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #50255: <==uncertain_firing== 92142 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51029: <==negation-removal== 69459 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #67961: <==negation-removal== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #70711: <==uncertain_firing== 20719 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #74446: <==uncertain_firing== 22121 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #75239: <==negation-removal== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #81269: <==negation-removal== 92142 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83936: <==uncertain_firing== 88464 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #84163: <==negation-removal== 33497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #86585: <==uncertain_firing== 69459 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87740: <==uncertain_firing== 70301 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88818: <==negation-removal== 62810 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_d)
                           (initialized)
                           (Bc_secret_d))
        :effect (and
                    ; #18702: <==closure== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #28009: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #42225: <==closure== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #43286: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #60061: <==closure== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #80946: <==closure== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #86647: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #86922: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #20647: <==uncertain_firing== 60061 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #22290: <==uncertain_firing== 80946 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31195: <==negation-removal== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #32206: <==negation-removal== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #34361: <==uncertain_firing== 18702 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #47305: <==uncertain_firing== 42225 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #58654: <==uncertain_firing== 86647 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #63061: <==negation-removal== 60061 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64387: <==negation-removal== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #65851: <==negation-removal== 18702 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #76964: <==uncertain_firing== 86922 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #81997: <==uncertain_firing== 28009 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l1))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #82603: <==negation-removal== 80946 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #84277: <==uncertain_firing== 43286 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #84426: <==negation-removal== 42225 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #85465: <==negation-removal== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #18625: <==closure== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #23533: <==closure== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #41867: <==closure== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #43154: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #44504: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #66233: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #70335: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #89280: <==closure== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11214: <==negation-removal== 23533 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #11811: <==uncertain_firing== 44504 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12895: <==negation-removal== 18625 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #27142: <==uncertain_firing== 43154 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36084: <==uncertain_firing== 18625 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #36479: <==negation-removal== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #41773: <==negation-removal== 89280 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #44477: <==negation-removal== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #51490: <==uncertain_firing== 89280 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #75834: <==uncertain_firing== 23533 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #81903: <==uncertain_firing== 66233 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #83082: <==uncertain_firing== 41867 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #88221: <==negation-removal== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #88668: <==negation-removal== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #89536: <==negation-removal== 41867 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #90699: <==uncertain_firing== 70335 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #11863: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #22599: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40092: <==closure== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #65539: <==closure== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71948: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #80169: <==closure== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #83380: <==closure== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11876: <==uncertain_firing== 11863 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12688: <==uncertain_firing== 40092 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #14503: <==negation-removal== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #14641: <==negation-removal== 65539 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #18316: <==negation-removal== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #28625: <==negation-removal== 40092 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31902: <==uncertain_firing== 65539 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #34374: <==negation-removal== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #40287: <==negation-removal== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #52097: <==uncertain_firing== 83380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #56918: <==negation-removal== 83380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #57726: <==uncertain_firing== 80169 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58429: <==uncertain_firing== 18593 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #59435: <==uncertain_firing== 71948 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #62188: <==negation-removal== 80169 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #76867: <==uncertain_firing== 22599 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (Pd_secret_a)
                           (at_d_l1)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #21576: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Ba_not_secret_a))

                    ; #23193: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #40025: <==closure== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #49465: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #71679: <==closure== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #76289: <==closure== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #76775: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #80381: <==closure== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (Pa_not_secret_a))

                    ; #10092: <==negation-removal== 23193 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #14421: <==negation-removal== 80381 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Ba_secret_a)))

                    ; #30535: <==negation-removal== 49465 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))

                    ; #42472: <==uncertain_firing== 21576 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #43941: <==uncertain_firing== 80381 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #44237: <==uncertain_firing== 40025 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #50861: <==negation-removal== 40025 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #54800: <==uncertain_firing== 49465 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #54941: <==uncertain_firing== 23193 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #65575: <==uncertain_firing== 76289 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #66339: <==uncertain_firing== 76775 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (not_at_c_l1))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #67482: <==negation-removal== 71679 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #67805: <==negation-removal== 76775 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #69158: <==negation-removal== 21576 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l1)))
                          (not (Pa_secret_a)))

                    ; #70323: <==uncertain_firing== 71679 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #80205: <==negation-removal== 76289 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a))
        :effect (and
                    ; #22890: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #24872: <==closure== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #33278: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #41342: <==closure== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #66439: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83014: <==closure== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #85866: <==closure== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #89675: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #12421: <==negation-removal== 24872 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #20034: <==negation-removal== 66439 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #28752: <==uncertain_firing== 83014 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #29045: <==uncertain_firing== 85866 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #29507: <==uncertain_firing== 24872 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #42478: <==uncertain_firing== 89675 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #47237: <==negation-removal== 83014 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #47602: <==uncertain_firing== 33278 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #49416: <==uncertain_firing== 22890 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #56132: <==negation-removal== 85866 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #57218: <==negation-removal== 41342 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #61470: <==negation-removal== 33278 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #66637: <==negation-removal== 89675 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #66872: <==uncertain_firing== 41342 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_a))
                               (not (Pd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #74358: <==uncertain_firing== 66439 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l2))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #81944: <==negation-removal== 22890 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #18840: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #56717: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #57386: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #71424: <==closure== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #79279: <==closure== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #86491: <==closure== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #86722: <==closure== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #97581: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #13960: <==uncertain_firing== 18840 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #34359: <==uncertain_firing== 97581 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #38678: <==negation-removal== 86491 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #51793: <==uncertain_firing== 57386 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #51952: <==negation-removal== 79279 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #54531: <==negation-removal== 86722 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #66545: <==negation-removal== 18840 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #68263: <==negation-removal== 97581 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #69613: <==uncertain_firing== 71424 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #70168: <==negation-removal== 56717 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #73706: <==negation-removal== 71424 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #78122: <==uncertain_firing== 86722 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #81241: <==negation-removal== 57386 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #83368: <==uncertain_firing== 56717 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (not_at_b_l3))
                               (not (Pb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #85746: <==uncertain_firing== 86491 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_a))
                               (not (Pc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #86633: <==uncertain_firing== 79279 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #16680: <==closure== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #20150: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #32589: <==closure== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #63455: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #73054: <==closure== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #73875: <==closure== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (Pa_not_secret_b))

                    ; #79050: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87781: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #16226: <==negation-removal== 16680 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #16831: <==uncertain_firing== 87781 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #17090: <==negation-removal== 73875 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #18400: <==negation-removal== 32589 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #24254: <==negation-removal== 79050 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #36057: <==uncertain_firing== 32589 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #41998: <==uncertain_firing== 73054 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_b)))

                    ; #44895: <==uncertain_firing== 63455 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #59678: <==negation-removal== 63455 (pos)
                    (when (and (and (Pa_not_secret_b)
                               (at_a_l1)))
                          (not (Pa_secret_b)))

                    ; #60724: <==negation-removal== 87781 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #64790: <==negation-removal== 20150 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #66630: <==uncertain_firing== 79050 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #71852: <==uncertain_firing== 16680 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))

                    ; #72092: <==uncertain_firing== 20150 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (Pd_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_b)))

                    ; #74487: <==uncertain_firing== 73875 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (Pa_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #79993: <==negation-removal== 73054 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (Pd_secret_b)
                           (at_d_l2)
                           (Bd_secret_b)
                           (initialized))
        :effect (and
                    ; #18174: <==closure== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Pb_not_secret_b))

                    ; #19814: <==closure== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #25180: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35645: <==closure== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Pc_not_secret_b))

                    ; #61571: <==closure== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #72463: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (Bb_not_secret_b))

                    ; #80104: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (Bc_not_secret_b))

                    ; #85504: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #19052: <==uncertain_firing== 72463 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_b)))

                    ; #25636: <==negation-removal== 80104 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Pc_secret_b)))

                    ; #26875: <==uncertain_firing== 19814 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #28157: <==uncertain_firing== 25180 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #29523: <==negation-removal== 85504 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #29964: <==negation-removal== 72463 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Pb_secret_b)))

                    ; #30715: <==negation-removal== 35645 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l2)))
                          (not (Bc_secret_b)))

                    ; #45886: <==uncertain_firing== 61571 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #46469: <==negation-removal== 25180 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #55044: <==uncertain_firing== 85504 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #56082: <==uncertain_firing== 35645 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_b)))

                    ; #59464: <==negation-removal== 18174 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l2)))
                          (not (Bb_secret_b)))

                    ; #77812: <==uncertain_firing== 80104 (pos)
                    (when (and (and (not (Bc_secret_b))
                               (not (Pc_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_b)))

                    ; #78476: <==negation-removal== 19814 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #85928: <==negation-removal== 61571 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #87583: <==uncertain_firing== 18174 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (at_d_l3)
                           (Bd_secret_b)
                           (Pd_secret_b)
                           (initialized))
        :effect (and
                    ; #15797: <==closure== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Pd_not_secret_b))

                    ; #28277: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #31176: <==closure== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Pb_not_secret_b))

                    ; #59819: <==closure== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #69503: <==closure== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #76014: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (Bb_not_secret_b))

                    ; #77215: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (Bd_not_secret_b))

                    ; #84152: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #13399: <==uncertain_firing== 76014 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_b)))

                    ; #15547: <==negation-removal== 28277 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #17551: <==negation-removal== 59819 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #19083: <==negation-removal== 76014 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Pb_secret_b)))

                    ; #26499: <==uncertain_firing== 84152 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #27739: <==negation-removal== 84152 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #31829: <==uncertain_firing== 59819 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #32926: <==negation-removal== 15797 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Bd_secret_b)))

                    ; #40106: <==negation-removal== 69503 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #41972: <==uncertain_firing== 28277 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_b))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #53357: <==uncertain_firing== 69503 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #56624: <==uncertain_firing== 15797 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #64160: <==negation-removal== 77215 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_b)))
                          (not (Pd_secret_b)))

                    ; #72696: <==uncertain_firing== 31176 (pos)
                    (when (and (and (not (Pb_secret_b))
                               (not (Bb_secret_b))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_b)))

                    ; #79205: <==uncertain_firing== 77215 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #82598: <==negation-removal== 31176 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l3)))
                          (not (Bb_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #20557: <==closure== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #34478: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #34969: <==closure== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #46182: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #57822: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #73184: <==closure== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #75188: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Ba_not_secret_c))

                    ; #83325: <==closure== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (Pa_not_secret_c))

                    ; #11385: <==uncertain_firing== 20557 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #12026: <==negation-removal== 46182 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #20435: <==negation-removal== 34478 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #23643: <==uncertain_firing== 57822 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #23867: <==negation-removal== 73184 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #23938: <==negation-removal== 75188 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Pa_secret_c)))

                    ; #25779: <==uncertain_firing== 73184 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #42683: <==uncertain_firing== 34969 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #45840: <==uncertain_firing== 83325 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #47030: <==uncertain_firing== 46182 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (Bc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #54590: <==negation-removal== 34969 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #55194: <==negation-removal== 83325 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l1)))
                          (not (Ba_secret_c)))

                    ; #70015: <==uncertain_firing== 75188 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #78770: <==negation-removal== 20557 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #79546: <==negation-removal== 57822 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #97693: <==uncertain_firing== 34478 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #27565: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #35464: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #39495: <==closure== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #41808: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #53145: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #56219: <==closure== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #68202: <==closure== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #79944: <==closure== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #12348: <==uncertain_firing== 35464 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #14688: <==negation-removal== 27565 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #21800: <==uncertain_firing== 56219 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #25434: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #28746: <==uncertain_firing== 53145 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #31772: <==negation-removal== 56219 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #35284: <==negation-removal== 41808 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #44105: <==uncertain_firing== 79944 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #47459: <==negation-removal== 35464 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #59700: <==uncertain_firing== 27565 (pos)
                    (when (and (and (not (Pc_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #65594: <==negation-removal== 53145 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #67794: <==negation-removal== 68202 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #69795: <==negation-removal== 79944 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #70574: <==uncertain_firing== 39495 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #77377: <==uncertain_firing== 68202 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l2))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #91274: <==negation-removal== 39495 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #20719: origin
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Ba_not_secret_c))

                    ; #22121: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #33497: <==closure== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #62810: <==closure== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (Pa_not_secret_c))

                    ; #69459: <==closure== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #70301: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #88464: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #92142: <==closure== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #16144: <==negation-removal== 70301 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22349: <==uncertain_firing== 62810 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #36516: <==uncertain_firing== 33497 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #43535: <==negation-removal== 20719 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Pa_secret_c)))

                    ; #50255: <==uncertain_firing== 92142 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #51029: <==negation-removal== 69459 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #67961: <==negation-removal== 22121 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #70711: <==uncertain_firing== 20719 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #74446: <==uncertain_firing== 22121 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #75239: <==negation-removal== 88464 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #81269: <==negation-removal== 92142 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83936: <==uncertain_firing== 88464 (pos)
                    (when (and (and (not (Pb_secret_c))
                               (not (not_at_b_l3))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #84163: <==negation-removal== 33497 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #86585: <==uncertain_firing== 69459 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #87740: <==uncertain_firing== 70301 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #88818: <==negation-removal== 62810 (pos)
                    (when (and (and (Pa_not_secret_c)
                               (at_a_l3)))
                          (not (Ba_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (at_d_l1)
                           (Bd_secret_d))
        :effect (and
                    ; #18702: <==closure== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Pa_not_secret_d))

                    ; #28009: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #42225: <==closure== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #43286: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #60061: <==closure== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #80946: <==closure== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #86647: origin
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (Ba_not_secret_d))

                    ; #86922: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #20647: <==uncertain_firing== 60061 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #22290: <==uncertain_firing== 80946 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #31195: <==negation-removal== 86647 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Pa_secret_d)))

                    ; #32206: <==negation-removal== 28009 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #34361: <==uncertain_firing== 18702 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #47305: <==uncertain_firing== 42225 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #58654: <==uncertain_firing== 86647 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #63061: <==negation-removal== 60061 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #64387: <==negation-removal== 43286 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #65851: <==negation-removal== 18702 (pos)
                    (when (and (and (Pa_not_secret_d)
                               (at_a_l1)))
                          (not (Ba_secret_d)))

                    ; #76964: <==uncertain_firing== 86922 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (Pd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #81997: <==uncertain_firing== 28009 (pos)
                    (when (and (and (not (Pc_secret_d))
                               (not (not_at_c_l1))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #82603: <==negation-removal== 80946 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #84277: <==uncertain_firing== 43286 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #84426: <==negation-removal== 42225 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #85465: <==negation-removal== 86922 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d))
        :effect (and
                    ; #18625: <==closure== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #23533: <==closure== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #41867: <==closure== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Pc_not_secret_d))

                    ; #43154: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #44504: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #66233: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (Bc_not_secret_d))

                    ; #70335: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #89280: <==closure== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11214: <==negation-removal== 23533 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #11811: <==uncertain_firing== 44504 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12895: <==negation-removal== 18625 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #27142: <==uncertain_firing== 43154 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #36084: <==uncertain_firing== 18625 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l2))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #36479: <==negation-removal== 66233 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Pc_secret_d)))

                    ; #41773: <==negation-removal== 89280 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #44477: <==negation-removal== 44504 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #51490: <==uncertain_firing== 89280 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #75834: <==uncertain_firing== 23533 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #81903: <==uncertain_firing== 66233 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #83082: <==uncertain_firing== 41867 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #88221: <==negation-removal== 43154 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #88668: <==negation-removal== 70335 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #89536: <==negation-removal== 41867 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l2)))
                          (not (Bc_secret_d)))

                    ; #90699: <==uncertain_firing== 70335 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d))
        :effect (and
                    ; #11863: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #18593: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #22599: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Bd_not_secret_d))

                    ; #40092: <==closure== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (Pd_not_secret_d))

                    ; #65539: <==closure== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #71948: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #80169: <==closure== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #83380: <==closure== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #11876: <==uncertain_firing== 11863 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #12688: <==uncertain_firing== 40092 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #14503: <==negation-removal== 22599 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Pd_secret_d)))

                    ; #14641: <==negation-removal== 65539 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #18316: <==negation-removal== 18593 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #28625: <==negation-removal== 40092 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_d)))
                          (not (Bd_secret_d)))

                    ; #31902: <==uncertain_firing== 65539 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #34374: <==negation-removal== 11863 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #40287: <==negation-removal== 71948 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #52097: <==uncertain_firing== 83380 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Ba_secret_d)))

                    ; #56918: <==negation-removal== 83380 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #57726: <==uncertain_firing== 80169 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l3))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #58429: <==uncertain_firing== 18593 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_secret_d))
                               (not (Bc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #59435: <==uncertain_firing== 71948 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_secret_d))
                               (not (Ba_secret_d))))
                          (not (Pa_secret_d)))

                    ; #62188: <==negation-removal== 80169 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #76867: <==uncertain_firing== 22599 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_secret_d))
                               (not (Bd_secret_d))))
                          (not (Pd_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #15256: origin
                    (Bc_secret_c)

                    ; #21422: <==closure== 47869 (pos)
                    (Pd_secret_d)

                    ; #28398: origin
                    (Bb_secret_b)

                    ; #39757: origin
                    (Ba_secret_a)

                    ; #47869: origin
                    (Bd_secret_d)

                    ; #60706: <==closure== 39757 (pos)
                    (Pa_secret_a)

                    ; #76829: <==closure== 15256 (pos)
                    (Pc_secret_c)

                    ; #83142: <==closure== 28398 (pos)
                    (Pb_secret_b)

                    ; #91894: origin
                    (initialized)

                    ; #15946: <==negation-removal== 47869 (pos)
                    (not (Pd_not_secret_d))

                    ; #18201: <==negation-removal== 91894 (pos)
                    (not (not_initialized))

                    ; #39769: <==negation-removal== 83142 (pos)
                    (not (Bb_not_secret_b))

                    ; #51208: <==negation-removal== 76829 (pos)
                    (not (Bc_not_secret_c))

                    ; #53813: <==negation-removal== 60706 (pos)
                    (not (Ba_not_secret_a))

                    ; #68897: <==negation-removal== 21422 (pos)
                    (not (Bd_not_secret_d))

                    ; #72507: <==negation-removal== 39757 (pos)
                    (not (Pa_not_secret_a))

                    ; #79686: <==negation-removal== 15256 (pos)
                    (not (Pc_not_secret_c))

                    ; #81238: <==negation-removal== 28398 (pos)
                    (not (Pb_not_secret_b))))

    (:action move_a_l1_l1
        :precondition (and (connected_l1_l1)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #17293: origin
                    (not_at_a_l1)

                    ; #74303: origin
                    (at_a_l1)

                    ; #17293: <==negation-removal== 74303 (pos)
                    (not (not_at_a_l1))

                    ; #74303: <==negation-removal== 17293 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #17293: origin
                    (not_at_a_l1)

                    ; #70819: origin
                    (at_a_l2)

                    ; #23743: <==negation-removal== 70819 (pos)
                    (not (not_at_a_l2))

                    ; #74303: <==negation-removal== 17293 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l3
        :precondition (and (initialized)
                           (connected_l1_l3)
                           (at_a_l1))
        :effect (and
                    ; #17293: origin
                    (not_at_a_l1)

                    ; #23335: origin
                    (at_a_l3)

                    ; #23335: <==negation-removal== 23335 (pos)
                    (not (not_at_a_l3))

                    ; #74303: <==negation-removal== 17293 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_a_l2)
                           (initialized))
        :effect (and
                    ; #23743: origin
                    (not_at_a_l2)

                    ; #74303: origin
                    (at_a_l1)

                    ; #17293: <==negation-removal== 74303 (pos)
                    (not (not_at_a_l1))

                    ; #70819: <==negation-removal== 23743 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #23743: origin
                    (not_at_a_l2)

                    ; #70819: origin
                    (at_a_l2)

                    ; #23743: <==negation-removal== 70819 (pos)
                    (not (not_at_a_l2))

                    ; #70819: <==negation-removal== 23743 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (connected_l2_l3)
                           (at_a_l2)
                           (initialized))
        :effect (and
                    ; #23335: origin
                    (at_a_l3)

                    ; #23743: origin
                    (not_at_a_l2)

                    ; #23335: <==negation-removal== 23335 (pos)
                    (not (not_at_a_l3))

                    ; #70819: <==negation-removal== 23743 (pos)
                    (not (at_a_l2))))

    (:action move_a_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_a_l3)
                           (initialized))
        :effect (and
                    ; #23335: origin
                    (not_at_a_l3)

                    ; #74303: origin
                    (at_a_l1)

                    ; #17293: <==negation-removal== 74303 (pos)
                    (not (not_at_a_l1))

                    ; #23335: <==negation-removal== 23335 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l2
        :precondition (and (at_a_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #23335: origin
                    (not_at_a_l3)

                    ; #70819: origin
                    (at_a_l2)

                    ; #23335: <==negation-removal== 23335 (pos)
                    (not (at_a_l3))

                    ; #23743: <==negation-removal== 70819 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (initialized)
                           (at_a_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #23335: origin
                    (not_at_a_l3)

                    ; #23335: origin
                    (at_a_l3)

                    ; #23335: <==negation-removal== 23335 (pos)
                    (not (not_at_a_l3))

                    ; #23335: <==negation-removal== 23335 (pos)
                    (not (at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #57343: origin
                    (at_b_l1)

                    ; #84347: origin
                    (not_at_b_l1)

                    ; #57343: <==negation-removal== 84347 (pos)
                    (not (at_b_l1))

                    ; #84347: <==negation-removal== 57343 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #26350: origin
                    (at_b_l2)

                    ; #84347: origin
                    (not_at_b_l1)

                    ; #57343: <==negation-removal== 84347 (pos)
                    (not (at_b_l1))

                    ; #94540: <==negation-removal== 26350 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l1_l3
        :precondition (and (at_b_l1)
                           (connected_l1_l3)
                           (initialized))
        :effect (and
                    ; #56450: origin
                    (at_b_l3)

                    ; #84347: origin
                    (not_at_b_l1)

                    ; #49707: <==negation-removal== 56450 (pos)
                    (not (not_at_b_l3))

                    ; #57343: <==negation-removal== 84347 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1)
                           (initialized))
        :effect (and
                    ; #57343: origin
                    (at_b_l1)

                    ; #94540: origin
                    (not_at_b_l2)

                    ; #26350: <==negation-removal== 94540 (pos)
                    (not (at_b_l2))

                    ; #84347: <==negation-removal== 57343 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #26350: origin
                    (at_b_l2)

                    ; #94540: origin
                    (not_at_b_l2)

                    ; #26350: <==negation-removal== 94540 (pos)
                    (not (at_b_l2))

                    ; #94540: <==negation-removal== 26350 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (connected_l2_l3)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #56450: origin
                    (at_b_l3)

                    ; #94540: origin
                    (not_at_b_l2)

                    ; #26350: <==negation-removal== 94540 (pos)
                    (not (at_b_l2))

                    ; #49707: <==negation-removal== 56450 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l3_l1
        :precondition (and (connected_l3_l1)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #49707: origin
                    (not_at_b_l3)

                    ; #57343: origin
                    (at_b_l1)

                    ; #56450: <==negation-removal== 49707 (pos)
                    (not (at_b_l3))

                    ; #84347: <==negation-removal== 57343 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l3_l2
        :precondition (and (initialized)
                           (connected_l3_l2)
                           (at_b_l3))
        :effect (and
                    ; #26350: origin
                    (at_b_l2)

                    ; #49707: origin
                    (not_at_b_l3)

                    ; #56450: <==negation-removal== 49707 (pos)
                    (not (at_b_l3))

                    ; #94540: <==negation-removal== 26350 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_b_l3))
        :effect (and
                    ; #49707: origin
                    (not_at_b_l3)

                    ; #56450: origin
                    (at_b_l3)

                    ; #49707: <==negation-removal== 56450 (pos)
                    (not (not_at_b_l3))

                    ; #56450: <==negation-removal== 49707 (pos)
                    (not (at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_c_l1)
                           (initialized))
        :effect (and
                    ; #18020: origin
                    (not_at_c_l1)

                    ; #76140: origin
                    (at_c_l1)

                    ; #18020: <==negation-removal== 76140 (pos)
                    (not (not_at_c_l1))

                    ; #76140: <==negation-removal== 18020 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (initialized)
                           (connected_l1_l2))
        :effect (and
                    ; #18020: origin
                    (not_at_c_l1)

                    ; #48340: origin
                    (at_c_l2)

                    ; #26403: <==negation-removal== 48340 (pos)
                    (not (not_at_c_l2))

                    ; #76140: <==negation-removal== 18020 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l3
        :precondition (and (at_c_l1)
                           (connected_l1_l3)
                           (initialized))
        :effect (and
                    ; #18020: origin
                    (not_at_c_l1)

                    ; #57532: origin
                    (at_c_l3)

                    ; #69637: <==negation-removal== 57532 (pos)
                    (not (not_at_c_l3))

                    ; #76140: <==negation-removal== 18020 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_c_l2)
                           (initialized))
        :effect (and
                    ; #26403: origin
                    (not_at_c_l2)

                    ; #76140: origin
                    (at_c_l1)

                    ; #18020: <==negation-removal== 76140 (pos)
                    (not (not_at_c_l1))

                    ; #48340: <==negation-removal== 26403 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #26403: origin
                    (not_at_c_l2)

                    ; #48340: origin
                    (at_c_l2)

                    ; #26403: <==negation-removal== 48340 (pos)
                    (not (not_at_c_l2))

                    ; #48340: <==negation-removal== 26403 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (connected_l2_l3)
                           (at_c_l2)
                           (initialized))
        :effect (and
                    ; #26403: origin
                    (not_at_c_l2)

                    ; #57532: origin
                    (at_c_l3)

                    ; #48340: <==negation-removal== 26403 (pos)
                    (not (at_c_l2))

                    ; #69637: <==negation-removal== 57532 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (connected_l3_l1)
                           (at_c_l3)
                           (initialized))
        :effect (and
                    ; #69637: origin
                    (not_at_c_l3)

                    ; #76140: origin
                    (at_c_l1)

                    ; #18020: <==negation-removal== 76140 (pos)
                    (not (not_at_c_l1))

                    ; #57532: <==negation-removal== 69637 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l2
        :precondition (and (at_c_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #48340: origin
                    (at_c_l2)

                    ; #69637: origin
                    (not_at_c_l3)

                    ; #26403: <==negation-removal== 48340 (pos)
                    (not (not_at_c_l2))

                    ; #57532: <==negation-removal== 69637 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #57532: origin
                    (at_c_l3)

                    ; #69637: origin
                    (not_at_c_l3)

                    ; #57532: <==negation-removal== 69637 (pos)
                    (not (at_c_l3))

                    ; #69637: <==negation-removal== 57532 (pos)
                    (not (not_at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #41990: origin
                    (at_d_l1)

                    ; #51473: origin
                    (not_at_d_l1)

                    ; #41990: <==negation-removal== 51473 (pos)
                    (not (at_d_l1))

                    ; #51473: <==negation-removal== 41990 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #51473: origin
                    (not_at_d_l1)

                    ; #57411: origin
                    (at_d_l2)

                    ; #24874: <==negation-removal== 57411 (pos)
                    (not (not_at_d_l2))

                    ; #41990: <==negation-removal== 51473 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l3
        :precondition (and (at_d_l1)
                           (connected_l1_l3)
                           (initialized))
        :effect (and
                    ; #37986: origin
                    (at_d_l3)

                    ; #51473: origin
                    (not_at_d_l1)

                    ; #41990: <==negation-removal== 51473 (pos)
                    (not (at_d_l1))

                    ; #42555: <==negation-removal== 37986 (pos)
                    (not (not_at_d_l3))))

    (:action move_d_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_d_l2)
                           (initialized))
        :effect (and
                    ; #24874: origin
                    (not_at_d_l2)

                    ; #41990: origin
                    (at_d_l1)

                    ; #51473: <==negation-removal== 41990 (pos)
                    (not (not_at_d_l1))

                    ; #57411: <==negation-removal== 24874 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2)
                           (initialized))
        :effect (and
                    ; #24874: origin
                    (not_at_d_l2)

                    ; #57411: origin
                    (at_d_l2)

                    ; #24874: <==negation-removal== 57411 (pos)
                    (not (not_at_d_l2))

                    ; #57411: <==negation-removal== 24874 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (connected_l2_l3)
                           (at_d_l2)
                           (initialized))
        :effect (and
                    ; #24874: origin
                    (not_at_d_l2)

                    ; #37986: origin
                    (at_d_l3)

                    ; #42555: <==negation-removal== 37986 (pos)
                    (not (not_at_d_l3))

                    ; #57411: <==negation-removal== 24874 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (at_d_l3)
                           (connected_l3_l1)
                           (initialized))
        :effect (and
                    ; #41990: origin
                    (at_d_l1)

                    ; #42555: origin
                    (not_at_d_l3)

                    ; #37986: <==negation-removal== 42555 (pos)
                    (not (at_d_l3))

                    ; #51473: <==negation-removal== 41990 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l3_l2
        :precondition (and (at_d_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #42555: origin
                    (not_at_d_l3)

                    ; #57411: origin
                    (at_d_l2)

                    ; #24874: <==negation-removal== 57411 (pos)
                    (not (not_at_d_l2))

                    ; #37986: <==negation-removal== 42555 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #37986: origin
                    (at_d_l3)

                    ; #42555: origin
                    (not_at_d_l3)

                    ; #37986: <==negation-removal== 42555 (pos)
                    (not (at_d_l3))

                    ; #42555: <==negation-removal== 37986 (pos)
                    (not (not_at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #10381: <==closure== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #22213: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #23032: <==closure== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #35183: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #43055: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46667: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #58296: <==closure== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #78551: <==closure== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #18002: <==uncertain_firing== 23032 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #24442: <==negation-removal== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #27918: <==uncertain_firing== 58296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #29532: <==uncertain_firing== 10381 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #32218: <==negation-removal== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #33107: <==uncertain_firing== 22213 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #41058: <==uncertain_firing== 43055 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #46137: <==negation-removal== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #57035: <==uncertain_firing== 78551 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #59586: <==uncertain_firing== 35183 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #63342: <==negation-removal== 78551 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #71029: <==uncertain_firing== 46667 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #73822: <==negation-removal== 10381 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #74498: <==negation-removal== 58296 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #88761: <==negation-removal== 23032 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #90434: <==negation-removal== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Ba_secret_a)
                           (at_a_l2)
                           (Pa_secret_a)
                           (initialized))
        :effect (and
                    ; #18057: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #34147: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #41939: <==closure== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #56595: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #72118: <==closure== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78131: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79742: <==closure== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #84744: <==closure== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #16173: <==uncertain_firing== 34147 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #22083: <==negation-removal== 79742 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #28499: <==negation-removal== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28774: <==negation-removal== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #28783: <==uncertain_firing== 56595 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #31825: <==uncertain_firing== 79742 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #35063: <==negation-removal== 72118 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #42837: <==negation-removal== 84744 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45229: <==negation-removal== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #61018: <==uncertain_firing== 41939 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #64800: <==negation-removal== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69049: <==uncertain_firing== 78131 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #75680: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #80692: <==uncertain_firing== 18057 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #83092: <==uncertain_firing== 84744 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #84379: <==negation-removal== 41939 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (Ba_secret_a)
                           (at_a_l3)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #18414: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #31475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34659: <==closure== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #71556: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #75845: <==closure== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78207: <==closure== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #89604: <==closure== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #89658: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #11135: <==uncertain_firing== 71556 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #11410: <==uncertain_firing== 75845 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #19316: <==negation-removal== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #22216: <==negation-removal== 78207 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23250: <==negation-removal== 75845 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #33859: <==uncertain_firing== 31475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #35715: <==uncertain_firing== 89658 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #41390: <==negation-removal== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #59875: <==negation-removal== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #60213: <==uncertain_firing== 18414 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64673: <==negation-removal== 34659 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #74523: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83417: <==negation-removal== 89604 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #87101: <==negation-removal== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #91144: <==uncertain_firing== 34659 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #94318: <==uncertain_firing== 89604 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (initialized)
                           (Pa_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #11164: <==closure== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #11684: <==closure== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #17150: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #44574: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #51966: <==closure== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #55075: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #77843: <==closure== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85259: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #16019: <==negation-removal== 77843 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #21689: <==negation-removal== 51966 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24704: <==uncertain_firing== 11164 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27439: <==negation-removal== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #27741: <==negation-removal== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #27851: <==uncertain_firing== 11684 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #33760: <==uncertain_firing== 44574 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #35514: <==uncertain_firing== 85259 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #35894: <==negation-removal== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #43161: <==negation-removal== 11684 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46256: <==negation-removal== 11164 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #49630: <==negation-removal== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #52624: <==uncertain_firing== 55075 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #58063: <==uncertain_firing== 77843 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #73061: <==uncertain_firing== 51966 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #73917: <==uncertain_firing== 17150 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #10164: <==closure== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #15440: <==closure== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #17303: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21251: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #28556: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #29425: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78249: <==closure== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #79114: <==closure== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #27371: <==negation-removal== 15440 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #33050: <==negation-removal== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #41390: <==uncertain_firing== 78249 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #41481: <==uncertain_firing== 21251 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43533: <==negation-removal== 10164 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #43623: <==negation-removal== 79114 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #44132: <==negation-removal== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #48040: <==uncertain_firing== 29425 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #53109: <==negation-removal== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #55433: <==uncertain_firing== 10164 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #62664: <==uncertain_firing== 28556 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #63826: <==uncertain_firing== 15440 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #68931: <==negation-removal== 78249 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #69389: <==negation-removal== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #76024: <==uncertain_firing== 17303 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #88524: <==uncertain_firing== 79114 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (Ba_secret_b)
                           (at_a_l3)
                           (Pa_secret_b)
                           (initialized))
        :effect (and
                    ; #30526: <==closure== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33009: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #35887: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #50016: <==closure== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #56503: <==closure== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #69499: <==closure== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #73833: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #80376: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #14729: <==negation-removal== 30526 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15802: <==uncertain_firing== 69499 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #18327: <==uncertain_firing== 73833 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19155: <==negation-removal== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #20117: <==uncertain_firing== 30526 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #24399: <==uncertain_firing== 80376 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29020: <==negation-removal== 50016 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #31271: <==uncertain_firing== 35887 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #48874: <==uncertain_firing== 56503 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #58750: <==negation-removal== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #68155: <==negation-removal== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71349: <==negation-removal== 56503 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #81874: <==uncertain_firing== 33009 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89330: <==negation-removal== 69499 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #89779: <==uncertain_firing== 50016 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #90428: <==negation-removal== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #22070: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #27702: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #45137: <==closure== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #45817: <==closure== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #49043: <==closure== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #53561: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #78731: <==closure== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #81058: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #15004: <==negation-removal== 78731 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #20987: <==negation-removal== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #30297: <==uncertain_firing== 81058 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #33317: <==uncertain_firing== 45817 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #41075: <==negation-removal== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #42936: <==uncertain_firing== 53561 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #49858: <==negation-removal== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #51376: <==negation-removal== 45137 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #54716: <==uncertain_firing== 27702 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #58174: <==negation-removal== 45817 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #59520: <==uncertain_firing== 22070 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #63907: <==uncertain_firing== 45137 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #65775: <==negation-removal== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #74107: <==negation-removal== 49043 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #78086: <==uncertain_firing== 78731 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #91805: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Pa_secret_c)
                           (at_a_l2)
                           (initialized)
                           (Ba_secret_c))
        :effect (and
                    ; #25620: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #47068: <==closure== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #69760: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #70458: <==closure== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #73650: <==closure== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #75971: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #83266: <==closure== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #83826: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #11228: <==uncertain_firing== 69760 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #20348: <==negation-removal== 47068 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #21361: <==uncertain_firing== 47068 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22482: <==negation-removal== 83266 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #23397: <==uncertain_firing== 83826 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #31351: <==negation-removal== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #39303: <==uncertain_firing== 83266 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #46572: <==uncertain_firing== 75971 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47243: <==negation-removal== 73650 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #47306: <==negation-removal== 70458 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #70838: <==uncertain_firing== 70458 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #74863: <==negation-removal== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #76807: <==negation-removal== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #79045: <==uncertain_firing== 25620 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #82681: <==negation-removal== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #87190: <==uncertain_firing== 73650 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (Pa_secret_c)
                           (at_a_l3)
                           (initialized)
                           (Ba_secret_c))
        :effect (and
                    ; #16300: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #27452: <==closure== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #36874: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #59446: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #63547: <==closure== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #72757: <==closure== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #87526: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #87584: <==closure== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #13458: <==negation-removal== 63547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #13694: <==uncertain_firing== 87584 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_c)))

                    ; #20101: <==negation-removal== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #22297: <==uncertain_firing== 16300 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #23738: <==negation-removal== 72757 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #31774: <==uncertain_firing== 36874 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #36478: <==negation-removal== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #41472: <==uncertain_firing== 27452 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #42815: <==negation-removal== 87584 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #60915: <==negation-removal== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #62805: <==negation-removal== 27452 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #66430: <==negation-removal== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #72700: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #76180: <==uncertain_firing== 87526 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #80932: <==uncertain_firing== 63547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #88458: <==uncertain_firing== 59446 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (initialized)
                           (Pa_secret_d)
                           (Ba_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #10262: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #30152: <==closure== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #39338: <==closure== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #41662: <==closure== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #46776: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #66866: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #76645: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #81570: <==closure== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #10641: <==negation-removal== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #27470: <==uncertain_firing== 81570 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #32111: <==negation-removal== 30152 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33100: <==negation-removal== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34475: <==negation-removal== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #43219: <==uncertain_firing== 39338 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #44339: <==uncertain_firing== 76645 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #63613: <==negation-removal== 39338 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #65797: <==negation-removal== 41662 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #70575: <==uncertain_firing== 46776 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #74158: <==negation-removal== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #79466: <==negation-removal== 81570 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #82291: <==uncertain_firing== 41662 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #84346: <==uncertain_firing== 66866 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #90353: <==uncertain_firing== 10262 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #91847: <==uncertain_firing== 30152 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Pa_secret_d)
                           (at_a_l2)
                           (Ba_secret_d)
                           (initialized))
        :effect (and
                    ; #15917: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #16614: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #26369: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #39416: <==closure== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #50509: <==closure== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #60523: <==closure== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71914: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #77879: <==closure== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #13421: <==negation-removal== 39416 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #20035: <==negation-removal== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #22044: <==negation-removal== 60523 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #28861: <==negation-removal== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28919: <==uncertain_firing== 16614 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #29995: <==uncertain_firing== 50509 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #30353: <==negation-removal== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #32738: <==uncertain_firing== 71914 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #53846: <==uncertain_firing== 60523 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #56528: <==uncertain_firing== 15917 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #57512: <==uncertain_firing== 26369 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #65328: <==negation-removal== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #72501: <==uncertain_firing== 39416 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #76940: <==uncertain_firing== 77879 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #88462: <==negation-removal== 50509 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #89538: <==negation-removal== 77879 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (Pa_secret_d)
                           (at_a_l3)
                           (Ba_secret_d)
                           (initialized))
        :effect (and
                    ; #18080: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #19903: <==closure== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #26816: <==closure== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #37179: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #56255: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #57438: <==closure== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #70273: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #74231: <==closure== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #12663: <==negation-removal== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19970: <==negation-removal== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28195: <==negation-removal== 57438 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39065: <==uncertain_firing== 57438 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #42062: <==uncertain_firing== 56255 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #46009: <==negation-removal== 19903 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #51339: <==negation-removal== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #52039: <==uncertain_firing== 18080 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56224: <==uncertain_firing== 26816 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #58763: <==uncertain_firing== 74231 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #70534: <==negation-removal== 26816 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #75453: <==negation-removal== 74231 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #79983: <==uncertain_firing== 37179 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85050: <==negation-removal== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #90037: <==uncertain_firing== 19903 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #96459: <==uncertain_firing== 70273 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a)
                           (initialized))
        :effect (and
                    ; #10381: <==closure== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #22213: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #23032: <==closure== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #35183: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #43055: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46667: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #58296: <==closure== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #78551: <==closure== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #18002: <==uncertain_firing== 23032 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #24442: <==negation-removal== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #27918: <==uncertain_firing== 58296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #29532: <==uncertain_firing== 10381 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #32218: <==negation-removal== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #33107: <==uncertain_firing== 22213 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #41058: <==uncertain_firing== 43055 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #46137: <==negation-removal== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #57035: <==uncertain_firing== 78551 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #59586: <==uncertain_firing== 35183 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #63342: <==negation-removal== 78551 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #71029: <==uncertain_firing== 46667 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #73822: <==negation-removal== 10381 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #74498: <==negation-removal== 58296 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #88761: <==negation-removal== 23032 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #90434: <==negation-removal== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (at_b_l2)
                           (Pb_secret_a)
                           (initialized))
        :effect (and
                    ; #18057: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #34147: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #41939: <==closure== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #56595: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #72118: <==closure== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78131: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79742: <==closure== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #84744: <==closure== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #16173: <==uncertain_firing== 34147 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #22083: <==negation-removal== 79742 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #28499: <==negation-removal== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28774: <==negation-removal== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #28783: <==uncertain_firing== 56595 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #31825: <==uncertain_firing== 79742 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #35063: <==negation-removal== 72118 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #42837: <==negation-removal== 84744 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45229: <==negation-removal== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #61018: <==uncertain_firing== 41939 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #64800: <==negation-removal== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69049: <==uncertain_firing== 78131 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #75680: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #80692: <==uncertain_firing== 18057 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #83092: <==uncertain_firing== 84744 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #84379: <==negation-removal== 41939 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (Bb_secret_a)
                           (initialized)
                           (Pb_secret_a)
                           (at_b_l3))
        :effect (and
                    ; #18414: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #31475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34659: <==closure== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #71556: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #75845: <==closure== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78207: <==closure== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #89604: <==closure== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #89658: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #11135: <==uncertain_firing== 71556 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #11410: <==uncertain_firing== 75845 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #19316: <==negation-removal== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #22216: <==negation-removal== 78207 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23250: <==negation-removal== 75845 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #33859: <==uncertain_firing== 31475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #35715: <==uncertain_firing== 89658 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #41390: <==negation-removal== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #59875: <==negation-removal== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #60213: <==uncertain_firing== 18414 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64673: <==negation-removal== 34659 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #74523: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83417: <==negation-removal== 89604 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #87101: <==negation-removal== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #91144: <==uncertain_firing== 34659 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #94318: <==uncertain_firing== 89604 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #11164: <==closure== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #11684: <==closure== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #17150: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #44574: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #51966: <==closure== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #55075: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #77843: <==closure== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85259: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #16019: <==negation-removal== 77843 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #21689: <==negation-removal== 51966 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24704: <==uncertain_firing== 11164 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27439: <==negation-removal== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #27741: <==negation-removal== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #27851: <==uncertain_firing== 11684 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #33760: <==uncertain_firing== 44574 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #35514: <==uncertain_firing== 85259 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #35894: <==negation-removal== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #43161: <==negation-removal== 11684 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46256: <==negation-removal== 11164 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #49630: <==negation-removal== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #52624: <==uncertain_firing== 55075 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #58063: <==uncertain_firing== 77843 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #73061: <==uncertain_firing== 51966 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #73917: <==uncertain_firing== 17150 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #10164: <==closure== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #15440: <==closure== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #17303: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21251: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #28556: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #29425: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78249: <==closure== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #79114: <==closure== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #27371: <==negation-removal== 15440 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #33050: <==negation-removal== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #41390: <==uncertain_firing== 78249 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #41481: <==uncertain_firing== 21251 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43533: <==negation-removal== 10164 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #43623: <==negation-removal== 79114 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #44132: <==negation-removal== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #48040: <==uncertain_firing== 29425 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #53109: <==negation-removal== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #55433: <==uncertain_firing== 10164 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #62664: <==uncertain_firing== 28556 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #63826: <==uncertain_firing== 15440 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #68931: <==negation-removal== 78249 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #69389: <==negation-removal== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #76024: <==uncertain_firing== 17303 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #88524: <==uncertain_firing== 79114 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #30526: <==closure== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33009: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #35887: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #50016: <==closure== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #56503: <==closure== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #69499: <==closure== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #73833: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #80376: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #14729: <==negation-removal== 30526 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15802: <==uncertain_firing== 69499 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #18327: <==uncertain_firing== 73833 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19155: <==negation-removal== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #20117: <==uncertain_firing== 30526 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #24399: <==uncertain_firing== 80376 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29020: <==negation-removal== 50016 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #31271: <==uncertain_firing== 35887 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #48874: <==uncertain_firing== 56503 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #58750: <==negation-removal== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #68155: <==negation-removal== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71349: <==negation-removal== 56503 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #81874: <==uncertain_firing== 33009 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89330: <==negation-removal== 69499 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #89779: <==uncertain_firing== 50016 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #90428: <==negation-removal== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (initialized)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #22070: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #27702: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #45137: <==closure== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #45817: <==closure== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #49043: <==closure== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #53561: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #78731: <==closure== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #81058: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #15004: <==negation-removal== 78731 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #20987: <==negation-removal== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #30297: <==uncertain_firing== 81058 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #33317: <==uncertain_firing== 45817 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #41075: <==negation-removal== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #42936: <==uncertain_firing== 53561 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #49858: <==negation-removal== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #51376: <==negation-removal== 45137 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #54716: <==uncertain_firing== 27702 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #58174: <==negation-removal== 45817 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #59520: <==uncertain_firing== 22070 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #63907: <==uncertain_firing== 45137 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #65775: <==negation-removal== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #74107: <==negation-removal== 49043 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #78086: <==uncertain_firing== 78731 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #91805: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (at_b_l2)
                           (initialized)
                           (Bb_secret_c))
        :effect (and
                    ; #25620: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #47068: <==closure== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #69760: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #70458: <==closure== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #73650: <==closure== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #75971: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #83266: <==closure== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #83826: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #11228: <==uncertain_firing== 69760 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #20348: <==negation-removal== 47068 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #21361: <==uncertain_firing== 47068 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22482: <==negation-removal== 83266 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #23397: <==uncertain_firing== 83826 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #31351: <==negation-removal== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #39303: <==uncertain_firing== 83266 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #46572: <==uncertain_firing== 75971 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47243: <==negation-removal== 73650 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #47306: <==negation-removal== 70458 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #70838: <==uncertain_firing== 70458 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #74863: <==negation-removal== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #76807: <==negation-removal== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #79045: <==uncertain_firing== 25620 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #82681: <==negation-removal== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #87190: <==uncertain_firing== 73650 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (initialized)
                           (at_b_l3))
        :effect (and
                    ; #16300: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #27452: <==closure== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #36874: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #59446: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #63547: <==closure== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #72757: <==closure== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #87526: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #87584: <==closure== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #13458: <==negation-removal== 63547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #13694: <==uncertain_firing== 87584 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_c)))

                    ; #20101: <==negation-removal== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #22297: <==uncertain_firing== 16300 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #23738: <==negation-removal== 72757 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #31774: <==uncertain_firing== 36874 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #36478: <==negation-removal== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #41472: <==uncertain_firing== 27452 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #42815: <==negation-removal== 87584 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #60915: <==negation-removal== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #62805: <==negation-removal== 27452 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #66430: <==negation-removal== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #72700: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #76180: <==uncertain_firing== 87526 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #80932: <==uncertain_firing== 63547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #88458: <==uncertain_firing== 59446 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (at_b_l1)
                           (Pb_secret_d))
        :effect (and
                    ; #10262: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #30152: <==closure== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #39338: <==closure== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #41662: <==closure== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #46776: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #66866: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #76645: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #81570: <==closure== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #10641: <==negation-removal== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #27470: <==uncertain_firing== 81570 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #32111: <==negation-removal== 30152 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33100: <==negation-removal== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34475: <==negation-removal== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #43219: <==uncertain_firing== 39338 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #44339: <==uncertain_firing== 76645 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #63613: <==negation-removal== 39338 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #65797: <==negation-removal== 41662 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #70575: <==uncertain_firing== 46776 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #74158: <==negation-removal== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #79466: <==negation-removal== 81570 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #82291: <==uncertain_firing== 41662 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #84346: <==uncertain_firing== 66866 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #90353: <==uncertain_firing== 10262 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #91847: <==uncertain_firing== 30152 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (initialized)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #15917: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #16614: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #26369: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #39416: <==closure== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #50509: <==closure== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #60523: <==closure== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71914: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #77879: <==closure== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #13421: <==negation-removal== 39416 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #20035: <==negation-removal== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #22044: <==negation-removal== 60523 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #28861: <==negation-removal== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28919: <==uncertain_firing== 16614 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #29995: <==uncertain_firing== 50509 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #30353: <==negation-removal== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #32738: <==uncertain_firing== 71914 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #53846: <==uncertain_firing== 60523 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #56528: <==uncertain_firing== 15917 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #57512: <==uncertain_firing== 26369 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #65328: <==negation-removal== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #72501: <==uncertain_firing== 39416 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #76940: <==uncertain_firing== 77879 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #88462: <==negation-removal== 50509 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #89538: <==negation-removal== 77879 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (Bb_secret_d)
                           (initialized)
                           (Pb_secret_d)
                           (at_b_l3))
        :effect (and
                    ; #18080: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #19903: <==closure== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #26816: <==closure== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #37179: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #56255: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #57438: <==closure== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #70273: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #74231: <==closure== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #12663: <==negation-removal== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19970: <==negation-removal== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28195: <==negation-removal== 57438 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39065: <==uncertain_firing== 57438 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #42062: <==uncertain_firing== 56255 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #46009: <==negation-removal== 19903 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #51339: <==negation-removal== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #52039: <==uncertain_firing== 18080 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56224: <==uncertain_firing== 26816 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #58763: <==uncertain_firing== 74231 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #70534: <==negation-removal== 26816 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #75453: <==negation-removal== 74231 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #79983: <==uncertain_firing== 37179 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85050: <==negation-removal== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #90037: <==uncertain_firing== 19903 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #96459: <==uncertain_firing== 70273 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (initialized)
                           (Pc_secret_a))
        :effect (and
                    ; #10381: <==closure== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #22213: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #23032: <==closure== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #35183: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #43055: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46667: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #58296: <==closure== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #78551: <==closure== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #18002: <==uncertain_firing== 23032 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #24442: <==negation-removal== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #27918: <==uncertain_firing== 58296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #29532: <==uncertain_firing== 10381 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #32218: <==negation-removal== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #33107: <==uncertain_firing== 22213 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #41058: <==uncertain_firing== 43055 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #46137: <==negation-removal== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #57035: <==uncertain_firing== 78551 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #59586: <==uncertain_firing== 35183 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #63342: <==negation-removal== 78551 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #71029: <==uncertain_firing== 46667 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #73822: <==negation-removal== 10381 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #74498: <==negation-removal== 58296 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #88761: <==negation-removal== 23032 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #90434: <==negation-removal== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Bc_secret_a)
                           (initialized)
                           (at_c_l2)
                           (Pc_secret_a))
        :effect (and
                    ; #18057: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #34147: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #41939: <==closure== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #56595: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #72118: <==closure== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78131: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79742: <==closure== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #84744: <==closure== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #16173: <==uncertain_firing== 34147 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #22083: <==negation-removal== 79742 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #28499: <==negation-removal== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28774: <==negation-removal== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #28783: <==uncertain_firing== 56595 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #31825: <==uncertain_firing== 79742 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #35063: <==negation-removal== 72118 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #42837: <==negation-removal== 84744 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45229: <==negation-removal== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #61018: <==uncertain_firing== 41939 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #64800: <==negation-removal== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69049: <==uncertain_firing== 78131 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #75680: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #80692: <==uncertain_firing== 18057 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #83092: <==uncertain_firing== 84744 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #84379: <==negation-removal== 41939 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #18414: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #31475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34659: <==closure== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #71556: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #75845: <==closure== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78207: <==closure== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #89604: <==closure== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #89658: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #11135: <==uncertain_firing== 71556 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #11410: <==uncertain_firing== 75845 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #19316: <==negation-removal== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #22216: <==negation-removal== 78207 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23250: <==negation-removal== 75845 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #33859: <==uncertain_firing== 31475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #35715: <==uncertain_firing== 89658 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #41390: <==negation-removal== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #59875: <==negation-removal== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #60213: <==uncertain_firing== 18414 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64673: <==negation-removal== 34659 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #74523: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83417: <==negation-removal== 89604 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #87101: <==negation-removal== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #91144: <==uncertain_firing== 34659 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #94318: <==uncertain_firing== 89604 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (at_c_l1)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #11164: <==closure== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #11684: <==closure== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #17150: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #44574: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #51966: <==closure== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #55075: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #77843: <==closure== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85259: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #16019: <==negation-removal== 77843 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #21689: <==negation-removal== 51966 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24704: <==uncertain_firing== 11164 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27439: <==negation-removal== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #27741: <==negation-removal== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #27851: <==uncertain_firing== 11684 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #33760: <==uncertain_firing== 44574 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #35514: <==uncertain_firing== 85259 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #35894: <==negation-removal== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #43161: <==negation-removal== 11684 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46256: <==negation-removal== 11164 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #49630: <==negation-removal== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #52624: <==uncertain_firing== 55075 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #58063: <==uncertain_firing== 77843 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #73061: <==uncertain_firing== 51966 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #73917: <==uncertain_firing== 17150 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Bc_secret_b)
                           (at_c_l2)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #10164: <==closure== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #15440: <==closure== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #17303: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21251: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #28556: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #29425: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78249: <==closure== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #79114: <==closure== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #27371: <==negation-removal== 15440 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #33050: <==negation-removal== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #41390: <==uncertain_firing== 78249 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #41481: <==uncertain_firing== 21251 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43533: <==negation-removal== 10164 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #43623: <==negation-removal== 79114 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #44132: <==negation-removal== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #48040: <==uncertain_firing== 29425 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #53109: <==negation-removal== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #55433: <==uncertain_firing== 10164 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #62664: <==uncertain_firing== 28556 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #63826: <==uncertain_firing== 15440 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #68931: <==negation-removal== 78249 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #69389: <==negation-removal== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #76024: <==uncertain_firing== 17303 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #88524: <==uncertain_firing== 79114 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_b)
                           (Pc_secret_b)
                           (initialized))
        :effect (and
                    ; #30526: <==closure== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33009: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #35887: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #50016: <==closure== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #56503: <==closure== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #69499: <==closure== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #73833: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #80376: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #14729: <==negation-removal== 30526 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15802: <==uncertain_firing== 69499 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #18327: <==uncertain_firing== 73833 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19155: <==negation-removal== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #20117: <==uncertain_firing== 30526 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #24399: <==uncertain_firing== 80376 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29020: <==negation-removal== 50016 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #31271: <==uncertain_firing== 35887 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #48874: <==uncertain_firing== 56503 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #58750: <==negation-removal== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #68155: <==negation-removal== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71349: <==negation-removal== 56503 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #81874: <==uncertain_firing== 33009 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89330: <==negation-removal== 69499 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #89779: <==uncertain_firing== 50016 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #90428: <==negation-removal== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Pc_secret_c)
                           (at_c_l1)
                           (Bc_secret_c)
                           (initialized))
        :effect (and
                    ; #22070: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #27702: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #45137: <==closure== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #45817: <==closure== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #49043: <==closure== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #53561: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #78731: <==closure== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #81058: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #15004: <==negation-removal== 78731 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #20987: <==negation-removal== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #30297: <==uncertain_firing== 81058 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #33317: <==uncertain_firing== 45817 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #41075: <==negation-removal== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #42936: <==uncertain_firing== 53561 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #49858: <==negation-removal== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #51376: <==negation-removal== 45137 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #54716: <==uncertain_firing== 27702 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #58174: <==negation-removal== 45817 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #59520: <==uncertain_firing== 22070 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #63907: <==uncertain_firing== 45137 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #65775: <==negation-removal== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #74107: <==negation-removal== 49043 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #78086: <==uncertain_firing== 78731 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #91805: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Pc_secret_c)
                           (at_c_l2)
                           (Bc_secret_c)
                           (initialized))
        :effect (and
                    ; #25620: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #47068: <==closure== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #69760: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #70458: <==closure== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #73650: <==closure== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #75971: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #83266: <==closure== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #83826: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #11228: <==uncertain_firing== 69760 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #20348: <==negation-removal== 47068 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #21361: <==uncertain_firing== 47068 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22482: <==negation-removal== 83266 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #23397: <==uncertain_firing== 83826 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #31351: <==negation-removal== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #39303: <==uncertain_firing== 83266 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #46572: <==uncertain_firing== 75971 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47243: <==negation-removal== 73650 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #47306: <==negation-removal== 70458 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #70838: <==uncertain_firing== 70458 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #74863: <==negation-removal== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #76807: <==negation-removal== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #79045: <==uncertain_firing== 25620 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #82681: <==negation-removal== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #87190: <==uncertain_firing== 73650 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c)
                           (initialized))
        :effect (and
                    ; #16300: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #27452: <==closure== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #36874: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #59446: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #63547: <==closure== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #72757: <==closure== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #87526: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #87584: <==closure== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #13458: <==negation-removal== 63547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #13694: <==uncertain_firing== 87584 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_c)))

                    ; #20101: <==negation-removal== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #22297: <==uncertain_firing== 16300 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #23738: <==negation-removal== 72757 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #31774: <==uncertain_firing== 36874 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #36478: <==negation-removal== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #41472: <==uncertain_firing== 27452 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #42815: <==negation-removal== 87584 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #60915: <==negation-removal== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #62805: <==negation-removal== 27452 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #66430: <==negation-removal== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #72700: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #76180: <==uncertain_firing== 87526 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #80932: <==uncertain_firing== 63547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #88458: <==uncertain_firing== 59446 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_d)
                           (initialized)
                           (Bc_secret_d))
        :effect (and
                    ; #10262: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #30152: <==closure== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #39338: <==closure== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #41662: <==closure== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #46776: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #66866: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #76645: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #81570: <==closure== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #10641: <==negation-removal== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #27470: <==uncertain_firing== 81570 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #32111: <==negation-removal== 30152 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33100: <==negation-removal== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34475: <==negation-removal== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #43219: <==uncertain_firing== 39338 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #44339: <==uncertain_firing== 76645 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #63613: <==negation-removal== 39338 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #65797: <==negation-removal== 41662 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #70575: <==uncertain_firing== 46776 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #74158: <==negation-removal== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #79466: <==negation-removal== 81570 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #82291: <==uncertain_firing== 41662 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #84346: <==uncertain_firing== 66866 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #90353: <==uncertain_firing== 10262 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #91847: <==uncertain_firing== 30152 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #15917: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #16614: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #26369: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #39416: <==closure== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #50509: <==closure== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #60523: <==closure== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71914: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #77879: <==closure== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #13421: <==negation-removal== 39416 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #20035: <==negation-removal== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #22044: <==negation-removal== 60523 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #28861: <==negation-removal== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28919: <==uncertain_firing== 16614 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #29995: <==uncertain_firing== 50509 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #30353: <==negation-removal== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #32738: <==uncertain_firing== 71914 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #53846: <==uncertain_firing== 60523 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #56528: <==uncertain_firing== 15917 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #57512: <==uncertain_firing== 26369 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #65328: <==negation-removal== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #72501: <==uncertain_firing== 39416 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #76940: <==uncertain_firing== 77879 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #88462: <==negation-removal== 50509 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #89538: <==negation-removal== 77879 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (at_c_l3)
                           (initialized)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #18080: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #19903: <==closure== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #26816: <==closure== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #37179: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #56255: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #57438: <==closure== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #70273: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #74231: <==closure== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #12663: <==negation-removal== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19970: <==negation-removal== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28195: <==negation-removal== 57438 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39065: <==uncertain_firing== 57438 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #42062: <==uncertain_firing== 56255 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #46009: <==negation-removal== 19903 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #51339: <==negation-removal== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #52039: <==uncertain_firing== 18080 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56224: <==uncertain_firing== 26816 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #58763: <==uncertain_firing== 74231 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #70534: <==negation-removal== 26816 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #75453: <==negation-removal== 74231 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #79983: <==uncertain_firing== 37179 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85050: <==negation-removal== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #90037: <==uncertain_firing== 19903 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #96459: <==uncertain_firing== 70273 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Pd_secret_a)
                           (at_d_l1)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #10381: <==closure== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #22213: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #23032: <==closure== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #35183: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #43055: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #46667: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #58296: <==closure== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #78551: <==closure== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #18002: <==uncertain_firing== 23032 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #24442: <==negation-removal== 43055 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #27918: <==uncertain_firing== 58296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #29532: <==uncertain_firing== 10381 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #32218: <==negation-removal== 46667 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #33107: <==uncertain_firing== 22213 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #41058: <==uncertain_firing== 43055 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #46137: <==negation-removal== 22213 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #57035: <==uncertain_firing== 78551 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #59586: <==uncertain_firing== 35183 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #63342: <==negation-removal== 78551 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #71029: <==uncertain_firing== 46667 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #73822: <==negation-removal== 10381 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #74498: <==negation-removal== 58296 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #88761: <==negation-removal== 23032 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #90434: <==negation-removal== 35183 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_a)
                           (initialized)
                           (Pd_secret_a))
        :effect (and
                    ; #18057: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #34147: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #41939: <==closure== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #56595: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #72118: <==closure== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78131: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #79742: <==closure== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #84744: <==closure== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #16173: <==uncertain_firing== 34147 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #22083: <==negation-removal== 79742 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #28499: <==negation-removal== 56595 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28774: <==negation-removal== 18057 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #28783: <==uncertain_firing== 56595 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #31825: <==uncertain_firing== 79742 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #35063: <==negation-removal== 72118 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #42837: <==negation-removal== 84744 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #45229: <==negation-removal== 78131 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #61018: <==uncertain_firing== 41939 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #64800: <==negation-removal== 34147 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #69049: <==uncertain_firing== 78131 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #75680: <==uncertain_firing== 72118 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #80692: <==uncertain_firing== 18057 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_a)))

                    ; #83092: <==uncertain_firing== 84744 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_a)))

                    ; #84379: <==negation-removal== 41939 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_a)
                           (initialized)
                           (Bd_secret_a))
        :effect (and
                    ; #18414: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #31475: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34659: <==closure== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #71556: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Bd_secret_a))

                    ; #75845: <==closure== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (Pd_secret_a))

                    ; #78207: <==closure== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #89604: <==closure== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #89658: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #11135: <==uncertain_firing== 71556 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #11410: <==uncertain_firing== 75845 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #19316: <==negation-removal== 18414 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #22216: <==negation-removal== 78207 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #23250: <==negation-removal== 75845 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Bd_not_secret_a)))

                    ; #33859: <==uncertain_firing== 31475 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #35715: <==uncertain_firing== 89658 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_a)))

                    ; #41390: <==negation-removal== 71556 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_a)))
                          (not (Pd_not_secret_a)))

                    ; #59875: <==negation-removal== 89658 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #60213: <==uncertain_firing== 18414 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64673: <==negation-removal== 34659 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #74523: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #83417: <==negation-removal== 89604 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #87101: <==negation-removal== 31475 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #91144: <==uncertain_firing== 34659 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #94318: <==uncertain_firing== 89604 (pos)
                    (when (and (and (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Pd_secret_b)
                           (Bd_secret_b)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #11164: <==closure== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Pb_secret_b))

                    ; #11684: <==closure== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #17150: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #44574: origin
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Bd_secret_b))

                    ; #51966: <==closure== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (Pd_secret_b))

                    ; #55075: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (Bb_secret_b))

                    ; #77843: <==closure== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85259: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #16019: <==negation-removal== 77843 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #21689: <==negation-removal== 51966 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #24704: <==uncertain_firing== 11164 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #27439: <==negation-removal== 55075 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #27741: <==negation-removal== 44574 (pos)
                    (when (and (and (Pd_secret_b)
                               (at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #27851: <==uncertain_firing== 11684 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #33760: <==uncertain_firing== 44574 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #35514: <==uncertain_firing== 85259 (pos)
                    (when (and (and (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #35894: <==negation-removal== 17150 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #43161: <==negation-removal== 11684 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46256: <==negation-removal== 11164 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #49630: <==negation-removal== 85259 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #52624: <==uncertain_firing== 55075 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #58063: <==uncertain_firing== 77843 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #73061: <==uncertain_firing== 51966 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #73917: <==uncertain_firing== 17150 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Pd_secret_b)
                           (at_d_l2)
                           (Bd_secret_b)
                           (initialized))
        :effect (and
                    ; #10164: <==closure== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #15440: <==closure== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #17303: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Bb_secret_b))

                    ; #21251: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #28556: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #29425: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #78249: <==closure== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (Pb_secret_b))

                    ; #79114: <==closure== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #27371: <==negation-removal== 15440 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #33050: <==negation-removal== 28556 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #41390: <==uncertain_firing== 78249 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #41481: <==uncertain_firing== 21251 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #43533: <==negation-removal== 10164 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #43623: <==negation-removal== 79114 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #44132: <==negation-removal== 29425 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #48040: <==uncertain_firing== 29425 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #53109: <==negation-removal== 21251 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #55433: <==uncertain_firing== 10164 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #62664: <==uncertain_firing== 28556 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Pc_not_secret_b)))

                    ; #63826: <==uncertain_firing== 15440 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #68931: <==negation-removal== 78249 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #69389: <==negation-removal== 17303 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #76024: <==uncertain_firing== 17303 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #88524: <==uncertain_firing== 79114 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l2))))
                          (not (Bc_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (at_d_l3)
                           (Bd_secret_b)
                           (Pd_secret_b)
                           (initialized))
        :effect (and
                    ; #30526: <==closure== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #33009: origin
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Bb_secret_b))

                    ; #35887: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #50016: <==closure== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #56503: <==closure== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (Pb_secret_b))

                    ; #69499: <==closure== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #73833: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #80376: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #14729: <==negation-removal== 30526 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #15802: <==uncertain_firing== 69499 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #18327: <==uncertain_firing== 73833 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #19155: <==negation-removal== 80376 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #20117: <==uncertain_firing== 30526 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #24399: <==uncertain_firing== 80376 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #29020: <==negation-removal== 50016 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #31271: <==uncertain_firing== 35887 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #48874: <==uncertain_firing== 56503 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #58750: <==negation-removal== 35887 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #68155: <==negation-removal== 73833 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71349: <==negation-removal== 56503 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Bb_not_secret_b)))

                    ; #81874: <==uncertain_firing== 33009 (pos)
                    (when (and (and (not (Pb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #89330: <==negation-removal== 69499 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #89779: <==uncertain_firing== 50016 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_b))
                               (not (Pa_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #90428: <==negation-removal== 33009 (pos)
                    (when (and (and (Pb_secret_b)
                               (at_b_l3)))
                          (not (Pb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #22070: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #27702: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #45137: <==closure== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Pa_secret_c))

                    ; #45817: <==closure== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #49043: <==closure== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #53561: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #78731: <==closure== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #81058: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (Ba_secret_c))

                    ; #15004: <==negation-removal== 78731 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #20987: <==negation-removal== 22070 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #30297: <==uncertain_firing== 81058 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_c)))

                    ; #33317: <==uncertain_firing== 45817 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #41075: <==negation-removal== 27702 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #42936: <==uncertain_firing== 53561 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #49858: <==negation-removal== 81058 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #51376: <==negation-removal== 45137 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #54716: <==uncertain_firing== 27702 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))

                    ; #58174: <==negation-removal== 45817 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #59520: <==uncertain_firing== 22070 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #63907: <==uncertain_firing== 45137 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_c)))

                    ; #65775: <==negation-removal== 53561 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #74107: <==negation-removal== 49043 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #78086: <==uncertain_firing== 78731 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #91805: <==uncertain_firing== 49043 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #25620: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Bc_secret_c))

                    ; #47068: <==closure== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #69760: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #70458: <==closure== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #73650: <==closure== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (Pc_secret_c))

                    ; #75971: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #83266: <==closure== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #83826: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #11228: <==uncertain_firing== 69760 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #20348: <==negation-removal== 47068 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #21361: <==uncertain_firing== 47068 (pos)
                    (when (and (and (not (Pd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22482: <==negation-removal== 83266 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #23397: <==uncertain_firing== 83826 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #31351: <==negation-removal== 83826 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #39303: <==uncertain_firing== 83266 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))

                    ; #46572: <==uncertain_firing== 75971 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #47243: <==negation-removal== 73650 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #47306: <==negation-removal== 70458 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #70838: <==uncertain_firing== 70458 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l2))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #74863: <==negation-removal== 25620 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #76807: <==negation-removal== 75971 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #79045: <==uncertain_firing== 25620 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #82681: <==negation-removal== 69760 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #87190: <==uncertain_firing== 73650 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (at_d_l3)
                           (Pd_secret_c)
                           (Bd_secret_c)
                           (initialized))
        :effect (and
                    ; #16300: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #27452: <==closure== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #36874: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #59446: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Ba_secret_c))

                    ; #63547: <==closure== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #72757: <==closure== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Pd_secret_c))

                    ; #87526: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (Bd_secret_c))

                    ; #87584: <==closure== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (Pa_secret_c))

                    ; #13458: <==negation-removal== 63547 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #13694: <==uncertain_firing== 87584 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_c)))

                    ; #20101: <==negation-removal== 16300 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))

                    ; #22297: <==uncertain_firing== 16300 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #23738: <==negation-removal== 72757 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Bd_not_secret_c)))

                    ; #31774: <==uncertain_firing== 36874 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #36478: <==negation-removal== 36874 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #41472: <==uncertain_firing== 27452 (pos)
                    (when (and (and (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #42815: <==negation-removal== 87584 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Ba_not_secret_c)))

                    ; #60915: <==negation-removal== 87526 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_c)))
                          (not (Pd_not_secret_c)))

                    ; #62805: <==negation-removal== 27452 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #66430: <==negation-removal== 59446 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l3)))
                          (not (Pa_not_secret_c)))

                    ; #72700: <==uncertain_firing== 72757 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #76180: <==uncertain_firing== 87526 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Pd_not_secret_c))
                               (not (Bd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #80932: <==uncertain_firing== 63547 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #88458: <==uncertain_firing== 59446 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Pd_secret_d)
                           (initialized)
                           (at_d_l1)
                           (Bd_secret_d))
        :effect (and
                    ; #10262: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #30152: <==closure== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Pb_secret_d))

                    ; #39338: <==closure== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #41662: <==closure== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #46776: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #66866: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (Bb_secret_d))

                    ; #76645: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #81570: <==closure== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #10641: <==negation-removal== 46776 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #27470: <==uncertain_firing== 81570 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #32111: <==negation-removal== 30152 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33100: <==negation-removal== 76645 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #34475: <==negation-removal== 66866 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #43219: <==uncertain_firing== 39338 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #44339: <==uncertain_firing== 76645 (pos)
                    (when (and (and (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))

                    ; #63613: <==negation-removal== 39338 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #65797: <==negation-removal== 41662 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #70575: <==uncertain_firing== 46776 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #74158: <==negation-removal== 10262 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #79466: <==negation-removal== 81570 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #82291: <==uncertain_firing== 41662 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #84346: <==uncertain_firing== 66866 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #90353: <==uncertain_firing== 10262 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #91847: <==uncertain_firing== 30152 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_d)
                           (initialized)
                           (Bd_secret_d))
        :effect (and
                    ; #15917: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #16614: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #26369: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #39416: <==closure== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #50509: <==closure== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #60523: <==closure== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #71914: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #77879: <==closure== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #13421: <==negation-removal== 39416 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #20035: <==negation-removal== 16614 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #22044: <==negation-removal== 60523 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #28861: <==negation-removal== 15917 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28919: <==uncertain_firing== 16614 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #29995: <==uncertain_firing== 50509 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #30353: <==negation-removal== 71914 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #32738: <==uncertain_firing== 71914 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #53846: <==uncertain_firing== 60523 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_d)))

                    ; #56528: <==uncertain_firing== 15917 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #57512: <==uncertain_firing== 26369 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_d)))

                    ; #65328: <==negation-removal== 26369 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #72501: <==uncertain_firing== 39416 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #76940: <==uncertain_firing== 77879 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #88462: <==negation-removal== 50509 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #89538: <==negation-removal== 77879 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (at_d_l3)
                           (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d))
        :effect (and
                    ; #18080: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Ba_secret_d))

                    ; #19903: <==closure== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Pd_secret_d))

                    ; #26816: <==closure== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (Pa_secret_d))

                    ; #37179: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #56255: origin
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Bb_secret_d))

                    ; #57438: <==closure== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (Pb_secret_d))

                    ; #70273: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (Bd_secret_d))

                    ; #74231: <==closure== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #12663: <==negation-removal== 70273 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Pd_not_secret_d)))

                    ; #19970: <==negation-removal== 37179 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #28195: <==negation-removal== 57438 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Bb_not_secret_d)))

                    ; #39065: <==uncertain_firing== 57438 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_d)))

                    ; #42062: <==uncertain_firing== 56255 (pos)
                    (when (and (and (not (Bb_not_secret_d))
                               (not (Pb_not_secret_d))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_d)))

                    ; #46009: <==negation-removal== 19903 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_d)))
                          (not (Bd_not_secret_d)))

                    ; #51339: <==negation-removal== 56255 (pos)
                    (when (and (and (Pb_secret_d)
                               (at_b_l3)))
                          (not (Pb_not_secret_d)))

                    ; #52039: <==uncertain_firing== 18080 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #56224: <==uncertain_firing== 26816 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #58763: <==uncertain_firing== 74231 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #70534: <==negation-removal== 26816 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Ba_not_secret_d)))

                    ; #75453: <==negation-removal== 74231 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #79983: <==uncertain_firing== 37179 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85050: <==negation-removal== 18080 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l3)))
                          (not (Pa_not_secret_d)))

                    ; #90037: <==uncertain_firing== 19903 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #96459: <==uncertain_firing== 70273 (pos)
                    (when (and (and (not (not_at_d_l3))
                               (not (Bd_not_secret_d))
                               (not (Pd_not_secret_d))))
                          (not (Pd_not_secret_d)))))

)