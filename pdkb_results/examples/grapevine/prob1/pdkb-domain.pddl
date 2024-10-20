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
                    ; #13716: origin
                    (not_at_a_l1)

                    ; #61113: origin
                    (at_a_l1)

                    ; #13716: <==negation-removal== 61113 (pos)
                    (not (not_at_a_l1))

                    ; #61113: <==negation-removal== 13716 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #13716: origin
                    (not_at_a_l1)

                    ; #30382: origin
                    (at_a_l2)

                    ; #34086: <==negation-removal== 30382 (pos)
                    (not (not_at_a_l2))

                    ; #61113: <==negation-removal== 13716 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #34086: origin
                    (not_at_a_l2)

                    ; #61113: origin
                    (at_a_l1)

                    ; #13716: <==negation-removal== 61113 (pos)
                    (not (not_at_a_l1))

                    ; #30382: <==negation-removal== 34086 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_a_l2))
        :effect (and
                    ; #30382: origin
                    (at_a_l2)

                    ; #34086: origin
                    (not_at_a_l2)

                    ; #30382: <==negation-removal== 34086 (pos)
                    (not (at_a_l2))

                    ; #34086: <==negation-removal== 30382 (pos)
                    (not (not_at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #69058: origin
                    (not_at_b_l1)

                    ; #92088: origin
                    (at_b_l1)

                    ; #69058: <==negation-removal== 92088 (pos)
                    (not (not_at_b_l1))

                    ; #92088: <==negation-removal== 69058 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (at_b_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #39368: origin
                    (at_b_l2)

                    ; #69058: origin
                    (not_at_b_l1)

                    ; #28316: <==negation-removal== 39368 (pos)
                    (not (not_at_b_l2))

                    ; #92088: <==negation-removal== 69058 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #28316: origin
                    (not_at_b_l2)

                    ; #92088: origin
                    (at_b_l1)

                    ; #39368: <==negation-removal== 28316 (pos)
                    (not (at_b_l2))

                    ; #69058: <==negation-removal== 92088 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #28316: origin
                    (not_at_b_l2)

                    ; #39368: origin
                    (at_b_l2)

                    ; #28316: <==negation-removal== 39368 (pos)
                    (not (not_at_b_l2))

                    ; #39368: <==negation-removal== 28316 (pos)
                    (not (at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #27858: origin
                    (not_at_c_l1)

                    ; #85221: origin
                    (at_c_l1)

                    ; #27858: <==negation-removal== 85221 (pos)
                    (not (not_at_c_l1))

                    ; #85221: <==negation-removal== 27858 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #27858: origin
                    (not_at_c_l1)

                    ; #97189: origin
                    (at_c_l2)

                    ; #47764: <==negation-removal== 97189 (pos)
                    (not (not_at_c_l2))

                    ; #85221: <==negation-removal== 27858 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #47764: origin
                    (not_at_c_l2)

                    ; #85221: origin
                    (at_c_l1)

                    ; #27858: <==negation-removal== 85221 (pos)
                    (not (not_at_c_l1))

                    ; #97189: <==negation-removal== 47764 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_c_l2))
        :effect (and
                    ; #47764: origin
                    (not_at_c_l2)

                    ; #97189: origin
                    (at_c_l2)

                    ; #47764: <==negation-removal== 97189 (pos)
                    (not (not_at_c_l2))

                    ; #97189: <==negation-removal== 47764 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #16079: origin
                    (at_d_l1)

                    ; #89533: origin
                    (not_at_d_l1)

                    ; #16079: <==negation-removal== 89533 (pos)
                    (not (at_d_l1))

                    ; #89533: <==negation-removal== 16079 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #33194: origin
                    (at_d_l2)

                    ; #89533: origin
                    (not_at_d_l1)

                    ; #16079: <==negation-removal== 89533 (pos)
                    (not (at_d_l1))

                    ; #45512: <==negation-removal== 33194 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #16079: origin
                    (at_d_l1)

                    ; #45512: origin
                    (not_at_d_l2)

                    ; #33194: <==negation-removal== 45512 (pos)
                    (not (at_d_l2))

                    ; #89533: <==negation-removal== 16079 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_d_l2))
        :effect (and
                    ; #33194: origin
                    (at_d_l2)

                    ; #45512: origin
                    (not_at_d_l2)

                    ; #33194: <==negation-removal== 45512 (pos)
                    (not (at_d_l2))

                    ; #45512: <==negation-removal== 33194 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #26153: <==closure== 30410 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #30410: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #40774: <==closure== 84099 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55232: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71357: <==closure== 55232 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #79547: <==closure== 96922 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #84099: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #96922: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #13788: <==negation-removal== 84099 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #21811: <==uncertain_firing== 71357 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #23707: <==negation-removal== 40774 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #24764: <==negation-removal== 71357 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #32991: <==uncertain_firing== 40774 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #34452: <==negation-removal== 30410 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #43411: <==negation-removal== 79547 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #43998: <==uncertain_firing== 96922 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50279: <==uncertain_firing== 55232 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #53699: <==negation-removal== 96922 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #57803: <==uncertain_firing== 30410 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #67515: <==negation-removal== 26153 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #67540: <==negation-removal== 55232 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #68291: <==uncertain_firing== 79547 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #80894: <==uncertain_firing== 26153 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #86780: <==uncertain_firing== 84099 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #11662: <==closure== 48856 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #15804: <==closure== 88375 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #16156: <==closure== 78099 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #48856: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #65774: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #78099: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #88375: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #88961: <==closure== 65774 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16151: <==negation-removal== 11662 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #20652: <==negation-removal== 88961 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22448: <==uncertain_firing== 65774 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #24117: <==uncertain_firing== 16156 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #30716: <==uncertain_firing== 15804 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #34449: <==negation-removal== 15804 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39379: <==uncertain_firing== 11662 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #40018: <==negation-removal== 88375 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #42206: <==negation-removal== 48856 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #53561: <==uncertain_firing== 88961 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #54499: <==negation-removal== 65774 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #55676: <==uncertain_firing== 48856 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #59824: <==uncertain_firing== 88375 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #68581: <==uncertain_firing== 78099 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #70697: <==negation-removal== 78099 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #86364: <==negation-removal== 16156 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #25974: <==closure== 52617 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #37712: <==closure== 91150 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #52617: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #62953: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65148: <==closure== 89920 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #82678: <==closure== 62953 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #89920: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #91150: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #12886: <==negation-removal== 52617 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #12909: <==negation-removal== 65148 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19286: <==uncertain_firing== 37712 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #25350: <==negation-removal== 37712 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #31254: <==negation-removal== 62953 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #36945: <==negation-removal== 91150 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #48944: <==uncertain_firing== 91150 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #49305: <==uncertain_firing== 65148 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #50142: <==uncertain_firing== 62953 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #59672: <==negation-removal== 25974 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #60042: <==uncertain_firing== 89920 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #69816: <==uncertain_firing== 52617 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77067: <==negation-removal== 89920 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81911: <==uncertain_firing== 25974 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #84869: <==uncertain_firing== 82678 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #91202: <==negation-removal== 82678 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #29990: <==closure== 33650 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33650: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #33698: <==closure== 89623 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #36887: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #38866: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #56713: <==closure== 36887 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #71162: <==closure== 38866 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #89623: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20737: <==negation-removal== 89623 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #29014: <==uncertain_firing== 33698 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36441: <==uncertain_firing== 56713 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #40888: <==uncertain_firing== 29990 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41444: <==negation-removal== 71162 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #45831: <==negation-removal== 56713 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #52587: <==negation-removal== 33650 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #65480: <==negation-removal== 36887 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #69008: <==uncertain_firing== 89623 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69510: <==uncertain_firing== 36887 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #77992: <==uncertain_firing== 71162 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78716: <==uncertain_firing== 38866 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82127: <==negation-removal== 29990 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #82636: <==negation-removal== 38866 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #91324: <==negation-removal== 33698 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #92072: <==uncertain_firing== 33650 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #20515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #28090: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49233: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #54126: <==closure== 49233 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #58033: <==closure== 28090 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #83493: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #87747: <==closure== 20515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #89658: <==closure== 83493 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #16313: <==negation-removal== 58033 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #26429: <==uncertain_firing== 28090 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #35328: <==uncertain_firing== 49233 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #36417: <==uncertain_firing== 89658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #43280: <==negation-removal== 89658 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43726: <==negation-removal== 20515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #45347: <==uncertain_firing== 54126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53380: <==negation-removal== 28090 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #56418: <==negation-removal== 54126 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #59654: <==negation-removal== 83493 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #67937: <==uncertain_firing== 20515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #73357: <==negation-removal== 87747 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #79909: <==uncertain_firing== 83493 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #87727: <==uncertain_firing== 87747 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #90401: <==negation-removal== 49233 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #95501: <==uncertain_firing== 58033 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Ba_secret_c)
                           (Pa_secret_c))
        :effect (and
                    ; #38966: <==closure== 47511 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46279: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #47511: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67088: <==closure== 68920 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #68920: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #70059: <==closure== 87504 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #72567: <==closure== 46279 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87504: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #11159: <==negation-removal== 38966 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #21429: <==negation-removal== 47511 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #24332: <==negation-removal== 46279 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #25506: <==negation-removal== 67088 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28227: <==uncertain_firing== 72567 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32804: <==uncertain_firing== 67088 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #45865: <==uncertain_firing== 87504 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #50782: <==uncertain_firing== 70059 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #52045: <==uncertain_firing== 68920 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #52893: <==uncertain_firing== 38966 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #58076: <==uncertain_firing== 47511 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #68151: <==negation-removal== 70059 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69426: <==uncertain_firing== 46279 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #70259: <==negation-removal== 72567 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #89594: <==negation-removal== 87504 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #93586: <==negation-removal== 68920 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (Pa_secret_d)
                           (Ba_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #15034: <==closure== 15727 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15727: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #53802: <==closure== 87771 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #63569: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #71306: <==closure== 90461 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #82262: <==closure== 63569 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87771: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90461: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #14098: <==uncertain_firing== 15727 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #23450: <==uncertain_firing== 90461 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #23531: <==negation-removal== 82262 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #30229: <==negation-removal== 71306 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #30516: <==uncertain_firing== 87771 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #33380: <==uncertain_firing== 15034 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33817: <==negation-removal== 53802 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #42261: <==negation-removal== 63569 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #46819: <==uncertain_firing== 63569 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #47823: <==negation-removal== 15034 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #49401: <==negation-removal== 87771 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #50546: <==uncertain_firing== 71306 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #50814: <==negation-removal== 90461 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #70188: <==uncertain_firing== 82262 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #73609: <==negation-removal== 15727 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #91311: <==uncertain_firing== 53802 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Pa_secret_d)
                           (at_a_l2)
                           (Ba_secret_d))
        :effect (and
                    ; #10408: <==closure== 12260 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11730: <==closure== 56760 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #12260: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34812: <==closure== 89164 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #42895: <==closure== 78515 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #56760: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #78515: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #89164: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #11072: <==negation-removal== 78515 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #12440: <==negation-removal== 34812 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #16771: <==uncertain_firing== 34812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #17107: <==negation-removal== 10408 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #27770: <==negation-removal== 12260 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #30118: <==uncertain_firing== 42895 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #30350: <==uncertain_firing== 89164 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #33808: <==negation-removal== 11730 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #36814: <==negation-removal== 89164 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #38849: <==uncertain_firing== 56760 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #38907: <==uncertain_firing== 12260 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #50945: <==uncertain_firing== 11730 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #56801: <==negation-removal== 42895 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81215: <==negation-removal== 56760 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #89325: <==uncertain_firing== 78515 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #90306: <==uncertain_firing== 10408 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (Pb_secret_a)
                           (Bb_secret_a))
        :effect (and
                    ; #26153: <==closure== 30410 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #30410: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #40774: <==closure== 84099 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55232: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71357: <==closure== 55232 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #79547: <==closure== 96922 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #84099: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #96922: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #13788: <==negation-removal== 84099 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #21811: <==uncertain_firing== 71357 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #23707: <==negation-removal== 40774 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #24764: <==negation-removal== 71357 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #32991: <==uncertain_firing== 40774 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #34452: <==negation-removal== 30410 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #43411: <==negation-removal== 79547 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #43998: <==uncertain_firing== 96922 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50279: <==uncertain_firing== 55232 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #53699: <==negation-removal== 96922 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #57803: <==uncertain_firing== 30410 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #67515: <==negation-removal== 26153 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #67540: <==negation-removal== 55232 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #68291: <==uncertain_firing== 79547 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #80894: <==uncertain_firing== 26153 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #86780: <==uncertain_firing== 84099 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_a)
                           (Bb_secret_a))
        :effect (and
                    ; #11662: <==closure== 48856 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #15804: <==closure== 88375 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #16156: <==closure== 78099 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #48856: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #65774: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #78099: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #88375: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #88961: <==closure== 65774 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16151: <==negation-removal== 11662 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #20652: <==negation-removal== 88961 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22448: <==uncertain_firing== 65774 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #24117: <==uncertain_firing== 16156 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #30716: <==uncertain_firing== 15804 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #34449: <==negation-removal== 15804 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39379: <==uncertain_firing== 11662 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #40018: <==negation-removal== 88375 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #42206: <==negation-removal== 48856 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #53561: <==uncertain_firing== 88961 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #54499: <==negation-removal== 65774 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #55676: <==uncertain_firing== 48856 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #59824: <==uncertain_firing== 88375 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #68581: <==uncertain_firing== 78099 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #70697: <==negation-removal== 78099 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #86364: <==negation-removal== 16156 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #25974: <==closure== 52617 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #37712: <==closure== 91150 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #52617: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #62953: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65148: <==closure== 89920 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #82678: <==closure== 62953 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #89920: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #91150: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #12886: <==negation-removal== 52617 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #12909: <==negation-removal== 65148 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19286: <==uncertain_firing== 37712 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #25350: <==negation-removal== 37712 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #31254: <==negation-removal== 62953 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #36945: <==negation-removal== 91150 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #48944: <==uncertain_firing== 91150 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #49305: <==uncertain_firing== 65148 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #50142: <==uncertain_firing== 62953 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #59672: <==negation-removal== 25974 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #60042: <==uncertain_firing== 89920 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #69816: <==uncertain_firing== 52617 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77067: <==negation-removal== 89920 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81911: <==uncertain_firing== 25974 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #84869: <==uncertain_firing== 82678 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #91202: <==negation-removal== 82678 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Pb_secret_b)
                           (at_b_l2)
                           (Bb_secret_b))
        :effect (and
                    ; #29990: <==closure== 33650 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33650: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #33698: <==closure== 89623 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #36887: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #38866: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #56713: <==closure== 36887 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #71162: <==closure== 38866 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #89623: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20737: <==negation-removal== 89623 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #29014: <==uncertain_firing== 33698 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36441: <==uncertain_firing== 56713 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #40888: <==uncertain_firing== 29990 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41444: <==negation-removal== 71162 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #45831: <==negation-removal== 56713 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #52587: <==negation-removal== 33650 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #65480: <==negation-removal== 36887 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #69008: <==uncertain_firing== 89623 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69510: <==uncertain_firing== 36887 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #77992: <==uncertain_firing== 71162 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78716: <==uncertain_firing== 38866 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82127: <==negation-removal== 29990 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #82636: <==negation-removal== 38866 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #91324: <==negation-removal== 33698 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #92072: <==uncertain_firing== 33650 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (at_b_l1)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #20515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #28090: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49233: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #54126: <==closure== 49233 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #58033: <==closure== 28090 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #83493: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #87747: <==closure== 20515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #89658: <==closure== 83493 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #16313: <==negation-removal== 58033 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #26429: <==uncertain_firing== 28090 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #35328: <==uncertain_firing== 49233 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #36417: <==uncertain_firing== 89658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #43280: <==negation-removal== 89658 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43726: <==negation-removal== 20515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #45347: <==uncertain_firing== 54126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53380: <==negation-removal== 28090 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #56418: <==negation-removal== 54126 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #59654: <==negation-removal== 83493 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #67937: <==uncertain_firing== 20515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #73357: <==negation-removal== 87747 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #79909: <==uncertain_firing== 83493 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #87727: <==uncertain_firing== 87747 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #90401: <==negation-removal== 49233 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #95501: <==uncertain_firing== 58033 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #38966: <==closure== 47511 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46279: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #47511: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67088: <==closure== 68920 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #68920: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #70059: <==closure== 87504 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #72567: <==closure== 46279 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87504: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #11159: <==negation-removal== 38966 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #21429: <==negation-removal== 47511 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #24332: <==negation-removal== 46279 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #25506: <==negation-removal== 67088 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28227: <==uncertain_firing== 72567 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32804: <==uncertain_firing== 67088 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #45865: <==uncertain_firing== 87504 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #50782: <==uncertain_firing== 70059 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #52045: <==uncertain_firing== 68920 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #52893: <==uncertain_firing== 38966 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #58076: <==uncertain_firing== 47511 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #68151: <==negation-removal== 70059 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69426: <==uncertain_firing== 46279 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #70259: <==negation-removal== 72567 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #89594: <==negation-removal== 87504 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #93586: <==negation-removal== 68920 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #15034: <==closure== 15727 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15727: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #53802: <==closure== 87771 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #63569: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #71306: <==closure== 90461 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #82262: <==closure== 63569 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87771: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90461: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #14098: <==uncertain_firing== 15727 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #23450: <==uncertain_firing== 90461 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #23531: <==negation-removal== 82262 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #30229: <==negation-removal== 71306 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #30516: <==uncertain_firing== 87771 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #33380: <==uncertain_firing== 15034 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33817: <==negation-removal== 53802 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #42261: <==negation-removal== 63569 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #46819: <==uncertain_firing== 63569 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #47823: <==negation-removal== 15034 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #49401: <==negation-removal== 87771 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #50546: <==uncertain_firing== 71306 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #50814: <==negation-removal== 90461 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #70188: <==uncertain_firing== 82262 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #73609: <==negation-removal== 15727 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #91311: <==uncertain_firing== 53802 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #10408: <==closure== 12260 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11730: <==closure== 56760 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #12260: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34812: <==closure== 89164 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #42895: <==closure== 78515 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #56760: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #78515: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #89164: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #11072: <==negation-removal== 78515 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #12440: <==negation-removal== 34812 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #16771: <==uncertain_firing== 34812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #17107: <==negation-removal== 10408 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #27770: <==negation-removal== 12260 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #30118: <==uncertain_firing== 42895 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #30350: <==uncertain_firing== 89164 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #33808: <==negation-removal== 11730 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #36814: <==negation-removal== 89164 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #38849: <==uncertain_firing== 56760 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #38907: <==uncertain_firing== 12260 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #50945: <==uncertain_firing== 11730 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #56801: <==negation-removal== 42895 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81215: <==negation-removal== 56760 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #89325: <==uncertain_firing== 78515 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #90306: <==uncertain_firing== 10408 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #26153: <==closure== 30410 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #30410: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #40774: <==closure== 84099 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55232: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71357: <==closure== 55232 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #79547: <==closure== 96922 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #84099: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #96922: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #13788: <==negation-removal== 84099 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #21811: <==uncertain_firing== 71357 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #23707: <==negation-removal== 40774 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #24764: <==negation-removal== 71357 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #32991: <==uncertain_firing== 40774 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #34452: <==negation-removal== 30410 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #43411: <==negation-removal== 79547 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #43998: <==uncertain_firing== 96922 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50279: <==uncertain_firing== 55232 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #53699: <==negation-removal== 96922 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #57803: <==uncertain_firing== 30410 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #67515: <==negation-removal== 26153 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #67540: <==negation-removal== 55232 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #68291: <==uncertain_firing== 79547 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #80894: <==uncertain_firing== 26153 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #86780: <==uncertain_firing== 84099 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #11662: <==closure== 48856 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #15804: <==closure== 88375 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #16156: <==closure== 78099 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #48856: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #65774: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #78099: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #88375: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #88961: <==closure== 65774 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16151: <==negation-removal== 11662 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #20652: <==negation-removal== 88961 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22448: <==uncertain_firing== 65774 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #24117: <==uncertain_firing== 16156 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #30716: <==uncertain_firing== 15804 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #34449: <==negation-removal== 15804 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39379: <==uncertain_firing== 11662 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #40018: <==negation-removal== 88375 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #42206: <==negation-removal== 48856 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #53561: <==uncertain_firing== 88961 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #54499: <==negation-removal== 65774 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #55676: <==uncertain_firing== 48856 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #59824: <==uncertain_firing== 88375 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #68581: <==uncertain_firing== 78099 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #70697: <==negation-removal== 78099 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #86364: <==negation-removal== 16156 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #25974: <==closure== 52617 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #37712: <==closure== 91150 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #52617: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #62953: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65148: <==closure== 89920 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #82678: <==closure== 62953 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #89920: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #91150: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #12886: <==negation-removal== 52617 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #12909: <==negation-removal== 65148 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19286: <==uncertain_firing== 37712 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #25350: <==negation-removal== 37712 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #31254: <==negation-removal== 62953 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #36945: <==negation-removal== 91150 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #48944: <==uncertain_firing== 91150 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #49305: <==uncertain_firing== 65148 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #50142: <==uncertain_firing== 62953 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #59672: <==negation-removal== 25974 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #60042: <==uncertain_firing== 89920 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #69816: <==uncertain_firing== 52617 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77067: <==negation-removal== 89920 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81911: <==uncertain_firing== 25974 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #84869: <==uncertain_firing== 82678 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #91202: <==negation-removal== 82678 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Bc_secret_b)
                           (at_c_l2)
                           (Pc_secret_b))
        :effect (and
                    ; #29990: <==closure== 33650 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33650: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #33698: <==closure== 89623 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #36887: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #38866: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #56713: <==closure== 36887 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #71162: <==closure== 38866 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #89623: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20737: <==negation-removal== 89623 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #29014: <==uncertain_firing== 33698 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36441: <==uncertain_firing== 56713 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #40888: <==uncertain_firing== 29990 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41444: <==negation-removal== 71162 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #45831: <==negation-removal== 56713 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #52587: <==negation-removal== 33650 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #65480: <==negation-removal== 36887 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #69008: <==uncertain_firing== 89623 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69510: <==uncertain_firing== 36887 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #77992: <==uncertain_firing== 71162 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78716: <==uncertain_firing== 38866 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82127: <==negation-removal== 29990 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #82636: <==negation-removal== 38866 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #91324: <==negation-removal== 33698 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #92072: <==uncertain_firing== 33650 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #20515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #28090: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49233: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #54126: <==closure== 49233 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #58033: <==closure== 28090 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #83493: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #87747: <==closure== 20515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #89658: <==closure== 83493 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #16313: <==negation-removal== 58033 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #26429: <==uncertain_firing== 28090 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #35328: <==uncertain_firing== 49233 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #36417: <==uncertain_firing== 89658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #43280: <==negation-removal== 89658 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43726: <==negation-removal== 20515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #45347: <==uncertain_firing== 54126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53380: <==negation-removal== 28090 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #56418: <==negation-removal== 54126 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #59654: <==negation-removal== 83493 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #67937: <==uncertain_firing== 20515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #73357: <==negation-removal== 87747 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #79909: <==uncertain_firing== 83493 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #87727: <==uncertain_firing== 87747 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #90401: <==negation-removal== 49233 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #95501: <==uncertain_firing== 58033 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #38966: <==closure== 47511 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46279: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #47511: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67088: <==closure== 68920 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #68920: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #70059: <==closure== 87504 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #72567: <==closure== 46279 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87504: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #11159: <==negation-removal== 38966 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #21429: <==negation-removal== 47511 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #24332: <==negation-removal== 46279 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #25506: <==negation-removal== 67088 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28227: <==uncertain_firing== 72567 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32804: <==uncertain_firing== 67088 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #45865: <==uncertain_firing== 87504 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #50782: <==uncertain_firing== 70059 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #52045: <==uncertain_firing== 68920 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #52893: <==uncertain_firing== 38966 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #58076: <==uncertain_firing== 47511 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #68151: <==negation-removal== 70059 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69426: <==uncertain_firing== 46279 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #70259: <==negation-removal== 72567 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #89594: <==negation-removal== 87504 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #93586: <==negation-removal== 68920 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_d)
                           (Bc_secret_d))
        :effect (and
                    ; #15034: <==closure== 15727 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15727: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #53802: <==closure== 87771 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #63569: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #71306: <==closure== 90461 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #82262: <==closure== 63569 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87771: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90461: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #14098: <==uncertain_firing== 15727 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #23450: <==uncertain_firing== 90461 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #23531: <==negation-removal== 82262 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #30229: <==negation-removal== 71306 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #30516: <==uncertain_firing== 87771 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #33380: <==uncertain_firing== 15034 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33817: <==negation-removal== 53802 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #42261: <==negation-removal== 63569 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #46819: <==uncertain_firing== 63569 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #47823: <==negation-removal== 15034 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #49401: <==negation-removal== 87771 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #50546: <==uncertain_firing== 71306 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #50814: <==negation-removal== 90461 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #70188: <==uncertain_firing== 82262 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #73609: <==negation-removal== 15727 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #91311: <==uncertain_firing== 53802 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #10408: <==closure== 12260 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11730: <==closure== 56760 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #12260: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34812: <==closure== 89164 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #42895: <==closure== 78515 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #56760: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #78515: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #89164: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #11072: <==negation-removal== 78515 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #12440: <==negation-removal== 34812 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #16771: <==uncertain_firing== 34812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #17107: <==negation-removal== 10408 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #27770: <==negation-removal== 12260 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #30118: <==uncertain_firing== 42895 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #30350: <==uncertain_firing== 89164 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #33808: <==negation-removal== 11730 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #36814: <==negation-removal== 89164 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #38849: <==uncertain_firing== 56760 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #38907: <==uncertain_firing== 12260 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #50945: <==uncertain_firing== 11730 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #56801: <==negation-removal== 42895 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81215: <==negation-removal== 56760 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #89325: <==uncertain_firing== 78515 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #90306: <==uncertain_firing== 10408 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_a)
                           (Bd_secret_a))
        :effect (and
                    ; #26153: <==closure== 30410 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #30410: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #40774: <==closure== 84099 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #55232: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #71357: <==closure== 55232 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #79547: <==closure== 96922 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #84099: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #96922: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #13788: <==negation-removal== 84099 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #21811: <==uncertain_firing== 71357 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #23707: <==negation-removal== 40774 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #24764: <==negation-removal== 71357 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #32991: <==uncertain_firing== 40774 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #34452: <==negation-removal== 30410 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #43411: <==negation-removal== 79547 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #43998: <==uncertain_firing== 96922 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #50279: <==uncertain_firing== 55232 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #53699: <==negation-removal== 96922 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #57803: <==uncertain_firing== 30410 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #67515: <==negation-removal== 26153 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #67540: <==negation-removal== 55232 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #68291: <==uncertain_firing== 79547 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #80894: <==uncertain_firing== 26153 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #86780: <==uncertain_firing== 84099 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_a)
                           (Bd_secret_a))
        :effect (and
                    ; #11662: <==closure== 48856 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #15804: <==closure== 88375 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #16156: <==closure== 78099 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #48856: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #65774: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #78099: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #88375: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #88961: <==closure== 65774 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16151: <==negation-removal== 11662 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #20652: <==negation-removal== 88961 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #22448: <==uncertain_firing== 65774 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #24117: <==uncertain_firing== 16156 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #30716: <==uncertain_firing== 15804 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #34449: <==negation-removal== 15804 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #39379: <==uncertain_firing== 11662 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #40018: <==negation-removal== 88375 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #42206: <==negation-removal== 48856 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #53561: <==uncertain_firing== 88961 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #54499: <==negation-removal== 65774 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #55676: <==uncertain_firing== 48856 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #59824: <==uncertain_firing== 88375 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #68581: <==uncertain_firing== 78099 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #70697: <==negation-removal== 78099 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #86364: <==negation-removal== 16156 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #25974: <==closure== 52617 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #37712: <==closure== 91150 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #52617: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #62953: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #65148: <==closure== 89920 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #82678: <==closure== 62953 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #89920: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #91150: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #12886: <==negation-removal== 52617 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #12909: <==negation-removal== 65148 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #19286: <==uncertain_firing== 37712 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #25350: <==negation-removal== 37712 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #31254: <==negation-removal== 62953 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #36945: <==negation-removal== 91150 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #48944: <==uncertain_firing== 91150 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #49305: <==uncertain_firing== 65148 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #50142: <==uncertain_firing== 62953 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #59672: <==negation-removal== 25974 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #60042: <==uncertain_firing== 89920 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #69816: <==uncertain_firing== 52617 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #77067: <==negation-removal== 89920 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #81911: <==uncertain_firing== 25974 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #84869: <==uncertain_firing== 82678 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #91202: <==negation-removal== 82678 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #29990: <==closure== 33650 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #33650: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #33698: <==closure== 89623 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #36887: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #38866: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #56713: <==closure== 36887 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #71162: <==closure== 38866 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #89623: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #20737: <==negation-removal== 89623 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #29014: <==uncertain_firing== 33698 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #36441: <==uncertain_firing== 56713 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #40888: <==uncertain_firing== 29990 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #41444: <==negation-removal== 71162 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #45831: <==negation-removal== 56713 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #52587: <==negation-removal== 33650 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #65480: <==negation-removal== 36887 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #69008: <==uncertain_firing== 89623 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69510: <==uncertain_firing== 36887 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #77992: <==uncertain_firing== 71162 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #78716: <==uncertain_firing== 38866 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #82127: <==negation-removal== 29990 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #82636: <==negation-removal== 38866 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #91324: <==negation-removal== 33698 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #92072: <==uncertain_firing== 33650 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (at_d_l1)
                           (Pd_secret_c))
        :effect (and
                    ; #20515: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #28090: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #49233: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #54126: <==closure== 49233 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #58033: <==closure== 28090 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #83493: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #87747: <==closure== 20515 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #89658: <==closure== 83493 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #16313: <==negation-removal== 58033 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #26429: <==uncertain_firing== 28090 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #35328: <==uncertain_firing== 49233 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #36417: <==uncertain_firing== 89658 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #43280: <==negation-removal== 89658 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #43726: <==negation-removal== 20515 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #45347: <==uncertain_firing== 54126 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #53380: <==negation-removal== 28090 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #56418: <==negation-removal== 54126 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #59654: <==negation-removal== 83493 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #67937: <==uncertain_firing== 20515 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #73357: <==negation-removal== 87747 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #79909: <==uncertain_firing== 83493 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #87727: <==uncertain_firing== 87747 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #90401: <==negation-removal== 49233 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #95501: <==uncertain_firing== 58033 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #38966: <==closure== 47511 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #46279: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #47511: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #67088: <==closure== 68920 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #68920: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #70059: <==closure== 87504 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #72567: <==closure== 46279 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #87504: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #11159: <==negation-removal== 38966 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #21429: <==negation-removal== 47511 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #24332: <==negation-removal== 46279 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #25506: <==negation-removal== 67088 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #28227: <==uncertain_firing== 72567 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #32804: <==uncertain_firing== 67088 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #45865: <==uncertain_firing== 87504 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #50782: <==uncertain_firing== 70059 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #52045: <==uncertain_firing== 68920 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #52893: <==uncertain_firing== 38966 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #58076: <==uncertain_firing== 47511 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #68151: <==negation-removal== 70059 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69426: <==uncertain_firing== 46279 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #70259: <==negation-removal== 72567 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #89594: <==negation-removal== 87504 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #93586: <==negation-removal== 68920 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (at_d_l1)
                           (Pd_secret_d))
        :effect (and
                    ; #15034: <==closure== 15727 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #15727: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #53802: <==closure== 87771 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #63569: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #71306: <==closure== 90461 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #82262: <==closure== 63569 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #87771: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #90461: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #14098: <==uncertain_firing== 15727 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #23450: <==uncertain_firing== 90461 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #23531: <==negation-removal== 82262 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #30229: <==negation-removal== 71306 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #30516: <==uncertain_firing== 87771 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #33380: <==uncertain_firing== 15034 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #33817: <==negation-removal== 53802 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #42261: <==negation-removal== 63569 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #46819: <==uncertain_firing== 63569 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #47823: <==negation-removal== 15034 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #49401: <==negation-removal== 87771 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #50546: <==uncertain_firing== 71306 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #50814: <==negation-removal== 90461 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #70188: <==uncertain_firing== 82262 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #73609: <==negation-removal== 15727 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #91311: <==uncertain_firing== 53802 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Bd_secret_d)
                           (at_d_l2)
                           (Pd_secret_d))
        :effect (and
                    ; #10408: <==closure== 12260 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11730: <==closure== 56760 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #12260: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #34812: <==closure== 89164 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #42895: <==closure== 78515 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #56760: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #78515: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #89164: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #11072: <==negation-removal== 78515 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #12440: <==negation-removal== 34812 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #16771: <==uncertain_firing== 34812 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #17107: <==negation-removal== 10408 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #27770: <==negation-removal== 12260 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #30118: <==uncertain_firing== 42895 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #30350: <==uncertain_firing== 89164 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #33808: <==negation-removal== 11730 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #36814: <==negation-removal== 89164 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #38849: <==uncertain_firing== 56760 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #38907: <==uncertain_firing== 12260 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #50945: <==uncertain_firing== 11730 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #56801: <==negation-removal== 42895 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81215: <==negation-removal== 56760 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #89325: <==uncertain_firing== 78515 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #90306: <==uncertain_firing== 10408 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))))

)