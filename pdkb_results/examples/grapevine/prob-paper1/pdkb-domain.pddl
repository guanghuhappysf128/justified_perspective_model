(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
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
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (at_d_l1)
        (at_d_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
    )

    (:action move_a_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_a_l1))
        :effect (and
                    ; #11758: origin
                    (at_a_l1)

                    ; #58661: origin
                    (not_at_a_l1)

                    ; #11758: <==negation-removal== 58661 (pos)
                    (not (at_a_l1))

                    ; #58661: <==negation-removal== 11758 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #58661: origin
                    (not_at_a_l1)

                    ; #60080: origin
                    (at_a_l2)

                    ; #11758: <==negation-removal== 58661 (pos)
                    (not (at_a_l1))

                    ; #18959: <==negation-removal== 60080 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #11758: origin
                    (at_a_l1)

                    ; #18959: origin
                    (not_at_a_l2)

                    ; #58661: <==negation-removal== 11758 (pos)
                    (not (not_at_a_l1))

                    ; #60080: <==negation-removal== 18959 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_a_l2))
        :effect (and
                    ; #18959: origin
                    (not_at_a_l2)

                    ; #60080: origin
                    (at_a_l2)

                    ; #18959: <==negation-removal== 60080 (pos)
                    (not (not_at_a_l2))

                    ; #60080: <==negation-removal== 18959 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #33593: origin
                    (not_at_b_l1)

                    ; #91929: origin
                    (at_b_l1)

                    ; #33593: <==negation-removal== 91929 (pos)
                    (not (not_at_b_l1))

                    ; #91929: <==negation-removal== 33593 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #33593: origin
                    (not_at_b_l1)

                    ; #76744: origin
                    (at_b_l2)

                    ; #82750: <==negation-removal== 76744 (pos)
                    (not (not_at_b_l2))

                    ; #91929: <==negation-removal== 33593 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #82750: origin
                    (not_at_b_l2)

                    ; #91929: origin
                    (at_b_l1)

                    ; #33593: <==negation-removal== 91929 (pos)
                    (not (not_at_b_l1))

                    ; #76744: <==negation-removal== 82750 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #76744: origin
                    (at_b_l2)

                    ; #82750: origin
                    (not_at_b_l2)

                    ; #76744: <==negation-removal== 82750 (pos)
                    (not (at_b_l2))

                    ; #82750: <==negation-removal== 76744 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_c_l1))
        :effect (and
                    ; #16384: origin
                    (at_c_l1)

                    ; #65873: origin
                    (not_at_c_l1)

                    ; #16384: <==negation-removal== 65873 (pos)
                    (not (at_c_l1))

                    ; #65873: <==negation-removal== 16384 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #50850: origin
                    (at_c_l2)

                    ; #65873: origin
                    (not_at_c_l1)

                    ; #16384: <==negation-removal== 65873 (pos)
                    (not (at_c_l1))

                    ; #47298: <==negation-removal== 50850 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #16384: origin
                    (at_c_l1)

                    ; #47298: origin
                    (not_at_c_l2)

                    ; #50850: <==negation-removal== 47298 (pos)
                    (not (at_c_l2))

                    ; #65873: <==negation-removal== 16384 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #47298: origin
                    (not_at_c_l2)

                    ; #50850: origin
                    (at_c_l2)

                    ; #47298: <==negation-removal== 50850 (pos)
                    (not (not_at_c_l2))

                    ; #50850: <==negation-removal== 47298 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #17516: origin
                    (not_at_d_l1)

                    ; #42194: origin
                    (at_d_l1)

                    ; #17516: <==negation-removal== 42194 (pos)
                    (not (not_at_d_l1))

                    ; #42194: <==negation-removal== 17516 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #17516: origin
                    (not_at_d_l1)

                    ; #45136: origin
                    (at_d_l2)

                    ; #42194: <==negation-removal== 17516 (pos)
                    (not (at_d_l1))

                    ; #83495: <==negation-removal== 45136 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #42194: origin
                    (at_d_l1)

                    ; #83495: origin
                    (not_at_d_l2)

                    ; #17516: <==negation-removal== 42194 (pos)
                    (not (not_at_d_l1))

                    ; #45136: <==negation-removal== 83495 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_d_l2))
        :effect (and
                    ; #45136: origin
                    (at_d_l2)

                    ; #83495: origin
                    (not_at_d_l2)

                    ; #45136: <==negation-removal== 83495 (pos)
                    (not (at_d_l2))

                    ; #83495: <==negation-removal== 45136 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (at_a_l1)
                           (Pa_secret_a))
        :effect (and
                    ; #24823: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #30346: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #31887: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #53516: <==closure== 75161 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55545: <==closure== 24823 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #75161: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #78478: <==closure== 31887 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #78675: <==closure== 30346 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #14633: <==negation-removal== 24823 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #26737: <==uncertain_firing== 24823 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #28402: <==uncertain_firing== 31887 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29131: <==negation-removal== 78675 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #38090: <==negation-removal== 55545 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #40164: <==negation-removal== 53516 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #45819: <==uncertain_firing== 53516 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #50789: <==negation-removal== 30346 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #52711: <==uncertain_firing== 30346 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #52983: <==negation-removal== 75161 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #57582: <==uncertain_firing== 78478 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59003: <==uncertain_firing== 78675 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #65391: <==negation-removal== 31887 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #70285: <==uncertain_firing== 55545 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #77511: <==uncertain_firing== 75161 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #95946: <==negation-removal== 78478 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #26200: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #32601: <==closure== 26200 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #36540: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #38240: <==closure== 36540 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #59563: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #69062: <==closure== 59563 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #73482: <==closure== 79269 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #79269: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #10455: <==uncertain_firing== 69062 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #11436: <==uncertain_firing== 36540 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #16492: <==negation-removal== 59563 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #28793: <==negation-removal== 69062 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #29888: <==negation-removal== 36540 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #39865: <==uncertain_firing== 38240 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #43741: <==uncertain_firing== 26200 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #47728: <==uncertain_firing== 73482 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #51595: <==uncertain_firing== 59563 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #62420: <==negation-removal== 26200 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #67517: <==uncertain_firing== 32601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #71885: <==uncertain_firing== 79269 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #73840: <==negation-removal== 38240 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #75290: <==negation-removal== 79269 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #81760: <==negation-removal== 73482 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #89317: <==negation-removal== 32601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #13780: <==closure== 22702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #22702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #48361: <==closure== 82004 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #52943: <==closure== 65900 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #65668: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65900: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #80539: <==closure== 65668 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #82004: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #10115: <==uncertain_firing== 65900 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13696: <==uncertain_firing== 48361 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #19214: <==negation-removal== 48361 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #23254: <==negation-removal== 13780 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24549: <==negation-removal== 80539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #41129: <==negation-removal== 65900 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #50757: <==uncertain_firing== 52943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52728: <==uncertain_firing== 82004 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #53656: <==negation-removal== 82004 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #61462: <==uncertain_firing== 80539 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #67120: <==negation-removal== 65668 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #71795: <==negation-removal== 22702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #80110: <==uncertain_firing== 22702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #86004: <==negation-removal== 52943 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #91202: <==uncertain_firing== 13780 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #91230: <==uncertain_firing== 65668 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #10961: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #16333: <==closure== 86272 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #35409: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47489: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #71103: <==closure== 47489 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #79320: <==closure== 35409 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #86272: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #89104: <==closure== 10961 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13640: <==negation-removal== 10961 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #15485: <==uncertain_firing== 79320 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #16349: <==uncertain_firing== 86272 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #16552: <==uncertain_firing== 71103 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #21753: <==negation-removal== 16333 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #24238: <==uncertain_firing== 10961 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #32814: <==negation-removal== 35409 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #41499: <==negation-removal== 47489 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47984: <==negation-removal== 89104 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #71093: <==uncertain_firing== 89104 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #74092: <==uncertain_firing== 16333 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #75769: <==negation-removal== 71103 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81477: <==negation-removal== 79320 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #81677: <==negation-removal== 86272 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #82334: <==uncertain_firing== 47489 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #87881: <==uncertain_firing== 35409 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Pa_secret_c)
                           (at_a_l1)
                           (Ba_secret_c))
        :effect (and
                    ; #26084: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #30787: <==closure== 62921 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #43194: <==closure== 26084 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #62921: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #63340: <==closure== 76402 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72495: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #76402: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #83916: <==closure== 72495 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #13851: <==uncertain_firing== 83916 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #17357: <==negation-removal== 30787 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #23743: <==uncertain_firing== 63340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23834: <==uncertain_firing== 26084 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #35310: <==negation-removal== 43194 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #36605: <==negation-removal== 62921 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #40372: <==negation-removal== 72495 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #42206: <==negation-removal== 63340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #42849: <==negation-removal== 26084 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #43767: <==uncertain_firing== 43194 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #45055: <==uncertain_firing== 62921 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46644: <==negation-removal== 76402 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #49544: <==uncertain_firing== 76402 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #61234: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #70054: <==negation-removal== 83916 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #88552: <==uncertain_firing== 30787 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #16615: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #24698: <==closure== 54539 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #42471: <==closure== 52088 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46316: <==closure== 16615 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #47157: <==closure== 47777 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #47777: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #52088: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #54539: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #14285: <==negation-removal== 46316 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #33561: <==uncertain_firing== 47777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #52772: <==uncertain_firing== 46316 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #53361: <==uncertain_firing== 54539 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55303: <==uncertain_firing== 42471 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #56190: <==negation-removal== 42471 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #58300: <==uncertain_firing== 52088 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #59258: <==uncertain_firing== 47157 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62140: <==negation-removal== 54539 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #64170: <==negation-removal== 16615 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #67481: <==uncertain_firing== 16615 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #68512: <==negation-removal== 52088 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #71397: <==negation-removal== 47777 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #74422: <==negation-removal== 47157 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #83407: <==negation-removal== 24698 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #85825: <==uncertain_firing== 24698 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_d)
                           (Ba_secret_d))
        :effect (and
                    ; #13169: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #15970: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #18738: <==closure== 13169 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #24347: <==closure== 15970 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #41995: <==closure== 82516 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82516: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #86117: <==closure== 87733 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87733: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #11200: <==negation-removal== 41995 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #12195: <==negation-removal== 86117 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #12385: <==uncertain_firing== 41995 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #16963: <==negation-removal== 15970 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #22766: <==uncertain_firing== 82516 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #24282: <==uncertain_firing== 15970 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #32875: <==negation-removal== 82516 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #44301: <==negation-removal== 87733 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #47028: <==negation-removal== 13169 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #49007: <==uncertain_firing== 13169 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #54315: <==negation-removal== 24347 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #55563: <==uncertain_firing== 87733 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62804: <==negation-removal== 18738 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #76349: <==uncertain_firing== 86117 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #77051: <==uncertain_firing== 24347 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #81772: <==uncertain_firing== 18738 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_d)
                           (Ba_secret_d))
        :effect (and
                    ; #17138: <==closure== 40370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #17528: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #18763: <==closure== 29134 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #19327: <==closure== 41570 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #29134: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #40370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #41570: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #73742: <==closure== 17528 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #11561: <==uncertain_firing== 18763 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #11933: <==negation-removal== 73742 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #17384: <==uncertain_firing== 17138 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #35396: <==negation-removal== 18763 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #36735: <==negation-removal== 40370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #39254: <==negation-removal== 29134 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #40997: <==uncertain_firing== 40370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #42647: <==negation-removal== 17528 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #44562: <==uncertain_firing== 29134 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48927: <==negation-removal== 19327 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #55657: <==uncertain_firing== 73742 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #57830: <==uncertain_firing== 19327 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #69340: <==uncertain_firing== 17528 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #77177: <==uncertain_firing== 41570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #79364: <==negation-removal== 41570 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #83175: <==negation-removal== 17138 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l1))
        :effect (and
                    ; #24823: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #30346: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #31887: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #53516: <==closure== 75161 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55545: <==closure== 24823 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #75161: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #78478: <==closure== 31887 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #78675: <==closure== 30346 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #14633: <==negation-removal== 24823 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #26737: <==uncertain_firing== 24823 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #28402: <==uncertain_firing== 31887 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29131: <==negation-removal== 78675 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #38090: <==negation-removal== 55545 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #40164: <==negation-removal== 53516 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #45819: <==uncertain_firing== 53516 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #50789: <==negation-removal== 30346 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #52711: <==uncertain_firing== 30346 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #52983: <==negation-removal== 75161 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #57582: <==uncertain_firing== 78478 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59003: <==uncertain_firing== 78675 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #65391: <==negation-removal== 31887 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #70285: <==uncertain_firing== 55545 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #77511: <==uncertain_firing== 75161 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #95946: <==negation-removal== 78478 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #26200: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #32601: <==closure== 26200 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #36540: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #38240: <==closure== 36540 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #59563: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #69062: <==closure== 59563 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #73482: <==closure== 79269 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #79269: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #10455: <==uncertain_firing== 69062 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #11436: <==uncertain_firing== 36540 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #16492: <==negation-removal== 59563 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #28793: <==negation-removal== 69062 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #29888: <==negation-removal== 36540 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #39865: <==uncertain_firing== 38240 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #43741: <==uncertain_firing== 26200 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #47728: <==uncertain_firing== 73482 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #51595: <==uncertain_firing== 59563 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #62420: <==negation-removal== 26200 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #67517: <==uncertain_firing== 32601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #71885: <==uncertain_firing== 79269 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #73840: <==negation-removal== 38240 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #75290: <==negation-removal== 79269 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #81760: <==negation-removal== 73482 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #89317: <==negation-removal== 32601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #13780: <==closure== 22702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #22702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #48361: <==closure== 82004 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #52943: <==closure== 65900 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #65668: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65900: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #80539: <==closure== 65668 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #82004: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #10115: <==uncertain_firing== 65900 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13696: <==uncertain_firing== 48361 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #19214: <==negation-removal== 48361 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #23254: <==negation-removal== 13780 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24549: <==negation-removal== 80539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #41129: <==negation-removal== 65900 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #50757: <==uncertain_firing== 52943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52728: <==uncertain_firing== 82004 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #53656: <==negation-removal== 82004 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #61462: <==uncertain_firing== 80539 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #67120: <==negation-removal== 65668 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #71795: <==negation-removal== 22702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #80110: <==uncertain_firing== 22702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #86004: <==negation-removal== 52943 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #91202: <==uncertain_firing== 13780 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #91230: <==uncertain_firing== 65668 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #10961: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #16333: <==closure== 86272 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #35409: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47489: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #71103: <==closure== 47489 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #79320: <==closure== 35409 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #86272: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #89104: <==closure== 10961 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13640: <==negation-removal== 10961 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #15485: <==uncertain_firing== 79320 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #16349: <==uncertain_firing== 86272 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #16552: <==uncertain_firing== 71103 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #21753: <==negation-removal== 16333 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #24238: <==uncertain_firing== 10961 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #32814: <==negation-removal== 35409 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #41499: <==negation-removal== 47489 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47984: <==negation-removal== 89104 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #71093: <==uncertain_firing== 89104 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #74092: <==uncertain_firing== 16333 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #75769: <==negation-removal== 71103 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81477: <==negation-removal== 79320 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #81677: <==negation-removal== 86272 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #82334: <==uncertain_firing== 47489 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #87881: <==uncertain_firing== 35409 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #26084: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #30787: <==closure== 62921 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #43194: <==closure== 26084 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #62921: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #63340: <==closure== 76402 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72495: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #76402: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #83916: <==closure== 72495 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #13851: <==uncertain_firing== 83916 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #17357: <==negation-removal== 30787 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #23743: <==uncertain_firing== 63340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23834: <==uncertain_firing== 26084 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #35310: <==negation-removal== 43194 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #36605: <==negation-removal== 62921 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #40372: <==negation-removal== 72495 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #42206: <==negation-removal== 63340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #42849: <==negation-removal== 26084 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #43767: <==uncertain_firing== 43194 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #45055: <==uncertain_firing== 62921 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46644: <==negation-removal== 76402 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #49544: <==uncertain_firing== 76402 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #61234: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #70054: <==negation-removal== 83916 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #88552: <==uncertain_firing== 30787 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #16615: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #24698: <==closure== 54539 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #42471: <==closure== 52088 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46316: <==closure== 16615 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #47157: <==closure== 47777 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #47777: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #52088: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #54539: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #14285: <==negation-removal== 46316 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #33561: <==uncertain_firing== 47777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #52772: <==uncertain_firing== 46316 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #53361: <==uncertain_firing== 54539 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55303: <==uncertain_firing== 42471 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #56190: <==negation-removal== 42471 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #58300: <==uncertain_firing== 52088 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #59258: <==uncertain_firing== 47157 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62140: <==negation-removal== 54539 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #64170: <==negation-removal== 16615 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #67481: <==uncertain_firing== 16615 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #68512: <==negation-removal== 52088 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #71397: <==negation-removal== 47777 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #74422: <==negation-removal== 47157 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #83407: <==negation-removal== 24698 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #85825: <==uncertain_firing== 24698 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Bb_secret_d)
                           (Pb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #13169: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #15970: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #18738: <==closure== 13169 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #24347: <==closure== 15970 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #41995: <==closure== 82516 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82516: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #86117: <==closure== 87733 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87733: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #11200: <==negation-removal== 41995 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #12195: <==negation-removal== 86117 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #12385: <==uncertain_firing== 41995 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #16963: <==negation-removal== 15970 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #22766: <==uncertain_firing== 82516 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #24282: <==uncertain_firing== 15970 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #32875: <==negation-removal== 82516 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #44301: <==negation-removal== 87733 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #47028: <==negation-removal== 13169 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #49007: <==uncertain_firing== 13169 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #54315: <==negation-removal== 24347 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #55563: <==uncertain_firing== 87733 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62804: <==negation-removal== 18738 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #76349: <==uncertain_firing== 86117 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #77051: <==uncertain_firing== 24347 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #81772: <==uncertain_firing== 18738 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #17138: <==closure== 40370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #17528: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #18763: <==closure== 29134 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #19327: <==closure== 41570 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #29134: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #40370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #41570: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #73742: <==closure== 17528 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #11561: <==uncertain_firing== 18763 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #11933: <==negation-removal== 73742 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #17384: <==uncertain_firing== 17138 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #35396: <==negation-removal== 18763 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #36735: <==negation-removal== 40370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #39254: <==negation-removal== 29134 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #40997: <==uncertain_firing== 40370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #42647: <==negation-removal== 17528 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #44562: <==uncertain_firing== 29134 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48927: <==negation-removal== 19327 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #55657: <==uncertain_firing== 73742 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #57830: <==uncertain_firing== 19327 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #69340: <==uncertain_firing== 17528 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #77177: <==uncertain_firing== 41570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #79364: <==negation-removal== 41570 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #83175: <==negation-removal== 17138 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Pc_secret_a)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #24823: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #30346: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #31887: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #53516: <==closure== 75161 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55545: <==closure== 24823 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #75161: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #78478: <==closure== 31887 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #78675: <==closure== 30346 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #14633: <==negation-removal== 24823 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #26737: <==uncertain_firing== 24823 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #28402: <==uncertain_firing== 31887 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29131: <==negation-removal== 78675 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #38090: <==negation-removal== 55545 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #40164: <==negation-removal== 53516 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #45819: <==uncertain_firing== 53516 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #50789: <==negation-removal== 30346 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #52711: <==uncertain_firing== 30346 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #52983: <==negation-removal== 75161 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #57582: <==uncertain_firing== 78478 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59003: <==uncertain_firing== 78675 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #65391: <==negation-removal== 31887 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #70285: <==uncertain_firing== 55545 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #77511: <==uncertain_firing== 75161 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #95946: <==negation-removal== 78478 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #26200: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #32601: <==closure== 26200 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #36540: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #38240: <==closure== 36540 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #59563: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #69062: <==closure== 59563 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #73482: <==closure== 79269 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #79269: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #10455: <==uncertain_firing== 69062 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #11436: <==uncertain_firing== 36540 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #16492: <==negation-removal== 59563 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #28793: <==negation-removal== 69062 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #29888: <==negation-removal== 36540 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #39865: <==uncertain_firing== 38240 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #43741: <==uncertain_firing== 26200 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #47728: <==uncertain_firing== 73482 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #51595: <==uncertain_firing== 59563 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #62420: <==negation-removal== 26200 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #67517: <==uncertain_firing== 32601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #71885: <==uncertain_firing== 79269 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #73840: <==negation-removal== 38240 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #75290: <==negation-removal== 79269 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #81760: <==negation-removal== 73482 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #89317: <==negation-removal== 32601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (at_c_l1)
                           (Pc_secret_b))
        :effect (and
                    ; #13780: <==closure== 22702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #22702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #48361: <==closure== 82004 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #52943: <==closure== 65900 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #65668: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65900: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #80539: <==closure== 65668 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #82004: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #10115: <==uncertain_firing== 65900 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13696: <==uncertain_firing== 48361 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #19214: <==negation-removal== 48361 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #23254: <==negation-removal== 13780 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24549: <==negation-removal== 80539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #41129: <==negation-removal== 65900 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #50757: <==uncertain_firing== 52943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52728: <==uncertain_firing== 82004 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #53656: <==negation-removal== 82004 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #61462: <==uncertain_firing== 80539 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #67120: <==negation-removal== 65668 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #71795: <==negation-removal== 22702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #80110: <==uncertain_firing== 22702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #86004: <==negation-removal== 52943 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #91202: <==uncertain_firing== 13780 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #91230: <==uncertain_firing== 65668 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #10961: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #16333: <==closure== 86272 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #35409: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47489: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #71103: <==closure== 47489 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #79320: <==closure== 35409 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #86272: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #89104: <==closure== 10961 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13640: <==negation-removal== 10961 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #15485: <==uncertain_firing== 79320 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #16349: <==uncertain_firing== 86272 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #16552: <==uncertain_firing== 71103 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #21753: <==negation-removal== 16333 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #24238: <==uncertain_firing== 10961 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #32814: <==negation-removal== 35409 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #41499: <==negation-removal== 47489 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47984: <==negation-removal== 89104 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #71093: <==uncertain_firing== 89104 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #74092: <==uncertain_firing== 16333 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #75769: <==negation-removal== 71103 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81477: <==negation-removal== 79320 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #81677: <==negation-removal== 86272 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #82334: <==uncertain_firing== 47489 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #87881: <==uncertain_firing== 35409 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #26084: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #30787: <==closure== 62921 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #43194: <==closure== 26084 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #62921: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #63340: <==closure== 76402 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72495: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #76402: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #83916: <==closure== 72495 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #13851: <==uncertain_firing== 83916 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #17357: <==negation-removal== 30787 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #23743: <==uncertain_firing== 63340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23834: <==uncertain_firing== 26084 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #35310: <==negation-removal== 43194 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #36605: <==negation-removal== 62921 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #40372: <==negation-removal== 72495 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #42206: <==negation-removal== 63340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #42849: <==negation-removal== 26084 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #43767: <==uncertain_firing== 43194 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #45055: <==uncertain_firing== 62921 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46644: <==negation-removal== 76402 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #49544: <==uncertain_firing== 76402 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #61234: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #70054: <==negation-removal== 83916 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #88552: <==uncertain_firing== 30787 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #16615: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #24698: <==closure== 54539 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #42471: <==closure== 52088 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46316: <==closure== 16615 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #47157: <==closure== 47777 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #47777: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #52088: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #54539: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #14285: <==negation-removal== 46316 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #33561: <==uncertain_firing== 47777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #52772: <==uncertain_firing== 46316 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #53361: <==uncertain_firing== 54539 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55303: <==uncertain_firing== 42471 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #56190: <==negation-removal== 42471 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #58300: <==uncertain_firing== 52088 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #59258: <==uncertain_firing== 47157 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62140: <==negation-removal== 54539 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #64170: <==negation-removal== 16615 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #67481: <==uncertain_firing== 16615 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #68512: <==negation-removal== 52088 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #71397: <==negation-removal== 47777 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #74422: <==negation-removal== 47157 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #83407: <==negation-removal== 24698 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #85825: <==uncertain_firing== 24698 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #13169: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #15970: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #18738: <==closure== 13169 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #24347: <==closure== 15970 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #41995: <==closure== 82516 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82516: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #86117: <==closure== 87733 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87733: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #11200: <==negation-removal== 41995 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #12195: <==negation-removal== 86117 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #12385: <==uncertain_firing== 41995 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #16963: <==negation-removal== 15970 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #22766: <==uncertain_firing== 82516 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #24282: <==uncertain_firing== 15970 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #32875: <==negation-removal== 82516 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #44301: <==negation-removal== 87733 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #47028: <==negation-removal== 13169 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #49007: <==uncertain_firing== 13169 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #54315: <==negation-removal== 24347 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #55563: <==uncertain_firing== 87733 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62804: <==negation-removal== 18738 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #76349: <==uncertain_firing== 86117 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #77051: <==uncertain_firing== 24347 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #81772: <==uncertain_firing== 18738 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #17138: <==closure== 40370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #17528: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #18763: <==closure== 29134 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #19327: <==closure== 41570 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #29134: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #40370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #41570: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #73742: <==closure== 17528 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #11561: <==uncertain_firing== 18763 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #11933: <==negation-removal== 73742 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #17384: <==uncertain_firing== 17138 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #35396: <==negation-removal== 18763 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #36735: <==negation-removal== 40370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #39254: <==negation-removal== 29134 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #40997: <==uncertain_firing== 40370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #42647: <==negation-removal== 17528 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #44562: <==uncertain_firing== 29134 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48927: <==negation-removal== 19327 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #55657: <==uncertain_firing== 73742 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #57830: <==uncertain_firing== 19327 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #69340: <==uncertain_firing== 17528 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #77177: <==uncertain_firing== 41570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #79364: <==negation-removal== 41570 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #83175: <==negation-removal== 17138 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Bd_secret_a)
                           (Pd_secret_a)
                           (at_d_l1))
        :effect (and
                    ; #24823: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #30346: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #31887: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #53516: <==closure== 75161 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55545: <==closure== 24823 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #75161: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #78478: <==closure== 31887 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #78675: <==closure== 30346 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #14633: <==negation-removal== 24823 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #26737: <==uncertain_firing== 24823 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #28402: <==uncertain_firing== 31887 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #29131: <==negation-removal== 78675 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #38090: <==negation-removal== 55545 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #40164: <==negation-removal== 53516 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #45819: <==uncertain_firing== 53516 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #50789: <==negation-removal== 30346 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #52711: <==uncertain_firing== 30346 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #52983: <==negation-removal== 75161 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #57582: <==uncertain_firing== 78478 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59003: <==uncertain_firing== 78675 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #65391: <==negation-removal== 31887 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #70285: <==uncertain_firing== 55545 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #77511: <==uncertain_firing== 75161 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #95946: <==negation-removal== 78478 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #26200: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #32601: <==closure== 26200 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #36540: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #38240: <==closure== 36540 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #59563: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #69062: <==closure== 59563 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #73482: <==closure== 79269 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #79269: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #10455: <==uncertain_firing== 69062 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #11436: <==uncertain_firing== 36540 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #16492: <==negation-removal== 59563 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #28793: <==negation-removal== 69062 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #29888: <==negation-removal== 36540 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #39865: <==uncertain_firing== 38240 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #43741: <==uncertain_firing== 26200 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #47728: <==uncertain_firing== 73482 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #51595: <==uncertain_firing== 59563 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #62420: <==negation-removal== 26200 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #67517: <==uncertain_firing== 32601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #71885: <==uncertain_firing== 79269 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #73840: <==negation-removal== 38240 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #75290: <==negation-removal== 79269 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #81760: <==negation-removal== 73482 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #89317: <==negation-removal== 32601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #13780: <==closure== 22702 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #22702: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #48361: <==closure== 82004 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #52943: <==closure== 65900 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #65668: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65900: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #80539: <==closure== 65668 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #82004: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #10115: <==uncertain_firing== 65900 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #13696: <==uncertain_firing== 48361 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #19214: <==negation-removal== 48361 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #23254: <==negation-removal== 13780 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #24549: <==negation-removal== 80539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #41129: <==negation-removal== 65900 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #50757: <==uncertain_firing== 52943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52728: <==uncertain_firing== 82004 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #53656: <==negation-removal== 82004 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #61462: <==uncertain_firing== 80539 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #67120: <==negation-removal== 65668 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #71795: <==negation-removal== 22702 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #80110: <==uncertain_firing== 22702 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #86004: <==negation-removal== 52943 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #91202: <==uncertain_firing== 13780 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #91230: <==uncertain_firing== 65668 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Bd_secret_b)
                           (Pd_secret_b)
                           (at_d_l2))
        :effect (and
                    ; #10961: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #16333: <==closure== 86272 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #35409: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #47489: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #71103: <==closure== 47489 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #79320: <==closure== 35409 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #86272: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #89104: <==closure== 10961 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #13640: <==negation-removal== 10961 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #15485: <==uncertain_firing== 79320 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #16349: <==uncertain_firing== 86272 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #16552: <==uncertain_firing== 71103 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #21753: <==negation-removal== 16333 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #24238: <==uncertain_firing== 10961 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #32814: <==negation-removal== 35409 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #41499: <==negation-removal== 47489 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #47984: <==negation-removal== 89104 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #71093: <==uncertain_firing== 89104 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #74092: <==uncertain_firing== 16333 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #75769: <==negation-removal== 71103 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #81477: <==negation-removal== 79320 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #81677: <==negation-removal== 86272 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #82334: <==uncertain_firing== 47489 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #87881: <==uncertain_firing== 35409 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (Pd_secret_c)
                           (at_d_l1))
        :effect (and
                    ; #26084: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #30787: <==closure== 62921 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #43194: <==closure== 26084 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #62921: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #63340: <==closure== 76402 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #72495: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #76402: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #83916: <==closure== 72495 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #13851: <==uncertain_firing== 83916 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #17357: <==negation-removal== 30787 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #23743: <==uncertain_firing== 63340 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #23834: <==uncertain_firing== 26084 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #35310: <==negation-removal== 43194 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #36605: <==negation-removal== 62921 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #40372: <==negation-removal== 72495 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #42206: <==negation-removal== 63340 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #42849: <==negation-removal== 26084 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #43767: <==uncertain_firing== 43194 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #45055: <==uncertain_firing== 62921 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #46644: <==negation-removal== 76402 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #49544: <==uncertain_firing== 76402 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #61234: <==uncertain_firing== 72495 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #70054: <==negation-removal== 83916 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #88552: <==uncertain_firing== 30787 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (Pd_secret_c)
                           (at_d_l2))
        :effect (and
                    ; #16615: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #24698: <==closure== 54539 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #42471: <==closure== 52088 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46316: <==closure== 16615 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #47157: <==closure== 47777 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #47777: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #52088: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #54539: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #14285: <==negation-removal== 46316 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #33561: <==uncertain_firing== 47777 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #52772: <==uncertain_firing== 46316 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #53361: <==uncertain_firing== 54539 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #55303: <==uncertain_firing== 42471 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #56190: <==negation-removal== 42471 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #58300: <==uncertain_firing== 52088 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #59258: <==uncertain_firing== 47157 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #62140: <==negation-removal== 54539 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #64170: <==negation-removal== 16615 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #67481: <==uncertain_firing== 16615 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #68512: <==negation-removal== 52088 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #71397: <==negation-removal== 47777 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #74422: <==negation-removal== 47157 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #83407: <==negation-removal== 24698 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #85825: <==uncertain_firing== 24698 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (Bd_secret_d))
        :effect (and
                    ; #13169: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #15970: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #18738: <==closure== 13169 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #24347: <==closure== 15970 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #41995: <==closure== 82516 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #82516: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #86117: <==closure== 87733 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87733: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #11200: <==negation-removal== 41995 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #12195: <==negation-removal== 86117 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #12385: <==uncertain_firing== 41995 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #16963: <==negation-removal== 15970 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #22766: <==uncertain_firing== 82516 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #24282: <==uncertain_firing== 15970 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #32875: <==negation-removal== 82516 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #44301: <==negation-removal== 87733 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #47028: <==negation-removal== 13169 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #49007: <==uncertain_firing== 13169 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #54315: <==negation-removal== 24347 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #55563: <==uncertain_firing== 87733 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #62804: <==negation-removal== 18738 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #76349: <==uncertain_firing== 86117 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #77051: <==uncertain_firing== 24347 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #81772: <==uncertain_firing== 18738 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Pd_secret_d)
                           (at_d_l2)
                           (Bd_secret_d))
        :effect (and
                    ; #17138: <==closure== 40370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #17528: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #18763: <==closure== 29134 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #19327: <==closure== 41570 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #29134: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #40370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #41570: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #73742: <==closure== 17528 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #11561: <==uncertain_firing== 18763 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #11933: <==negation-removal== 73742 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #17384: <==uncertain_firing== 17138 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #35396: <==negation-removal== 18763 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #36735: <==negation-removal== 40370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #39254: <==negation-removal== 29134 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #40997: <==uncertain_firing== 40370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #42647: <==negation-removal== 17528 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #44562: <==uncertain_firing== 29134 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #48927: <==negation-removal== 19327 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #55657: <==uncertain_firing== 73742 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #57830: <==uncertain_firing== 19327 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #69340: <==uncertain_firing== 17528 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #77177: <==uncertain_firing== 41570 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #79364: <==negation-removal== 41570 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #83175: <==negation-removal== 17138 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

)