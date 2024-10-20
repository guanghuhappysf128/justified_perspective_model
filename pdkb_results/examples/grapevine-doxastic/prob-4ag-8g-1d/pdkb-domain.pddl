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
        :precondition (and (at_a_l1)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #18244: <==closure== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #20274: <==closure== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #22080: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #47673: <==closure== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #55563: <==closure== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #68623: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #81711: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83070: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #26088: <==negation-removal== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #34613: <==uncertain_firing== 68623 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #38286: <==uncertain_firing== 55563 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #38458: <==negation-removal== 55563 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #43168: <==uncertain_firing== 20274 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_a)))

                    ; #44543: <==uncertain_firing== 18244 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #46763: <==uncertain_firing== 47673 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #49074: <==negation-removal== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #57699: <==uncertain_firing== 83070 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #59496: <==uncertain_firing== 81711 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_a)))

                    ; #65747: <==negation-removal== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #66982: <==negation-removal== 47673 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #80267: <==uncertain_firing== 22080 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #85868: <==negation-removal== 18244 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #92160: <==negation-removal== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #93266: <==negation-removal== 20274 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (initialized)
                           (Ba_secret_a)
                           (at_a_l2)
                           (Pa_secret_a))
        :effect (and
                    ; #13795: <==closure== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #14224: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #18878: <==closure== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #46428: <==closure== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #67021: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #78130: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #78540: <==closure== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #84796: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #17017: <==negation-removal== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #18598: <==negation-removal== 18878 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #28585: <==uncertain_firing== 18878 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #33713: <==uncertain_firing== 78130 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #36605: <==negation-removal== 78540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #39034: <==uncertain_firing== 46428 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #39069: <==negation-removal== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #42273: <==negation-removal== 46428 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #51295: <==uncertain_firing== 14224 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55037: <==uncertain_firing== 13795 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #61656: <==negation-removal== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #67815: <==uncertain_firing== 78540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #69938: <==negation-removal== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #73143: <==uncertain_firing== 67021 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #75532: <==negation-removal== 13795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #78576: <==uncertain_firing== 84796 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #28774: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #34721: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #36683: <==closure== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #51377: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #68417: <==closure== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #73407: <==closure== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #85282: <==closure== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #89313: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #13883: <==uncertain_firing== 34721 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #16805: <==uncertain_firing== 28774 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #17076: <==uncertain_firing== 36683 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #24493: <==negation-removal== 68417 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #36452: <==negation-removal== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #37116: <==negation-removal== 36683 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #45005: <==negation-removal== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49322: <==uncertain_firing== 73407 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #49806: <==uncertain_firing== 51377 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #54371: <==negation-removal== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #57237: <==uncertain_firing== 68417 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #57253: <==negation-removal== 85282 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #67086: <==negation-removal== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #74186: <==negation-removal== 73407 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #75421: <==uncertain_firing== 85282 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85142: <==uncertain_firing== 89313 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (initialized)
                           (Pa_secret_b))
        :effect (and
                    ; #10993: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #22827: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #34564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #48932: <==closure== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #57825: <==closure== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65406: <==closure== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #88804: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #91750: <==closure== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #18400: <==negation-removal== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #19796: <==negation-removal== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #24537: <==negation-removal== 91750 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29265: <==uncertain_firing== 57825 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #31268: <==uncertain_firing== 10993 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #36514: <==uncertain_firing== 65406 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #38148: <==uncertain_firing== 88804 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #42192: <==uncertain_firing== 91750 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #46093: <==negation-removal== 57825 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #52377: <==negation-removal== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #55217: <==uncertain_firing== 34564 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #68009: <==negation-removal== 48932 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #71182: <==negation-removal== 65406 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #76025: <==uncertain_firing== 48932 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #80884: <==uncertain_firing== 22827 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #95338: <==negation-removal== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (initialized)
                           (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b))
        :effect (and
                    ; #16398: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #28803: <==closure== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #30625: <==closure== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #41961: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #44892: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #74126: <==closure== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84858: <==closure== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #86360: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #10417: <==uncertain_firing== 84858 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #10434: <==negation-removal== 84858 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #14498: <==uncertain_firing== 30625 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #18258: <==uncertain_firing== 16398 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #25946: <==uncertain_firing== 86360 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27633: <==negation-removal== 28803 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29657: <==negation-removal== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #30269: <==uncertain_firing== 41961 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #34179: <==uncertain_firing== 74126 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36949: <==negation-removal== 74126 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #37869: <==uncertain_firing== 28803 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52297: <==negation-removal== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #73684: <==uncertain_firing== 44892 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #77250: <==negation-removal== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #87082: <==negation-removal== 30625 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #91357: <==negation-removal== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_b)
                           (initialized)
                           (Pa_secret_b))
        :effect (and
                    ; #10434: <==closure== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #14990: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #33175: <==closure== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #36484: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #58363: <==closure== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #65284: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #78955: <==closure== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #91701: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #15217: <==uncertain_firing== 58363 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #31104: <==negation-removal== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34080: <==negation-removal== 10434 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #36619: <==negation-removal== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #40791: <==uncertain_firing== 36484 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #42897: <==uncertain_firing== 33175 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #46865: <==negation-removal== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #50813: <==uncertain_firing== 10434 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61147: <==negation-removal== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63635: <==uncertain_firing== 91701 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #64561: <==uncertain_firing== 78955 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #72842: <==negation-removal== 78955 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76574: <==uncertain_firing== 65284 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #77224: <==uncertain_firing== 14990 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #84694: <==negation-removal== 33175 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #85158: <==negation-removal== 58363 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (initialized))
        :effect (and
                    ; #11933: <==closure== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41808: <==closure== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #50042: <==closure== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #50697: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #60296: <==closure== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #62813: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #66419: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91317: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #18233: <==negation-removal== 50042 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #22759: <==negation-removal== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #31745: <==negation-removal== 41808 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #33996: <==uncertain_firing== 50042 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #34831: <==uncertain_firing== 91317 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #37841: <==negation-removal== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #43682: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #44269: <==uncertain_firing== 11933 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #46462: <==negation-removal== 60296 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #60511: <==uncertain_firing== 62813 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #61698: <==uncertain_firing== 60296 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #65482: <==negation-removal== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #67615: <==uncertain_firing== 50697 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #85821: <==uncertain_firing== 66419 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #87662: <==negation-removal== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #88491: <==negation-removal== 11933 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #29397: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #30586: <==closure== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #65488: <==closure== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #67137: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #72456: <==closure== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #87500: <==closure== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #90357: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91155: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #16653: <==uncertain_firing== 87500 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16884: <==negation-removal== 87500 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #17536: <==negation-removal== 72456 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #18804: <==uncertain_firing== 29397 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #25446: <==negation-removal== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #27589: <==uncertain_firing== 72456 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #27723: <==negation-removal== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33139: <==negation-removal== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #34699: <==uncertain_firing== 91155 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #42966: <==uncertain_firing== 65488 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #46802: <==uncertain_firing== 90357 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #48003: <==uncertain_firing== 67137 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #57291: <==negation-removal== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #65614: <==uncertain_firing== 30586 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #81741: <==negation-removal== 30586 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #90118: <==negation-removal== 65488 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (at_a_l3)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (initialized))
        :effect (and
                    ; #24503: <==closure== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #34672: <==closure== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #52439: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #54161: <==closure== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #70482: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #71795: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83624: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #90232: <==closure== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #12108: <==uncertain_firing== 52439 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #19567: <==negation-removal== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22155: <==negation-removal== 90232 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23966: <==negation-removal== 54161 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25555: <==negation-removal== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #30581: <==uncertain_firing== 71795 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #43172: <==uncertain_firing== 83624 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #49327: <==uncertain_firing== 54161 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #49406: <==uncertain_firing== 70482 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #52534: <==negation-removal== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #66012: <==negation-removal== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #69138: <==uncertain_firing== 24503 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #79088: <==negation-removal== 34672 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #88851: <==uncertain_firing== 90232 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #90066: <==uncertain_firing== 34672 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #90242: <==negation-removal== 24503 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #17172: <==closure== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #17675: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #30372: <==closure== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #33354: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #38000: <==closure== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #42969: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #83577: <==closure== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #98305: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13530: <==uncertain_firing== 33354 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #13619: <==uncertain_firing== 98305 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #18258: <==uncertain_firing== 17675 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #18536: <==negation-removal== 83577 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #18947: <==uncertain_firing== 17172 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #20464: <==negation-removal== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #22062: <==negation-removal== 17172 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #29788: <==negation-removal== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #29816: <==uncertain_firing== 38000 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #33926: <==negation-removal== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #34102: <==uncertain_firing== 42969 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #46468: <==uncertain_firing== 83577 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #51923: <==uncertain_firing== 30372 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #62658: <==negation-removal== 38000 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #70596: <==negation-removal== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #78112: <==negation-removal== 30372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #32486: <==closure== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #37574: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #48010: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #60423: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #62580: <==closure== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #68932: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #88972: <==closure== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90820: <==closure== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #19783: <==negation-removal== 62580 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #38471: <==negation-removal== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #38603: <==uncertain_firing== 90820 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #39298: <==uncertain_firing== 68932 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #41074: <==uncertain_firing== 62580 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #48061: <==uncertain_firing== 37574 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #54603: <==uncertain_firing== 60423 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #55002: <==uncertain_firing== 48010 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #56290: <==negation-removal== 32486 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #63926: <==uncertain_firing== 32486 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #66888: <==negation-removal== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #76214: <==negation-removal== 88972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77742: <==negation-removal== 90820 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #78102: <==negation-removal== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #78636: <==uncertain_firing== 88972 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #78815: <==negation-removal== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #16353: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #20165: <==closure== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #34810: <==closure== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #43761: <==closure== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #63515: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #74690: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #85929: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #86488: <==closure== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #21177: <==uncertain_firing== 86488 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #27990: <==uncertain_firing== 74690 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #36838: <==uncertain_firing== 34810 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #37251: <==uncertain_firing== 63515 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #38332: <==negation-removal== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #47012: <==negation-removal== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #50800: <==uncertain_firing== 16353 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #52331: <==uncertain_firing== 43761 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60817: <==negation-removal== 20165 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #61229: <==negation-removal== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #69794: <==uncertain_firing== 85929 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #81644: <==negation-removal== 34810 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #85341: <==uncertain_firing== 20165 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #88813: <==negation-removal== 43761 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #91204: <==negation-removal== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #93016: <==negation-removal== 86488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (Bb_secret_a)
                           (at_b_l1)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #18244: <==closure== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #20274: <==closure== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #22080: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #47673: <==closure== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #55563: <==closure== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #68623: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #81711: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83070: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #26088: <==negation-removal== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #34613: <==uncertain_firing== 68623 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #38286: <==uncertain_firing== 55563 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #38458: <==negation-removal== 55563 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #43168: <==uncertain_firing== 20274 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_a)))

                    ; #44543: <==uncertain_firing== 18244 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #46763: <==uncertain_firing== 47673 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #49074: <==negation-removal== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #57699: <==uncertain_firing== 83070 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #59496: <==uncertain_firing== 81711 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_a)))

                    ; #65747: <==negation-removal== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #66982: <==negation-removal== 47673 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #80267: <==uncertain_firing== 22080 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #85868: <==negation-removal== 18244 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #92160: <==negation-removal== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #93266: <==negation-removal== 20274 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (Bb_secret_a)
                           (at_b_l2)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #13795: <==closure== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #14224: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #18878: <==closure== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #46428: <==closure== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #67021: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #78130: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #78540: <==closure== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #84796: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #17017: <==negation-removal== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #18598: <==negation-removal== 18878 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #28585: <==uncertain_firing== 18878 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #33713: <==uncertain_firing== 78130 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #36605: <==negation-removal== 78540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #39034: <==uncertain_firing== 46428 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #39069: <==negation-removal== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #42273: <==negation-removal== 46428 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #51295: <==uncertain_firing== 14224 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55037: <==uncertain_firing== 13795 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #61656: <==negation-removal== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #67815: <==uncertain_firing== 78540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #69938: <==negation-removal== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #73143: <==uncertain_firing== 67021 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #75532: <==negation-removal== 13795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #78576: <==uncertain_firing== 84796 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (Bb_secret_a)
                           (at_b_l3)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #28774: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #34721: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #36683: <==closure== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #51377: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #68417: <==closure== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #73407: <==closure== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #85282: <==closure== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #89313: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #13883: <==uncertain_firing== 34721 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #16805: <==uncertain_firing== 28774 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #17076: <==uncertain_firing== 36683 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #24493: <==negation-removal== 68417 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #36452: <==negation-removal== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #37116: <==negation-removal== 36683 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #45005: <==negation-removal== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49322: <==uncertain_firing== 73407 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #49806: <==uncertain_firing== 51377 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #54371: <==negation-removal== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #57237: <==uncertain_firing== 68417 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #57253: <==negation-removal== 85282 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #67086: <==negation-removal== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #74186: <==negation-removal== 73407 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #75421: <==uncertain_firing== 85282 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85142: <==uncertain_firing== 89313 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #10993: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #22827: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #34564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #48932: <==closure== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #57825: <==closure== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65406: <==closure== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #88804: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #91750: <==closure== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #18400: <==negation-removal== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #19796: <==negation-removal== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #24537: <==negation-removal== 91750 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29265: <==uncertain_firing== 57825 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #31268: <==uncertain_firing== 10993 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #36514: <==uncertain_firing== 65406 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #38148: <==uncertain_firing== 88804 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #42192: <==uncertain_firing== 91750 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #46093: <==negation-removal== 57825 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #52377: <==negation-removal== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #55217: <==uncertain_firing== 34564 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #68009: <==negation-removal== 48932 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #71182: <==negation-removal== 65406 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #76025: <==uncertain_firing== 48932 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #80884: <==uncertain_firing== 22827 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #95338: <==negation-removal== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #16398: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #28803: <==closure== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #30625: <==closure== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #41961: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #44892: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #74126: <==closure== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84858: <==closure== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #86360: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #10417: <==uncertain_firing== 84858 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #10434: <==negation-removal== 84858 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #14498: <==uncertain_firing== 30625 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #18258: <==uncertain_firing== 16398 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #25946: <==uncertain_firing== 86360 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27633: <==negation-removal== 28803 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29657: <==negation-removal== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #30269: <==uncertain_firing== 41961 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #34179: <==uncertain_firing== 74126 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36949: <==negation-removal== 74126 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #37869: <==uncertain_firing== 28803 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52297: <==negation-removal== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #73684: <==uncertain_firing== 44892 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #77250: <==negation-removal== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #87082: <==negation-removal== 30625 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #91357: <==negation-removal== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #10434: <==closure== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #14990: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #33175: <==closure== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #36484: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #58363: <==closure== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #65284: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #78955: <==closure== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #91701: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #15217: <==uncertain_firing== 58363 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #31104: <==negation-removal== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34080: <==negation-removal== 10434 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #36619: <==negation-removal== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #40791: <==uncertain_firing== 36484 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #42897: <==uncertain_firing== 33175 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #46865: <==negation-removal== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #50813: <==uncertain_firing== 10434 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61147: <==negation-removal== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63635: <==uncertain_firing== 91701 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #64561: <==uncertain_firing== 78955 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #72842: <==negation-removal== 78955 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76574: <==uncertain_firing== 65284 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #77224: <==uncertain_firing== 14990 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #84694: <==negation-removal== 33175 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #85158: <==negation-removal== 58363 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #11933: <==closure== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41808: <==closure== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #50042: <==closure== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #50697: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #60296: <==closure== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #62813: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #66419: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91317: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #18233: <==negation-removal== 50042 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #22759: <==negation-removal== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #31745: <==negation-removal== 41808 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #33996: <==uncertain_firing== 50042 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #34831: <==uncertain_firing== 91317 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #37841: <==negation-removal== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #43682: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #44269: <==uncertain_firing== 11933 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #46462: <==negation-removal== 60296 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #60511: <==uncertain_firing== 62813 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #61698: <==uncertain_firing== 60296 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #65482: <==negation-removal== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #67615: <==uncertain_firing== 50697 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #85821: <==uncertain_firing== 66419 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #87662: <==negation-removal== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #88491: <==negation-removal== 11933 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #29397: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #30586: <==closure== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #65488: <==closure== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #67137: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #72456: <==closure== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #87500: <==closure== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #90357: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91155: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #16653: <==uncertain_firing== 87500 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16884: <==negation-removal== 87500 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #17536: <==negation-removal== 72456 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #18804: <==uncertain_firing== 29397 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #25446: <==negation-removal== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #27589: <==uncertain_firing== 72456 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #27723: <==negation-removal== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33139: <==negation-removal== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #34699: <==uncertain_firing== 91155 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #42966: <==uncertain_firing== 65488 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #46802: <==uncertain_firing== 90357 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #48003: <==uncertain_firing== 67137 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #57291: <==negation-removal== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #65614: <==uncertain_firing== 30586 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #81741: <==negation-removal== 30586 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #90118: <==negation-removal== 65488 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #24503: <==closure== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #34672: <==closure== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #52439: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #54161: <==closure== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #70482: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #71795: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83624: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #90232: <==closure== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #12108: <==uncertain_firing== 52439 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #19567: <==negation-removal== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22155: <==negation-removal== 90232 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23966: <==negation-removal== 54161 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25555: <==negation-removal== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #30581: <==uncertain_firing== 71795 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #43172: <==uncertain_firing== 83624 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #49327: <==uncertain_firing== 54161 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #49406: <==uncertain_firing== 70482 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #52534: <==negation-removal== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #66012: <==negation-removal== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #69138: <==uncertain_firing== 24503 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #79088: <==negation-removal== 34672 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #88851: <==uncertain_firing== 90232 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #90066: <==uncertain_firing== 34672 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #90242: <==negation-removal== 24503 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #17172: <==closure== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #17675: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #30372: <==closure== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #33354: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #38000: <==closure== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #42969: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #83577: <==closure== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #98305: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13530: <==uncertain_firing== 33354 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #13619: <==uncertain_firing== 98305 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #18258: <==uncertain_firing== 17675 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #18536: <==negation-removal== 83577 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #18947: <==uncertain_firing== 17172 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #20464: <==negation-removal== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #22062: <==negation-removal== 17172 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #29788: <==negation-removal== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #29816: <==uncertain_firing== 38000 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #33926: <==negation-removal== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #34102: <==uncertain_firing== 42969 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #46468: <==uncertain_firing== 83577 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #51923: <==uncertain_firing== 30372 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #62658: <==negation-removal== 38000 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #70596: <==negation-removal== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #78112: <==negation-removal== 30372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #32486: <==closure== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #37574: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #48010: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #60423: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #62580: <==closure== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #68932: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #88972: <==closure== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90820: <==closure== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #19783: <==negation-removal== 62580 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #38471: <==negation-removal== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #38603: <==uncertain_firing== 90820 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #39298: <==uncertain_firing== 68932 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #41074: <==uncertain_firing== 62580 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #48061: <==uncertain_firing== 37574 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #54603: <==uncertain_firing== 60423 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #55002: <==uncertain_firing== 48010 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #56290: <==negation-removal== 32486 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #63926: <==uncertain_firing== 32486 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #66888: <==negation-removal== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #76214: <==negation-removal== 88972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77742: <==negation-removal== 90820 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #78102: <==negation-removal== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #78636: <==uncertain_firing== 88972 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #78815: <==negation-removal== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #16353: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #20165: <==closure== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #34810: <==closure== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #43761: <==closure== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #63515: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #74690: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #85929: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #86488: <==closure== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #21177: <==uncertain_firing== 86488 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #27990: <==uncertain_firing== 74690 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #36838: <==uncertain_firing== 34810 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #37251: <==uncertain_firing== 63515 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #38332: <==negation-removal== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #47012: <==negation-removal== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #50800: <==uncertain_firing== 16353 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #52331: <==uncertain_firing== 43761 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60817: <==negation-removal== 20165 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #61229: <==negation-removal== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #69794: <==uncertain_firing== 85929 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #81644: <==negation-removal== 34810 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #85341: <==uncertain_firing== 20165 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #88813: <==negation-removal== 43761 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #91204: <==negation-removal== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #93016: <==negation-removal== 86488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #18244: <==closure== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #20274: <==closure== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #22080: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #47673: <==closure== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #55563: <==closure== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #68623: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #81711: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83070: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #26088: <==negation-removal== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #34613: <==uncertain_firing== 68623 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #38286: <==uncertain_firing== 55563 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #38458: <==negation-removal== 55563 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #43168: <==uncertain_firing== 20274 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_a)))

                    ; #44543: <==uncertain_firing== 18244 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #46763: <==uncertain_firing== 47673 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #49074: <==negation-removal== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #57699: <==uncertain_firing== 83070 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #59496: <==uncertain_firing== 81711 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_a)))

                    ; #65747: <==negation-removal== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #66982: <==negation-removal== 47673 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #80267: <==uncertain_firing== 22080 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #85868: <==negation-removal== 18244 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #92160: <==negation-removal== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #93266: <==negation-removal== 20274 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #13795: <==closure== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #14224: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #18878: <==closure== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #46428: <==closure== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #67021: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #78130: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #78540: <==closure== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #84796: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #17017: <==negation-removal== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #18598: <==negation-removal== 18878 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #28585: <==uncertain_firing== 18878 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #33713: <==uncertain_firing== 78130 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #36605: <==negation-removal== 78540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #39034: <==uncertain_firing== 46428 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #39069: <==negation-removal== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #42273: <==negation-removal== 46428 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #51295: <==uncertain_firing== 14224 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55037: <==uncertain_firing== 13795 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #61656: <==negation-removal== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #67815: <==uncertain_firing== 78540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #69938: <==negation-removal== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #73143: <==uncertain_firing== 67021 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #75532: <==negation-removal== 13795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #78576: <==uncertain_firing== 84796 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #28774: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #34721: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #36683: <==closure== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #51377: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #68417: <==closure== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #73407: <==closure== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #85282: <==closure== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #89313: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #13883: <==uncertain_firing== 34721 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #16805: <==uncertain_firing== 28774 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #17076: <==uncertain_firing== 36683 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #24493: <==negation-removal== 68417 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #36452: <==negation-removal== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #37116: <==negation-removal== 36683 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #45005: <==negation-removal== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49322: <==uncertain_firing== 73407 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #49806: <==uncertain_firing== 51377 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #54371: <==negation-removal== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #57237: <==uncertain_firing== 68417 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #57253: <==negation-removal== 85282 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #67086: <==negation-removal== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #74186: <==negation-removal== 73407 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #75421: <==uncertain_firing== 85282 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85142: <==uncertain_firing== 89313 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #10993: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #22827: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #34564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #48932: <==closure== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #57825: <==closure== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65406: <==closure== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #88804: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #91750: <==closure== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #18400: <==negation-removal== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #19796: <==negation-removal== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #24537: <==negation-removal== 91750 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29265: <==uncertain_firing== 57825 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #31268: <==uncertain_firing== 10993 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #36514: <==uncertain_firing== 65406 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #38148: <==uncertain_firing== 88804 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #42192: <==uncertain_firing== 91750 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #46093: <==negation-removal== 57825 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #52377: <==negation-removal== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #55217: <==uncertain_firing== 34564 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #68009: <==negation-removal== 48932 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #71182: <==negation-removal== 65406 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #76025: <==uncertain_firing== 48932 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #80884: <==uncertain_firing== 22827 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #95338: <==negation-removal== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #16398: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #28803: <==closure== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #30625: <==closure== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #41961: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #44892: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #74126: <==closure== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84858: <==closure== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #86360: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #10417: <==uncertain_firing== 84858 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #10434: <==negation-removal== 84858 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #14498: <==uncertain_firing== 30625 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #18258: <==uncertain_firing== 16398 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #25946: <==uncertain_firing== 86360 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27633: <==negation-removal== 28803 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29657: <==negation-removal== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #30269: <==uncertain_firing== 41961 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #34179: <==uncertain_firing== 74126 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36949: <==negation-removal== 74126 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #37869: <==uncertain_firing== 28803 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52297: <==negation-removal== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #73684: <==uncertain_firing== 44892 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #77250: <==negation-removal== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #87082: <==negation-removal== 30625 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #91357: <==negation-removal== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #10434: <==closure== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #14990: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #33175: <==closure== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #36484: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #58363: <==closure== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #65284: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #78955: <==closure== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #91701: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #15217: <==uncertain_firing== 58363 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #31104: <==negation-removal== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34080: <==negation-removal== 10434 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #36619: <==negation-removal== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #40791: <==uncertain_firing== 36484 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #42897: <==uncertain_firing== 33175 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #46865: <==negation-removal== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #50813: <==uncertain_firing== 10434 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61147: <==negation-removal== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63635: <==uncertain_firing== 91701 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #64561: <==uncertain_firing== 78955 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #72842: <==negation-removal== 78955 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76574: <==uncertain_firing== 65284 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #77224: <==uncertain_firing== 14990 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #84694: <==negation-removal== 33175 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #85158: <==negation-removal== 58363 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #11933: <==closure== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41808: <==closure== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #50042: <==closure== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #50697: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #60296: <==closure== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #62813: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #66419: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91317: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #18233: <==negation-removal== 50042 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #22759: <==negation-removal== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #31745: <==negation-removal== 41808 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #33996: <==uncertain_firing== 50042 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #34831: <==uncertain_firing== 91317 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #37841: <==negation-removal== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #43682: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #44269: <==uncertain_firing== 11933 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #46462: <==negation-removal== 60296 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #60511: <==uncertain_firing== 62813 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #61698: <==uncertain_firing== 60296 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #65482: <==negation-removal== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #67615: <==uncertain_firing== 50697 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #85821: <==uncertain_firing== 66419 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #87662: <==negation-removal== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #88491: <==negation-removal== 11933 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #29397: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #30586: <==closure== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #65488: <==closure== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #67137: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #72456: <==closure== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #87500: <==closure== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #90357: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91155: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #16653: <==uncertain_firing== 87500 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16884: <==negation-removal== 87500 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #17536: <==negation-removal== 72456 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #18804: <==uncertain_firing== 29397 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #25446: <==negation-removal== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #27589: <==uncertain_firing== 72456 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #27723: <==negation-removal== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33139: <==negation-removal== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #34699: <==uncertain_firing== 91155 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #42966: <==uncertain_firing== 65488 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #46802: <==uncertain_firing== 90357 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #48003: <==uncertain_firing== 67137 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #57291: <==negation-removal== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #65614: <==uncertain_firing== 30586 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #81741: <==negation-removal== 30586 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #90118: <==negation-removal== 65488 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #24503: <==closure== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #34672: <==closure== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #52439: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #54161: <==closure== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #70482: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #71795: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83624: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #90232: <==closure== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #12108: <==uncertain_firing== 52439 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #19567: <==negation-removal== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22155: <==negation-removal== 90232 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23966: <==negation-removal== 54161 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25555: <==negation-removal== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #30581: <==uncertain_firing== 71795 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #43172: <==uncertain_firing== 83624 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #49327: <==uncertain_firing== 54161 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #49406: <==uncertain_firing== 70482 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #52534: <==negation-removal== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #66012: <==negation-removal== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #69138: <==uncertain_firing== 24503 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #79088: <==negation-removal== 34672 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #88851: <==uncertain_firing== 90232 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #90066: <==uncertain_firing== 34672 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #90242: <==negation-removal== 24503 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #17172: <==closure== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #17675: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #30372: <==closure== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #33354: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #38000: <==closure== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #42969: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #83577: <==closure== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #98305: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13530: <==uncertain_firing== 33354 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #13619: <==uncertain_firing== 98305 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #18258: <==uncertain_firing== 17675 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #18536: <==negation-removal== 83577 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #18947: <==uncertain_firing== 17172 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #20464: <==negation-removal== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #22062: <==negation-removal== 17172 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #29788: <==negation-removal== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #29816: <==uncertain_firing== 38000 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #33926: <==negation-removal== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #34102: <==uncertain_firing== 42969 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #46468: <==uncertain_firing== 83577 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #51923: <==uncertain_firing== 30372 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #62658: <==negation-removal== 38000 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #70596: <==negation-removal== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #78112: <==negation-removal== 30372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #32486: <==closure== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #37574: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #48010: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #60423: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #62580: <==closure== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #68932: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #88972: <==closure== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90820: <==closure== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #19783: <==negation-removal== 62580 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #38471: <==negation-removal== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #38603: <==uncertain_firing== 90820 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #39298: <==uncertain_firing== 68932 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #41074: <==uncertain_firing== 62580 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #48061: <==uncertain_firing== 37574 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #54603: <==uncertain_firing== 60423 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #55002: <==uncertain_firing== 48010 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #56290: <==negation-removal== 32486 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #63926: <==uncertain_firing== 32486 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #66888: <==negation-removal== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #76214: <==negation-removal== 88972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77742: <==negation-removal== 90820 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #78102: <==negation-removal== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #78636: <==uncertain_firing== 88972 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #78815: <==negation-removal== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #16353: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #20165: <==closure== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #34810: <==closure== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #43761: <==closure== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #63515: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #74690: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #85929: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #86488: <==closure== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #21177: <==uncertain_firing== 86488 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #27990: <==uncertain_firing== 74690 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #36838: <==uncertain_firing== 34810 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #37251: <==uncertain_firing== 63515 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #38332: <==negation-removal== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #47012: <==negation-removal== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #50800: <==uncertain_firing== 16353 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #52331: <==uncertain_firing== 43761 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60817: <==negation-removal== 20165 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #61229: <==negation-removal== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #69794: <==uncertain_firing== 85929 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #81644: <==negation-removal== 34810 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #85341: <==uncertain_firing== 20165 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #88813: <==negation-removal== 43761 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #91204: <==negation-removal== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #93016: <==negation-removal== 86488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #18244: <==closure== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #20274: <==closure== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #22080: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #47673: <==closure== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #55563: <==closure== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Pd_not_secret_a))

                    ; #68623: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (Bd_not_secret_a))

                    ; #81711: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #83070: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #26088: <==negation-removal== 22080 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #34613: <==uncertain_firing== 68623 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_a)))

                    ; #38286: <==uncertain_firing== 55563 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (Bd_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_a)))

                    ; #38458: <==negation-removal== 55563 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Bd_secret_a)))

                    ; #43168: <==uncertain_firing== 20274 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_a)))

                    ; #44543: <==uncertain_firing== 18244 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #46763: <==uncertain_firing== 47673 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #49074: <==negation-removal== 68623 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l1)))
                          (not (Pd_secret_a)))

                    ; #57699: <==uncertain_firing== 83070 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #59496: <==uncertain_firing== 81711 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_a)))

                    ; #65747: <==negation-removal== 83070 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #66982: <==negation-removal== 47673 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #80267: <==uncertain_firing== 22080 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #85868: <==negation-removal== 18244 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #92160: <==negation-removal== 81711 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #93266: <==negation-removal== 20274 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l2)
                           (Bd_secret_a))
        :effect (and
                    ; #13795: <==closure== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Pa_not_secret_a))

                    ; #14224: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Bd_not_secret_a))

                    ; #18878: <==closure== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #46428: <==closure== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (Pd_not_secret_a))

                    ; #67021: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #78130: origin
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (Ba_not_secret_a))

                    ; #78540: <==closure== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Pc_not_secret_a))

                    ; #84796: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (Bc_not_secret_a))

                    ; #17017: <==negation-removal== 14224 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Pd_secret_a)))

                    ; #18598: <==negation-removal== 18878 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #28585: <==uncertain_firing== 18878 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_a)))

                    ; #33713: <==uncertain_firing== 78130 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Pa_secret_a)))

                    ; #36605: <==negation-removal== 78540 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Bc_secret_a)))

                    ; #39034: <==uncertain_firing== 46428 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #39069: <==negation-removal== 78130 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Pa_secret_a)))

                    ; #42273: <==negation-removal== 46428 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l2)))
                          (not (Bd_secret_a)))

                    ; #51295: <==uncertain_firing== 14224 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l2))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55037: <==uncertain_firing== 13795 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_a))
                               (not (Pa_secret_a))))
                          (not (Ba_secret_a)))

                    ; #61656: <==negation-removal== 84796 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l2)))
                          (not (Pc_secret_a)))

                    ; #67815: <==uncertain_firing== 78540 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_a)))

                    ; #69938: <==negation-removal== 67021 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #73143: <==uncertain_firing== 67021 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_a)))

                    ; #75532: <==negation-removal== 13795 (pos)
                    (when (and (and (Pa_not_secret_a)
                               (at_a_l2)))
                          (not (Ba_secret_a)))

                    ; #78576: <==uncertain_firing== 84796 (pos)
                    (when (and (and (not (Bc_secret_a))
                               (not (Pc_secret_a))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l3)
                           (Bd_secret_a))
        :effect (and
                    ; #28774: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Bb_not_secret_a))

                    ; #34721: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #36683: <==closure== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #51377: origin
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Bd_not_secret_a))

                    ; #68417: <==closure== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #73407: <==closure== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (Pb_not_secret_a))

                    ; #85282: <==closure== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (Pd_not_secret_a))

                    ; #89313: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #13883: <==uncertain_firing== 34721 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #16805: <==uncertain_firing== 28774 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_a)))

                    ; #17076: <==uncertain_firing== 36683 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #24493: <==negation-removal== 68417 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #36452: <==negation-removal== 51377 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Pd_secret_a)))

                    ; #37116: <==negation-removal== 36683 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))

                    ; #45005: <==negation-removal== 89313 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49322: <==uncertain_firing== 73407 (pos)
                    (when (and (and (not (Bb_secret_a))
                               (not (Pb_secret_a))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_a)))

                    ; #49806: <==uncertain_firing== 51377 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #54371: <==negation-removal== 34721 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #57237: <==uncertain_firing== 68417 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #57253: <==negation-removal== 85282 (pos)
                    (when (and (and (Pd_not_secret_a)
                               (at_d_l3)))
                          (not (Bd_secret_a)))

                    ; #67086: <==negation-removal== 28774 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Pb_secret_a)))

                    ; #74186: <==negation-removal== 73407 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_a)))
                          (not (Bb_secret_a)))

                    ; #75421: <==uncertain_firing== 85282 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #85142: <==uncertain_firing== 89313 (pos)
                    (when (and (and (not (Ba_secret_a))
                               (not (Pa_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (initialized)
                           (at_d_l1)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #10993: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #22827: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #34564: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #48932: <==closure== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #57825: <==closure== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #65406: <==closure== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #88804: origin
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #91750: <==closure== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #18400: <==negation-removal== 34564 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #19796: <==negation-removal== 88804 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #24537: <==negation-removal== 91750 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29265: <==uncertain_firing== 57825 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #31268: <==uncertain_firing== 10993 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #36514: <==uncertain_firing== 65406 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_b)))

                    ; #38148: <==uncertain_firing== 88804 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (Pb_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_b)))

                    ; #42192: <==uncertain_firing== 91750 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l1))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #46093: <==negation-removal== 57825 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #52377: <==negation-removal== 22827 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #55217: <==uncertain_firing== 34564 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l1))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #68009: <==negation-removal== 48932 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #71182: <==negation-removal== 65406 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #76025: <==uncertain_firing== 48932 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #80884: <==uncertain_firing== 22827 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l1))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #95338: <==negation-removal== 10993 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (initialized)
                           (at_d_l2)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #16398: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #28803: <==closure== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #30625: <==closure== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #41961: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #44892: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #74126: <==closure== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84858: <==closure== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #86360: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #10417: <==uncertain_firing== 84858 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #10434: <==negation-removal== 84858 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #14498: <==uncertain_firing== 30625 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #18258: <==uncertain_firing== 16398 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #25946: <==uncertain_firing== 86360 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #27633: <==negation-removal== 28803 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #29657: <==negation-removal== 16398 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #30269: <==uncertain_firing== 41961 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_b))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #34179: <==uncertain_firing== 74126 (pos)
                    (when (and (and (not (Bb_secret_b))
                               (not (not_at_b_l2))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36949: <==negation-removal== 74126 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #37869: <==uncertain_firing== 28803 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #52297: <==negation-removal== 41961 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #73684: <==uncertain_firing== 44892 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #77250: <==negation-removal== 44892 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #87082: <==negation-removal== 30625 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #91357: <==negation-removal== 86360 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (initialized)
                           (at_d_l3)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #10434: <==closure== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #14990: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #33175: <==closure== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #36484: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #58363: <==closure== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #65284: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #78955: <==closure== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #91701: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #15217: <==uncertain_firing== 58363 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))

                    ; #31104: <==negation-removal== 91701 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #34080: <==negation-removal== 10434 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #36619: <==negation-removal== 36484 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #40791: <==uncertain_firing== 36484 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #42897: <==uncertain_firing== 33175 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #46865: <==negation-removal== 14990 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #50813: <==uncertain_firing== 10434 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #61147: <==negation-removal== 65284 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #63635: <==uncertain_firing== 91701 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l3))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #64561: <==uncertain_firing== 78955 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Ba_secret_b)))

                    ; #72842: <==negation-removal== 78955 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #76574: <==uncertain_firing== 65284 (pos)
                    (when (and (and (not (Ba_secret_b))
                               (not (not_at_a_l3))
                               (not (Pa_secret_b))))
                          (not (Pa_secret_b)))

                    ; #77224: <==uncertain_firing== 14990 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #84694: <==negation-removal== 33175 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #85158: <==negation-removal== 58363 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c))
        :effect (and
                    ; #11933: <==closure== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #41808: <==closure== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #50042: <==closure== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #50697: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #60296: <==closure== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Pd_not_secret_c))

                    ; #62813: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (Bd_not_secret_c))

                    ; #66419: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91317: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #18233: <==negation-removal== 50042 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #22759: <==negation-removal== 66419 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #31745: <==negation-removal== 41808 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #33996: <==uncertain_firing== 50042 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #34831: <==uncertain_firing== 91317 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_c)))

                    ; #37841: <==negation-removal== 50697 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #43682: <==uncertain_firing== 41808 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_c)))

                    ; #44269: <==uncertain_firing== 11933 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))

                    ; #46462: <==negation-removal== 60296 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Bd_secret_c)))

                    ; #60511: <==uncertain_firing== 62813 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_c)))

                    ; #61698: <==uncertain_firing== 60296 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (Bd_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_c)))

                    ; #65482: <==negation-removal== 91317 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #67615: <==uncertain_firing== 50697 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #85821: <==uncertain_firing== 66419 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #87662: <==negation-removal== 62813 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l1)))
                          (not (Pd_secret_c)))

                    ; #88491: <==negation-removal== 11933 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c))
        :effect (and
                    ; #29397: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #30586: <==closure== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #65488: <==closure== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #67137: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #72456: <==closure== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #87500: <==closure== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Pd_not_secret_c))

                    ; #90357: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #91155: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (Bd_not_secret_c))

                    ; #16653: <==uncertain_firing== 87500 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16884: <==negation-removal== 87500 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Bd_secret_c)))

                    ; #17536: <==negation-removal== 72456 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #18804: <==uncertain_firing== 29397 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Pa_secret_c)))

                    ; #25446: <==negation-removal== 90357 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #27589: <==uncertain_firing== 72456 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #27723: <==negation-removal== 29397 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33139: <==negation-removal== 91155 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l2)))
                          (not (Pd_secret_c)))

                    ; #34699: <==uncertain_firing== 91155 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #42966: <==uncertain_firing== 65488 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_secret_c))
                               (not (Ba_secret_c))))
                          (not (Ba_secret_c)))

                    ; #46802: <==uncertain_firing== 90357 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #48003: <==uncertain_firing== 67137 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_c)))

                    ; #57291: <==negation-removal== 67137 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #65614: <==uncertain_firing== 30586 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_c)))

                    ; #81741: <==negation-removal== 30586 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #90118: <==negation-removal== 65488 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l3)
                           (Bd_secret_c))
        :effect (and
                    ; #24503: <==closure== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Pd_not_secret_c))

                    ; #34672: <==closure== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #52439: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #54161: <==closure== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #70482: origin
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (Bd_not_secret_c))

                    ; #71795: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #83624: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #90232: <==closure== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #12108: <==uncertain_firing== 52439 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #19567: <==negation-removal== 71795 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #22155: <==negation-removal== 90232 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23966: <==negation-removal== 54161 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #25555: <==negation-removal== 52439 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #30581: <==uncertain_firing== 71795 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #43172: <==uncertain_firing== 83624 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_secret_c)))

                    ; #49327: <==uncertain_firing== 54161 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_secret_c))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #49406: <==uncertain_firing== 70482 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #52534: <==negation-removal== 70482 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Pd_secret_c)))

                    ; #66012: <==negation-removal== 83624 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #69138: <==uncertain_firing== 24503 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #79088: <==negation-removal== 34672 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #88851: <==uncertain_firing== 90232 (pos)
                    (when (and (and (not (Ba_secret_c))
                               (not (Pa_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #90066: <==uncertain_firing== 34672 (pos)
                    (when (and (and (not (Bb_secret_c))
                               (not (Pb_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_secret_c)))

                    ; #90242: <==negation-removal== 24503 (pos)
                    (when (and (and (Pd_not_secret_c)
                               (at_d_l3)))
                          (not (Bd_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #17172: <==closure== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #17675: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #30372: <==closure== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #33354: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #38000: <==closure== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #42969: origin
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #83577: <==closure== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #98305: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #13530: <==uncertain_firing== 33354 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_secret_d)))

                    ; #13619: <==uncertain_firing== 98305 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #18258: <==uncertain_firing== 17675 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_secret_d)))

                    ; #18536: <==negation-removal== 83577 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #18947: <==uncertain_firing== 17172 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #20464: <==negation-removal== 42969 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #22062: <==negation-removal== 17172 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #29788: <==negation-removal== 33354 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #29816: <==uncertain_firing== 38000 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_secret_d)))

                    ; #33926: <==negation-removal== 17675 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #34102: <==uncertain_firing== 42969 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l1))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #46468: <==uncertain_firing== 83577 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_secret_d)))

                    ; #51923: <==uncertain_firing== 30372 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #62658: <==negation-removal== 38000 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #70596: <==negation-removal== 98305 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #78112: <==negation-removal== 30372 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l2))
        :effect (and
                    ; #32486: <==closure== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #37574: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #48010: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #60423: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #62580: <==closure== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Pb_not_secret_d))

                    ; #68932: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (Bb_not_secret_d))

                    ; #88972: <==closure== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #90820: <==closure== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #19783: <==negation-removal== 62580 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Bb_secret_d)))

                    ; #38471: <==negation-removal== 68932 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l2)))
                          (not (Pb_secret_d)))

                    ; #38603: <==uncertain_firing== 90820 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Ba_secret_d)))

                    ; #39298: <==uncertain_firing== 68932 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Pb_secret_d)))

                    ; #41074: <==uncertain_firing== 62580 (pos)
                    (when (and (and (not (Pb_secret_d))
                               (not (Bb_secret_d))
                               (not (not_at_b_l2))))
                          (not (Bb_secret_d)))

                    ; #48061: <==uncertain_firing== 37574 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Pd_secret_d)))

                    ; #54603: <==uncertain_firing== 60423 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #55002: <==uncertain_firing== 48010 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_secret_d))
                               (not (Pa_secret_d))))
                          (not (Pa_secret_d)))

                    ; #56290: <==negation-removal== 32486 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #63926: <==uncertain_firing== 32486 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l2))))
                          (not (Bd_secret_d)))

                    ; #66888: <==negation-removal== 60423 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #76214: <==negation-removal== 88972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #77742: <==negation-removal== 90820 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #78102: <==negation-removal== 37574 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #78636: <==uncertain_firing== 88972 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #78815: <==negation-removal== 48010 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l3))
        :effect (and
                    ; #16353: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Bb_not_secret_d))

                    ; #20165: <==closure== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #34810: <==closure== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #43761: <==closure== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (Pb_not_secret_d))

                    ; #63515: origin
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #74690: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #85929: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #86488: <==closure== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #21177: <==uncertain_firing== 86488 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_secret_d)))

                    ; #27990: <==uncertain_firing== 74690 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #36838: <==uncertain_firing== 34810 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Bc_secret_d)))

                    ; #37251: <==uncertain_firing== 63515 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (not_at_c_l3))
                               (not (Pc_secret_d))))
                          (not (Pc_secret_d)))

                    ; #38332: <==negation-removal== 63515 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #47012: <==negation-removal== 85929 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #50800: <==uncertain_firing== 16353 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #52331: <==uncertain_firing== 43761 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60817: <==negation-removal== 20165 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #61229: <==negation-removal== 16353 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Pb_secret_d)))

                    ; #69794: <==uncertain_firing== 85929 (pos)
                    (when (and (and (not (Pd_secret_d))
                               (not (Bd_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_secret_d)))

                    ; #81644: <==negation-removal== 34810 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #85341: <==uncertain_firing== 20165 (pos)
                    (when (and (and (not (Pa_secret_d))
                               (not (Ba_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #88813: <==negation-removal== 43761 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l3)))
                          (not (Bb_secret_d)))

                    ; #91204: <==negation-removal== 74690 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #93016: <==negation-removal== 86488 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #19913: <==closure== 32995 (pos)
                    (Pd_secret_d)

                    ; #27237: <==closure== 77995 (pos)
                    (Pa_secret_a)

                    ; #32995: origin
                    (Bd_secret_d)

                    ; #35217: origin
                    (initialized)

                    ; #40394: origin
                    (Bb_secret_b)

                    ; #59408: <==closure== 92478 (pos)
                    (Pc_secret_c)

                    ; #62706: <==closure== 40394 (pos)
                    (Pb_secret_b)

                    ; #77995: origin
                    (Ba_secret_a)

                    ; #92478: origin
                    (Bc_secret_c)

                    ; #12323: <==negation-removal== 32995 (pos)
                    (not (Pd_not_secret_d))

                    ; #14366: <==negation-removal== 19913 (pos)
                    (not (Bd_not_secret_d))

                    ; #15061: <==negation-removal== 35217 (pos)
                    (not (not_initialized))

                    ; #20524: <==negation-removal== 59408 (pos)
                    (not (Bc_not_secret_c))

                    ; #29696: <==negation-removal== 27237 (pos)
                    (not (Ba_not_secret_a))

                    ; #36434: <==negation-removal== 62706 (pos)
                    (not (Bb_not_secret_b))

                    ; #60131: <==negation-removal== 92478 (pos)
                    (not (Pc_not_secret_c))

                    ; #66339: <==negation-removal== 77995 (pos)
                    (not (Pa_not_secret_a))

                    ; #85260: <==negation-removal== 40394 (pos)
                    (not (Pb_not_secret_b))))

    (:action move_a_l1_l1
        :precondition (and (at_a_l1)
                           (initialized)
                           (connected_l1_l1))
        :effect (and
                    ; #38030: origin
                    (at_a_l1)

                    ; #79546: origin
                    (not_at_a_l1)

                    ; #38030: <==negation-removal== 79546 (pos)
                    (not (at_a_l1))

                    ; #79546: <==negation-removal== 38030 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2)
                           (initialized))
        :effect (and
                    ; #15093: origin
                    (at_a_l2)

                    ; #79546: origin
                    (not_at_a_l1)

                    ; #38030: <==negation-removal== 79546 (pos)
                    (not (at_a_l1))

                    ; #66551: <==negation-removal== 15093 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l1_l3
        :precondition (and (at_a_l1)
                           (initialized)
                           (connected_l1_l3))
        :effect (and
                    ; #16225: origin
                    (at_a_l3)

                    ; #79546: origin
                    (not_at_a_l1)

                    ; #38030: <==negation-removal== 79546 (pos)
                    (not (at_a_l1))

                    ; #74754: <==negation-removal== 16225 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l2_l1
        :precondition (and (connected_l2_l1)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #38030: origin
                    (at_a_l1)

                    ; #66551: origin
                    (not_at_a_l2)

                    ; #15093: <==negation-removal== 66551 (pos)
                    (not (at_a_l2))

                    ; #79546: <==negation-removal== 38030 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #15093: origin
                    (at_a_l2)

                    ; #66551: origin
                    (not_at_a_l2)

                    ; #15093: <==negation-removal== 66551 (pos)
                    (not (at_a_l2))

                    ; #66551: <==negation-removal== 15093 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (initialized)
                           (at_a_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #16225: origin
                    (at_a_l3)

                    ; #66551: origin
                    (not_at_a_l2)

                    ; #15093: <==negation-removal== 66551 (pos)
                    (not (at_a_l2))

                    ; #74754: <==negation-removal== 16225 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l3_l1
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l1))
        :effect (and
                    ; #38030: origin
                    (at_a_l1)

                    ; #74754: origin
                    (not_at_a_l3)

                    ; #16225: <==negation-removal== 74754 (pos)
                    (not (at_a_l3))

                    ; #79546: <==negation-removal== 38030 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l3_l2
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l2))
        :effect (and
                    ; #15093: origin
                    (at_a_l2)

                    ; #74754: origin
                    (not_at_a_l3)

                    ; #16225: <==negation-removal== 74754 (pos)
                    (not (at_a_l3))

                    ; #66551: <==negation-removal== 15093 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (at_a_l3)
                           (connected_l3_l3)
                           (initialized))
        :effect (and
                    ; #16225: origin
                    (at_a_l3)

                    ; #74754: origin
                    (not_at_a_l3)

                    ; #16225: <==negation-removal== 74754 (pos)
                    (not (at_a_l3))

                    ; #74754: <==negation-removal== 16225 (pos)
                    (not (not_at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #41728: origin
                    (at_b_l1)

                    ; #69143: origin
                    (not_at_b_l1)

                    ; #41728: <==negation-removal== 69143 (pos)
                    (not (at_b_l1))

                    ; #69143: <==negation-removal== 41728 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #11914: origin
                    (at_b_l2)

                    ; #69143: origin
                    (not_at_b_l1)

                    ; #27115: <==negation-removal== 11914 (pos)
                    (not (not_at_b_l2))

                    ; #41728: <==negation-removal== 69143 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (initialized)
                           (at_b_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #37693: origin
                    (at_b_l3)

                    ; #69143: origin
                    (not_at_b_l1)

                    ; #41728: <==negation-removal== 69143 (pos)
                    (not (at_b_l1))

                    ; #83231: <==negation-removal== 37693 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l2_l1
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #27115: origin
                    (not_at_b_l2)

                    ; #41728: origin
                    (at_b_l1)

                    ; #11914: <==negation-removal== 27115 (pos)
                    (not (at_b_l2))

                    ; #69143: <==negation-removal== 41728 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #11914: origin
                    (at_b_l2)

                    ; #27115: origin
                    (not_at_b_l2)

                    ; #11914: <==negation-removal== 27115 (pos)
                    (not (at_b_l2))

                    ; #27115: <==negation-removal== 11914 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #27115: origin
                    (not_at_b_l2)

                    ; #37693: origin
                    (at_b_l3)

                    ; #11914: <==negation-removal== 27115 (pos)
                    (not (at_b_l2))

                    ; #83231: <==negation-removal== 37693 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l3_l1
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #41728: origin
                    (at_b_l1)

                    ; #83231: origin
                    (not_at_b_l3)

                    ; #37693: <==negation-removal== 83231 (pos)
                    (not (at_b_l3))

                    ; #69143: <==negation-removal== 41728 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l3_l2
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #11914: origin
                    (at_b_l2)

                    ; #83231: origin
                    (not_at_b_l3)

                    ; #27115: <==negation-removal== 11914 (pos)
                    (not (not_at_b_l2))

                    ; #37693: <==negation-removal== 83231 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #37693: origin
                    (at_b_l3)

                    ; #83231: origin
                    (not_at_b_l3)

                    ; #37693: <==negation-removal== 83231 (pos)
                    (not (at_b_l3))

                    ; #83231: <==negation-removal== 37693 (pos)
                    (not (not_at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #15217: origin
                    (at_c_l1)

                    ; #58743: origin
                    (not_at_c_l1)

                    ; #15217: <==negation-removal== 58743 (pos)
                    (not (at_c_l1))

                    ; #58743: <==negation-removal== 15217 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #21803: origin
                    (at_c_l2)

                    ; #58743: origin
                    (not_at_c_l1)

                    ; #15217: <==negation-removal== 58743 (pos)
                    (not (at_c_l1))

                    ; #66300: <==negation-removal== 21803 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l1_l3
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #58743: origin
                    (not_at_c_l1)

                    ; #70659: origin
                    (at_c_l3)

                    ; #15217: <==negation-removal== 58743 (pos)
                    (not (at_c_l1))

                    ; #88589: <==negation-removal== 70659 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l2_l1
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #15217: origin
                    (at_c_l1)

                    ; #66300: origin
                    (not_at_c_l2)

                    ; #21803: <==negation-removal== 66300 (pos)
                    (not (at_c_l2))

                    ; #58743: <==negation-removal== 15217 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #21803: origin
                    (at_c_l2)

                    ; #66300: origin
                    (not_at_c_l2)

                    ; #21803: <==negation-removal== 66300 (pos)
                    (not (at_c_l2))

                    ; #66300: <==negation-removal== 21803 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (initialized)
                           (at_c_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #66300: origin
                    (not_at_c_l2)

                    ; #70659: origin
                    (at_c_l3)

                    ; #21803: <==negation-removal== 66300 (pos)
                    (not (at_c_l2))

                    ; #88589: <==negation-removal== 70659 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #15217: origin
                    (at_c_l1)

                    ; #88589: origin
                    (not_at_c_l3)

                    ; #58743: <==negation-removal== 15217 (pos)
                    (not (not_at_c_l1))

                    ; #70659: <==negation-removal== 88589 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l2
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l2))
        :effect (and
                    ; #21803: origin
                    (at_c_l2)

                    ; #88589: origin
                    (not_at_c_l3)

                    ; #66300: <==negation-removal== 21803 (pos)
                    (not (not_at_c_l2))

                    ; #70659: <==negation-removal== 88589 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #70659: origin
                    (at_c_l3)

                    ; #88589: origin
                    (not_at_c_l3)

                    ; #70659: <==negation-removal== 88589 (pos)
                    (not (at_c_l3))

                    ; #88589: <==negation-removal== 70659 (pos)
                    (not (not_at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (initialized)
                           (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #49449: origin
                    (at_d_l1)

                    ; #58365: origin
                    (not_at_d_l1)

                    ; #49449: <==negation-removal== 58365 (pos)
                    (not (at_d_l1))

                    ; #58365: <==negation-removal== 49449 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #58365: origin
                    (not_at_d_l1)

                    ; #86943: origin
                    (at_d_l2)

                    ; #49449: <==negation-removal== 58365 (pos)
                    (not (at_d_l1))

                    ; #93937: <==negation-removal== 86943 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l1_l3
        :precondition (and (initialized)
                           (at_d_l1)
                           (connected_l1_l3))
        :effect (and
                    ; #35043: origin
                    (at_d_l3)

                    ; #58365: origin
                    (not_at_d_l1)

                    ; #11551: <==negation-removal== 35043 (pos)
                    (not (not_at_d_l3))

                    ; #49449: <==negation-removal== 58365 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #49449: origin
                    (at_d_l1)

                    ; #93937: origin
                    (not_at_d_l2)

                    ; #58365: <==negation-removal== 49449 (pos)
                    (not (not_at_d_l1))

                    ; #86943: <==negation-removal== 93937 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (initialized)
                           (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #86943: origin
                    (at_d_l2)

                    ; #93937: origin
                    (not_at_d_l2)

                    ; #86943: <==negation-removal== 93937 (pos)
                    (not (at_d_l2))

                    ; #93937: <==negation-removal== 86943 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (initialized)
                           (at_d_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #35043: origin
                    (at_d_l3)

                    ; #93937: origin
                    (not_at_d_l2)

                    ; #11551: <==negation-removal== 35043 (pos)
                    (not (not_at_d_l3))

                    ; #86943: <==negation-removal== 93937 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #11551: origin
                    (not_at_d_l3)

                    ; #49449: origin
                    (at_d_l1)

                    ; #35043: <==negation-removal== 11551 (pos)
                    (not (at_d_l3))

                    ; #58365: <==negation-removal== 49449 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l3_l2
        :precondition (and (initialized)
                           (connected_l3_l2)
                           (at_d_l3))
        :effect (and
                    ; #11551: origin
                    (not_at_d_l3)

                    ; #86943: origin
                    (at_d_l2)

                    ; #35043: <==negation-removal== 11551 (pos)
                    (not (at_d_l3))

                    ; #93937: <==negation-removal== 86943 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l3_l3
        :precondition (and (initialized)
                           (connected_l3_l3)
                           (at_d_l3))
        :effect (and
                    ; #11551: origin
                    (not_at_d_l3)

                    ; #35043: origin
                    (at_d_l3)

                    ; #11551: <==negation-removal== 35043 (pos)
                    (not (not_at_d_l3))

                    ; #35043: <==negation-removal== 11551 (pos)
                    (not (at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #25379: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #28923: <==closure== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30553: <==closure== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #31694: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34352: <==closure== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #63797: <==closure== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #79029: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #88194: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #18414: <==negation-removal== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #20423: <==negation-removal== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #27828: <==negation-removal== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #29867: <==uncertain_firing== 25379 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #31479: <==negation-removal== 34352 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #40546: <==negation-removal== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #58960: <==uncertain_firing== 34352 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #70010: <==negation-removal== 63797 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75538: <==uncertain_firing== 88194 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #77757: <==uncertain_firing== 30553 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #78374: <==uncertain_firing== 28923 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #79877: <==negation-removal== 30553 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #82507: <==uncertain_firing== 63797 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #82529: <==uncertain_firing== 31694 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #83441: <==uncertain_firing== 79029 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #91887: <==negation-removal== 28923 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (initialized)
                           (Ba_secret_a)
                           (at_a_l2)
                           (Pa_secret_a))
        :effect (and
                    ; #16951: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #26473: <==closure== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #30190: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #47189: <==closure== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #52659: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #64277: <==closure== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #66162: <==closure== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #80198: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #10092: <==negation-removal== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #26265: <==negation-removal== 26473 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #34322: <==negation-removal== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #34431: <==negation-removal== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #36922: <==negation-removal== 47189 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #39266: <==uncertain_firing== 66162 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #40299: <==negation-removal== 64277 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #55097: <==uncertain_firing== 16951 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64111: <==uncertain_firing== 52659 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #65801: <==uncertain_firing== 80198 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #70267: <==negation-removal== 66162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #70656: <==uncertain_firing== 47189 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #75048: <==uncertain_firing== 30190 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75538: <==uncertain_firing== 64277 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #88916: <==uncertain_firing== 26473 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #89716: <==negation-removal== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_a)
                           (initialized)
                           (Pa_secret_a))
        :effect (and
                    ; #24915: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #46003: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #54436: <==closure== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #55002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #56787: <==closure== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #62087: <==closure== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #76520: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #87942: <==closure== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #21753: <==negation-removal== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28568: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #33233: <==negation-removal== 87942 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #38703: <==uncertain_firing== 54436 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #39013: <==uncertain_firing== 24915 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #45581: <==uncertain_firing== 87942 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #48941: <==uncertain_firing== 55002 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #57351: <==negation-removal== 56787 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58251: <==uncertain_firing== 76520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #61710: <==uncertain_firing== 46003 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #64883: <==negation-removal== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #65746: <==negation-removal== 54436 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #66747: <==uncertain_firing== 56787 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #77243: <==negation-removal== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #82340: <==negation-removal== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #82486: <==negation-removal== 62087 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (initialized)
                           (Pa_secret_b))
        :effect (and
                    ; #11880: <==closure== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #24905: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #40151: <==closure== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #45085: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #57233: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #62714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #73932: <==closure== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #87044: <==closure== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #13296: <==uncertain_firing== 40151 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #14909: <==negation-removal== 73932 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20741: <==uncertain_firing== 11880 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #20871: <==uncertain_firing== 62714 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #24573: <==uncertain_firing== 45085 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #27306: <==negation-removal== 87044 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #42349: <==uncertain_firing== 73932 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #51387: <==negation-removal== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #55235: <==negation-removal== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #59051: <==negation-removal== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71458: <==negation-removal== 11880 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #79383: <==uncertain_firing== 87044 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #86159: <==negation-removal== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87728: <==uncertain_firing== 24905 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #88839: <==uncertain_firing== 57233 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #90686: <==negation-removal== 40151 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (initialized)
                           (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b))
        :effect (and
                    ; #10121: <==closure== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #14797: <==closure== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #19872: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #30519: <==closure== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #45933: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #65105: <==closure== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85949: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14363: <==negation-removal== 65105 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #23083: <==uncertain_firing== 31996 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #45954: <==negation-removal== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #50185: <==uncertain_firing== 30519 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #51488: <==negation-removal== 14797 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54644: <==uncertain_firing== 85949 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #67535: <==uncertain_firing== 19872 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #70475: <==uncertain_firing== 45933 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72159: <==uncertain_firing== 65105 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #72554: <==uncertain_firing== 14797 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #73508: <==negation-removal== 10121 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #74139: <==negation-removal== 30519 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #74981: <==negation-removal== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #77956: <==negation-removal== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #81550: <==uncertain_firing== 10121 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #85160: <==negation-removal== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_b)
                           (initialized)
                           (Pa_secret_b))
        :effect (and
                    ; #25641: <==closure== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26743: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #42857: <==closure== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #43491: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #54474: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #72530: <==closure== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #84069: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #89986: <==closure== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #10663: <==uncertain_firing== 84069 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #22808: <==negation-removal== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #22970: <==uncertain_firing== 72530 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))

                    ; #31902: <==negation-removal== 25641 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #33274: <==negation-removal== 72530 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #36943: <==negation-removal== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #47085: <==uncertain_firing== 25641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #47678: <==uncertain_firing== 26743 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #51025: <==uncertain_firing== 89986 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #52116: <==negation-removal== 42857 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54223: <==uncertain_firing== 43491 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #55725: <==negation-removal== 89986 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86800: <==uncertain_firing== 42857 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #87291: <==uncertain_firing== 54474 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #88583: <==negation-removal== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89920: <==negation-removal== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (initialized))
        :effect (and
                    ; #11243: <==closure== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #20212: <==closure== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #26891: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #36791: <==closure== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #41196: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68246: <==closure== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #71571: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #98341: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #13460: <==negation-removal== 11243 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #20778: <==negation-removal== 20212 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #22615: <==negation-removal== 36791 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #27570: <==uncertain_firing== 98341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #29067: <==uncertain_firing== 68246 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #34262: <==negation-removal== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #35396: <==uncertain_firing== 36791 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #42939: <==uncertain_firing== 41196 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #48268: <==negation-removal== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #51909: <==uncertain_firing== 20212 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #55265: <==uncertain_firing== 26891 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #80604: <==negation-removal== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #83331: <==uncertain_firing== 11243 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #83410: <==negation-removal== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #86188: <==negation-removal== 68246 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #88074: <==uncertain_firing== 71571 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #16827: <==closure== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19946: <==closure== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #32702: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #38396: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #42043: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #80196: <==closure== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #81784: <==closure== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #90579: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #13339: <==negation-removal== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18031: <==negation-removal== 16827 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #25663: <==negation-removal== 80196 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #31257: <==negation-removal== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #33235: <==uncertain_firing== 38396 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #33394: <==uncertain_firing== 19946 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #35953: <==negation-removal== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45627: <==negation-removal== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #46482: <==uncertain_firing== 32702 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #49668: <==negation-removal== 19946 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #50818: <==uncertain_firing== 42043 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76573: <==negation-removal== 81784 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #79698: <==uncertain_firing== 81784 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85525: <==uncertain_firing== 90579 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #90597: <==uncertain_firing== 16827 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #91644: <==uncertain_firing== 80196 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (at_a_l3)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (initialized))
        :effect (and
                    ; #10103: <==closure== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #27686: <==closure== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #28797: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #41287: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #51379: <==closure== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #61772: <==closure== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #85489: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #86830: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #22646: <==negation-removal== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #23935: <==negation-removal== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #33991: <==uncertain_firing== 51379 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #40670: <==negation-removal== 27686 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #45432: <==negation-removal== 10103 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #45762: <==uncertain_firing== 28797 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #54126: <==uncertain_firing== 61772 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56557: <==uncertain_firing== 41287 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #59528: <==negation-removal== 61772 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64506: <==negation-removal== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #67893: <==uncertain_firing== 10103 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #69931: <==negation-removal== 51379 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #71022: <==uncertain_firing== 85489 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #71559: <==uncertain_firing== 86830 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #72186: <==uncertain_firing== 27686 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #86315: <==negation-removal== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #19870: <==closure== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #22659: <==closure== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #28449: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48818: <==closure== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #56555: <==closure== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #75220: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #85206: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #86319: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #10283: <==uncertain_firing== 19870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #10978: <==uncertain_firing== 22659 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #12829: <==negation-removal== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #13546: <==negation-removal== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #24170: <==uncertain_firing== 48818 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #26941: <==negation-removal== 56555 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #30906: <==negation-removal== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42258: <==uncertain_firing== 56555 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #46580: <==negation-removal== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #46596: <==uncertain_firing== 28449 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #47884: <==negation-removal== 22659 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #74373: <==uncertain_firing== 86319 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #82914: <==negation-removal== 19870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #84216: <==uncertain_firing== 75220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85162: <==negation-removal== 48818 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #87615: <==uncertain_firing== 85206 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (initialized)
                           (at_a_l2))
        :effect (and
                    ; #16309: <==closure== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #16792: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #21535: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #23371: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #28339: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #30993: <==closure== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #56305: <==closure== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #74776: <==closure== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #24148: <==uncertain_firing== 23371 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #26848: <==uncertain_firing== 16792 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #29481: <==negation-removal== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42349: <==uncertain_firing== 28339 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #49477: <==negation-removal== 56305 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #57294: <==negation-removal== 16309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #57487: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59724: <==uncertain_firing== 16309 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64480: <==negation-removal== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #66434: <==uncertain_firing== 21535 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #67810: <==uncertain_firing== 30993 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #73718: <==negation-removal== 74776 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #79467: <==negation-removal== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #80336: <==uncertain_firing== 74776 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80772: <==negation-removal== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #89442: <==negation-removal== 30993 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_d)
                           (initialized)
                           (Pa_secret_d))
        :effect (and
                    ; #13240: <==closure== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #29696: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #48197: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #55262: <==closure== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #56345: <==closure== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #67150: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #78971: <==closure== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #91523: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #21457: <==uncertain_firing== 29696 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #24810: <==negation-removal== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #26822: <==uncertain_firing== 67150 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_d)))

                    ; #28278: <==negation-removal== 78971 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29479: <==negation-removal== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36045: <==uncertain_firing== 78971 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #42988: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #48420: <==uncertain_firing== 13240 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_d)))

                    ; #49336: <==negation-removal== 55262 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #50809: <==negation-removal== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #56503: <==uncertain_firing== 48197 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #58870: <==uncertain_firing== 91523 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #59060: <==uncertain_firing== 56345 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #73748: <==negation-removal== 13240 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #88546: <==negation-removal== 56345 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #90687: <==negation-removal== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (at_b_l1)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #25379: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #28923: <==closure== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30553: <==closure== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #31694: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34352: <==closure== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #63797: <==closure== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #79029: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #88194: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #18414: <==negation-removal== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #20423: <==negation-removal== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #27828: <==negation-removal== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #29867: <==uncertain_firing== 25379 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #31479: <==negation-removal== 34352 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #40546: <==negation-removal== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #58960: <==uncertain_firing== 34352 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #70010: <==negation-removal== 63797 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75538: <==uncertain_firing== 88194 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #77757: <==uncertain_firing== 30553 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #78374: <==uncertain_firing== 28923 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #79877: <==negation-removal== 30553 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #82507: <==uncertain_firing== 63797 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #82529: <==uncertain_firing== 31694 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #83441: <==uncertain_firing== 79029 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #91887: <==negation-removal== 28923 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (at_b_l2)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #16951: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #26473: <==closure== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #30190: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #47189: <==closure== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #52659: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #64277: <==closure== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #66162: <==closure== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #80198: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #10092: <==negation-removal== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #26265: <==negation-removal== 26473 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #34322: <==negation-removal== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #34431: <==negation-removal== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #36922: <==negation-removal== 47189 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #39266: <==uncertain_firing== 66162 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #40299: <==negation-removal== 64277 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #55097: <==uncertain_firing== 16951 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64111: <==uncertain_firing== 52659 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #65801: <==uncertain_firing== 80198 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #70267: <==negation-removal== 66162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #70656: <==uncertain_firing== 47189 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #75048: <==uncertain_firing== 30190 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75538: <==uncertain_firing== 64277 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #88916: <==uncertain_firing== 26473 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #89716: <==negation-removal== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (Bb_secret_a)
                           (at_b_l3)
                           (initialized)
                           (Pb_secret_a))
        :effect (and
                    ; #24915: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #46003: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #54436: <==closure== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #55002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #56787: <==closure== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #62087: <==closure== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #76520: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #87942: <==closure== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #21753: <==negation-removal== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28568: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #33233: <==negation-removal== 87942 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #38703: <==uncertain_firing== 54436 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #39013: <==uncertain_firing== 24915 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #45581: <==uncertain_firing== 87942 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #48941: <==uncertain_firing== 55002 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #57351: <==negation-removal== 56787 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58251: <==uncertain_firing== 76520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #61710: <==uncertain_firing== 46003 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #64883: <==negation-removal== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #65746: <==negation-removal== 54436 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #66747: <==uncertain_firing== 56787 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #77243: <==negation-removal== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #82340: <==negation-removal== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #82486: <==negation-removal== 62087 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #11880: <==closure== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #24905: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #40151: <==closure== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #45085: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #57233: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #62714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #73932: <==closure== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #87044: <==closure== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #13296: <==uncertain_firing== 40151 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #14909: <==negation-removal== 73932 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20741: <==uncertain_firing== 11880 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #20871: <==uncertain_firing== 62714 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #24573: <==uncertain_firing== 45085 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #27306: <==negation-removal== 87044 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #42349: <==uncertain_firing== 73932 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #51387: <==negation-removal== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #55235: <==negation-removal== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #59051: <==negation-removal== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71458: <==negation-removal== 11880 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #79383: <==uncertain_firing== 87044 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #86159: <==negation-removal== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87728: <==uncertain_firing== 24905 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #88839: <==uncertain_firing== 57233 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #90686: <==negation-removal== 40151 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #10121: <==closure== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #14797: <==closure== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #19872: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #30519: <==closure== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #45933: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #65105: <==closure== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85949: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14363: <==negation-removal== 65105 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #23083: <==uncertain_firing== 31996 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #45954: <==negation-removal== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #50185: <==uncertain_firing== 30519 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #51488: <==negation-removal== 14797 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54644: <==uncertain_firing== 85949 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #67535: <==uncertain_firing== 19872 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #70475: <==uncertain_firing== 45933 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72159: <==uncertain_firing== 65105 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #72554: <==uncertain_firing== 14797 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #73508: <==negation-removal== 10121 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #74139: <==negation-removal== 30519 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #74981: <==negation-removal== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #77956: <==negation-removal== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #81550: <==uncertain_firing== 10121 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #85160: <==negation-removal== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #25641: <==closure== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26743: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #42857: <==closure== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #43491: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #54474: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #72530: <==closure== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #84069: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #89986: <==closure== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #10663: <==uncertain_firing== 84069 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #22808: <==negation-removal== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #22970: <==uncertain_firing== 72530 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))

                    ; #31902: <==negation-removal== 25641 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #33274: <==negation-removal== 72530 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #36943: <==negation-removal== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #47085: <==uncertain_firing== 25641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #47678: <==uncertain_firing== 26743 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #51025: <==uncertain_firing== 89986 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #52116: <==negation-removal== 42857 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54223: <==uncertain_firing== 43491 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #55725: <==negation-removal== 89986 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86800: <==uncertain_firing== 42857 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #87291: <==uncertain_firing== 54474 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #88583: <==negation-removal== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89920: <==negation-removal== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #11243: <==closure== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #20212: <==closure== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #26891: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #36791: <==closure== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #41196: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68246: <==closure== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #71571: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #98341: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #13460: <==negation-removal== 11243 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #20778: <==negation-removal== 20212 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #22615: <==negation-removal== 36791 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #27570: <==uncertain_firing== 98341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #29067: <==uncertain_firing== 68246 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #34262: <==negation-removal== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #35396: <==uncertain_firing== 36791 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #42939: <==uncertain_firing== 41196 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #48268: <==negation-removal== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #51909: <==uncertain_firing== 20212 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #55265: <==uncertain_firing== 26891 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #80604: <==negation-removal== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #83331: <==uncertain_firing== 11243 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #83410: <==negation-removal== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #86188: <==negation-removal== 68246 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #88074: <==uncertain_firing== 71571 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l2)
                           (initialized))
        :effect (and
                    ; #16827: <==closure== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19946: <==closure== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #32702: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #38396: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #42043: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #80196: <==closure== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #81784: <==closure== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #90579: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #13339: <==negation-removal== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18031: <==negation-removal== 16827 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #25663: <==negation-removal== 80196 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #31257: <==negation-removal== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #33235: <==uncertain_firing== 38396 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #33394: <==uncertain_firing== 19946 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #35953: <==negation-removal== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45627: <==negation-removal== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #46482: <==uncertain_firing== 32702 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #49668: <==negation-removal== 19946 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #50818: <==uncertain_firing== 42043 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76573: <==negation-removal== 81784 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #79698: <==uncertain_firing== 81784 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85525: <==uncertain_firing== 90579 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #90597: <==uncertain_firing== 16827 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #91644: <==uncertain_firing== 80196 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (Bb_secret_c)
                           (Pb_secret_c)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #10103: <==closure== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #27686: <==closure== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #28797: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #41287: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #51379: <==closure== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #61772: <==closure== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #85489: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #86830: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #22646: <==negation-removal== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #23935: <==negation-removal== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #33991: <==uncertain_firing== 51379 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #40670: <==negation-removal== 27686 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #45432: <==negation-removal== 10103 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #45762: <==uncertain_firing== 28797 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #54126: <==uncertain_firing== 61772 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56557: <==uncertain_firing== 41287 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #59528: <==negation-removal== 61772 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64506: <==negation-removal== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #67893: <==uncertain_firing== 10103 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #69931: <==negation-removal== 51379 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #71022: <==uncertain_firing== 85489 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #71559: <==uncertain_firing== 86830 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #72186: <==uncertain_firing== 27686 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #86315: <==negation-removal== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #19870: <==closure== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #22659: <==closure== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #28449: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48818: <==closure== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #56555: <==closure== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #75220: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #85206: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #86319: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #10283: <==uncertain_firing== 19870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #10978: <==uncertain_firing== 22659 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #12829: <==negation-removal== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #13546: <==negation-removal== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #24170: <==uncertain_firing== 48818 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #26941: <==negation-removal== 56555 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #30906: <==negation-removal== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42258: <==uncertain_firing== 56555 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #46580: <==negation-removal== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #46596: <==uncertain_firing== 28449 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #47884: <==negation-removal== 22659 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #74373: <==uncertain_firing== 86319 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #82914: <==negation-removal== 19870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #84216: <==uncertain_firing== 75220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85162: <==negation-removal== 48818 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #87615: <==uncertain_firing== 85206 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #16309: <==closure== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #16792: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #21535: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #23371: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #28339: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #30993: <==closure== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #56305: <==closure== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #74776: <==closure== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #24148: <==uncertain_firing== 23371 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #26848: <==uncertain_firing== 16792 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #29481: <==negation-removal== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42349: <==uncertain_firing== 28339 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #49477: <==negation-removal== 56305 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #57294: <==negation-removal== 16309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #57487: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59724: <==uncertain_firing== 16309 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64480: <==negation-removal== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #66434: <==uncertain_firing== 21535 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #67810: <==uncertain_firing== 30993 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #73718: <==negation-removal== 74776 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #79467: <==negation-removal== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #80336: <==uncertain_firing== 74776 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80772: <==negation-removal== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #89442: <==negation-removal== 30993 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #13240: <==closure== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #29696: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #48197: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #55262: <==closure== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #56345: <==closure== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #67150: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #78971: <==closure== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #91523: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #21457: <==uncertain_firing== 29696 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #24810: <==negation-removal== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #26822: <==uncertain_firing== 67150 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_d)))

                    ; #28278: <==negation-removal== 78971 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29479: <==negation-removal== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36045: <==uncertain_firing== 78971 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #42988: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #48420: <==uncertain_firing== 13240 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_d)))

                    ; #49336: <==negation-removal== 55262 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #50809: <==negation-removal== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #56503: <==uncertain_firing== 48197 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #58870: <==uncertain_firing== 91523 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #59060: <==uncertain_firing== 56345 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #73748: <==negation-removal== 13240 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #88546: <==negation-removal== 56345 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #90687: <==negation-removal== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #25379: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #28923: <==closure== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30553: <==closure== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #31694: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34352: <==closure== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #63797: <==closure== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #79029: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #88194: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #18414: <==negation-removal== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #20423: <==negation-removal== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #27828: <==negation-removal== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #29867: <==uncertain_firing== 25379 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #31479: <==negation-removal== 34352 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #40546: <==negation-removal== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #58960: <==uncertain_firing== 34352 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #70010: <==negation-removal== 63797 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75538: <==uncertain_firing== 88194 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #77757: <==uncertain_firing== 30553 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #78374: <==uncertain_firing== 28923 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #79877: <==negation-removal== 30553 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #82507: <==uncertain_firing== 63797 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #82529: <==uncertain_firing== 31694 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #83441: <==uncertain_firing== 79029 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #91887: <==negation-removal== 28923 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #16951: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #26473: <==closure== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #30190: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #47189: <==closure== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #52659: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #64277: <==closure== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #66162: <==closure== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #80198: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #10092: <==negation-removal== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #26265: <==negation-removal== 26473 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #34322: <==negation-removal== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #34431: <==negation-removal== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #36922: <==negation-removal== 47189 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #39266: <==uncertain_firing== 66162 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #40299: <==negation-removal== 64277 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #55097: <==uncertain_firing== 16951 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64111: <==uncertain_firing== 52659 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #65801: <==uncertain_firing== 80198 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #70267: <==negation-removal== 66162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #70656: <==uncertain_firing== 47189 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #75048: <==uncertain_firing== 30190 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75538: <==uncertain_firing== 64277 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #88916: <==uncertain_firing== 26473 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #89716: <==negation-removal== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #24915: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #46003: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #54436: <==closure== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #55002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #56787: <==closure== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #62087: <==closure== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #76520: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #87942: <==closure== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #21753: <==negation-removal== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28568: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #33233: <==negation-removal== 87942 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #38703: <==uncertain_firing== 54436 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #39013: <==uncertain_firing== 24915 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #45581: <==uncertain_firing== 87942 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #48941: <==uncertain_firing== 55002 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #57351: <==negation-removal== 56787 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58251: <==uncertain_firing== 76520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #61710: <==uncertain_firing== 46003 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #64883: <==negation-removal== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #65746: <==negation-removal== 54436 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #66747: <==uncertain_firing== 56787 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #77243: <==negation-removal== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #82340: <==negation-removal== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #82486: <==negation-removal== 62087 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #11880: <==closure== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #24905: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #40151: <==closure== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #45085: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #57233: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #62714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #73932: <==closure== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #87044: <==closure== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #13296: <==uncertain_firing== 40151 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #14909: <==negation-removal== 73932 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20741: <==uncertain_firing== 11880 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #20871: <==uncertain_firing== 62714 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #24573: <==uncertain_firing== 45085 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #27306: <==negation-removal== 87044 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #42349: <==uncertain_firing== 73932 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #51387: <==negation-removal== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #55235: <==negation-removal== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #59051: <==negation-removal== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71458: <==negation-removal== 11880 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #79383: <==uncertain_firing== 87044 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #86159: <==negation-removal== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87728: <==uncertain_firing== 24905 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #88839: <==uncertain_firing== 57233 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #90686: <==negation-removal== 40151 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #10121: <==closure== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #14797: <==closure== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #19872: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #30519: <==closure== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #45933: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #65105: <==closure== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85949: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14363: <==negation-removal== 65105 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #23083: <==uncertain_firing== 31996 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #45954: <==negation-removal== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #50185: <==uncertain_firing== 30519 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #51488: <==negation-removal== 14797 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54644: <==uncertain_firing== 85949 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #67535: <==uncertain_firing== 19872 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #70475: <==uncertain_firing== 45933 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72159: <==uncertain_firing== 65105 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #72554: <==uncertain_firing== 14797 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #73508: <==negation-removal== 10121 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #74139: <==negation-removal== 30519 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #74981: <==negation-removal== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #77956: <==negation-removal== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #81550: <==uncertain_firing== 10121 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #85160: <==negation-removal== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #25641: <==closure== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26743: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #42857: <==closure== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #43491: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #54474: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #72530: <==closure== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #84069: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #89986: <==closure== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #10663: <==uncertain_firing== 84069 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #22808: <==negation-removal== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #22970: <==uncertain_firing== 72530 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))

                    ; #31902: <==negation-removal== 25641 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #33274: <==negation-removal== 72530 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #36943: <==negation-removal== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #47085: <==uncertain_firing== 25641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #47678: <==uncertain_firing== 26743 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #51025: <==uncertain_firing== 89986 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #52116: <==negation-removal== 42857 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54223: <==uncertain_firing== 43491 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #55725: <==negation-removal== 89986 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86800: <==uncertain_firing== 42857 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #87291: <==uncertain_firing== 54474 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #88583: <==negation-removal== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89920: <==negation-removal== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #11243: <==closure== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #20212: <==closure== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #26891: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #36791: <==closure== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #41196: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68246: <==closure== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #71571: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #98341: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #13460: <==negation-removal== 11243 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #20778: <==negation-removal== 20212 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #22615: <==negation-removal== 36791 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #27570: <==uncertain_firing== 98341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #29067: <==uncertain_firing== 68246 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #34262: <==negation-removal== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #35396: <==uncertain_firing== 36791 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #42939: <==uncertain_firing== 41196 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #48268: <==negation-removal== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #51909: <==uncertain_firing== 20212 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #55265: <==uncertain_firing== 26891 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #80604: <==negation-removal== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #83331: <==uncertain_firing== 11243 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #83410: <==negation-removal== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #86188: <==negation-removal== 68246 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #88074: <==uncertain_firing== 71571 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #16827: <==closure== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19946: <==closure== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #32702: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #38396: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #42043: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #80196: <==closure== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #81784: <==closure== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #90579: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #13339: <==negation-removal== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18031: <==negation-removal== 16827 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #25663: <==negation-removal== 80196 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #31257: <==negation-removal== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #33235: <==uncertain_firing== 38396 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #33394: <==uncertain_firing== 19946 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #35953: <==negation-removal== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45627: <==negation-removal== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #46482: <==uncertain_firing== 32702 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #49668: <==negation-removal== 19946 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #50818: <==uncertain_firing== 42043 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76573: <==negation-removal== 81784 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #79698: <==uncertain_firing== 81784 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85525: <==uncertain_firing== 90579 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #90597: <==uncertain_firing== 16827 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #91644: <==uncertain_firing== 80196 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #10103: <==closure== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #27686: <==closure== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #28797: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #41287: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #51379: <==closure== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #61772: <==closure== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #85489: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #86830: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #22646: <==negation-removal== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #23935: <==negation-removal== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #33991: <==uncertain_firing== 51379 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #40670: <==negation-removal== 27686 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #45432: <==negation-removal== 10103 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #45762: <==uncertain_firing== 28797 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #54126: <==uncertain_firing== 61772 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56557: <==uncertain_firing== 41287 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #59528: <==negation-removal== 61772 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64506: <==negation-removal== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #67893: <==uncertain_firing== 10103 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #69931: <==negation-removal== 51379 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #71022: <==uncertain_firing== 85489 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #71559: <==uncertain_firing== 86830 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #72186: <==uncertain_firing== 27686 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #86315: <==negation-removal== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #19870: <==closure== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #22659: <==closure== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #28449: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48818: <==closure== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #56555: <==closure== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #75220: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #85206: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #86319: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #10283: <==uncertain_firing== 19870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #10978: <==uncertain_firing== 22659 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #12829: <==negation-removal== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #13546: <==negation-removal== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #24170: <==uncertain_firing== 48818 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #26941: <==negation-removal== 56555 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #30906: <==negation-removal== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42258: <==uncertain_firing== 56555 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #46580: <==negation-removal== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #46596: <==uncertain_firing== 28449 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #47884: <==negation-removal== 22659 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #74373: <==uncertain_firing== 86319 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #82914: <==negation-removal== 19870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #84216: <==uncertain_firing== 75220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85162: <==negation-removal== 48818 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #87615: <==uncertain_firing== 85206 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (initialized)
                           (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #16309: <==closure== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #16792: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #21535: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #23371: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #28339: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #30993: <==closure== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #56305: <==closure== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #74776: <==closure== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #24148: <==uncertain_firing== 23371 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #26848: <==uncertain_firing== 16792 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #29481: <==negation-removal== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42349: <==uncertain_firing== 28339 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #49477: <==negation-removal== 56305 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #57294: <==negation-removal== 16309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #57487: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59724: <==uncertain_firing== 16309 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64480: <==negation-removal== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #66434: <==uncertain_firing== 21535 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #67810: <==uncertain_firing== 30993 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #73718: <==negation-removal== 74776 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #79467: <==negation-removal== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #80336: <==uncertain_firing== 74776 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80772: <==negation-removal== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #89442: <==negation-removal== 30993 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #13240: <==closure== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #29696: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #48197: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #55262: <==closure== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #56345: <==closure== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #67150: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #78971: <==closure== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #91523: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #21457: <==uncertain_firing== 29696 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #24810: <==negation-removal== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #26822: <==uncertain_firing== 67150 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_d)))

                    ; #28278: <==negation-removal== 78971 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29479: <==negation-removal== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36045: <==uncertain_firing== 78971 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #42988: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #48420: <==uncertain_firing== 13240 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_d)))

                    ; #49336: <==negation-removal== 55262 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #50809: <==negation-removal== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #56503: <==uncertain_firing== 48197 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #58870: <==uncertain_firing== 91523 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #59060: <==uncertain_firing== 56345 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #73748: <==negation-removal== 13240 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #88546: <==negation-removal== 56345 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #90687: <==negation-removal== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #25379: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #28923: <==closure== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #30553: <==closure== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #31694: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #34352: <==closure== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #63797: <==closure== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #79029: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #88194: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #18414: <==negation-removal== 79029 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #20423: <==negation-removal== 25379 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #27828: <==negation-removal== 31694 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #29867: <==uncertain_firing== 25379 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_a)))

                    ; #31479: <==negation-removal== 34352 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #40546: <==negation-removal== 88194 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #58960: <==uncertain_firing== 34352 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_a)))

                    ; #70010: <==negation-removal== 63797 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #75538: <==uncertain_firing== 88194 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_a)))

                    ; #77757: <==uncertain_firing== 30553 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #78374: <==uncertain_firing== 28923 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #79877: <==negation-removal== 30553 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #82507: <==uncertain_firing== 63797 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_a)))

                    ; #82529: <==uncertain_firing== 31694 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l1))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #83441: <==uncertain_firing== 79029 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #91887: <==negation-removal== 28923 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l2)
                           (Bd_secret_a))
        :effect (and
                    ; #16951: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #26473: <==closure== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #30190: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #47189: <==closure== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #52659: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #64277: <==closure== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #66162: <==closure== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #80198: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #10092: <==negation-removal== 52659 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #26265: <==negation-removal== 26473 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #34322: <==negation-removal== 16951 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #34431: <==negation-removal== 30190 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #36922: <==negation-removal== 47189 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #39266: <==uncertain_firing== 66162 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #40299: <==negation-removal== 64277 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #55097: <==uncertain_firing== 16951 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #64111: <==uncertain_firing== 52659 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Pd_not_secret_a)))

                    ; #65801: <==uncertain_firing== 80198 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #70267: <==negation-removal== 66162 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #70656: <==uncertain_firing== 47189 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #75048: <==uncertain_firing== 30190 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #75538: <==uncertain_firing== 64277 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l2))))
                          (not (Bd_not_secret_a)))

                    ; #88916: <==uncertain_firing== 26473 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #89716: <==negation-removal== 80198 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l3)
                           (Bd_secret_a))
        :effect (and
                    ; #24915: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #46003: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #54436: <==closure== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #55002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #56787: <==closure== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #62087: <==closure== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #76520: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Bb_secret_a))

                    ; #87942: <==closure== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (Pb_secret_a))

                    ; #21753: <==negation-removal== 46003 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #28568: <==uncertain_firing== 62087 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_a)))

                    ; #33233: <==negation-removal== 87942 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Bb_not_secret_a)))

                    ; #38703: <==uncertain_firing== 54436 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_a)))

                    ; #39013: <==uncertain_firing== 24915 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_a)))

                    ; #45581: <==uncertain_firing== 87942 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #48941: <==uncertain_firing== 55002 (pos)
                    (when (and (and (not (Pa_not_secret_a))
                               (not (Ba_not_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_a)))

                    ; #57351: <==negation-removal== 56787 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #58251: <==uncertain_firing== 76520 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_a))
                               (not (Pb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #61710: <==uncertain_firing== 46003 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #64883: <==negation-removal== 55002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #65746: <==negation-removal== 54436 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #66747: <==uncertain_firing== 56787 (pos)
                    (when (and (and (not (Pc_not_secret_a))
                               (not (not_at_c_l3))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #77243: <==negation-removal== 76520 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_a)))
                          (not (Pb_not_secret_a)))

                    ; #82340: <==negation-removal== 24915 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #82486: <==negation-removal== 62087 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (initialized)
                           (at_d_l1)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #11880: <==closure== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #24905: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #40151: <==closure== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #45085: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #57233: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #62714: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #73932: <==closure== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #87044: <==closure== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #13296: <==uncertain_firing== 40151 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_b)))

                    ; #14909: <==negation-removal== 73932 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20741: <==uncertain_firing== 11880 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #20871: <==uncertain_firing== 62714 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_b)))

                    ; #24573: <==uncertain_firing== 45085 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_b)))

                    ; #27306: <==negation-removal== 87044 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #42349: <==uncertain_firing== 73932 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_b)))

                    ; #51387: <==negation-removal== 45085 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #55235: <==negation-removal== 24905 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #59051: <==negation-removal== 57233 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #71458: <==negation-removal== 11880 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #79383: <==uncertain_firing== 87044 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_b)))

                    ; #86159: <==negation-removal== 62714 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87728: <==uncertain_firing== 24905 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_b)))

                    ; #88839: <==uncertain_firing== 57233 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #90686: <==negation-removal== 40151 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (initialized)
                           (at_d_l2)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #10121: <==closure== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #14797: <==closure== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #19872: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #30519: <==closure== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #31996: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #45933: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #65105: <==closure== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #85949: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #14363: <==negation-removal== 65105 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #23083: <==uncertain_firing== 31996 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_b)))

                    ; #45954: <==negation-removal== 85949 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #50185: <==uncertain_firing== 30519 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_b)))

                    ; #51488: <==negation-removal== 14797 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54644: <==uncertain_firing== 85949 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #67535: <==uncertain_firing== 19872 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #70475: <==uncertain_firing== 45933 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #72159: <==uncertain_firing== 65105 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #72554: <==uncertain_firing== 14797 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #73508: <==negation-removal== 10121 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #74139: <==negation-removal== 30519 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #74981: <==negation-removal== 19872 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #77956: <==negation-removal== 31996 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #81550: <==uncertain_firing== 10121 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #85160: <==negation-removal== 45933 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (initialized)
                           (at_d_l3)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #25641: <==closure== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #26743: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #42857: <==closure== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #43491: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #54474: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #72530: <==closure== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #84069: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #89986: <==closure== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #10663: <==uncertain_firing== 84069 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #22808: <==negation-removal== 43491 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #22970: <==uncertain_firing== 72530 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_b)))

                    ; #31902: <==negation-removal== 25641 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #33274: <==negation-removal== 72530 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #36943: <==negation-removal== 84069 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #47085: <==uncertain_firing== 25641 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #47678: <==uncertain_firing== 26743 (pos)
                    (when (and (and (not (Bb_not_secret_b))
                               (not (not_at_b_l3))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #51025: <==uncertain_firing== 89986 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #52116: <==negation-removal== 42857 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #54223: <==uncertain_firing== 43491 (pos)
                    (when (and (and (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_b)))

                    ; #55725: <==negation-removal== 89986 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #86800: <==uncertain_firing== 42857 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #87291: <==uncertain_firing== 54474 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #88583: <==negation-removal== 54474 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #89920: <==negation-removal== 26743 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c))
        :effect (and
                    ; #11243: <==closure== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #20212: <==closure== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #26891: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #36791: <==closure== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #41196: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #68246: <==closure== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #71571: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #98341: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #13460: <==negation-removal== 11243 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #20778: <==negation-removal== 20212 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #22615: <==negation-removal== 36791 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #27570: <==uncertain_firing== 98341 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #29067: <==uncertain_firing== 68246 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #34262: <==negation-removal== 71571 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #35396: <==uncertain_firing== 36791 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_c)))

                    ; #42939: <==uncertain_firing== 41196 (pos)
                    (when (and (and (not (Pa_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #48268: <==negation-removal== 98341 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #51909: <==uncertain_firing== 20212 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #55265: <==uncertain_firing== 26891 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #80604: <==negation-removal== 26891 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #83331: <==uncertain_firing== 11243 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #83410: <==negation-removal== 41196 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #86188: <==negation-removal== 68246 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #88074: <==uncertain_firing== 71571 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c))
        :effect (and
                    ; #16827: <==closure== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #19946: <==closure== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Pa_secret_c))

                    ; #32702: origin
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (Ba_secret_c))

                    ; #38396: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #42043: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #80196: <==closure== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Pb_secret_c))

                    ; #81784: <==closure== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #90579: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (Bb_secret_c))

                    ; #13339: <==negation-removal== 32702 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18031: <==negation-removal== 16827 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #25663: <==negation-removal== 80196 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #31257: <==negation-removal== 42043 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #33235: <==uncertain_firing== 38396 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #33394: <==uncertain_firing== 19946 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #35953: <==negation-removal== 38396 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45627: <==negation-removal== 90579 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #46482: <==uncertain_firing== 32702 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #49668: <==negation-removal== 19946 (pos)
                    (when (and (and (Pa_secret_c)
                               (at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #50818: <==uncertain_firing== 42043 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #76573: <==negation-removal== 81784 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #79698: <==uncertain_firing== 81784 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l2))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #85525: <==uncertain_firing== 90579 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Pb_not_secret_c)))

                    ; #90597: <==uncertain_firing== 16827 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #91644: <==uncertain_firing== 80196 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l2))))
                          (not (Bb_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l3)
                           (Bd_secret_c))
        :effect (and
                    ; #10103: <==closure== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #27686: <==closure== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Pb_secret_c))

                    ; #28797: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #41287: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #51379: <==closure== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #61772: <==closure== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #85489: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (Bb_secret_c))

                    ; #86830: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #22646: <==negation-removal== 28797 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #23935: <==negation-removal== 86830 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #33991: <==uncertain_firing== 51379 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #40670: <==negation-removal== 27686 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Bb_not_secret_c)))

                    ; #45432: <==negation-removal== 10103 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #45762: <==uncertain_firing== 28797 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #54126: <==uncertain_firing== 61772 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #56557: <==uncertain_firing== 41287 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_c)))

                    ; #59528: <==negation-removal== 61772 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #64506: <==negation-removal== 41287 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #67893: <==uncertain_firing== 10103 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_c)))

                    ; #69931: <==negation-removal== 51379 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #71022: <==uncertain_firing== 85489 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Pb_not_secret_c)))

                    ; #71559: <==uncertain_firing== 86830 (pos)
                    (when (and (and (not (not_at_a_l3))
                               (not (Pa_not_secret_c))
                               (not (Ba_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #72186: <==uncertain_firing== 27686 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l3))))
                          (not (Bb_not_secret_c)))

                    ; #86315: <==negation-removal== 85489 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l3)))
                          (not (Pb_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #19870: <==closure== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #22659: <==closure== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #28449: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #48818: <==closure== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #56555: <==closure== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #75220: origin
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #85206: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #86319: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #10283: <==uncertain_firing== 19870 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #10978: <==uncertain_firing== 22659 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Bd_not_secret_d)))

                    ; #12829: <==negation-removal== 75220 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #13546: <==negation-removal== 85206 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #24170: <==uncertain_firing== 48818 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_d)))

                    ; #26941: <==negation-removal== 56555 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #30906: <==negation-removal== 28449 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42258: <==uncertain_firing== 56555 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_not_secret_d)))

                    ; #46580: <==negation-removal== 86319 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #46596: <==uncertain_firing== 28449 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_d)))

                    ; #47884: <==negation-removal== 22659 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #74373: <==uncertain_firing== 86319 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_not_secret_d)))

                    ; #82914: <==negation-removal== 19870 (pos)
                    (when (and (and (at_c_l1)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #84216: <==uncertain_firing== 75220 (pos)
                    (when (and (and (not (not_at_c_l1))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #85162: <==negation-removal== 48818 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #87615: <==uncertain_firing== 85206 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l1))))
                          (not (Pd_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l2))
        :effect (and
                    ; #16309: <==closure== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #16792: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #21535: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Ba_secret_d))

                    ; #23371: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #28339: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #30993: <==closure== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #56305: <==closure== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (Pa_secret_d))

                    ; #74776: <==closure== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #24148: <==uncertain_firing== 23371 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #26848: <==uncertain_firing== 16792 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #29481: <==negation-removal== 16792 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #42349: <==uncertain_firing== 28339 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #49477: <==negation-removal== 56305 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #57294: <==negation-removal== 16309 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #57487: <==uncertain_firing== 56305 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #59724: <==uncertain_firing== 16309 (pos)
                    (when (and (and (not (Bc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #64480: <==negation-removal== 21535 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #66434: <==uncertain_firing== 21535 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #67810: <==uncertain_firing== 30993 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #73718: <==negation-removal== 74776 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #79467: <==negation-removal== 23371 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #80336: <==uncertain_firing== 74776 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l2))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #80772: <==negation-removal== 28339 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #89442: <==negation-removal== 30993 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (initialized)
                           (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l3))
        :effect (and
                    ; #13240: <==closure== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #29696: origin
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #48197: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #55262: <==closure== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #56345: <==closure== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #67150: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #78971: <==closure== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #91523: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #21457: <==uncertain_firing== 29696 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #24810: <==negation-removal== 67150 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #26822: <==uncertain_firing== 67150 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_d)))

                    ; #28278: <==negation-removal== 78971 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #29479: <==negation-removal== 29696 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))

                    ; #36045: <==uncertain_firing== 78971 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #42988: <==uncertain_firing== 55262 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Bd_not_secret_d)))

                    ; #48420: <==uncertain_firing== 13240 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_d)))

                    ; #49336: <==negation-removal== 55262 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #50809: <==negation-removal== 48197 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #56503: <==uncertain_firing== 48197 (pos)
                    (when (and (and (not (Pb_not_secret_d))
                               (not (not_at_b_l3))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #58870: <==uncertain_firing== 91523 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))
                               (not (not_at_d_l3))))
                          (not (Pd_not_secret_d)))

                    ; #59060: <==uncertain_firing== 56345 (pos)
                    (when (and (and (not (not_at_c_l3))
                               (not (Bc_not_secret_d))
                               (not (Pc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #73748: <==negation-removal== 13240 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #88546: <==negation-removal== 56345 (pos)
                    (when (and (and (at_c_l3)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #90687: <==negation-removal== 91523 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))))

)