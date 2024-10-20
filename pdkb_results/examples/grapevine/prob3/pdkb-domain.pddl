(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_Ba_not_secret_a)
        (Ba_Ba_not_secret_b)
        (Ba_Ba_not_secret_c)
        (Ba_Ba_secret_a)
        (Ba_Ba_secret_b)
        (Ba_Ba_secret_c)
        (Ba_Bb_not_secret_a)
        (Ba_Bb_not_secret_b)
        (Ba_Bb_not_secret_c)
        (Ba_Bb_secret_a)
        (Ba_Bb_secret_b)
        (Ba_Bb_secret_c)
        (Ba_Bc_not_secret_a)
        (Ba_Bc_not_secret_b)
        (Ba_Bc_not_secret_c)
        (Ba_Bc_secret_a)
        (Ba_Bc_secret_b)
        (Ba_Bc_secret_c)
        (Ba_Pa_not_secret_a)
        (Ba_Pa_not_secret_b)
        (Ba_Pa_not_secret_c)
        (Ba_Pa_secret_a)
        (Ba_Pa_secret_b)
        (Ba_Pa_secret_c)
        (Ba_Pb_not_secret_a)
        (Ba_Pb_not_secret_b)
        (Ba_Pb_not_secret_c)
        (Ba_Pb_secret_a)
        (Ba_Pb_secret_b)
        (Ba_Pb_secret_c)
        (Ba_Pc_not_secret_a)
        (Ba_Pc_not_secret_b)
        (Ba_Pc_not_secret_c)
        (Ba_Pc_secret_a)
        (Ba_Pc_secret_b)
        (Ba_Pc_secret_c)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_Ba_not_secret_a)
        (Bb_Ba_not_secret_b)
        (Bb_Ba_not_secret_c)
        (Bb_Ba_secret_a)
        (Bb_Ba_secret_b)
        (Bb_Ba_secret_c)
        (Bb_Bb_not_secret_a)
        (Bb_Bb_not_secret_b)
        (Bb_Bb_not_secret_c)
        (Bb_Bb_secret_a)
        (Bb_Bb_secret_b)
        (Bb_Bb_secret_c)
        (Bb_Bc_not_secret_a)
        (Bb_Bc_not_secret_b)
        (Bb_Bc_not_secret_c)
        (Bb_Bc_secret_a)
        (Bb_Bc_secret_b)
        (Bb_Bc_secret_c)
        (Bb_Pa_not_secret_a)
        (Bb_Pa_not_secret_b)
        (Bb_Pa_not_secret_c)
        (Bb_Pa_secret_a)
        (Bb_Pa_secret_b)
        (Bb_Pa_secret_c)
        (Bb_Pb_not_secret_a)
        (Bb_Pb_not_secret_b)
        (Bb_Pb_not_secret_c)
        (Bb_Pb_secret_a)
        (Bb_Pb_secret_b)
        (Bb_Pb_secret_c)
        (Bb_Pc_not_secret_a)
        (Bb_Pc_not_secret_b)
        (Bb_Pc_not_secret_c)
        (Bb_Pc_secret_a)
        (Bb_Pc_secret_b)
        (Bb_Pc_secret_c)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_Ba_not_secret_a)
        (Bc_Ba_not_secret_b)
        (Bc_Ba_not_secret_c)
        (Bc_Ba_secret_a)
        (Bc_Ba_secret_b)
        (Bc_Ba_secret_c)
        (Bc_Bb_not_secret_a)
        (Bc_Bb_not_secret_b)
        (Bc_Bb_not_secret_c)
        (Bc_Bb_secret_a)
        (Bc_Bb_secret_b)
        (Bc_Bb_secret_c)
        (Bc_Bc_not_secret_a)
        (Bc_Bc_not_secret_b)
        (Bc_Bc_not_secret_c)
        (Bc_Bc_secret_a)
        (Bc_Bc_secret_b)
        (Bc_Bc_secret_c)
        (Bc_Pa_not_secret_a)
        (Bc_Pa_not_secret_b)
        (Bc_Pa_not_secret_c)
        (Bc_Pa_secret_a)
        (Bc_Pa_secret_b)
        (Bc_Pa_secret_c)
        (Bc_Pb_not_secret_a)
        (Bc_Pb_not_secret_b)
        (Bc_Pb_not_secret_c)
        (Bc_Pb_secret_a)
        (Bc_Pb_secret_b)
        (Bc_Pb_secret_c)
        (Bc_Pc_not_secret_a)
        (Bc_Pc_not_secret_b)
        (Bc_Pc_not_secret_c)
        (Bc_Pc_secret_a)
        (Bc_Pc_secret_b)
        (Bc_Pc_secret_c)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_Ba_not_secret_a)
        (Pa_Ba_not_secret_b)
        (Pa_Ba_not_secret_c)
        (Pa_Ba_secret_a)
        (Pa_Ba_secret_b)
        (Pa_Ba_secret_c)
        (Pa_Bb_not_secret_a)
        (Pa_Bb_not_secret_b)
        (Pa_Bb_not_secret_c)
        (Pa_Bb_secret_a)
        (Pa_Bb_secret_b)
        (Pa_Bb_secret_c)
        (Pa_Bc_not_secret_a)
        (Pa_Bc_not_secret_b)
        (Pa_Bc_not_secret_c)
        (Pa_Bc_secret_a)
        (Pa_Bc_secret_b)
        (Pa_Bc_secret_c)
        (Pa_Pa_not_secret_a)
        (Pa_Pa_not_secret_b)
        (Pa_Pa_not_secret_c)
        (Pa_Pa_secret_a)
        (Pa_Pa_secret_b)
        (Pa_Pa_secret_c)
        (Pa_Pb_not_secret_a)
        (Pa_Pb_not_secret_b)
        (Pa_Pb_not_secret_c)
        (Pa_Pb_secret_a)
        (Pa_Pb_secret_b)
        (Pa_Pb_secret_c)
        (Pa_Pc_not_secret_a)
        (Pa_Pc_not_secret_b)
        (Pa_Pc_not_secret_c)
        (Pa_Pc_secret_a)
        (Pa_Pc_secret_b)
        (Pa_Pc_secret_c)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_Ba_not_secret_a)
        (Pb_Ba_not_secret_b)
        (Pb_Ba_not_secret_c)
        (Pb_Ba_secret_a)
        (Pb_Ba_secret_b)
        (Pb_Ba_secret_c)
        (Pb_Bb_not_secret_a)
        (Pb_Bb_not_secret_b)
        (Pb_Bb_not_secret_c)
        (Pb_Bb_secret_a)
        (Pb_Bb_secret_b)
        (Pb_Bb_secret_c)
        (Pb_Bc_not_secret_a)
        (Pb_Bc_not_secret_b)
        (Pb_Bc_not_secret_c)
        (Pb_Bc_secret_a)
        (Pb_Bc_secret_b)
        (Pb_Bc_secret_c)
        (Pb_Pa_not_secret_a)
        (Pb_Pa_not_secret_b)
        (Pb_Pa_not_secret_c)
        (Pb_Pa_secret_a)
        (Pb_Pa_secret_b)
        (Pb_Pa_secret_c)
        (Pb_Pb_not_secret_a)
        (Pb_Pb_not_secret_b)
        (Pb_Pb_not_secret_c)
        (Pb_Pb_secret_a)
        (Pb_Pb_secret_b)
        (Pb_Pb_secret_c)
        (Pb_Pc_not_secret_a)
        (Pb_Pc_not_secret_b)
        (Pb_Pc_not_secret_c)
        (Pb_Pc_secret_a)
        (Pb_Pc_secret_b)
        (Pb_Pc_secret_c)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_Ba_not_secret_a)
        (Pc_Ba_not_secret_b)
        (Pc_Ba_not_secret_c)
        (Pc_Ba_secret_a)
        (Pc_Ba_secret_b)
        (Pc_Ba_secret_c)
        (Pc_Bb_not_secret_a)
        (Pc_Bb_not_secret_b)
        (Pc_Bb_not_secret_c)
        (Pc_Bb_secret_a)
        (Pc_Bb_secret_b)
        (Pc_Bb_secret_c)
        (Pc_Bc_not_secret_a)
        (Pc_Bc_not_secret_b)
        (Pc_Bc_not_secret_c)
        (Pc_Bc_secret_a)
        (Pc_Bc_secret_b)
        (Pc_Bc_secret_c)
        (Pc_Pa_not_secret_a)
        (Pc_Pa_not_secret_b)
        (Pc_Pa_not_secret_c)
        (Pc_Pa_secret_a)
        (Pc_Pa_secret_b)
        (Pc_Pa_secret_c)
        (Pc_Pb_not_secret_a)
        (Pc_Pb_not_secret_b)
        (Pc_Pb_not_secret_c)
        (Pc_Pb_secret_a)
        (Pc_Pb_secret_b)
        (Pc_Pb_secret_c)
        (Pc_Pc_not_secret_a)
        (Pc_Pc_not_secret_b)
        (Pc_Pc_not_secret_c)
        (Pc_Pc_secret_a)
        (Pc_Pc_secret_b)
        (Pc_Pc_secret_c)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (at_a_l1)
        (at_a_l2)
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
    )

    (:action move_a_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_a_l1))
        :effect (and
                    ; #11475: origin
                    (not_at_a_l1)

                    ; #58733: origin
                    (at_a_l1)

                    ; #11475: <==negation-removal== 58733 (pos)
                    (not (not_at_a_l1))

                    ; #58733: <==negation-removal== 11475 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #11475: origin
                    (not_at_a_l1)

                    ; #53242: origin
                    (at_a_l2)

                    ; #26285: <==negation-removal== 53242 (pos)
                    (not (not_at_a_l2))

                    ; #58733: <==negation-removal== 11475 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #26285: origin
                    (not_at_a_l2)

                    ; #58733: origin
                    (at_a_l1)

                    ; #11475: <==negation-removal== 58733 (pos)
                    (not (not_at_a_l1))

                    ; #53242: <==negation-removal== 26285 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #26285: origin
                    (not_at_a_l2)

                    ; #53242: origin
                    (at_a_l2)

                    ; #26285: <==negation-removal== 53242 (pos)
                    (not (not_at_a_l2))

                    ; #53242: <==negation-removal== 26285 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #24005: origin
                    (at_b_l1)

                    ; #39460: origin
                    (not_at_b_l1)

                    ; #24005: <==negation-removal== 39460 (pos)
                    (not (at_b_l1))

                    ; #39460: <==negation-removal== 24005 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (at_b_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #29162: origin
                    (at_b_l2)

                    ; #39460: origin
                    (not_at_b_l1)

                    ; #24005: <==negation-removal== 39460 (pos)
                    (not (at_b_l1))

                    ; #70531: <==negation-removal== 29162 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #24005: origin
                    (at_b_l1)

                    ; #70531: origin
                    (not_at_b_l2)

                    ; #29162: <==negation-removal== 70531 (pos)
                    (not (at_b_l2))

                    ; #39460: <==negation-removal== 24005 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #29162: origin
                    (at_b_l2)

                    ; #70531: origin
                    (not_at_b_l2)

                    ; #29162: <==negation-removal== 70531 (pos)
                    (not (at_b_l2))

                    ; #70531: <==negation-removal== 29162 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #34394: origin
                    (not_at_c_l1)

                    ; #43038: origin
                    (at_c_l1)

                    ; #34394: <==negation-removal== 43038 (pos)
                    (not (not_at_c_l1))

                    ; #43038: <==negation-removal== 34394 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #22176: origin
                    (at_c_l2)

                    ; #34394: origin
                    (not_at_c_l1)

                    ; #43038: <==negation-removal== 34394 (pos)
                    (not (at_c_l1))

                    ; #46997: <==negation-removal== 22176 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_c_l2))
        :effect (and
                    ; #43038: origin
                    (at_c_l1)

                    ; #46997: origin
                    (not_at_c_l2)

                    ; #22176: <==negation-removal== 46997 (pos)
                    (not (at_c_l2))

                    ; #34394: <==negation-removal== 43038 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #22176: origin
                    (at_c_l2)

                    ; #46997: origin
                    (not_at_c_l2)

                    ; #22176: <==negation-removal== 46997 (pos)
                    (not (at_c_l2))

                    ; #46997: <==negation-removal== 22176 (pos)
                    (not (not_at_c_l2))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #12065: <==closure== 55756 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #12907: <==closure== 29432 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #13245: <==closure== 19458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_a))

                    ; #13632: <==commonly_known== 87786 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #14198: <==commonly_known== 55756 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_a))

                    ; #15285: <==commonly_known== 25142 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #17586: <==commonly_known== 12065 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #18488: <==commonly_known== 25142 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #19458: <==commonly_known== 39670 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #25142: <==closure== 39670 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #25799: <==closure== 13632 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #26728: <==commonly_known== 94276 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_a))

                    ; #29124: <==commonly_known== 39670 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #29432: <==commonly_known== 55756 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #29939: <==commonly_known== 71794 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #32370: <==commonly_known== 46455 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #33485: <==commonly_known== 12065 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_a))

                    ; #39670: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #46455: <==closure== 87786 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #54958: <==commonly_known== 16984 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #55756: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #56316: <==commonly_known== 46455 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #58052: <==commonly_known== 87786 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #58411: <==commonly_known== 16984 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #69988: <==closure== 58052 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #79062: <==closure== 14198 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #81478: <==commonly_known== 71794 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #87786: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #88275: <==commonly_known== 94276 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #99971: <==closure== 29124 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #11143: <==negation-removal== 99971 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #14094: <==negation-removal== 58411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #16984: <==uncertain_firing== 87786 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #18245: <==uncertain_firing== 15285 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #19150: <==negation-removal== 29124 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #19581: <==uncertain_firing== 33485 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #23374: <==uncertain_firing== 17586 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #25420: <==negation-removal== 25142 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #25814: <==uncertain_firing== 26728 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #27169: <==uncertain_firing== 58411 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #28773: <==uncertain_firing== 88275 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #31236: <==negation-removal== 29432 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #32938: <==negation-removal== 13632 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #34036: <==uncertain_firing== 56316 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #34048: <==uncertain_firing== 14198 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #34184: <==negation-removal== 32370 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #34502: <==negation-removal== 69988 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #36920: <==negation-removal== 14198 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #38683: <==negation-removal== 56316 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #40199: <==negation-removal== 33485 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #41551: <==negation-removal== 81478 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #41725: <==negation-removal== 18488 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #43101: <==negation-removal== 25799 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #43472: <==negation-removal== 88275 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #46265: <==uncertain_firing== 29124 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #47278: <==uncertain_firing== 69988 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #47430: <==uncertain_firing== 12907 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #47634: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #50950: <==uncertain_firing== 13632 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #52740: <==negation-removal== 39670 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #54837: <==uncertain_firing== 25142 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #55464: <==negation-removal== 87786 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #55524: <==uncertain_firing== 32370 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #55547: <==uncertain_firing== 25799 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #57166: <==uncertain_firing== 46455 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #58124: <==negation-removal== 26728 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #58667: <==negation-removal== 79062 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #59334: <==negation-removal== 12065 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #64124: <==uncertain_firing== 29939 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #65867: <==uncertain_firing== 99971 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #68874: <==uncertain_firing== 29432 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #71794: <==uncertain_firing== 39670 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #73691: <==negation-removal== 55756 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #74427: <==negation-removal== 13245 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #75613: <==negation-removal== 54958 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #75971: <==uncertain_firing== 18488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #77504: <==uncertain_firing== 58052 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #77836: <==uncertain_firing== 54958 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #78287: <==uncertain_firing== 12065 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #78486: <==negation-removal== 58052 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #79213: <==uncertain_firing== 81478 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #80198: <==uncertain_firing== 13245 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #81907: <==negation-removal== 29939 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #82096: <==negation-removal== 12907 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #82689: <==negation-removal== 46455 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84070: <==negation-removal== 19458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #90183: <==negation-removal== 15285 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #91744: <==negation-removal== 17586 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #92118: <==uncertain_firing== 79062 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #94276: <==uncertain_firing== 55756 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #13273: <==closure== 72654 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #15651: <==commonly_known== 72654 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #17198: <==commonly_known== 10722 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #17330: <==commonly_known== 72654 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_a))

                    ; #19171: <==commonly_known== 45552 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #22731: <==commonly_known== 13273 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_a))

                    ; #24044: <==commonly_known== 45552 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_a))

                    ; #28526: <==commonly_known== 10722 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_a))

                    ; #28623: <==closure== 48866 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #35794: <==commonly_known== 69693 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_a))

                    ; #39661: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #48866: <==commonly_known== 39661 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #50223: <==closure== 73740 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #52852: <==closure== 39661 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #64555: <==commonly_known== 79157 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #69616: <==commonly_known== 52852 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #69693: <==closure== 79157 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #70238: <==commonly_known== 52852 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #72654: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #73740: <==commonly_known== 39661 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #73955: <==closure== 64555 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #78235: <==commonly_known== 68062 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #79157: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #79733: <==commonly_known== 68062 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #80197: <==closure== 17330 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_a))

                    ; #88798: <==commonly_known== 79157 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_a))

                    ; #89200: <==commonly_known== 69693 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #90058: <==closure== 15651 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #91325: <==commonly_known== 13273 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #92864: <==closure== 88798 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_a))

                    ; #10722: <==uncertain_firing== 79157 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #11411: <==uncertain_firing== 48866 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #12986: <==uncertain_firing== 15651 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #13391: <==negation-removal== 19171 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #13725: <==negation-removal== 72654 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14109: <==negation-removal== 39661 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #16608: <==uncertain_firing== 50223 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #18020: <==uncertain_firing== 79733 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #18071: <==uncertain_firing== 17330 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #18718: <==negation-removal== 13273 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #20900: <==uncertain_firing== 24044 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #23542: <==negation-removal== 17198 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #24014: <==uncertain_firing== 78235 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #24739: <==uncertain_firing== 52852 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #25015: <==uncertain_firing== 90058 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #25577: <==negation-removal== 15651 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #27524: <==negation-removal== 73955 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #28923: <==negation-removal== 28526 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #32270: <==uncertain_firing== 89200 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #33412: <==uncertain_firing== 91325 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #34190: <==uncertain_firing== 19171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #35069: <==uncertain_firing== 70238 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #35935: <==negation-removal== 28623 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #37382: <==negation-removal== 69693 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39456: <==uncertain_firing== 73955 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #43283: <==negation-removal== 79733 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #44558: <==uncertain_firing== 73740 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #45552: <==uncertain_firing== 72654 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #47168: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #48004: <==negation-removal== 89200 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #48026: <==uncertain_firing== 88798 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #49265: <==negation-removal== 69616 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #52957: <==negation-removal== 17330 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #52986: <==negation-removal== 80197 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #57042: <==negation-removal== 50223 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #60902: <==negation-removal== 73740 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #61581: <==negation-removal== 78235 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #62019: <==negation-removal== 91325 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #66654: <==uncertain_firing== 69693 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #67173: <==uncertain_firing== 17198 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #67804: <==negation-removal== 48866 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #68062: <==uncertain_firing== 39661 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #68239: <==negation-removal== 79157 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #69134: <==negation-removal== 52852 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #69676: <==negation-removal== 35794 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #69812: <==uncertain_firing== 13273 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #70795: <==uncertain_firing== 92864 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #70832: <==uncertain_firing== 64555 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #72999: <==negation-removal== 70238 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #74927: <==negation-removal== 22731 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #75318: <==negation-removal== 88798 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #76892: <==uncertain_firing== 80197 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #77571: <==uncertain_firing== 28526 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #78298: <==negation-removal== 24044 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #84544: <==negation-removal== 90058 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #86156: <==negation-removal== 64555 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #89014: <==negation-removal== 92864 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #90422: <==uncertain_firing== 69616 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #91180: <==uncertain_firing== 35794 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #91788: <==uncertain_firing== 28623 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #10797: <==commonly_known== 52316 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #11122: <==closure== 88153 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #11735: <==commonly_known== 69026 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #16830: <==commonly_known== 90430 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_b))

                    ; #22513: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #23132: <==commonly_known== 30582 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #27201: <==closure== 37677 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #29504: <==commonly_known== 17306 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_b))

                    ; #30582: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32809: <==closure== 23132 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_b))

                    ; #33355: <==closure== 55868 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #37677: <==commonly_known== 22513 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #43675: <==closure== 85932 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #47044: <==commonly_known== 90430 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #48929: <==commonly_known== 17306 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #50259: <==commonly_known== 48921 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #52316: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #55133: <==commonly_known== 69026 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #55600: <==commonly_known== 76443 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #55868: <==commonly_known== 30582 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #61173: <==commonly_known== 40646 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #63062: <==closure== 10797 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #69026: <==closure== 22513 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #76443: <==closure== 30582 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #80706: <==commonly_known== 40646 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #83348: <==commonly_known== 48921 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #85932: <==commonly_known== 22513 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #88153: <==commonly_known== 52316 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_b))

                    ; #90430: <==closure== 52316 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #90687: <==commonly_known== 76443 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #15484: <==negation-removal== 10797 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #15806: <==uncertain_firing== 16830 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #17306: <==uncertain_firing== 52316 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #17389: <==uncertain_firing== 11735 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #19402: <==negation-removal== 16830 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #19459: <==uncertain_firing== 63062 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #22126: <==uncertain_firing== 27201 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #22271: <==negation-removal== 85932 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #22819: <==uncertain_firing== 55868 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #24008: <==negation-removal== 48929 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #29369: <==uncertain_firing== 69026 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #31215: <==uncertain_firing== 32809 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #32828: <==negation-removal== 30582 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #36054: <==negation-removal== 22513 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36290: <==uncertain_firing== 85932 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #39583: <==uncertain_firing== 50259 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #40336: <==negation-removal== 27201 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #40548: <==negation-removal== 61173 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #40646: <==uncertain_firing== 22513 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #41268: <==uncertain_firing== 55600 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #42536: <==uncertain_firing== 37677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #43158: <==negation-removal== 90687 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #43265: <==negation-removal== 55600 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #43415: <==negation-removal== 33355 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #45038: <==uncertain_firing== 29504 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #45444: <==negation-removal== 37677 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #48921: <==uncertain_firing== 30582 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #49179: <==uncertain_firing== 61173 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #50166: <==uncertain_firing== 90687 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #51866: <==negation-removal== 90430 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #52817: <==uncertain_firing== 80706 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #56022: <==uncertain_firing== 33355 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #58089: <==negation-removal== 69026 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #60934: <==negation-removal== 11122 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #61128: <==uncertain_firing== 48929 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #61779: <==uncertain_firing== 11122 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #63022: <==uncertain_firing== 90430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #63295: <==uncertain_firing== 55133 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #64104: <==negation-removal== 32809 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #64573: <==uncertain_firing== 47044 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #64882: <==negation-removal== 55133 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #65442: <==negation-removal== 43675 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #65780: <==uncertain_firing== 88153 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #66410: <==uncertain_firing== 10797 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #68306: <==negation-removal== 11735 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #68755: <==uncertain_firing== 83348 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #69527: <==negation-removal== 88153 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #76649: <==uncertain_firing== 76443 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #77219: <==negation-removal== 23132 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #82386: <==negation-removal== 55868 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #83490: <==negation-removal== 47044 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #83622: <==negation-removal== 52316 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #83698: <==negation-removal== 80706 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #85759: <==negation-removal== 29504 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86348: <==negation-removal== 63062 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #86636: <==negation-removal== 83348 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #87253: <==negation-removal== 50259 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #89616: <==negation-removal== 76443 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #90856: <==uncertain_firing== 23132 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #91911: <==uncertain_firing== 43675 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #11444: <==closure== 46090 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #18428: <==commonly_known== 87128 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_b))

                    ; #33691: <==closure== 90063 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #36073: <==commonly_known== 66027 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_b))

                    ; #38658: <==commonly_known== 87798 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #40777: <==closure== 59005 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #41359: <==closure== 87269 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_b))

                    ; #42581: <==commonly_known== 87128 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #42641: <==commonly_known== 52461 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #46090: <==commonly_known== 48504 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #46848: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #48504: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #51164: <==closure== 58462 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #52760: <==commonly_known== 48504 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_b))

                    ; #56002: <==closure== 48504 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #58462: <==commonly_known== 89495 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #59005: <==commonly_known== 89495 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #63317: <==closure== 46848 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68834: <==commonly_known== 56002 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_b))

                    ; #69098: <==commonly_known== 63317 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_b))

                    ; #69872: <==closure== 52760 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_b))

                    ; #74565: <==commonly_known== 63317 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #81714: <==commonly_known== 66027 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #83253: <==commonly_known== 87798 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #86448: <==commonly_known== 56002 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #87269: <==commonly_known== 46848 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_b))

                    ; #87798: <==closure== 89495 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #89306: <==commonly_known== 52461 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #89495: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #90063: <==commonly_known== 46848 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #17478: <==uncertain_firing== 38658 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #18791: <==uncertain_firing== 59005 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #18889: <==negation-removal== 69872 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #21032: <==uncertain_firing== 69872 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #21250: <==uncertain_firing== 63317 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #21664: <==uncertain_firing== 42641 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #24019: <==uncertain_firing== 46090 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #24236: <==negation-removal== 58462 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #24613: <==uncertain_firing== 11444 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #26962: <==uncertain_firing== 87269 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #27003: <==negation-removal== 48504 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #27966: <==negation-removal== 89495 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #28749: <==uncertain_firing== 89306 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #29133: <==negation-removal== 89306 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #29247: <==negation-removal== 83253 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #29495: <==uncertain_firing== 68834 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #30584: <==uncertain_firing== 86448 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #35525: <==uncertain_firing== 56002 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #39314: <==negation-removal== 51164 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #40385: <==negation-removal== 63317 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #42622: <==uncertain_firing== 51164 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #44667: <==negation-removal== 46848 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #45429: <==negation-removal== 42581 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #45760: <==negation-removal== 69098 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48134: <==uncertain_firing== 58462 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #48763: <==negation-removal== 11444 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #51161: <==negation-removal== 87798 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51297: <==uncertain_firing== 33691 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #52461: <==uncertain_firing== 89495 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #53523: <==uncertain_firing== 42581 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #54640: <==uncertain_firing== 87798 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56450: <==negation-removal== 74565 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #58970: <==uncertain_firing== 52760 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #59461: <==uncertain_firing== 36073 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #64553: <==negation-removal== 59005 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #64771: <==negation-removal== 90063 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #65683: <==negation-removal== 41359 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #66027: <==uncertain_firing== 48504 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #66101: <==negation-removal== 86448 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #68476: <==negation-removal== 33691 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #68503: <==uncertain_firing== 90063 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #68525: <==negation-removal== 36073 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #68944: <==negation-removal== 38658 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #70227: <==uncertain_firing== 40777 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #71503: <==negation-removal== 42641 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #71923: <==negation-removal== 46090 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #74581: <==uncertain_firing== 69098 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #75645: <==negation-removal== 56002 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #77446: <==negation-removal== 87269 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #78382: <==uncertain_firing== 41359 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #80685: <==uncertain_firing== 74565 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #80739: <==negation-removal== 52760 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #81513: <==uncertain_firing== 81714 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #83858: <==negation-removal== 40777 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #85292: <==negation-removal== 18428 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #86304: <==uncertain_firing== 83253 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #87128: <==uncertain_firing== 46848 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #88373: <==negation-removal== 68834 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #89312: <==uncertain_firing== 18428 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #90908: <==negation-removal== 81714 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Pa_secret_c)
                           (Ba_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #12889: <==commonly_known== 22839 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #21891: <==closure== 26657 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_c))

                    ; #22839: <==closure== 73870 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #25120: <==commonly_known== 38485 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #26657: <==commonly_known== 73870 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #28846: <==commonly_known== 71157 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #30838: <==closure== 56855 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #32584: <==closure== 76850 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #38485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #43681: <==commonly_known== 38485 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #43786: <==commonly_known== 56328 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #47583: <==commonly_known== 59135 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #48131: <==commonly_known== 74857 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #49019: <==commonly_known== 59135 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #56328: <==closure== 79705 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #56855: <==commonly_known== 73870 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #59170: <==commonly_known== 22462 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #65291: <==commonly_known== 79705 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #70624: <==commonly_known== 71157 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #71108: <==commonly_known== 74857 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #73350: <==closure== 43681 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #73592: <==commonly_known== 56328 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_c))

                    ; #73870: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #74645: <==closure== 65291 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #74857: <==closure== 38485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #76850: <==commonly_known== 79705 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_c))

                    ; #79705: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #81499: <==commonly_known== 22462 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_c))

                    ; #91489: <==closure== 25120 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #99548: <==commonly_known== 22839 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #11189: <==negation-removal== 26657 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #16437: <==negation-removal== 73592 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #16444: <==uncertain_firing== 21891 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #16740: <==uncertain_firing== 70624 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #19446: <==negation-removal== 79705 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #19809: <==negation-removal== 71108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #21124: <==uncertain_firing== 73592 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #21789: <==uncertain_firing== 43681 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #21971: <==uncertain_firing== 74857 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #22462: <==uncertain_firing== 79705 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #22926: <==negation-removal== 56328 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #24702: <==negation-removal== 49019 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #24855: <==uncertain_firing== 73350 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #25197: <==negation-removal== 43786 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #27587: <==uncertain_firing== 99548 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #27896: <==uncertain_firing== 22839 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #31192: <==negation-removal== 28846 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #32316: <==negation-removal== 73870 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #32317: <==negation-removal== 38485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #32788: <==negation-removal== 59170 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #32915: <==uncertain_firing== 43786 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #35803: <==negation-removal== 43681 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #36064: <==negation-removal== 25120 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36249: <==uncertain_firing== 47583 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #36268: <==uncertain_firing== 49019 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #36391: <==negation-removal== 21891 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #36820: <==negation-removal== 65291 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #37952: <==negation-removal== 48131 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #39436: <==uncertain_firing== 32584 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #41861: <==negation-removal== 22839 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #44208: <==uncertain_firing== 28846 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46786: <==negation-removal== 81499 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #50279: <==uncertain_firing== 56328 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50310: <==uncertain_firing== 65291 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #59135: <==uncertain_firing== 38485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #60148: <==uncertain_firing== 12889 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #61917: <==negation-removal== 30838 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #62307: <==negation-removal== 73350 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #62914: <==uncertain_firing== 59170 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #64030: <==uncertain_firing== 30838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #67793: <==uncertain_firing== 76850 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #68115: <==negation-removal== 32584 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #70217: <==negation-removal== 47583 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #71157: <==uncertain_firing== 73870 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #73322: <==uncertain_firing== 81499 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #73800: <==negation-removal== 76850 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #75023: <==uncertain_firing== 48131 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #75309: <==uncertain_firing== 26657 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #75588: <==negation-removal== 99548 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #75967: <==negation-removal== 74857 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #77442: <==negation-removal== 91489 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #79468: <==negation-removal== 70624 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #80678: <==negation-removal== 56855 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #83106: <==negation-removal== 12889 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #84659: <==uncertain_firing== 25120 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #84821: <==uncertain_firing== 91489 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #85368: <==uncertain_firing== 71108 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #85682: <==negation-removal== 74645 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #89441: <==uncertain_firing== 74645 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #91804: <==uncertain_firing== 56855 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #12485: <==commonly_known== 75713 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #23931: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #27346: <==commonly_known== 75713 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #30495: <==closure== 52907 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_c))

                    ; #30915: <==closure== 23931 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #31845: <==commonly_known== 53254 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #36320: <==commonly_known== 85280 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #38636: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41108: <==commonly_known== 38636 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #41108: <==commonly_known== 30915 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_c))

                    ; #41879: <==commonly_known== 72015 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_c))

                    ; #43502: <==commonly_known== 23931 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #45442: <==commonly_known== 30915 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #48060: <==closure== 43502 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #52907: <==commonly_known== 23931 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_c))

                    ; #53254: <==closure== 38636 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #58889: <==commonly_known== 85280 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_c))

                    ; #60745: <==commonly_known== 84153 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #63056: <==commonly_known== 38636 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #65875: <==closure== 84153 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #66759: <==closure== 41108 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #67351: <==commonly_known== 65875 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #72354: <==commonly_known== 72015 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #76081: <==closure== 60745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #79589: <==closure== 87323 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_c))

                    ; #79890: <==commonly_known== 53254 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #80242: <==commonly_known== 65875 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_c))

                    ; #84153: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #86042: <==closure== 63056 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #87323: <==commonly_known== 84153 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_c))

                    ; #10362: <==uncertain_firing== 63056 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #10630: <==uncertain_firing== 53254 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13012: <==negation-removal== 31845 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #13456: <==uncertain_firing== 36320 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #13670: <==negation-removal== 72354 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #14286: <==negation-removal== 43502 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #14306: <==uncertain_firing== 41108 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #21165: <==negation-removal== 36320 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #22716: <==negation-removal== 84153 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #23663: <==uncertain_firing== 86042 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #24417: <==negation-removal== 48060 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #26165: <==uncertain_firing== 52907 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #27352: <==uncertain_firing== 48060 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #28019: <==negation-removal== 38636 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #28753: <==negation-removal== 30915 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #30342: <==negation-removal== 23931 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #30677: <==negation-removal== 52907 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #31527: <==negation-removal== 66759 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #34802: <==negation-removal== 41108 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #35211: <==negation-removal== 30495 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #35830: <==uncertain_firing== 43502 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36752: <==negation-removal== 63056 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #36877: <==negation-removal== 53254 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #37074: <==negation-removal== 65875 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #39607: <==negation-removal== 27346 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #39946: <==negation-removal== 86042 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #44092: <==uncertain_firing== 79890 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #44934: <==uncertain_firing== 12485 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #45854: <==negation-removal== 60745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #46615: <==negation-removal== 79890 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #47625: <==uncertain_firing== 67351 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #47926: <==negation-removal== 79589 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #49756: <==negation-removal== 58889 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #50033: <==uncertain_firing== 27346 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #60790: <==negation-removal== 41879 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #63255: <==uncertain_firing== 65875 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65789: <==uncertain_firing== 41108 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #69110: <==uncertain_firing== 60745 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #71864: <==uncertain_firing== 30915 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #72015: <==uncertain_firing== 84153 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72312: <==negation-removal== 80242 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #75316: <==negation-removal== 41108 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #75713: <==uncertain_firing== 38636 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #76183: <==uncertain_firing== 30495 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #76576: <==uncertain_firing== 76081 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #77999: <==uncertain_firing== 31845 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #79464: <==negation-removal== 76081 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #79931: <==uncertain_firing== 80242 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #80300: <==uncertain_firing== 45442 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #80474: <==negation-removal== 67351 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #80824: <==uncertain_firing== 72354 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #80927: <==uncertain_firing== 87323 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #81100: <==negation-removal== 12485 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #81767: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #84081: <==uncertain_firing== 58889 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #85280: <==uncertain_firing== 23931 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88162: <==negation-removal== 87323 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #89728: <==negation-removal== 45442 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #91537: <==uncertain_firing== 66759 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #96984: <==uncertain_firing== 41879 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (at_b_l1)
                           (Pb_secret_a))
        :effect (and
                    ; #12065: <==closure== 55756 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #12907: <==closure== 29432 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #13245: <==closure== 19458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_a))

                    ; #13632: <==commonly_known== 87786 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #14198: <==commonly_known== 55756 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_a))

                    ; #15285: <==commonly_known== 25142 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #17586: <==commonly_known== 12065 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #18488: <==commonly_known== 25142 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #19458: <==commonly_known== 39670 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #25142: <==closure== 39670 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #25799: <==closure== 13632 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #26728: <==commonly_known== 94276 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_a))

                    ; #29124: <==commonly_known== 39670 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #29432: <==commonly_known== 55756 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #29939: <==commonly_known== 71794 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #32370: <==commonly_known== 46455 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #33485: <==commonly_known== 12065 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_a))

                    ; #39670: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #46455: <==closure== 87786 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #54958: <==commonly_known== 16984 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #55756: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #56316: <==commonly_known== 46455 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #58052: <==commonly_known== 87786 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #58411: <==commonly_known== 16984 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #69988: <==closure== 58052 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #79062: <==closure== 14198 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #81478: <==commonly_known== 71794 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #87786: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #88275: <==commonly_known== 94276 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #99971: <==closure== 29124 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #11143: <==negation-removal== 99971 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #14094: <==negation-removal== 58411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #16984: <==uncertain_firing== 87786 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #18245: <==uncertain_firing== 15285 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #19150: <==negation-removal== 29124 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #19581: <==uncertain_firing== 33485 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #23374: <==uncertain_firing== 17586 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #25420: <==negation-removal== 25142 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #25814: <==uncertain_firing== 26728 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #27169: <==uncertain_firing== 58411 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #28773: <==uncertain_firing== 88275 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #31236: <==negation-removal== 29432 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #32938: <==negation-removal== 13632 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #34036: <==uncertain_firing== 56316 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #34048: <==uncertain_firing== 14198 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #34184: <==negation-removal== 32370 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #34502: <==negation-removal== 69988 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #36920: <==negation-removal== 14198 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #38683: <==negation-removal== 56316 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #40199: <==negation-removal== 33485 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #41551: <==negation-removal== 81478 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #41725: <==negation-removal== 18488 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #43101: <==negation-removal== 25799 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #43472: <==negation-removal== 88275 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #46265: <==uncertain_firing== 29124 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #47278: <==uncertain_firing== 69988 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #47430: <==uncertain_firing== 12907 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #47634: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #50950: <==uncertain_firing== 13632 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #52740: <==negation-removal== 39670 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #54837: <==uncertain_firing== 25142 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #55464: <==negation-removal== 87786 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #55524: <==uncertain_firing== 32370 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #55547: <==uncertain_firing== 25799 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #57166: <==uncertain_firing== 46455 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #58124: <==negation-removal== 26728 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #58667: <==negation-removal== 79062 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #59334: <==negation-removal== 12065 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #64124: <==uncertain_firing== 29939 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #65867: <==uncertain_firing== 99971 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #68874: <==uncertain_firing== 29432 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #71794: <==uncertain_firing== 39670 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #73691: <==negation-removal== 55756 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #74427: <==negation-removal== 13245 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #75613: <==negation-removal== 54958 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #75971: <==uncertain_firing== 18488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #77504: <==uncertain_firing== 58052 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #77836: <==uncertain_firing== 54958 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #78287: <==uncertain_firing== 12065 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #78486: <==negation-removal== 58052 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #79213: <==uncertain_firing== 81478 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #80198: <==uncertain_firing== 13245 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #81907: <==negation-removal== 29939 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #82096: <==negation-removal== 12907 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #82689: <==negation-removal== 46455 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84070: <==negation-removal== 19458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #90183: <==negation-removal== 15285 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #91744: <==negation-removal== 17586 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #92118: <==uncertain_firing== 79062 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #94276: <==uncertain_firing== 55756 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (at_b_l2)
                           (Pb_secret_a))
        :effect (and
                    ; #13273: <==closure== 72654 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #15651: <==commonly_known== 72654 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #17198: <==commonly_known== 10722 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #17330: <==commonly_known== 72654 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_a))

                    ; #19171: <==commonly_known== 45552 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #22731: <==commonly_known== 13273 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_a))

                    ; #24044: <==commonly_known== 45552 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_a))

                    ; #28526: <==commonly_known== 10722 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_a))

                    ; #28623: <==closure== 48866 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #35794: <==commonly_known== 69693 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_a))

                    ; #39661: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #48866: <==commonly_known== 39661 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #50223: <==closure== 73740 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #52852: <==closure== 39661 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #64555: <==commonly_known== 79157 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #69616: <==commonly_known== 52852 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #69693: <==closure== 79157 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #70238: <==commonly_known== 52852 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #72654: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #73740: <==commonly_known== 39661 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #73955: <==closure== 64555 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #78235: <==commonly_known== 68062 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #79157: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #79733: <==commonly_known== 68062 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #80197: <==closure== 17330 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_a))

                    ; #88798: <==commonly_known== 79157 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_a))

                    ; #89200: <==commonly_known== 69693 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #90058: <==closure== 15651 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #91325: <==commonly_known== 13273 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #92864: <==closure== 88798 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_a))

                    ; #10722: <==uncertain_firing== 79157 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #11411: <==uncertain_firing== 48866 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #12986: <==uncertain_firing== 15651 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #13391: <==negation-removal== 19171 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #13725: <==negation-removal== 72654 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14109: <==negation-removal== 39661 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #16608: <==uncertain_firing== 50223 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #18020: <==uncertain_firing== 79733 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #18071: <==uncertain_firing== 17330 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #18718: <==negation-removal== 13273 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #20900: <==uncertain_firing== 24044 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #23542: <==negation-removal== 17198 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #24014: <==uncertain_firing== 78235 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #24739: <==uncertain_firing== 52852 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #25015: <==uncertain_firing== 90058 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #25577: <==negation-removal== 15651 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #27524: <==negation-removal== 73955 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #28923: <==negation-removal== 28526 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #32270: <==uncertain_firing== 89200 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #33412: <==uncertain_firing== 91325 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #34190: <==uncertain_firing== 19171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #35069: <==uncertain_firing== 70238 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #35935: <==negation-removal== 28623 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #37382: <==negation-removal== 69693 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39456: <==uncertain_firing== 73955 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #43283: <==negation-removal== 79733 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #44558: <==uncertain_firing== 73740 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #45552: <==uncertain_firing== 72654 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #47168: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #48004: <==negation-removal== 89200 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #48026: <==uncertain_firing== 88798 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #49265: <==negation-removal== 69616 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #52957: <==negation-removal== 17330 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #52986: <==negation-removal== 80197 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #57042: <==negation-removal== 50223 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #60902: <==negation-removal== 73740 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #61581: <==negation-removal== 78235 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #62019: <==negation-removal== 91325 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #66654: <==uncertain_firing== 69693 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #67173: <==uncertain_firing== 17198 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #67804: <==negation-removal== 48866 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #68062: <==uncertain_firing== 39661 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #68239: <==negation-removal== 79157 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #69134: <==negation-removal== 52852 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #69676: <==negation-removal== 35794 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #69812: <==uncertain_firing== 13273 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #70795: <==uncertain_firing== 92864 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #70832: <==uncertain_firing== 64555 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #72999: <==negation-removal== 70238 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #74927: <==negation-removal== 22731 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #75318: <==negation-removal== 88798 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #76892: <==uncertain_firing== 80197 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #77571: <==uncertain_firing== 28526 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #78298: <==negation-removal== 24044 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #84544: <==negation-removal== 90058 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #86156: <==negation-removal== 64555 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #89014: <==negation-removal== 92864 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #90422: <==uncertain_firing== 69616 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #91180: <==uncertain_firing== 35794 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #91788: <==uncertain_firing== 28623 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #10797: <==commonly_known== 52316 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #11122: <==closure== 88153 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #11735: <==commonly_known== 69026 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #16830: <==commonly_known== 90430 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_b))

                    ; #22513: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #23132: <==commonly_known== 30582 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #27201: <==closure== 37677 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #29504: <==commonly_known== 17306 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_b))

                    ; #30582: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32809: <==closure== 23132 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_b))

                    ; #33355: <==closure== 55868 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #37677: <==commonly_known== 22513 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #43675: <==closure== 85932 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #47044: <==commonly_known== 90430 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #48929: <==commonly_known== 17306 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #50259: <==commonly_known== 48921 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #52316: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #55133: <==commonly_known== 69026 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #55600: <==commonly_known== 76443 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #55868: <==commonly_known== 30582 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #61173: <==commonly_known== 40646 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #63062: <==closure== 10797 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #69026: <==closure== 22513 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #76443: <==closure== 30582 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #80706: <==commonly_known== 40646 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #83348: <==commonly_known== 48921 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #85932: <==commonly_known== 22513 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #88153: <==commonly_known== 52316 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_b))

                    ; #90430: <==closure== 52316 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #90687: <==commonly_known== 76443 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #15484: <==negation-removal== 10797 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #15806: <==uncertain_firing== 16830 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #17306: <==uncertain_firing== 52316 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #17389: <==uncertain_firing== 11735 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #19402: <==negation-removal== 16830 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #19459: <==uncertain_firing== 63062 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #22126: <==uncertain_firing== 27201 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #22271: <==negation-removal== 85932 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #22819: <==uncertain_firing== 55868 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #24008: <==negation-removal== 48929 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #29369: <==uncertain_firing== 69026 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #31215: <==uncertain_firing== 32809 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #32828: <==negation-removal== 30582 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #36054: <==negation-removal== 22513 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36290: <==uncertain_firing== 85932 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #39583: <==uncertain_firing== 50259 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #40336: <==negation-removal== 27201 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #40548: <==negation-removal== 61173 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #40646: <==uncertain_firing== 22513 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #41268: <==uncertain_firing== 55600 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #42536: <==uncertain_firing== 37677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #43158: <==negation-removal== 90687 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #43265: <==negation-removal== 55600 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #43415: <==negation-removal== 33355 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #45038: <==uncertain_firing== 29504 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #45444: <==negation-removal== 37677 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #48921: <==uncertain_firing== 30582 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #49179: <==uncertain_firing== 61173 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #50166: <==uncertain_firing== 90687 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #51866: <==negation-removal== 90430 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #52817: <==uncertain_firing== 80706 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #56022: <==uncertain_firing== 33355 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #58089: <==negation-removal== 69026 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #60934: <==negation-removal== 11122 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #61128: <==uncertain_firing== 48929 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #61779: <==uncertain_firing== 11122 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #63022: <==uncertain_firing== 90430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #63295: <==uncertain_firing== 55133 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #64104: <==negation-removal== 32809 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #64573: <==uncertain_firing== 47044 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #64882: <==negation-removal== 55133 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #65442: <==negation-removal== 43675 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #65780: <==uncertain_firing== 88153 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #66410: <==uncertain_firing== 10797 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #68306: <==negation-removal== 11735 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #68755: <==uncertain_firing== 83348 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #69527: <==negation-removal== 88153 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #76649: <==uncertain_firing== 76443 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #77219: <==negation-removal== 23132 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #82386: <==negation-removal== 55868 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #83490: <==negation-removal== 47044 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #83622: <==negation-removal== 52316 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #83698: <==negation-removal== 80706 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #85759: <==negation-removal== 29504 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86348: <==negation-removal== 63062 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #86636: <==negation-removal== 83348 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #87253: <==negation-removal== 50259 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #89616: <==negation-removal== 76443 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #90856: <==uncertain_firing== 23132 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #91911: <==uncertain_firing== 43675 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #11444: <==closure== 46090 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #18428: <==commonly_known== 87128 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_b))

                    ; #33691: <==closure== 90063 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #36073: <==commonly_known== 66027 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_b))

                    ; #38658: <==commonly_known== 87798 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #40777: <==closure== 59005 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #41359: <==closure== 87269 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_b))

                    ; #42581: <==commonly_known== 87128 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #42641: <==commonly_known== 52461 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #46090: <==commonly_known== 48504 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #46848: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #48504: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #51164: <==closure== 58462 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #52760: <==commonly_known== 48504 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_b))

                    ; #56002: <==closure== 48504 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #58462: <==commonly_known== 89495 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #59005: <==commonly_known== 89495 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #63317: <==closure== 46848 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68834: <==commonly_known== 56002 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_b))

                    ; #69098: <==commonly_known== 63317 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_b))

                    ; #69872: <==closure== 52760 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_b))

                    ; #74565: <==commonly_known== 63317 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #81714: <==commonly_known== 66027 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #83253: <==commonly_known== 87798 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #86448: <==commonly_known== 56002 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #87269: <==commonly_known== 46848 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_b))

                    ; #87798: <==closure== 89495 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #89306: <==commonly_known== 52461 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #89495: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #90063: <==commonly_known== 46848 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #17478: <==uncertain_firing== 38658 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #18791: <==uncertain_firing== 59005 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #18889: <==negation-removal== 69872 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #21032: <==uncertain_firing== 69872 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #21250: <==uncertain_firing== 63317 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #21664: <==uncertain_firing== 42641 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #24019: <==uncertain_firing== 46090 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #24236: <==negation-removal== 58462 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #24613: <==uncertain_firing== 11444 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #26962: <==uncertain_firing== 87269 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #27003: <==negation-removal== 48504 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #27966: <==negation-removal== 89495 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #28749: <==uncertain_firing== 89306 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #29133: <==negation-removal== 89306 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #29247: <==negation-removal== 83253 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #29495: <==uncertain_firing== 68834 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #30584: <==uncertain_firing== 86448 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #35525: <==uncertain_firing== 56002 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #39314: <==negation-removal== 51164 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #40385: <==negation-removal== 63317 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #42622: <==uncertain_firing== 51164 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #44667: <==negation-removal== 46848 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #45429: <==negation-removal== 42581 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #45760: <==negation-removal== 69098 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48134: <==uncertain_firing== 58462 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #48763: <==negation-removal== 11444 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #51161: <==negation-removal== 87798 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51297: <==uncertain_firing== 33691 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #52461: <==uncertain_firing== 89495 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #53523: <==uncertain_firing== 42581 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #54640: <==uncertain_firing== 87798 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56450: <==negation-removal== 74565 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #58970: <==uncertain_firing== 52760 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #59461: <==uncertain_firing== 36073 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #64553: <==negation-removal== 59005 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #64771: <==negation-removal== 90063 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #65683: <==negation-removal== 41359 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #66027: <==uncertain_firing== 48504 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #66101: <==negation-removal== 86448 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #68476: <==negation-removal== 33691 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #68503: <==uncertain_firing== 90063 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #68525: <==negation-removal== 36073 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #68944: <==negation-removal== 38658 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #70227: <==uncertain_firing== 40777 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #71503: <==negation-removal== 42641 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #71923: <==negation-removal== 46090 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #74581: <==uncertain_firing== 69098 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #75645: <==negation-removal== 56002 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #77446: <==negation-removal== 87269 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #78382: <==uncertain_firing== 41359 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #80685: <==uncertain_firing== 74565 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #80739: <==negation-removal== 52760 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #81513: <==uncertain_firing== 81714 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #83858: <==negation-removal== 40777 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #85292: <==negation-removal== 18428 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #86304: <==uncertain_firing== 83253 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #87128: <==uncertain_firing== 46848 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #88373: <==negation-removal== 68834 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #89312: <==uncertain_firing== 18428 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #90908: <==negation-removal== 81714 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #12889: <==commonly_known== 22839 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #21891: <==closure== 26657 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_c))

                    ; #22839: <==closure== 73870 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #25120: <==commonly_known== 38485 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #26657: <==commonly_known== 73870 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #28846: <==commonly_known== 71157 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #30838: <==closure== 56855 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #32584: <==closure== 76850 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #38485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #43681: <==commonly_known== 38485 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #43786: <==commonly_known== 56328 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #47583: <==commonly_known== 59135 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #48131: <==commonly_known== 74857 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #49019: <==commonly_known== 59135 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #56328: <==closure== 79705 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #56855: <==commonly_known== 73870 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #59170: <==commonly_known== 22462 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #65291: <==commonly_known== 79705 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #70624: <==commonly_known== 71157 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #71108: <==commonly_known== 74857 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #73350: <==closure== 43681 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #73592: <==commonly_known== 56328 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_c))

                    ; #73870: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #74645: <==closure== 65291 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #74857: <==closure== 38485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #76850: <==commonly_known== 79705 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_c))

                    ; #79705: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #81499: <==commonly_known== 22462 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_c))

                    ; #91489: <==closure== 25120 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #99548: <==commonly_known== 22839 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #11189: <==negation-removal== 26657 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #16437: <==negation-removal== 73592 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #16444: <==uncertain_firing== 21891 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #16740: <==uncertain_firing== 70624 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #19446: <==negation-removal== 79705 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #19809: <==negation-removal== 71108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #21124: <==uncertain_firing== 73592 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #21789: <==uncertain_firing== 43681 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #21971: <==uncertain_firing== 74857 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #22462: <==uncertain_firing== 79705 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #22926: <==negation-removal== 56328 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #24702: <==negation-removal== 49019 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #24855: <==uncertain_firing== 73350 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #25197: <==negation-removal== 43786 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #27587: <==uncertain_firing== 99548 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #27896: <==uncertain_firing== 22839 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #31192: <==negation-removal== 28846 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #32316: <==negation-removal== 73870 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #32317: <==negation-removal== 38485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #32788: <==negation-removal== 59170 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #32915: <==uncertain_firing== 43786 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #35803: <==negation-removal== 43681 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #36064: <==negation-removal== 25120 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36249: <==uncertain_firing== 47583 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #36268: <==uncertain_firing== 49019 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #36391: <==negation-removal== 21891 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #36820: <==negation-removal== 65291 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #37952: <==negation-removal== 48131 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #39436: <==uncertain_firing== 32584 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #41861: <==negation-removal== 22839 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #44208: <==uncertain_firing== 28846 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46786: <==negation-removal== 81499 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #50279: <==uncertain_firing== 56328 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50310: <==uncertain_firing== 65291 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #59135: <==uncertain_firing== 38485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #60148: <==uncertain_firing== 12889 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #61917: <==negation-removal== 30838 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #62307: <==negation-removal== 73350 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #62914: <==uncertain_firing== 59170 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #64030: <==uncertain_firing== 30838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #67793: <==uncertain_firing== 76850 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #68115: <==negation-removal== 32584 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #70217: <==negation-removal== 47583 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #71157: <==uncertain_firing== 73870 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #73322: <==uncertain_firing== 81499 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #73800: <==negation-removal== 76850 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #75023: <==uncertain_firing== 48131 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #75309: <==uncertain_firing== 26657 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #75588: <==negation-removal== 99548 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #75967: <==negation-removal== 74857 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #77442: <==negation-removal== 91489 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #79468: <==negation-removal== 70624 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #80678: <==negation-removal== 56855 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #83106: <==negation-removal== 12889 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #84659: <==uncertain_firing== 25120 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #84821: <==uncertain_firing== 91489 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #85368: <==uncertain_firing== 71108 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #85682: <==negation-removal== 74645 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #89441: <==uncertain_firing== 74645 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #91804: <==uncertain_firing== 56855 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #12485: <==commonly_known== 75713 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #23931: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #27346: <==commonly_known== 75713 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #30495: <==closure== 52907 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_c))

                    ; #30915: <==closure== 23931 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #31845: <==commonly_known== 53254 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #36320: <==commonly_known== 85280 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #38636: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41108: <==commonly_known== 38636 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #41108: <==commonly_known== 30915 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_c))

                    ; #41879: <==commonly_known== 72015 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_c))

                    ; #43502: <==commonly_known== 23931 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #45442: <==commonly_known== 30915 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #48060: <==closure== 43502 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #52907: <==commonly_known== 23931 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_c))

                    ; #53254: <==closure== 38636 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #58889: <==commonly_known== 85280 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_c))

                    ; #60745: <==commonly_known== 84153 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #63056: <==commonly_known== 38636 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #65875: <==closure== 84153 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #66759: <==closure== 41108 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #67351: <==commonly_known== 65875 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #72354: <==commonly_known== 72015 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #76081: <==closure== 60745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #79589: <==closure== 87323 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_c))

                    ; #79890: <==commonly_known== 53254 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #80242: <==commonly_known== 65875 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_c))

                    ; #84153: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #86042: <==closure== 63056 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #87323: <==commonly_known== 84153 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_c))

                    ; #10362: <==uncertain_firing== 63056 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #10630: <==uncertain_firing== 53254 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13012: <==negation-removal== 31845 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #13456: <==uncertain_firing== 36320 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #13670: <==negation-removal== 72354 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #14286: <==negation-removal== 43502 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #14306: <==uncertain_firing== 41108 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #21165: <==negation-removal== 36320 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #22716: <==negation-removal== 84153 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #23663: <==uncertain_firing== 86042 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #24417: <==negation-removal== 48060 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #26165: <==uncertain_firing== 52907 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #27352: <==uncertain_firing== 48060 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #28019: <==negation-removal== 38636 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #28753: <==negation-removal== 30915 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #30342: <==negation-removal== 23931 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #30677: <==negation-removal== 52907 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #31527: <==negation-removal== 66759 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #34802: <==negation-removal== 41108 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #35211: <==negation-removal== 30495 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #35830: <==uncertain_firing== 43502 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36752: <==negation-removal== 63056 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #36877: <==negation-removal== 53254 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #37074: <==negation-removal== 65875 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #39607: <==negation-removal== 27346 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #39946: <==negation-removal== 86042 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #44092: <==uncertain_firing== 79890 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #44934: <==uncertain_firing== 12485 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #45854: <==negation-removal== 60745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #46615: <==negation-removal== 79890 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #47625: <==uncertain_firing== 67351 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #47926: <==negation-removal== 79589 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #49756: <==negation-removal== 58889 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #50033: <==uncertain_firing== 27346 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #60790: <==negation-removal== 41879 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #63255: <==uncertain_firing== 65875 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65789: <==uncertain_firing== 41108 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #69110: <==uncertain_firing== 60745 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #71864: <==uncertain_firing== 30915 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #72015: <==uncertain_firing== 84153 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72312: <==negation-removal== 80242 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #75316: <==negation-removal== 41108 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #75713: <==uncertain_firing== 38636 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #76183: <==uncertain_firing== 30495 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #76576: <==uncertain_firing== 76081 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #77999: <==uncertain_firing== 31845 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #79464: <==negation-removal== 76081 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #79931: <==uncertain_firing== 80242 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #80300: <==uncertain_firing== 45442 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #80474: <==negation-removal== 67351 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #80824: <==uncertain_firing== 72354 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #80927: <==uncertain_firing== 87323 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #81100: <==negation-removal== 12485 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #81767: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #84081: <==uncertain_firing== 58889 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #85280: <==uncertain_firing== 23931 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88162: <==negation-removal== 87323 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #89728: <==negation-removal== 45442 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #91537: <==uncertain_firing== 66759 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #96984: <==uncertain_firing== 41879 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #12065: <==closure== 55756 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #12907: <==closure== 29432 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #13245: <==closure== 19458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_a))

                    ; #13632: <==commonly_known== 87786 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #14198: <==commonly_known== 55756 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_a))

                    ; #15285: <==commonly_known== 25142 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #17586: <==commonly_known== 12065 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #18488: <==commonly_known== 25142 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #19458: <==commonly_known== 39670 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #25142: <==closure== 39670 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #25799: <==closure== 13632 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #26728: <==commonly_known== 94276 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_a))

                    ; #29124: <==commonly_known== 39670 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #29432: <==commonly_known== 55756 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #29939: <==commonly_known== 71794 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #32370: <==commonly_known== 46455 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #33485: <==commonly_known== 12065 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_a))

                    ; #39670: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #46455: <==closure== 87786 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #54958: <==commonly_known== 16984 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #55756: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #56316: <==commonly_known== 46455 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #58052: <==commonly_known== 87786 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #58411: <==commonly_known== 16984 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #69988: <==closure== 58052 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #79062: <==closure== 14198 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #81478: <==commonly_known== 71794 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #87786: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #88275: <==commonly_known== 94276 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #99971: <==closure== 29124 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #11143: <==negation-removal== 99971 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #14094: <==negation-removal== 58411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #16984: <==uncertain_firing== 87786 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #18245: <==uncertain_firing== 15285 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #19150: <==negation-removal== 29124 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #19581: <==uncertain_firing== 33485 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #23374: <==uncertain_firing== 17586 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #25420: <==negation-removal== 25142 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #25814: <==uncertain_firing== 26728 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #27169: <==uncertain_firing== 58411 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #28773: <==uncertain_firing== 88275 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #31236: <==negation-removal== 29432 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #32938: <==negation-removal== 13632 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #34036: <==uncertain_firing== 56316 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #34048: <==uncertain_firing== 14198 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #34184: <==negation-removal== 32370 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #34502: <==negation-removal== 69988 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #36920: <==negation-removal== 14198 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #38683: <==negation-removal== 56316 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #40199: <==negation-removal== 33485 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #41551: <==negation-removal== 81478 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #41725: <==negation-removal== 18488 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #43101: <==negation-removal== 25799 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #43472: <==negation-removal== 88275 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #46265: <==uncertain_firing== 29124 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #47278: <==uncertain_firing== 69988 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #47430: <==uncertain_firing== 12907 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #47634: <==uncertain_firing== 19458 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #50950: <==uncertain_firing== 13632 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #52740: <==negation-removal== 39670 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #54837: <==uncertain_firing== 25142 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #55464: <==negation-removal== 87786 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #55524: <==uncertain_firing== 32370 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #55547: <==uncertain_firing== 25799 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #57166: <==uncertain_firing== 46455 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #58124: <==negation-removal== 26728 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #58667: <==negation-removal== 79062 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #59334: <==negation-removal== 12065 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #64124: <==uncertain_firing== 29939 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #65867: <==uncertain_firing== 99971 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #68874: <==uncertain_firing== 29432 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #71794: <==uncertain_firing== 39670 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #73691: <==negation-removal== 55756 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #74427: <==negation-removal== 13245 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #75613: <==negation-removal== 54958 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #75971: <==uncertain_firing== 18488 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #77504: <==uncertain_firing== 58052 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #77836: <==uncertain_firing== 54958 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #78287: <==uncertain_firing== 12065 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #78486: <==negation-removal== 58052 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #79213: <==uncertain_firing== 81478 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #80198: <==uncertain_firing== 13245 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #81907: <==negation-removal== 29939 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #82096: <==negation-removal== 12907 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #82689: <==negation-removal== 46455 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #84070: <==negation-removal== 19458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #90183: <==negation-removal== 15285 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #91744: <==negation-removal== 17586 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #92118: <==uncertain_firing== 79062 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #94276: <==uncertain_firing== 55756 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Pc_secret_a)
                           (Bc_secret_a)
                           (at_c_l2))
        :effect (and
                    ; #13273: <==closure== 72654 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #15651: <==commonly_known== 72654 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #17198: <==commonly_known== 10722 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #17330: <==commonly_known== 72654 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_a))

                    ; #19171: <==commonly_known== 45552 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #22731: <==commonly_known== 13273 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_a))

                    ; #24044: <==commonly_known== 45552 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_a))

                    ; #28526: <==commonly_known== 10722 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_a))

                    ; #28623: <==closure== 48866 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #35794: <==commonly_known== 69693 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_a))

                    ; #39661: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #48866: <==commonly_known== 39661 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #50223: <==closure== 73740 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #52852: <==closure== 39661 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #64555: <==commonly_known== 79157 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #69616: <==commonly_known== 52852 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #69693: <==closure== 79157 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #70238: <==commonly_known== 52852 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #72654: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #73740: <==commonly_known== 39661 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #73955: <==closure== 64555 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #78235: <==commonly_known== 68062 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #79157: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #79733: <==commonly_known== 68062 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #80197: <==closure== 17330 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_a))

                    ; #88798: <==commonly_known== 79157 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_a))

                    ; #89200: <==commonly_known== 69693 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #90058: <==closure== 15651 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #91325: <==commonly_known== 13273 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #92864: <==closure== 88798 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_a))

                    ; #10722: <==uncertain_firing== 79157 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #11411: <==uncertain_firing== 48866 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #12986: <==uncertain_firing== 15651 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #13391: <==negation-removal== 19171 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #13725: <==negation-removal== 72654 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14109: <==negation-removal== 39661 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #16608: <==uncertain_firing== 50223 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #18020: <==uncertain_firing== 79733 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #18071: <==uncertain_firing== 17330 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #18718: <==negation-removal== 13273 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #20900: <==uncertain_firing== 24044 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #23542: <==negation-removal== 17198 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #24014: <==uncertain_firing== 78235 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #24739: <==uncertain_firing== 52852 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #25015: <==uncertain_firing== 90058 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #25577: <==negation-removal== 15651 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #27524: <==negation-removal== 73955 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #28923: <==negation-removal== 28526 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #32270: <==uncertain_firing== 89200 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #33412: <==uncertain_firing== 91325 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #34190: <==uncertain_firing== 19171 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #35069: <==uncertain_firing== 70238 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #35935: <==negation-removal== 28623 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #37382: <==negation-removal== 69693 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39456: <==uncertain_firing== 73955 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #43283: <==negation-removal== 79733 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #44558: <==uncertain_firing== 73740 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #45552: <==uncertain_firing== 72654 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #47168: <==uncertain_firing== 22731 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #48004: <==negation-removal== 89200 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #48026: <==uncertain_firing== 88798 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #49265: <==negation-removal== 69616 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #52957: <==negation-removal== 17330 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #52986: <==negation-removal== 80197 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #57042: <==negation-removal== 50223 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #60902: <==negation-removal== 73740 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #61581: <==negation-removal== 78235 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #62019: <==negation-removal== 91325 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #66654: <==uncertain_firing== 69693 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #67173: <==uncertain_firing== 17198 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #67804: <==negation-removal== 48866 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #68062: <==uncertain_firing== 39661 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #68239: <==negation-removal== 79157 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #69134: <==negation-removal== 52852 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #69676: <==negation-removal== 35794 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #69812: <==uncertain_firing== 13273 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #70795: <==uncertain_firing== 92864 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #70832: <==uncertain_firing== 64555 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #72999: <==negation-removal== 70238 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #74927: <==negation-removal== 22731 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #75318: <==negation-removal== 88798 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #76892: <==uncertain_firing== 80197 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #77571: <==uncertain_firing== 28526 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #78298: <==negation-removal== 24044 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #84544: <==negation-removal== 90058 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #86156: <==negation-removal== 64555 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #89014: <==negation-removal== 92864 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #90422: <==uncertain_firing== 69616 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #91180: <==uncertain_firing== 35794 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #91788: <==uncertain_firing== 28623 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (at_c_l1)
                           (Pc_secret_b))
        :effect (and
                    ; #10797: <==commonly_known== 52316 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #11122: <==closure== 88153 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #11735: <==commonly_known== 69026 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #16830: <==commonly_known== 90430 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_b))

                    ; #22513: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #23132: <==commonly_known== 30582 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #27201: <==closure== 37677 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #29504: <==commonly_known== 17306 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_b))

                    ; #30582: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #32809: <==closure== 23132 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_b))

                    ; #33355: <==closure== 55868 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #37677: <==commonly_known== 22513 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #43675: <==closure== 85932 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #47044: <==commonly_known== 90430 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #48929: <==commonly_known== 17306 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #50259: <==commonly_known== 48921 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #52316: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #55133: <==commonly_known== 69026 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #55600: <==commonly_known== 76443 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #55868: <==commonly_known== 30582 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #61173: <==commonly_known== 40646 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #63062: <==closure== 10797 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #69026: <==closure== 22513 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #76443: <==closure== 30582 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #80706: <==commonly_known== 40646 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #83348: <==commonly_known== 48921 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #85932: <==commonly_known== 22513 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #88153: <==commonly_known== 52316 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_b))

                    ; #90430: <==closure== 52316 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #90687: <==commonly_known== 76443 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #15484: <==negation-removal== 10797 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #15806: <==uncertain_firing== 16830 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #17306: <==uncertain_firing== 52316 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #17389: <==uncertain_firing== 11735 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #19402: <==negation-removal== 16830 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #19459: <==uncertain_firing== 63062 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #22126: <==uncertain_firing== 27201 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #22271: <==negation-removal== 85932 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #22819: <==uncertain_firing== 55868 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #24008: <==negation-removal== 48929 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #29369: <==uncertain_firing== 69026 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #31215: <==uncertain_firing== 32809 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #32828: <==negation-removal== 30582 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #36054: <==negation-removal== 22513 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36290: <==uncertain_firing== 85932 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #39583: <==uncertain_firing== 50259 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #40336: <==negation-removal== 27201 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #40548: <==negation-removal== 61173 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #40646: <==uncertain_firing== 22513 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #41268: <==uncertain_firing== 55600 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #42536: <==uncertain_firing== 37677 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #43158: <==negation-removal== 90687 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #43265: <==negation-removal== 55600 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #43415: <==negation-removal== 33355 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #45038: <==uncertain_firing== 29504 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #45444: <==negation-removal== 37677 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #48921: <==uncertain_firing== 30582 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #49179: <==uncertain_firing== 61173 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #50166: <==uncertain_firing== 90687 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #51866: <==negation-removal== 90430 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #52817: <==uncertain_firing== 80706 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #56022: <==uncertain_firing== 33355 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #58089: <==negation-removal== 69026 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #60934: <==negation-removal== 11122 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #61128: <==uncertain_firing== 48929 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #61779: <==uncertain_firing== 11122 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #63022: <==uncertain_firing== 90430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #63295: <==uncertain_firing== 55133 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #64104: <==negation-removal== 32809 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #64573: <==uncertain_firing== 47044 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #64882: <==negation-removal== 55133 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #65442: <==negation-removal== 43675 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #65780: <==uncertain_firing== 88153 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #66410: <==uncertain_firing== 10797 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #68306: <==negation-removal== 11735 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #68755: <==uncertain_firing== 83348 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #69527: <==negation-removal== 88153 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #76649: <==uncertain_firing== 76443 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #77219: <==negation-removal== 23132 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #82386: <==negation-removal== 55868 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #83490: <==negation-removal== 47044 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #83622: <==negation-removal== 52316 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #83698: <==negation-removal== 80706 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #85759: <==negation-removal== 29504 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #86348: <==negation-removal== 63062 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #86636: <==negation-removal== 83348 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #87253: <==negation-removal== 50259 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #89616: <==negation-removal== 76443 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #90856: <==uncertain_firing== 23132 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #91911: <==uncertain_firing== 43675 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Bc_secret_b)
                           (at_c_l2)
                           (Pc_secret_b))
        :effect (and
                    ; #11444: <==closure== 46090 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #18428: <==commonly_known== 87128 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_b))

                    ; #33691: <==closure== 90063 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #36073: <==commonly_known== 66027 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_b))

                    ; #38658: <==commonly_known== 87798 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #40777: <==closure== 59005 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #41359: <==closure== 87269 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_b))

                    ; #42581: <==commonly_known== 87128 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #42641: <==commonly_known== 52461 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #46090: <==commonly_known== 48504 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #46848: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #48504: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #51164: <==closure== 58462 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #52760: <==commonly_known== 48504 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_b))

                    ; #56002: <==closure== 48504 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #58462: <==commonly_known== 89495 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #59005: <==commonly_known== 89495 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #63317: <==closure== 46848 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68834: <==commonly_known== 56002 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_b))

                    ; #69098: <==commonly_known== 63317 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_b))

                    ; #69872: <==closure== 52760 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_b))

                    ; #74565: <==commonly_known== 63317 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #81714: <==commonly_known== 66027 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #83253: <==commonly_known== 87798 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #86448: <==commonly_known== 56002 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #87269: <==commonly_known== 46848 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_b))

                    ; #87798: <==closure== 89495 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #89306: <==commonly_known== 52461 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #89495: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #90063: <==commonly_known== 46848 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #17478: <==uncertain_firing== 38658 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #18791: <==uncertain_firing== 59005 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #18889: <==negation-removal== 69872 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #21032: <==uncertain_firing== 69872 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #21250: <==uncertain_firing== 63317 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #21664: <==uncertain_firing== 42641 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #24019: <==uncertain_firing== 46090 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #24236: <==negation-removal== 58462 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #24613: <==uncertain_firing== 11444 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #26962: <==uncertain_firing== 87269 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #27003: <==negation-removal== 48504 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #27966: <==negation-removal== 89495 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #28749: <==uncertain_firing== 89306 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #29133: <==negation-removal== 89306 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #29247: <==negation-removal== 83253 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #29495: <==uncertain_firing== 68834 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #30584: <==uncertain_firing== 86448 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #35525: <==uncertain_firing== 56002 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #39314: <==negation-removal== 51164 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #40385: <==negation-removal== 63317 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #42622: <==uncertain_firing== 51164 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #44667: <==negation-removal== 46848 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #45429: <==negation-removal== 42581 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #45760: <==negation-removal== 69098 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #48134: <==uncertain_firing== 58462 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #48763: <==negation-removal== 11444 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #51161: <==negation-removal== 87798 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51297: <==uncertain_firing== 33691 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #52461: <==uncertain_firing== 89495 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #53523: <==uncertain_firing== 42581 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #54640: <==uncertain_firing== 87798 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #56450: <==negation-removal== 74565 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #58970: <==uncertain_firing== 52760 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #59461: <==uncertain_firing== 36073 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #64553: <==negation-removal== 59005 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #64771: <==negation-removal== 90063 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #65683: <==negation-removal== 41359 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #66027: <==uncertain_firing== 48504 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #66101: <==negation-removal== 86448 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #68476: <==negation-removal== 33691 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #68503: <==uncertain_firing== 90063 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #68525: <==negation-removal== 36073 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #68944: <==negation-removal== 38658 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #70227: <==uncertain_firing== 40777 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #71503: <==negation-removal== 42641 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #71923: <==negation-removal== 46090 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #74581: <==uncertain_firing== 69098 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #75645: <==negation-removal== 56002 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #77446: <==negation-removal== 87269 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #78382: <==uncertain_firing== 41359 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #80685: <==uncertain_firing== 74565 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #80739: <==negation-removal== 52760 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #81513: <==uncertain_firing== 81714 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #83858: <==negation-removal== 40777 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #85292: <==negation-removal== 18428 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #86304: <==uncertain_firing== 83253 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #87128: <==uncertain_firing== 46848 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #88373: <==negation-removal== 68834 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #89312: <==uncertain_firing== 18428 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #90908: <==negation-removal== 81714 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #12889: <==commonly_known== 22839 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #21891: <==closure== 26657 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Pb_secret_c))

                    ; #22839: <==closure== 73870 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #25120: <==commonly_known== 38485 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #26657: <==commonly_known== 73870 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #28846: <==commonly_known== 71157 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #30838: <==closure== 56855 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #32584: <==closure== 76850 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #38485: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #43681: <==commonly_known== 38485 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #43786: <==commonly_known== 56328 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #47583: <==commonly_known== 59135 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #48131: <==commonly_known== 74857 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #49019: <==commonly_known== 59135 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #56328: <==closure== 79705 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #56855: <==commonly_known== 73870 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #59170: <==commonly_known== 22462 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #65291: <==commonly_known== 79705 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #70624: <==commonly_known== 71157 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #71108: <==commonly_known== 74857 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #73350: <==closure== 43681 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #73592: <==commonly_known== 56328 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Pa_secret_c))

                    ; #73870: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #74645: <==closure== 65291 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #74857: <==closure== 38485 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #76850: <==commonly_known== 79705 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Bb_Ba_secret_c))

                    ; #79705: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #81499: <==commonly_known== 22462 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Ba_secret_c))

                    ; #91489: <==closure== 25120 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #99548: <==commonly_known== 22839 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #11189: <==negation-removal== 26657 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #16437: <==negation-removal== 73592 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #16444: <==uncertain_firing== 21891 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #16740: <==uncertain_firing== 70624 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #19446: <==negation-removal== 79705 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #19809: <==negation-removal== 71108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #21124: <==uncertain_firing== 73592 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #21789: <==uncertain_firing== 43681 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #21971: <==uncertain_firing== 74857 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #22462: <==uncertain_firing== 79705 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #22926: <==negation-removal== 56328 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #24702: <==negation-removal== 49019 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #24855: <==uncertain_firing== 73350 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #25197: <==negation-removal== 43786 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #27587: <==uncertain_firing== 99548 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #27896: <==uncertain_firing== 22839 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #31192: <==negation-removal== 28846 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #32316: <==negation-removal== 73870 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #32317: <==negation-removal== 38485 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #32788: <==negation-removal== 59170 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #32915: <==uncertain_firing== 43786 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #35803: <==negation-removal== 43681 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #36064: <==negation-removal== 25120 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36249: <==uncertain_firing== 47583 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #36268: <==uncertain_firing== 49019 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #36391: <==negation-removal== 21891 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #36820: <==negation-removal== 65291 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #37952: <==negation-removal== 48131 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #39436: <==uncertain_firing== 32584 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #41861: <==negation-removal== 22839 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #44208: <==uncertain_firing== 28846 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #46786: <==negation-removal== 81499 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #50279: <==uncertain_firing== 56328 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #50310: <==uncertain_firing== 65291 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #59135: <==uncertain_firing== 38485 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #60148: <==uncertain_firing== 12889 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #61917: <==negation-removal== 30838 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #62307: <==negation-removal== 73350 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #62914: <==uncertain_firing== 59170 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #64030: <==uncertain_firing== 30838 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #67793: <==uncertain_firing== 76850 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #68115: <==negation-removal== 32584 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #70217: <==negation-removal== 47583 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #71157: <==uncertain_firing== 73870 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #73322: <==uncertain_firing== 81499 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #73800: <==negation-removal== 76850 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #75023: <==uncertain_firing== 48131 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #75309: <==uncertain_firing== 26657 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #75588: <==negation-removal== 99548 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #75967: <==negation-removal== 74857 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #77442: <==negation-removal== 91489 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #79468: <==negation-removal== 70624 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #80678: <==negation-removal== 56855 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #83106: <==negation-removal== 12889 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #84659: <==uncertain_firing== 25120 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #84821: <==uncertain_firing== 91489 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #85368: <==uncertain_firing== 71108 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #85682: <==negation-removal== 74645 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #89441: <==uncertain_firing== 74645 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (not_at_a_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #91804: <==uncertain_firing== 56855 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Bc_secret_c)
                           (Pc_secret_c)
                           (at_c_l2))
        :effect (and
                    ; #12485: <==commonly_known== 75713 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #23931: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #27346: <==commonly_known== 75713 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #30495: <==closure== 52907 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Pc_secret_c))

                    ; #30915: <==closure== 23931 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #31845: <==commonly_known== 53254 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #36320: <==commonly_known== 85280 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #38636: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #41108: <==commonly_known== 38636 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #41108: <==commonly_known== 30915 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_c))

                    ; #41879: <==commonly_known== 72015 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Bb_secret_c))

                    ; #43502: <==commonly_known== 23931 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #45442: <==commonly_known== 30915 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #48060: <==closure== 43502 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #52907: <==commonly_known== 23931 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_c))

                    ; #53254: <==closure== 38636 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #58889: <==commonly_known== 85280 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_c))

                    ; #60745: <==commonly_known== 84153 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #63056: <==commonly_known== 38636 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #65875: <==closure== 84153 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #66759: <==closure== 41108 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #67351: <==commonly_known== 65875 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #72354: <==commonly_known== 72015 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #76081: <==closure== 60745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #79589: <==closure== 87323 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_c))

                    ; #79890: <==commonly_known== 53254 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #80242: <==commonly_known== 65875 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Pb_secret_c))

                    ; #84153: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #86042: <==closure== 63056 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #87323: <==commonly_known== 84153 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bc_Bb_secret_c))

                    ; #10362: <==uncertain_firing== 63056 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #10630: <==uncertain_firing== 53254 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #13012: <==negation-removal== 31845 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #13456: <==uncertain_firing== 36320 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #13670: <==negation-removal== 72354 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #14286: <==negation-removal== 43502 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #14306: <==uncertain_firing== 41108 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #21165: <==negation-removal== 36320 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #22716: <==negation-removal== 84153 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #23663: <==uncertain_firing== 86042 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #24417: <==negation-removal== 48060 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #26165: <==uncertain_firing== 52907 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #27352: <==uncertain_firing== 48060 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #28019: <==negation-removal== 38636 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #28753: <==negation-removal== 30915 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #30342: <==negation-removal== 23931 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #30677: <==negation-removal== 52907 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #31527: <==negation-removal== 66759 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #34802: <==negation-removal== 41108 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #35211: <==negation-removal== 30495 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #35830: <==uncertain_firing== 43502 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36752: <==negation-removal== 63056 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #36877: <==negation-removal== 53254 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #37074: <==negation-removal== 65875 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #39607: <==negation-removal== 27346 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #39946: <==negation-removal== 86042 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #44092: <==uncertain_firing== 79890 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #44934: <==uncertain_firing== 12485 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #45854: <==negation-removal== 60745 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #46615: <==negation-removal== 79890 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #47625: <==uncertain_firing== 67351 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #47926: <==negation-removal== 79589 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #49756: <==negation-removal== 58889 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #50033: <==uncertain_firing== 27346 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #60790: <==negation-removal== 41879 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #63255: <==uncertain_firing== 65875 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #65789: <==uncertain_firing== 41108 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #69110: <==uncertain_firing== 60745 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #71864: <==uncertain_firing== 30915 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #72015: <==uncertain_firing== 84153 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #72312: <==negation-removal== 80242 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #75316: <==negation-removal== 41108 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #75713: <==uncertain_firing== 38636 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #76183: <==uncertain_firing== 30495 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #76576: <==uncertain_firing== 76081 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #77999: <==uncertain_firing== 31845 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #79464: <==negation-removal== 76081 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #79931: <==uncertain_firing== 80242 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #80300: <==uncertain_firing== 45442 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #80474: <==negation-removal== 67351 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #80824: <==uncertain_firing== 72354 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #80927: <==uncertain_firing== 87323 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #81100: <==negation-removal== 12485 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #81767: <==uncertain_firing== 79589 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #84081: <==uncertain_firing== 58889 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #85280: <==uncertain_firing== 23931 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #88162: <==negation-removal== 87323 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #89728: <==negation-removal== 45442 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #91537: <==uncertain_firing== 66759 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #96984: <==uncertain_firing== 41879 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))))

)