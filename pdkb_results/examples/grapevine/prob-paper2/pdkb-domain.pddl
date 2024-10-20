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
        :precondition (and (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #69788: origin
                    (not_at_a_l1)

                    ; #77916: origin
                    (at_a_l1)

                    ; #69788: <==negation-removal== 77916 (pos)
                    (not (not_at_a_l1))

                    ; #77916: <==negation-removal== 69788 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #22393: origin
                    (at_a_l2)

                    ; #69788: origin
                    (not_at_a_l1)

                    ; #77916: <==negation-removal== 69788 (pos)
                    (not (at_a_l1))

                    ; #88369: <==negation-removal== 22393 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #77916: origin
                    (at_a_l1)

                    ; #88369: origin
                    (not_at_a_l2)

                    ; #22393: <==negation-removal== 88369 (pos)
                    (not (at_a_l2))

                    ; #69788: <==negation-removal== 77916 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #22393: origin
                    (at_a_l2)

                    ; #88369: origin
                    (not_at_a_l2)

                    ; #22393: <==negation-removal== 88369 (pos)
                    (not (at_a_l2))

                    ; #88369: <==negation-removal== 22393 (pos)
                    (not (not_at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #18179: origin
                    (not_at_b_l1)

                    ; #80550: origin
                    (at_b_l1)

                    ; #18179: <==negation-removal== 80550 (pos)
                    (not (not_at_b_l1))

                    ; #80550: <==negation-removal== 18179 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #18179: origin
                    (not_at_b_l1)

                    ; #66830: origin
                    (at_b_l2)

                    ; #14052: <==negation-removal== 66830 (pos)
                    (not (not_at_b_l2))

                    ; #80550: <==negation-removal== 18179 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #14052: origin
                    (not_at_b_l2)

                    ; #80550: origin
                    (at_b_l1)

                    ; #18179: <==negation-removal== 80550 (pos)
                    (not (not_at_b_l1))

                    ; #66830: <==negation-removal== 14052 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #14052: origin
                    (not_at_b_l2)

                    ; #66830: origin
                    (at_b_l2)

                    ; #14052: <==negation-removal== 66830 (pos)
                    (not (not_at_b_l2))

                    ; #66830: <==negation-removal== 14052 (pos)
                    (not (at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #18706: origin
                    (at_c_l1)

                    ; #22994: origin
                    (not_at_c_l1)

                    ; #18706: <==negation-removal== 22994 (pos)
                    (not (at_c_l1))

                    ; #22994: <==negation-removal== 18706 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #22994: origin
                    (not_at_c_l1)

                    ; #69366: origin
                    (at_c_l2)

                    ; #18706: <==negation-removal== 22994 (pos)
                    (not (at_c_l1))

                    ; #43014: <==negation-removal== 69366 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #18706: origin
                    (at_c_l1)

                    ; #43014: origin
                    (not_at_c_l2)

                    ; #22994: <==negation-removal== 18706 (pos)
                    (not (not_at_c_l1))

                    ; #69366: <==negation-removal== 43014 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #43014: origin
                    (not_at_c_l2)

                    ; #69366: origin
                    (at_c_l2)

                    ; #43014: <==negation-removal== 69366 (pos)
                    (not (not_at_c_l2))

                    ; #69366: <==negation-removal== 43014 (pos)
                    (not (at_c_l2))))

    (:action share_a_a_l1
        :precondition (and (Ba_secret_a)
                           (Pa_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #21247: <==commonly_known== 37806 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #24646: <==commonly_known== 43826 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #25631: <==commonly_known== 20668 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #26894: <==commonly_known== 66732 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #30600: <==commonly_known== 59531 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #31662: <==commonly_known== 66732 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #32046: <==commonly_known== 37806 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #34108: <==commonly_known== 64107 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #37806: <==closure== 64107 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #38463: <==commonly_known== 27934 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #41723: <==commonly_known== 75435 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #42337: <==commonly_known== 75435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #43826: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #48049: <==commonly_known== 78176 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #52858: <==commonly_known== 64107 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #59531: <==closure== 75435 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #61059: <==closure== 72980 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #64107: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #66732: <==closure== 43826 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #72980: <==commonly_known== 43826 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #75435: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75436: <==commonly_known== 20668 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #78207: <==commonly_known== 59531 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #81902: <==closure== 24646 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #83767: <==closure== 52858 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #85313: <==commonly_known== 78176 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #87272: <==closure== 41723 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #87986: <==commonly_known== 27934 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #94806: <==closure== 42337 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #99197: <==closure== 34108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #10569: <==negation-removal== 94806 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #12330: <==uncertain_firing== 87986 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #12530: <==negation-removal== 59531 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #14399: <==uncertain_firing== 42337 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #17205: <==negation-removal== 87986 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #17611: <==uncertain_firing== 81902 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #17868: <==negation-removal== 85313 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #20668: <==uncertain_firing== 64107 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21674: <==uncertain_firing== 99197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #23238: <==uncertain_firing== 61059 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #24758: <==negation-removal== 24646 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #25992: <==negation-removal== 52858 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #27181: <==negation-removal== 42337 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #27934: <==uncertain_firing== 75435 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #29687: <==uncertain_firing== 26894 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #30577: <==uncertain_firing== 30600 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30971: <==negation-removal== 64107 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31381: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #31852: <==uncertain_firing== 38463 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #33488: <==uncertain_firing== 66732 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #35686: <==negation-removal== 75435 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #35698: <==uncertain_firing== 25631 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #36120: <==uncertain_firing== 72980 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #38033: <==negation-removal== 81902 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #38742: <==negation-removal== 21247 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #39649: <==uncertain_firing== 48049 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #41096: <==uncertain_firing== 37806 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #42064: <==negation-removal== 99197 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44008: <==negation-removal== 43826 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #48218: <==negation-removal== 75436 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #49365: <==negation-removal== 83767 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #51168: <==uncertain_firing== 24646 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #51948: <==negation-removal== 32046 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #53171: <==uncertain_firing== 21247 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #54413: <==uncertain_firing== 34108 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #59786: <==uncertain_firing== 83767 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #59954: <==negation-removal== 48049 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #61340: <==uncertain_firing== 52858 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #63280: <==uncertain_firing== 85313 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #64706: <==uncertain_firing== 32046 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #67641: <==uncertain_firing== 94806 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #67711: <==negation-removal== 87272 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #69279: <==negation-removal== 37806 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #69403: <==negation-removal== 72980 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #70085: <==negation-removal== 61059 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #71566: <==uncertain_firing== 75436 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #74696: <==uncertain_firing== 31662 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #77376: <==negation-removal== 34108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #77559: <==negation-removal== 38463 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #78176: <==uncertain_firing== 43826 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #78707: <==uncertain_firing== 59531 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #79458: <==negation-removal== 78207 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #79990: <==negation-removal== 66732 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #87232: <==negation-removal== 31662 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #87535: <==negation-removal== 25631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #90153: <==negation-removal== 30600 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #90328: <==uncertain_firing== 87272 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #90455: <==negation-removal== 41723 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #91267: <==negation-removal== 26894 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #92392: <==uncertain_firing== 41723 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #11676: <==commonly_known== 66623 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_a))

                    ; #11800: <==closure== 44721 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16089: <==commonly_known== 21542 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #16958: <==commonly_known== 21542 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #19246: <==closure== 91065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #19680: <==commonly_known== 44117 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #20817: <==closure== 70961 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #23245: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #26168: <==commonly_known== 66623 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #29837: <==closure== 92165 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_a))

                    ; #30363: <==commonly_known== 67227 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #34685: <==closure== 30363 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #43052: <==closure== 54017 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #44117: <==closure== 67227 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #44721: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #52489: <==commonly_known== 34266 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #54017: <==commonly_known== 23245 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_a))

                    ; #54398: <==closure== 60600 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #60600: <==commonly_known== 44721 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #67227: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #69782: <==commonly_known== 34266 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #70961: <==commonly_known== 23245 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #71016: <==commonly_known== 74663 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #74663: <==closure== 23245 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #76004: <==commonly_known== 11800 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #79670: <==commonly_known== 44117 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #83026: <==commonly_known== 11800 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #91065: <==commonly_known== 67227 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #91563: <==commonly_known== 74663 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_a))

                    ; #92165: <==commonly_known== 44721 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #10243: <==negation-removal== 34685 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #11366: <==negation-removal== 43052 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #12908: <==uncertain_firing== 79670 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #18454: <==uncertain_firing== 11676 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #18592: <==uncertain_firing== 16958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #19610: <==uncertain_firing== 69782 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #19627: <==negation-removal== 11800 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #19687: <==uncertain_firing== 52489 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #20047: <==uncertain_firing== 34685 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #21542: <==uncertain_firing== 44721 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #22541: <==uncertain_firing== 20817 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #22624: <==negation-removal== 54398 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #22760: <==uncertain_firing== 19246 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #25541: <==negation-removal== 20817 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #27310: <==uncertain_firing== 91065 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #28130: <==negation-removal== 26168 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #28968: <==negation-removal== 19246 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #29273: <==negation-removal== 23245 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #29683: <==uncertain_firing== 19680 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30029: <==uncertain_firing== 74663 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #30167: <==uncertain_firing== 43052 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #30715: <==negation-removal== 19680 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #32315: <==negation-removal== 71016 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #33523: <==negation-removal== 91563 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #34266: <==uncertain_firing== 67227 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34419: <==uncertain_firing== 60600 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #34463: <==negation-removal== 92165 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #35006: <==negation-removal== 52489 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #37248: <==negation-removal== 70961 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #38102: <==negation-removal== 44117 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #39336: <==negation-removal== 11676 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #39365: <==uncertain_firing== 76004 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #40576: <==negation-removal== 69782 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #41357: <==negation-removal== 79670 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #44773: <==negation-removal== 67227 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45179: <==negation-removal== 60600 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #46722: <==uncertain_firing== 92165 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #47710: <==negation-removal== 54017 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #49098: <==uncertain_firing== 16089 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #54224: <==uncertain_firing== 54017 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #57102: <==negation-removal== 16089 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #58395: <==uncertain_firing== 54398 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #60091: <==uncertain_firing== 91563 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #63267: <==uncertain_firing== 71016 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #65048: <==negation-removal== 76004 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #66623: <==uncertain_firing== 23245 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #67387: <==negation-removal== 30363 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #68053: <==uncertain_firing== 26168 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #69903: <==uncertain_firing== 83026 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #71619: <==negation-removal== 16958 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #73429: <==negation-removal== 83026 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #73614: <==uncertain_firing== 29837 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #80151: <==uncertain_firing== 70961 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #82798: <==uncertain_firing== 11800 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #83268: <==negation-removal== 91065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #83657: <==uncertain_firing== 30363 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #84190: <==uncertain_firing== 44117 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #86831: <==negation-removal== 74663 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #88945: <==negation-removal== 29837 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #90643: <==negation-removal== 44721 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l1))
        :effect (and
                    ; #11562: <==commonly_known== 22486 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #11677: <==commonly_known== 45165 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #15157: <==commonly_known== 65730 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #17617: <==commonly_known== 57551 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #18265: <==closure== 57551 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #22486: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #25953: <==commonly_known== 33645 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #27269: <==commonly_known== 75639 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #27631: <==commonly_known== 65238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #29092: <==closure== 71236 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #33645: <==closure== 22486 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #37168: <==closure== 75328 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #38354: <==commonly_known== 21328 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #39593: <==commonly_known== 22486 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #40493: <==closure== 27631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #44375: <==closure== 17617 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #51780: <==commonly_known== 75639 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #57551: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #63258: <==commonly_known== 18265 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #65238: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #66458: <==commonly_known== 33645 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #71236: <==commonly_known== 65238 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #74411: <==commonly_known== 21328 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #75328: <==commonly_known== 57551 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #75639: <==closure== 65238 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #83870: <==commonly_known== 65730 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #83876: <==closure== 39593 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #84598: <==commonly_known== 18265 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #89413: <==commonly_known== 45165 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #95934: <==closure== 11562 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #10429: <==uncertain_firing== 15157 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #10476: <==uncertain_firing== 74411 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #12330: <==uncertain_firing== 33645 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #13131: <==uncertain_firing== 27631 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #13329: <==negation-removal== 33645 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #13892: <==negation-removal== 40493 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #16689: <==uncertain_firing== 44375 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #17559: <==negation-removal== 25953 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #18733: <==negation-removal== 27269 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #19139: <==negation-removal== 51780 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #20443: <==negation-removal== 11562 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #21328: <==uncertain_firing== 57551 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #23823: <==negation-removal== 75328 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #26715: <==uncertain_firing== 25953 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #29586: <==negation-removal== 38354 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #30990: <==uncertain_firing== 38354 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #31209: <==negation-removal== 83876 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #32674: <==negation-removal== 83870 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #33159: <==uncertain_firing== 39593 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #33406: <==negation-removal== 84598 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #35102: <==negation-removal== 15157 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #39564: <==negation-removal== 11677 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #41388: <==uncertain_firing== 89413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #42560: <==negation-removal== 89413 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #43014: <==uncertain_firing== 11677 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #44656: <==negation-removal== 29092 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #44681: <==negation-removal== 65238 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #45165: <==uncertain_firing== 65238 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #47980: <==negation-removal== 27631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #50629: <==negation-removal== 74411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #51549: <==negation-removal== 22486 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #54733: <==uncertain_firing== 11562 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #56563: <==uncertain_firing== 71236 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #58935: <==uncertain_firing== 27269 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #61353: <==negation-removal== 57551 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #63735: <==uncertain_firing== 37168 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #63796: <==uncertain_firing== 40493 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #64845: <==negation-removal== 63258 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #65730: <==uncertain_firing== 22486 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #66984: <==uncertain_firing== 75639 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #67418: <==uncertain_firing== 29092 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #67465: <==uncertain_firing== 17617 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #67956: <==negation-removal== 37168 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #69289: <==uncertain_firing== 84598 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #71277: <==uncertain_firing== 18265 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #78049: <==negation-removal== 44375 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #78269: <==uncertain_firing== 83870 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #78284: <==negation-removal== 18265 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #79334: <==negation-removal== 39593 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #81288: <==uncertain_firing== 63258 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #82051: <==negation-removal== 95934 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #83636: <==uncertain_firing== 83876 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #86383: <==negation-removal== 17617 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #86748: <==negation-removal== 75639 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #86881: <==uncertain_firing== 95934 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #87758: <==negation-removal== 66458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #87961: <==uncertain_firing== 51780 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #88563: <==negation-removal== 71236 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #88760: <==uncertain_firing== 66458 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #96711: <==uncertain_firing== 75328 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Pa_secret_b)
                           (at_a_l2)
                           (Ba_secret_b))
        :effect (and
                    ; #13087: <==commonly_known== 48093 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #16872: <==commonly_known== 18997 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #19243: <==commonly_known== 24476 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #20471: <==commonly_known== 44237 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_b))

                    ; #24476: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #24833: <==commonly_known== 48093 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_b))

                    ; #25178: <==commonly_known== 75761 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_b))

                    ; #27125: <==commonly_known== 50930 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #29722: <==commonly_known== 24476 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #32489: <==commonly_known== 75761 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #42394: <==commonly_known== 45601 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #45601: <==closure== 24476 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #48093: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #49037: <==closure== 29722 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #50758: <==commonly_known== 63764 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #50930: <==closure== 63764 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #52913: <==commonly_known== 45601 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #63107: <==closure== 24833 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #63764: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #68773: <==commonly_known== 50930 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #70480: <==closure== 50758 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #72181: <==commonly_known== 44237 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #72504: <==closure== 83075 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_b))

                    ; #72679: <==commonly_known== 51264 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #75761: <==closure== 48093 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #77440: <==commonly_known== 18997 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #83075: <==commonly_known== 63764 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #86075: <==closure== 19243 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #90402: <==closure== 13087 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #90830: <==commonly_known== 51264 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #10318: <==negation-removal== 24476 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #12435: <==uncertain_firing== 25178 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #16052: <==uncertain_firing== 29722 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #17659: <==uncertain_firing== 83075 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17856: <==uncertain_firing== 90830 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #18997: <==uncertain_firing== 63764 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #19595: <==uncertain_firing== 50930 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #20844: <==negation-removal== 20471 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #20960: <==uncertain_firing== 68773 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #24332: <==negation-removal== 48093 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #24886: <==negation-removal== 72679 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #26064: <==negation-removal== 42394 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #30128: <==negation-removal== 63107 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #31114: <==negation-removal== 77440 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #32033: <==uncertain_firing== 63107 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #32126: <==uncertain_firing== 24833 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32600: <==negation-removal== 19243 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #34837: <==uncertain_firing== 20471 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #39159: <==uncertain_firing== 45601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #39820: <==negation-removal== 90402 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #40686: <==negation-removal== 52913 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #41582: <==negation-removal== 72504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #41633: <==negation-removal== 63764 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #42203: <==negation-removal== 75761 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #42342: <==uncertain_firing== 49037 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #42447: <==negation-removal== 32489 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #42602: <==uncertain_firing== 42394 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #43249: <==negation-removal== 25178 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #43892: <==uncertain_firing== 50758 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #44152: <==uncertain_firing== 13087 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44237: <==uncertain_firing== 48093 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #44396: <==negation-removal== 72181 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #45011: <==negation-removal== 50758 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #48964: <==uncertain_firing== 72679 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #51117: <==negation-removal== 45601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51215: <==negation-removal== 90830 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #51264: <==uncertain_firing== 24476 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #54846: <==uncertain_firing== 72181 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #55359: <==negation-removal== 83075 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #56848: <==uncertain_firing== 77440 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #56854: <==uncertain_firing== 72504 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #58838: <==negation-removal== 29722 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #59296: <==negation-removal== 16872 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #60334: <==uncertain_firing== 70480 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #63433: <==negation-removal== 49037 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #66718: <==uncertain_firing== 32489 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #68433: <==negation-removal== 70480 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #68779: <==uncertain_firing== 27125 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #68998: <==uncertain_firing== 52913 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #74457: <==negation-removal== 13087 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #75384: <==uncertain_firing== 75761 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #75781: <==uncertain_firing== 90402 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #75848: <==negation-removal== 50930 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78388: <==negation-removal== 68773 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #82718: <==uncertain_firing== 86075 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #84659: <==negation-removal== 86075 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #85724: <==uncertain_firing== 19243 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #89757: <==negation-removal== 24833 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #91587: <==uncertain_firing== 16872 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #99727: <==negation-removal== 27125 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Ba_secret_c)
                           (Pa_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #10406: <==commonly_known== 63876 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #11055: <==commonly_known== 63876 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #11136: <==commonly_known== 68835 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #15094: <==commonly_known== 19973 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #19389: <==closure== 72844 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #19595: <==commonly_known== 83895 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #19735: <==commonly_known== 54775 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #19973: <==closure== 68835 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #22296: <==commonly_known== 99994 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #22657: <==commonly_known== 68835 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #32010: <==commonly_known== 19973 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #35930: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36170: <==closure== 59123 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #41703: <==closure== 11136 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #46665: <==commonly_known== 35483 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #49601: <==closure== 19595 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #51672: <==commonly_known== 35483 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #54775: <==closure== 35930 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #57145: <==commonly_known== 35930 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #58413: <==commonly_known== 73304 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #59123: <==commonly_known== 83895 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #60966: <==closure== 22657 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #63399: <==closure== 57145 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #63876: <==closure== 83895 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #65921: <==commonly_known== 54775 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #68835: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72844: <==commonly_known== 35930 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #77892: <==commonly_known== 73304 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #83895: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #86485: <==commonly_known== 99994 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #11851: <==negation-removal== 19973 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #13120: <==uncertain_firing== 54775 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #13322: <==uncertain_firing== 11055 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #16678: <==negation-removal== 11136 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #17125: <==negation-removal== 60966 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #17852: <==negation-removal== 11055 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #18284: <==negation-removal== 35930 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #19961: <==uncertain_firing== 65921 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #22353: <==uncertain_firing== 60966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #24399: <==uncertain_firing== 11136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #25109: <==uncertain_firing== 19735 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #25888: <==negation-removal== 58413 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #27079: <==uncertain_firing== 19389 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #27107: <==negation-removal== 54775 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #28405: <==negation-removal== 41703 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #28512: <==uncertain_firing== 46665 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #29716: <==uncertain_firing== 86485 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #30138: <==uncertain_firing== 41703 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #30232: <==uncertain_firing== 57145 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #35441: <==uncertain_firing== 51672 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #35483: <==uncertain_firing== 68835 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #37465: <==uncertain_firing== 19973 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #37984: <==uncertain_firing== 77892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #38740: <==negation-removal== 72844 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #38928: <==negation-removal== 86485 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #41049: <==negation-removal== 49601 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #43528: <==uncertain_firing== 63876 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #43969: <==negation-removal== 83895 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #45668: <==negation-removal== 36170 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #45775: <==uncertain_firing== 22657 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #46487: <==uncertain_firing== 15094 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #47218: <==uncertain_firing== 49601 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #49103: <==negation-removal== 15094 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #53536: <==negation-removal== 77892 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #55072: <==negation-removal== 57145 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #61843: <==negation-removal== 19389 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #62392: <==uncertain_firing== 58413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #62562: <==negation-removal== 19595 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #62873: <==uncertain_firing== 32010 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #64280: <==negation-removal== 63399 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #69195: <==negation-removal== 65921 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #70438: <==negation-removal== 68835 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #70752: <==uncertain_firing== 63399 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #72030: <==negation-removal== 19735 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #73304: <==uncertain_firing== 35930 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74307: <==negation-removal== 22296 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #79301: <==uncertain_firing== 72844 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #81068: <==negation-removal== 22657 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #81489: <==uncertain_firing== 19595 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #81878: <==negation-removal== 10406 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #82410: <==uncertain_firing== 22296 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #82704: <==negation-removal== 59123 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #83699: <==uncertain_firing== 59123 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #87449: <==uncertain_firing== 36170 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #87957: <==negation-removal== 32010 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #88260: <==negation-removal== 63876 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #89816: <==uncertain_firing== 10406 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #90750: <==negation-removal== 46665 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #91888: <==negation-removal== 51672 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #99994: <==uncertain_firing== 83895 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Ba_secret_c)
                           (at_a_l2)
                           (Pa_secret_c))
        :effect (and
                    ; #13835: <==commonly_known== 40251 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #17884: <==commonly_known== 75039 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #19877: <==commonly_known== 70094 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #23831: <==closure== 74168 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #26354: <==commonly_known== 64964 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #28254: <==commonly_known== 82810 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #34612: <==closure== 17884 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #38048: <==commonly_known== 99155 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_c))

                    ; #39313: <==closure== 69808 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #44229: <==commonly_known== 99155 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #46212: <==commonly_known== 70094 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #52136: <==commonly_known== 75039 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #53096: <==commonly_known== 64964 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #54381: <==commonly_known== 89933 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #56567: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #57942: <==commonly_known== 46351 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #60855: <==closure== 53096 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #64964: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #69808: <==commonly_known== 56567 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #70094: <==closure== 75039 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #72928: <==commonly_known== 82810 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #74168: <==commonly_known== 56567 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_c))

                    ; #75039: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #78845: <==commonly_known== 46351 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #80564: <==closure== 52136 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #82810: <==closure== 64964 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #86859: <==commonly_known== 89933 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_c))

                    ; #89057: <==closure== 26354 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_c))

                    ; #89933: <==closure== 56567 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #94302: <==commonly_known== 40251 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #12502: <==negation-removal== 56567 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #12945: <==negation-removal== 39313 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #14218: <==negation-removal== 75039 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #14294: <==uncertain_firing== 69808 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #16014: <==negation-removal== 54381 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #16088: <==uncertain_firing== 54381 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #16148: <==negation-removal== 72928 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #16482: <==negation-removal== 94302 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #16982: <==negation-removal== 52136 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #18350: <==negation-removal== 89933 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #20737: <==negation-removal== 64964 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22032: <==negation-removal== 28254 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #22038: <==negation-removal== 57942 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #22174: <==negation-removal== 86859 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #22207: <==negation-removal== 17884 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #22713: <==negation-removal== 53096 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #24108: <==uncertain_firing== 17884 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #25877: <==negation-removal== 13835 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #29311: <==uncertain_firing== 53096 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #29635: <==uncertain_firing== 26354 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #30301: <==uncertain_firing== 46212 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #32558: <==uncertain_firing== 74168 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #34218: <==uncertain_firing== 23831 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #36256: <==negation-removal== 69808 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36346: <==uncertain_firing== 44229 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #37744: <==uncertain_firing== 89933 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #40016: <==uncertain_firing== 38048 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #40251: <==uncertain_firing== 64964 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #45608: <==negation-removal== 23831 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #46351: <==uncertain_firing== 75039 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #50465: <==negation-removal== 70094 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #53639: <==negation-removal== 44229 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #58885: <==uncertain_firing== 19877 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #59180: <==negation-removal== 38048 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #59193: <==uncertain_firing== 39313 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #59860: <==uncertain_firing== 82810 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #60649: <==uncertain_firing== 13835 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #63733: <==negation-removal== 74168 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #64011: <==negation-removal== 34612 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #68802: <==negation-removal== 80564 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #69245: <==uncertain_firing== 86859 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #72140: <==uncertain_firing== 78845 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #72581: <==uncertain_firing== 28254 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #73511: <==negation-removal== 46212 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #76626: <==uncertain_firing== 34612 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #77841: <==uncertain_firing== 89057 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #78403: <==negation-removal== 19877 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #79020: <==uncertain_firing== 80564 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #80545: <==negation-removal== 60855 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #84973: <==uncertain_firing== 72928 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #86104: <==uncertain_firing== 60855 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #87162: <==uncertain_firing== 70094 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #87617: <==negation-removal== 26354 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #88397: <==negation-removal== 89057 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #89074: <==negation-removal== 78845 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #89184: <==uncertain_firing== 94302 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #89553: <==uncertain_firing== 52136 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #90312: <==negation-removal== 82810 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #96605: <==uncertain_firing== 57942 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #99155: <==uncertain_firing== 56567 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))))

    (:action share_b_a_l1
        :precondition (and (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l1))
        :effect (and
                    ; #21247: <==commonly_known== 37806 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #24646: <==commonly_known== 43826 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #25631: <==commonly_known== 20668 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #26894: <==commonly_known== 66732 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #30600: <==commonly_known== 59531 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #31662: <==commonly_known== 66732 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #32046: <==commonly_known== 37806 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #34108: <==commonly_known== 64107 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #37806: <==closure== 64107 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #38463: <==commonly_known== 27934 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #41723: <==commonly_known== 75435 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #42337: <==commonly_known== 75435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #43826: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #48049: <==commonly_known== 78176 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #52858: <==commonly_known== 64107 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #59531: <==closure== 75435 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #61059: <==closure== 72980 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #64107: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #66732: <==closure== 43826 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #72980: <==commonly_known== 43826 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #75435: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75436: <==commonly_known== 20668 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #78207: <==commonly_known== 59531 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #81902: <==closure== 24646 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #83767: <==closure== 52858 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #85313: <==commonly_known== 78176 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #87272: <==closure== 41723 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #87986: <==commonly_known== 27934 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #94806: <==closure== 42337 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #99197: <==closure== 34108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #10569: <==negation-removal== 94806 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #12330: <==uncertain_firing== 87986 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #12530: <==negation-removal== 59531 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #14399: <==uncertain_firing== 42337 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #17205: <==negation-removal== 87986 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #17611: <==uncertain_firing== 81902 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #17868: <==negation-removal== 85313 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #20668: <==uncertain_firing== 64107 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21674: <==uncertain_firing== 99197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #23238: <==uncertain_firing== 61059 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #24758: <==negation-removal== 24646 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #25992: <==negation-removal== 52858 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #27181: <==negation-removal== 42337 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #27934: <==uncertain_firing== 75435 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #29687: <==uncertain_firing== 26894 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #30577: <==uncertain_firing== 30600 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30971: <==negation-removal== 64107 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31381: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #31852: <==uncertain_firing== 38463 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #33488: <==uncertain_firing== 66732 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #35686: <==negation-removal== 75435 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #35698: <==uncertain_firing== 25631 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #36120: <==uncertain_firing== 72980 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #38033: <==negation-removal== 81902 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #38742: <==negation-removal== 21247 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #39649: <==uncertain_firing== 48049 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #41096: <==uncertain_firing== 37806 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #42064: <==negation-removal== 99197 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44008: <==negation-removal== 43826 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #48218: <==negation-removal== 75436 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #49365: <==negation-removal== 83767 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #51168: <==uncertain_firing== 24646 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #51948: <==negation-removal== 32046 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #53171: <==uncertain_firing== 21247 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #54413: <==uncertain_firing== 34108 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #59786: <==uncertain_firing== 83767 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #59954: <==negation-removal== 48049 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #61340: <==uncertain_firing== 52858 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #63280: <==uncertain_firing== 85313 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #64706: <==uncertain_firing== 32046 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #67641: <==uncertain_firing== 94806 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #67711: <==negation-removal== 87272 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #69279: <==negation-removal== 37806 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #69403: <==negation-removal== 72980 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #70085: <==negation-removal== 61059 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #71566: <==uncertain_firing== 75436 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #74696: <==uncertain_firing== 31662 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #77376: <==negation-removal== 34108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #77559: <==negation-removal== 38463 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #78176: <==uncertain_firing== 43826 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #78707: <==uncertain_firing== 59531 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #79458: <==negation-removal== 78207 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #79990: <==negation-removal== 66732 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #87232: <==negation-removal== 31662 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #87535: <==negation-removal== 25631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #90153: <==negation-removal== 30600 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #90328: <==uncertain_firing== 87272 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #90455: <==negation-removal== 41723 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #91267: <==negation-removal== 26894 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #92392: <==uncertain_firing== 41723 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #11676: <==commonly_known== 66623 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_a))

                    ; #11800: <==closure== 44721 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16089: <==commonly_known== 21542 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #16958: <==commonly_known== 21542 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #19246: <==closure== 91065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #19680: <==commonly_known== 44117 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #20817: <==closure== 70961 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #23245: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #26168: <==commonly_known== 66623 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #29837: <==closure== 92165 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_a))

                    ; #30363: <==commonly_known== 67227 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #34685: <==closure== 30363 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #43052: <==closure== 54017 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #44117: <==closure== 67227 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #44721: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #52489: <==commonly_known== 34266 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #54017: <==commonly_known== 23245 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_a))

                    ; #54398: <==closure== 60600 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #60600: <==commonly_known== 44721 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #67227: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #69782: <==commonly_known== 34266 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #70961: <==commonly_known== 23245 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #71016: <==commonly_known== 74663 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #74663: <==closure== 23245 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #76004: <==commonly_known== 11800 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #79670: <==commonly_known== 44117 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #83026: <==commonly_known== 11800 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #91065: <==commonly_known== 67227 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #91563: <==commonly_known== 74663 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_a))

                    ; #92165: <==commonly_known== 44721 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #10243: <==negation-removal== 34685 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #11366: <==negation-removal== 43052 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #12908: <==uncertain_firing== 79670 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #18454: <==uncertain_firing== 11676 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #18592: <==uncertain_firing== 16958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #19610: <==uncertain_firing== 69782 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #19627: <==negation-removal== 11800 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #19687: <==uncertain_firing== 52489 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #20047: <==uncertain_firing== 34685 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #21542: <==uncertain_firing== 44721 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #22541: <==uncertain_firing== 20817 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #22624: <==negation-removal== 54398 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #22760: <==uncertain_firing== 19246 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #25541: <==negation-removal== 20817 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #27310: <==uncertain_firing== 91065 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #28130: <==negation-removal== 26168 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #28968: <==negation-removal== 19246 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #29273: <==negation-removal== 23245 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #29683: <==uncertain_firing== 19680 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30029: <==uncertain_firing== 74663 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #30167: <==uncertain_firing== 43052 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #30715: <==negation-removal== 19680 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #32315: <==negation-removal== 71016 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #33523: <==negation-removal== 91563 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #34266: <==uncertain_firing== 67227 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34419: <==uncertain_firing== 60600 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #34463: <==negation-removal== 92165 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #35006: <==negation-removal== 52489 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #37248: <==negation-removal== 70961 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #38102: <==negation-removal== 44117 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #39336: <==negation-removal== 11676 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #39365: <==uncertain_firing== 76004 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #40576: <==negation-removal== 69782 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #41357: <==negation-removal== 79670 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #44773: <==negation-removal== 67227 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45179: <==negation-removal== 60600 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #46722: <==uncertain_firing== 92165 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #47710: <==negation-removal== 54017 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #49098: <==uncertain_firing== 16089 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #54224: <==uncertain_firing== 54017 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #57102: <==negation-removal== 16089 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #58395: <==uncertain_firing== 54398 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #60091: <==uncertain_firing== 91563 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #63267: <==uncertain_firing== 71016 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #65048: <==negation-removal== 76004 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #66623: <==uncertain_firing== 23245 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #67387: <==negation-removal== 30363 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #68053: <==uncertain_firing== 26168 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #69903: <==uncertain_firing== 83026 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #71619: <==negation-removal== 16958 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #73429: <==negation-removal== 83026 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #73614: <==uncertain_firing== 29837 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #80151: <==uncertain_firing== 70961 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #82798: <==uncertain_firing== 11800 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #83268: <==negation-removal== 91065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #83657: <==uncertain_firing== 30363 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #84190: <==uncertain_firing== 44117 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #86831: <==negation-removal== 74663 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #88945: <==negation-removal== 29837 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #90643: <==negation-removal== 44721 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #11562: <==commonly_known== 22486 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #11677: <==commonly_known== 45165 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #15157: <==commonly_known== 65730 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #17617: <==commonly_known== 57551 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #18265: <==closure== 57551 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #22486: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #25953: <==commonly_known== 33645 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #27269: <==commonly_known== 75639 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #27631: <==commonly_known== 65238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #29092: <==closure== 71236 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #33645: <==closure== 22486 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #37168: <==closure== 75328 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #38354: <==commonly_known== 21328 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #39593: <==commonly_known== 22486 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #40493: <==closure== 27631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #44375: <==closure== 17617 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #51780: <==commonly_known== 75639 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #57551: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #63258: <==commonly_known== 18265 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #65238: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #66458: <==commonly_known== 33645 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #71236: <==commonly_known== 65238 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #74411: <==commonly_known== 21328 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #75328: <==commonly_known== 57551 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #75639: <==closure== 65238 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #83870: <==commonly_known== 65730 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #83876: <==closure== 39593 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #84598: <==commonly_known== 18265 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #89413: <==commonly_known== 45165 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #95934: <==closure== 11562 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #10429: <==uncertain_firing== 15157 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #10476: <==uncertain_firing== 74411 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #12330: <==uncertain_firing== 33645 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #13131: <==uncertain_firing== 27631 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #13329: <==negation-removal== 33645 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #13892: <==negation-removal== 40493 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #16689: <==uncertain_firing== 44375 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #17559: <==negation-removal== 25953 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #18733: <==negation-removal== 27269 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #19139: <==negation-removal== 51780 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #20443: <==negation-removal== 11562 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #21328: <==uncertain_firing== 57551 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #23823: <==negation-removal== 75328 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #26715: <==uncertain_firing== 25953 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #29586: <==negation-removal== 38354 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #30990: <==uncertain_firing== 38354 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #31209: <==negation-removal== 83876 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #32674: <==negation-removal== 83870 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #33159: <==uncertain_firing== 39593 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #33406: <==negation-removal== 84598 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #35102: <==negation-removal== 15157 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #39564: <==negation-removal== 11677 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #41388: <==uncertain_firing== 89413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #42560: <==negation-removal== 89413 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #43014: <==uncertain_firing== 11677 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #44656: <==negation-removal== 29092 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #44681: <==negation-removal== 65238 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #45165: <==uncertain_firing== 65238 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #47980: <==negation-removal== 27631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #50629: <==negation-removal== 74411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #51549: <==negation-removal== 22486 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #54733: <==uncertain_firing== 11562 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #56563: <==uncertain_firing== 71236 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #58935: <==uncertain_firing== 27269 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #61353: <==negation-removal== 57551 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #63735: <==uncertain_firing== 37168 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #63796: <==uncertain_firing== 40493 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #64845: <==negation-removal== 63258 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #65730: <==uncertain_firing== 22486 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #66984: <==uncertain_firing== 75639 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #67418: <==uncertain_firing== 29092 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #67465: <==uncertain_firing== 17617 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #67956: <==negation-removal== 37168 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #69289: <==uncertain_firing== 84598 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #71277: <==uncertain_firing== 18265 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #78049: <==negation-removal== 44375 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #78269: <==uncertain_firing== 83870 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #78284: <==negation-removal== 18265 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #79334: <==negation-removal== 39593 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #81288: <==uncertain_firing== 63258 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #82051: <==negation-removal== 95934 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #83636: <==uncertain_firing== 83876 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #86383: <==negation-removal== 17617 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #86748: <==negation-removal== 75639 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #86881: <==uncertain_firing== 95934 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #87758: <==negation-removal== 66458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #87961: <==uncertain_firing== 51780 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #88563: <==negation-removal== 71236 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #88760: <==uncertain_firing== 66458 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #96711: <==uncertain_firing== 75328 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #13087: <==commonly_known== 48093 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #16872: <==commonly_known== 18997 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #19243: <==commonly_known== 24476 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #20471: <==commonly_known== 44237 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_b))

                    ; #24476: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #24833: <==commonly_known== 48093 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_b))

                    ; #25178: <==commonly_known== 75761 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_b))

                    ; #27125: <==commonly_known== 50930 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #29722: <==commonly_known== 24476 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #32489: <==commonly_known== 75761 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #42394: <==commonly_known== 45601 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #45601: <==closure== 24476 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #48093: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #49037: <==closure== 29722 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #50758: <==commonly_known== 63764 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #50930: <==closure== 63764 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #52913: <==commonly_known== 45601 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #63107: <==closure== 24833 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #63764: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #68773: <==commonly_known== 50930 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #70480: <==closure== 50758 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #72181: <==commonly_known== 44237 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #72504: <==closure== 83075 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_b))

                    ; #72679: <==commonly_known== 51264 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #75761: <==closure== 48093 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #77440: <==commonly_known== 18997 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #83075: <==commonly_known== 63764 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #86075: <==closure== 19243 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #90402: <==closure== 13087 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #90830: <==commonly_known== 51264 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #10318: <==negation-removal== 24476 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #12435: <==uncertain_firing== 25178 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #16052: <==uncertain_firing== 29722 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #17659: <==uncertain_firing== 83075 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17856: <==uncertain_firing== 90830 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #18997: <==uncertain_firing== 63764 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #19595: <==uncertain_firing== 50930 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #20844: <==negation-removal== 20471 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #20960: <==uncertain_firing== 68773 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #24332: <==negation-removal== 48093 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #24886: <==negation-removal== 72679 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #26064: <==negation-removal== 42394 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #30128: <==negation-removal== 63107 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #31114: <==negation-removal== 77440 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #32033: <==uncertain_firing== 63107 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #32126: <==uncertain_firing== 24833 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32600: <==negation-removal== 19243 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #34837: <==uncertain_firing== 20471 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #39159: <==uncertain_firing== 45601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #39820: <==negation-removal== 90402 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #40686: <==negation-removal== 52913 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #41582: <==negation-removal== 72504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #41633: <==negation-removal== 63764 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #42203: <==negation-removal== 75761 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #42342: <==uncertain_firing== 49037 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #42447: <==negation-removal== 32489 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #42602: <==uncertain_firing== 42394 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #43249: <==negation-removal== 25178 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #43892: <==uncertain_firing== 50758 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #44152: <==uncertain_firing== 13087 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44237: <==uncertain_firing== 48093 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #44396: <==negation-removal== 72181 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #45011: <==negation-removal== 50758 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #48964: <==uncertain_firing== 72679 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #51117: <==negation-removal== 45601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51215: <==negation-removal== 90830 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #51264: <==uncertain_firing== 24476 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #54846: <==uncertain_firing== 72181 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #55359: <==negation-removal== 83075 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #56848: <==uncertain_firing== 77440 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #56854: <==uncertain_firing== 72504 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #58838: <==negation-removal== 29722 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #59296: <==negation-removal== 16872 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #60334: <==uncertain_firing== 70480 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #63433: <==negation-removal== 49037 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #66718: <==uncertain_firing== 32489 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #68433: <==negation-removal== 70480 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #68779: <==uncertain_firing== 27125 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #68998: <==uncertain_firing== 52913 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #74457: <==negation-removal== 13087 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #75384: <==uncertain_firing== 75761 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #75781: <==uncertain_firing== 90402 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #75848: <==negation-removal== 50930 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78388: <==negation-removal== 68773 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #82718: <==uncertain_firing== 86075 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #84659: <==negation-removal== 86075 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #85724: <==uncertain_firing== 19243 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #89757: <==negation-removal== 24833 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #91587: <==uncertain_firing== 16872 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #99727: <==negation-removal== 27125 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #10406: <==commonly_known== 63876 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #11055: <==commonly_known== 63876 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #11136: <==commonly_known== 68835 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #15094: <==commonly_known== 19973 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #19389: <==closure== 72844 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #19595: <==commonly_known== 83895 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #19735: <==commonly_known== 54775 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #19973: <==closure== 68835 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #22296: <==commonly_known== 99994 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #22657: <==commonly_known== 68835 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #32010: <==commonly_known== 19973 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #35930: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36170: <==closure== 59123 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #41703: <==closure== 11136 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #46665: <==commonly_known== 35483 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #49601: <==closure== 19595 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #51672: <==commonly_known== 35483 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #54775: <==closure== 35930 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #57145: <==commonly_known== 35930 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #58413: <==commonly_known== 73304 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #59123: <==commonly_known== 83895 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #60966: <==closure== 22657 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #63399: <==closure== 57145 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #63876: <==closure== 83895 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #65921: <==commonly_known== 54775 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #68835: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72844: <==commonly_known== 35930 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #77892: <==commonly_known== 73304 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #83895: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #86485: <==commonly_known== 99994 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #11851: <==negation-removal== 19973 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #13120: <==uncertain_firing== 54775 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #13322: <==uncertain_firing== 11055 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #16678: <==negation-removal== 11136 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #17125: <==negation-removal== 60966 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #17852: <==negation-removal== 11055 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #18284: <==negation-removal== 35930 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #19961: <==uncertain_firing== 65921 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #22353: <==uncertain_firing== 60966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #24399: <==uncertain_firing== 11136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #25109: <==uncertain_firing== 19735 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #25888: <==negation-removal== 58413 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #27079: <==uncertain_firing== 19389 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #27107: <==negation-removal== 54775 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #28405: <==negation-removal== 41703 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #28512: <==uncertain_firing== 46665 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #29716: <==uncertain_firing== 86485 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #30138: <==uncertain_firing== 41703 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #30232: <==uncertain_firing== 57145 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #35441: <==uncertain_firing== 51672 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #35483: <==uncertain_firing== 68835 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #37465: <==uncertain_firing== 19973 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #37984: <==uncertain_firing== 77892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #38740: <==negation-removal== 72844 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #38928: <==negation-removal== 86485 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #41049: <==negation-removal== 49601 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #43528: <==uncertain_firing== 63876 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #43969: <==negation-removal== 83895 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #45668: <==negation-removal== 36170 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #45775: <==uncertain_firing== 22657 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #46487: <==uncertain_firing== 15094 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #47218: <==uncertain_firing== 49601 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #49103: <==negation-removal== 15094 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #53536: <==negation-removal== 77892 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #55072: <==negation-removal== 57145 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #61843: <==negation-removal== 19389 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #62392: <==uncertain_firing== 58413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #62562: <==negation-removal== 19595 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #62873: <==uncertain_firing== 32010 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #64280: <==negation-removal== 63399 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #69195: <==negation-removal== 65921 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #70438: <==negation-removal== 68835 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #70752: <==uncertain_firing== 63399 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #72030: <==negation-removal== 19735 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #73304: <==uncertain_firing== 35930 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74307: <==negation-removal== 22296 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #79301: <==uncertain_firing== 72844 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #81068: <==negation-removal== 22657 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #81489: <==uncertain_firing== 19595 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #81878: <==negation-removal== 10406 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #82410: <==uncertain_firing== 22296 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #82704: <==negation-removal== 59123 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #83699: <==uncertain_firing== 59123 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #87449: <==uncertain_firing== 36170 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #87957: <==negation-removal== 32010 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #88260: <==negation-removal== 63876 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #89816: <==uncertain_firing== 10406 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #90750: <==negation-removal== 46665 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #91888: <==negation-removal== 51672 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #99994: <==uncertain_firing== 83895 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (at_b_l2)
                           (Bb_secret_c))
        :effect (and
                    ; #13835: <==commonly_known== 40251 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #17884: <==commonly_known== 75039 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #19877: <==commonly_known== 70094 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #23831: <==closure== 74168 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #26354: <==commonly_known== 64964 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #28254: <==commonly_known== 82810 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #34612: <==closure== 17884 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #38048: <==commonly_known== 99155 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_c))

                    ; #39313: <==closure== 69808 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #44229: <==commonly_known== 99155 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #46212: <==commonly_known== 70094 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #52136: <==commonly_known== 75039 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #53096: <==commonly_known== 64964 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #54381: <==commonly_known== 89933 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #56567: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #57942: <==commonly_known== 46351 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #60855: <==closure== 53096 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #64964: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #69808: <==commonly_known== 56567 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #70094: <==closure== 75039 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #72928: <==commonly_known== 82810 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #74168: <==commonly_known== 56567 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_c))

                    ; #75039: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #78845: <==commonly_known== 46351 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #80564: <==closure== 52136 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #82810: <==closure== 64964 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #86859: <==commonly_known== 89933 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_c))

                    ; #89057: <==closure== 26354 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_c))

                    ; #89933: <==closure== 56567 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #94302: <==commonly_known== 40251 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #12502: <==negation-removal== 56567 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #12945: <==negation-removal== 39313 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #14218: <==negation-removal== 75039 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #14294: <==uncertain_firing== 69808 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #16014: <==negation-removal== 54381 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #16088: <==uncertain_firing== 54381 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #16148: <==negation-removal== 72928 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #16482: <==negation-removal== 94302 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #16982: <==negation-removal== 52136 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #18350: <==negation-removal== 89933 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #20737: <==negation-removal== 64964 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22032: <==negation-removal== 28254 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #22038: <==negation-removal== 57942 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #22174: <==negation-removal== 86859 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #22207: <==negation-removal== 17884 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #22713: <==negation-removal== 53096 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #24108: <==uncertain_firing== 17884 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #25877: <==negation-removal== 13835 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #29311: <==uncertain_firing== 53096 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #29635: <==uncertain_firing== 26354 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #30301: <==uncertain_firing== 46212 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #32558: <==uncertain_firing== 74168 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #34218: <==uncertain_firing== 23831 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #36256: <==negation-removal== 69808 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36346: <==uncertain_firing== 44229 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #37744: <==uncertain_firing== 89933 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #40016: <==uncertain_firing== 38048 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #40251: <==uncertain_firing== 64964 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #45608: <==negation-removal== 23831 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #46351: <==uncertain_firing== 75039 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #50465: <==negation-removal== 70094 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #53639: <==negation-removal== 44229 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #58885: <==uncertain_firing== 19877 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #59180: <==negation-removal== 38048 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #59193: <==uncertain_firing== 39313 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #59860: <==uncertain_firing== 82810 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #60649: <==uncertain_firing== 13835 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #63733: <==negation-removal== 74168 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #64011: <==negation-removal== 34612 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #68802: <==negation-removal== 80564 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #69245: <==uncertain_firing== 86859 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #72140: <==uncertain_firing== 78845 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #72581: <==uncertain_firing== 28254 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #73511: <==negation-removal== 46212 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #76626: <==uncertain_firing== 34612 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #77841: <==uncertain_firing== 89057 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #78403: <==negation-removal== 19877 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #79020: <==uncertain_firing== 80564 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #80545: <==negation-removal== 60855 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #84973: <==uncertain_firing== 72928 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #86104: <==uncertain_firing== 60855 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #87162: <==uncertain_firing== 70094 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #87617: <==negation-removal== 26354 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #88397: <==negation-removal== 89057 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #89074: <==negation-removal== 78845 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #89184: <==uncertain_firing== 94302 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #89553: <==uncertain_firing== 52136 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #90312: <==negation-removal== 82810 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #96605: <==uncertain_firing== 57942 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #99155: <==uncertain_firing== 56567 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))))

    (:action share_c_a_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_a)
                           (Pc_secret_a))
        :effect (and
                    ; #21247: <==commonly_known== 37806 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_a))

                    ; #24646: <==commonly_known== 43826 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_a))

                    ; #25631: <==commonly_known== 20668 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_a))

                    ; #26894: <==commonly_known== 66732 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_a))

                    ; #30600: <==commonly_known== 59531 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_a))

                    ; #31662: <==commonly_known== 66732 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_a))

                    ; #32046: <==commonly_known== 37806 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_a))

                    ; #34108: <==commonly_known== 64107 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_a))

                    ; #37806: <==closure== 64107 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #38463: <==commonly_known== 27934 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_a))

                    ; #41723: <==commonly_known== 75435 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_a))

                    ; #42337: <==commonly_known== 75435 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_a))

                    ; #43826: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #48049: <==commonly_known== 78176 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_a))

                    ; #52858: <==commonly_known== 64107 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_a))

                    ; #59531: <==closure== 75435 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #61059: <==closure== 72980 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_a))

                    ; #64107: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #66732: <==closure== 43826 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #72980: <==commonly_known== 43826 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_a))

                    ; #75435: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #75436: <==commonly_known== 20668 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_a))

                    ; #78207: <==commonly_known== 59531 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_a))

                    ; #81902: <==closure== 24646 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_a))

                    ; #83767: <==closure== 52858 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_a))

                    ; #85313: <==commonly_known== 78176 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_a))

                    ; #87272: <==closure== 41723 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_a))

                    ; #87986: <==commonly_known== 27934 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_a))

                    ; #94806: <==closure== 42337 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_a))

                    ; #99197: <==closure== 34108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_a))

                    ; #10569: <==negation-removal== 94806 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #12330: <==uncertain_firing== 87986 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #12530: <==negation-removal== 59531 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #14399: <==uncertain_firing== 42337 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #17205: <==negation-removal== 87986 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #17611: <==uncertain_firing== 81902 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #17868: <==negation-removal== 85313 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #20668: <==uncertain_firing== 64107 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #21674: <==uncertain_firing== 99197 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #23238: <==uncertain_firing== 61059 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #24758: <==negation-removal== 24646 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #25992: <==negation-removal== 52858 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #27181: <==negation-removal== 42337 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #27934: <==uncertain_firing== 75435 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #29687: <==uncertain_firing== 26894 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #30577: <==uncertain_firing== 30600 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30971: <==negation-removal== 64107 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31381: <==uncertain_firing== 78207 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #31852: <==uncertain_firing== 38463 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #33488: <==uncertain_firing== 66732 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #35686: <==negation-removal== 75435 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #35698: <==uncertain_firing== 25631 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #36120: <==uncertain_firing== 72980 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #38033: <==negation-removal== 81902 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #38742: <==negation-removal== 21247 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #39649: <==uncertain_firing== 48049 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #41096: <==uncertain_firing== 37806 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #42064: <==negation-removal== 99197 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #44008: <==negation-removal== 43826 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #48218: <==negation-removal== 75436 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #49365: <==negation-removal== 83767 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #51168: <==uncertain_firing== 24646 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #51948: <==negation-removal== 32046 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #53171: <==uncertain_firing== 21247 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #54413: <==uncertain_firing== 34108 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #59786: <==uncertain_firing== 83767 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #59954: <==negation-removal== 48049 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #61340: <==uncertain_firing== 52858 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #63280: <==uncertain_firing== 85313 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #64706: <==uncertain_firing== 32046 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #67641: <==uncertain_firing== 94806 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #67711: <==negation-removal== 87272 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #69279: <==negation-removal== 37806 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #69403: <==negation-removal== 72980 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #70085: <==negation-removal== 61059 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #71566: <==uncertain_firing== 75436 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #74696: <==uncertain_firing== 31662 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #77376: <==negation-removal== 34108 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #77559: <==negation-removal== 38463 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #78176: <==uncertain_firing== 43826 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #78707: <==uncertain_firing== 59531 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #79458: <==negation-removal== 78207 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #79990: <==negation-removal== 66732 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #87232: <==negation-removal== 31662 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #87535: <==negation-removal== 25631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #90153: <==negation-removal== 30600 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #90328: <==uncertain_firing== 87272 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #90455: <==negation-removal== 41723 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #91267: <==negation-removal== 26894 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #92392: <==uncertain_firing== 41723 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Pc_secret_a)
                           (at_c_l2)
                           (Bc_secret_a))
        :effect (and
                    ; #11676: <==commonly_known== 66623 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_a))

                    ; #11800: <==closure== 44721 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #16089: <==commonly_known== 21542 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_a))

                    ; #16958: <==commonly_known== 21542 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_a))

                    ; #19246: <==closure== 91065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_a))

                    ; #19680: <==commonly_known== 44117 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_a))

                    ; #20817: <==closure== 70961 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_a))

                    ; #23245: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #26168: <==commonly_known== 66623 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_a))

                    ; #29837: <==closure== 92165 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_a))

                    ; #30363: <==commonly_known== 67227 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_a))

                    ; #34685: <==closure== 30363 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_a))

                    ; #43052: <==closure== 54017 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_a))

                    ; #44117: <==closure== 67227 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #44721: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #52489: <==commonly_known== 34266 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_a))

                    ; #54017: <==commonly_known== 23245 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_a))

                    ; #54398: <==closure== 60600 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_a))

                    ; #60600: <==commonly_known== 44721 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_a))

                    ; #67227: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #69782: <==commonly_known== 34266 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_a))

                    ; #70961: <==commonly_known== 23245 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_a))

                    ; #71016: <==commonly_known== 74663 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_a))

                    ; #74663: <==closure== 23245 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #76004: <==commonly_known== 11800 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_a))

                    ; #79670: <==commonly_known== 44117 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_a))

                    ; #83026: <==commonly_known== 11800 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_a))

                    ; #91065: <==commonly_known== 67227 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_a))

                    ; #91563: <==commonly_known== 74663 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_a))

                    ; #92165: <==commonly_known== 44721 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_a))

                    ; #10243: <==negation-removal== 34685 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_a)))

                    ; #11366: <==negation-removal== 43052 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_a)))

                    ; #12908: <==uncertain_firing== 79670 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_a)))

                    ; #18454: <==uncertain_firing== 11676 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_a)))

                    ; #18592: <==uncertain_firing== 16958 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_a)))

                    ; #19610: <==uncertain_firing== 69782 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_a)))

                    ; #19627: <==negation-removal== 11800 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #19687: <==uncertain_firing== 52489 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_a)))

                    ; #20047: <==uncertain_firing== 34685 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_a)))

                    ; #21542: <==uncertain_firing== 44721 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #22541: <==uncertain_firing== 20817 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_a)))

                    ; #22624: <==negation-removal== 54398 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_a)))

                    ; #22760: <==uncertain_firing== 19246 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_a)))

                    ; #25541: <==negation-removal== 20817 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_a)))

                    ; #27310: <==uncertain_firing== 91065 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_a)))

                    ; #28130: <==negation-removal== 26168 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_a)))

                    ; #28968: <==negation-removal== 19246 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_a)))

                    ; #29273: <==negation-removal== 23245 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #29683: <==uncertain_firing== 19680 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_a)))

                    ; #30029: <==uncertain_firing== 74663 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #30167: <==uncertain_firing== 43052 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_a)))

                    ; #30715: <==negation-removal== 19680 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_a)))

                    ; #32315: <==negation-removal== 71016 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_a)))

                    ; #33523: <==negation-removal== 91563 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_a)))

                    ; #34266: <==uncertain_firing== 67227 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #34419: <==uncertain_firing== 60600 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_a)))

                    ; #34463: <==negation-removal== 92165 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_a)))

                    ; #35006: <==negation-removal== 52489 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_a)))

                    ; #37248: <==negation-removal== 70961 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_a)))

                    ; #38102: <==negation-removal== 44117 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #39336: <==negation-removal== 11676 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_a)))

                    ; #39365: <==uncertain_firing== 76004 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_a)))

                    ; #40576: <==negation-removal== 69782 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_a)))

                    ; #41357: <==negation-removal== 79670 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_a)))

                    ; #44773: <==negation-removal== 67227 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45179: <==negation-removal== 60600 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_a)))

                    ; #46722: <==uncertain_firing== 92165 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_a)))

                    ; #47710: <==negation-removal== 54017 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_a)))

                    ; #49098: <==uncertain_firing== 16089 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_a)))

                    ; #54224: <==uncertain_firing== 54017 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_a)))

                    ; #57102: <==negation-removal== 16089 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_a)))

                    ; #58395: <==uncertain_firing== 54398 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_a)))

                    ; #60091: <==uncertain_firing== 91563 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_a)))

                    ; #63267: <==uncertain_firing== 71016 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_a)))

                    ; #65048: <==negation-removal== 76004 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_a)))

                    ; #66623: <==uncertain_firing== 23245 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #67387: <==negation-removal== 30363 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_a)))

                    ; #68053: <==uncertain_firing== 26168 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_a)))

                    ; #69903: <==uncertain_firing== 83026 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_a)))

                    ; #71619: <==negation-removal== 16958 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_a)))

                    ; #73429: <==negation-removal== 83026 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_a)))

                    ; #73614: <==uncertain_firing== 29837 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_a)))

                    ; #80151: <==uncertain_firing== 70961 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_a)))

                    ; #82798: <==uncertain_firing== 11800 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #83268: <==negation-removal== 91065 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_a)))

                    ; #83657: <==uncertain_firing== 30363 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_a)))

                    ; #84190: <==uncertain_firing== 44117 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #86831: <==negation-removal== 74663 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #88945: <==negation-removal== 29837 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_a)))

                    ; #90643: <==negation-removal== 44721 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Pc_secret_b)
                           (at_c_l1)
                           (Bc_secret_b))
        :effect (and
                    ; #11562: <==commonly_known== 22486 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_b))

                    ; #11677: <==commonly_known== 45165 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_b))

                    ; #15157: <==commonly_known== 65730 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_b))

                    ; #17617: <==commonly_known== 57551 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_b))

                    ; #18265: <==closure== 57551 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #22486: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #25953: <==commonly_known== 33645 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_b))

                    ; #27269: <==commonly_known== 75639 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_b))

                    ; #27631: <==commonly_known== 65238 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_b))

                    ; #29092: <==closure== 71236 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_b))

                    ; #33645: <==closure== 22486 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #37168: <==closure== 75328 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_b))

                    ; #38354: <==commonly_known== 21328 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_b))

                    ; #39593: <==commonly_known== 22486 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_b))

                    ; #40493: <==closure== 27631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_b))

                    ; #44375: <==closure== 17617 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_b))

                    ; #51780: <==commonly_known== 75639 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_b))

                    ; #57551: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #63258: <==commonly_known== 18265 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_b))

                    ; #65238: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #66458: <==commonly_known== 33645 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_b))

                    ; #71236: <==commonly_known== 65238 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_b))

                    ; #74411: <==commonly_known== 21328 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_b))

                    ; #75328: <==commonly_known== 57551 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_b))

                    ; #75639: <==closure== 65238 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #83870: <==commonly_known== 65730 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_b))

                    ; #83876: <==closure== 39593 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_b))

                    ; #84598: <==commonly_known== 18265 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_b))

                    ; #89413: <==commonly_known== 45165 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_b))

                    ; #95934: <==closure== 11562 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_b))

                    ; #10429: <==uncertain_firing== 15157 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #10476: <==uncertain_firing== 74411 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #12330: <==uncertain_firing== 33645 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #13131: <==uncertain_firing== 27631 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #13329: <==negation-removal== 33645 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #13892: <==negation-removal== 40493 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #16689: <==uncertain_firing== 44375 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #17559: <==negation-removal== 25953 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #18733: <==negation-removal== 27269 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #19139: <==negation-removal== 51780 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #20443: <==negation-removal== 11562 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #21328: <==uncertain_firing== 57551 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #23823: <==negation-removal== 75328 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #26715: <==uncertain_firing== 25953 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #29586: <==negation-removal== 38354 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #30990: <==uncertain_firing== 38354 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #31209: <==negation-removal== 83876 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #32674: <==negation-removal== 83870 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #33159: <==uncertain_firing== 39593 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #33406: <==negation-removal== 84598 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_b)))

                    ; #35102: <==negation-removal== 15157 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #39564: <==negation-removal== 11677 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #41388: <==uncertain_firing== 89413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #42560: <==negation-removal== 89413 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #43014: <==uncertain_firing== 11677 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #44656: <==negation-removal== 29092 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #44681: <==negation-removal== 65238 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #45165: <==uncertain_firing== 65238 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #47980: <==negation-removal== 27631 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #50629: <==negation-removal== 74411 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #51549: <==negation-removal== 22486 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #54733: <==uncertain_firing== 11562 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #56563: <==uncertain_firing== 71236 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #58935: <==uncertain_firing== 27269 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #61353: <==negation-removal== 57551 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #63735: <==uncertain_firing== 37168 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #63796: <==uncertain_firing== 40493 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #64845: <==negation-removal== 63258 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #65730: <==uncertain_firing== 22486 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #66984: <==uncertain_firing== 75639 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #67418: <==uncertain_firing== 29092 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #67465: <==uncertain_firing== 17617 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #67956: <==negation-removal== 37168 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #69289: <==uncertain_firing== 84598 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #71277: <==uncertain_firing== 18265 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #78049: <==negation-removal== 44375 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #78269: <==uncertain_firing== 83870 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #78284: <==negation-removal== 18265 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #79334: <==negation-removal== 39593 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #81288: <==uncertain_firing== 63258 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #82051: <==negation-removal== 95934 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #83636: <==uncertain_firing== 83876 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #86383: <==negation-removal== 17617 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #86748: <==negation-removal== 75639 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #86881: <==uncertain_firing== 95934 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #87758: <==negation-removal== 66458 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #87961: <==uncertain_firing== 51780 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #88563: <==negation-removal== 71236 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #88760: <==uncertain_firing== 66458 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #96711: <==uncertain_firing== 75328 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Pc_secret_b)
                           (at_c_l2)
                           (Bc_secret_b))
        :effect (and
                    ; #13087: <==commonly_known== 48093 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_b))

                    ; #16872: <==commonly_known== 18997 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_b))

                    ; #19243: <==commonly_known== 24476 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_b))

                    ; #20471: <==commonly_known== 44237 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_b))

                    ; #24476: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #24833: <==commonly_known== 48093 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_b))

                    ; #25178: <==commonly_known== 75761 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_b))

                    ; #27125: <==commonly_known== 50930 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_b))

                    ; #29722: <==commonly_known== 24476 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_b))

                    ; #32489: <==commonly_known== 75761 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_b))

                    ; #42394: <==commonly_known== 45601 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_b))

                    ; #45601: <==closure== 24476 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #48093: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #49037: <==closure== 29722 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_b))

                    ; #50758: <==commonly_known== 63764 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_b))

                    ; #50930: <==closure== 63764 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #52913: <==commonly_known== 45601 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_b))

                    ; #63107: <==closure== 24833 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_b))

                    ; #63764: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #68773: <==commonly_known== 50930 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_b))

                    ; #70480: <==closure== 50758 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_b))

                    ; #72181: <==commonly_known== 44237 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_b))

                    ; #72504: <==closure== 83075 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_b))

                    ; #72679: <==commonly_known== 51264 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_b))

                    ; #75761: <==closure== 48093 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #77440: <==commonly_known== 18997 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_b))

                    ; #83075: <==commonly_known== 63764 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_b))

                    ; #86075: <==closure== 19243 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_b))

                    ; #90402: <==closure== 13087 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_b))

                    ; #90830: <==commonly_known== 51264 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_b))

                    ; #10318: <==negation-removal== 24476 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #12435: <==uncertain_firing== 25178 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_b)))

                    ; #16052: <==uncertain_firing== 29722 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_b)))

                    ; #17659: <==uncertain_firing== 83075 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_b)))

                    ; #17856: <==uncertain_firing== 90830 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_b)))

                    ; #18997: <==uncertain_firing== 63764 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #19595: <==uncertain_firing== 50930 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #20844: <==negation-removal== 20471 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_b)))

                    ; #20960: <==uncertain_firing== 68773 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_b)))

                    ; #24332: <==negation-removal== 48093 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #24886: <==negation-removal== 72679 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_b)))

                    ; #26064: <==negation-removal== 42394 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_b)))

                    ; #30128: <==negation-removal== 63107 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_b)))

                    ; #31114: <==negation-removal== 77440 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_b)))

                    ; #32033: <==uncertain_firing== 63107 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_b)))

                    ; #32126: <==uncertain_firing== 24833 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_b)))

                    ; #32600: <==negation-removal== 19243 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_b)))

                    ; #34837: <==uncertain_firing== 20471 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_b)))

                    ; #39159: <==uncertain_firing== 45601 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #39820: <==negation-removal== 90402 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_b)))

                    ; #40686: <==negation-removal== 52913 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_b)))

                    ; #41582: <==negation-removal== 72504 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_b)))

                    ; #41633: <==negation-removal== 63764 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #42203: <==negation-removal== 75761 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #42342: <==uncertain_firing== 49037 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_b)))

                    ; #42447: <==negation-removal== 32489 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_b)))

                    ; #42602: <==uncertain_firing== 42394 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_b)))

                    ; #43249: <==negation-removal== 25178 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_b)))

                    ; #43892: <==uncertain_firing== 50758 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_b)))

                    ; #44152: <==uncertain_firing== 13087 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_b)))

                    ; #44237: <==uncertain_firing== 48093 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #44396: <==negation-removal== 72181 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_b)))

                    ; #45011: <==negation-removal== 50758 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_b)))

                    ; #48964: <==uncertain_firing== 72679 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_b)))

                    ; #51117: <==negation-removal== 45601 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #51215: <==negation-removal== 90830 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_b)))

                    ; #51264: <==uncertain_firing== 24476 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #54846: <==uncertain_firing== 72181 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_b)))

                    ; #55359: <==negation-removal== 83075 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_b)))

                    ; #56848: <==uncertain_firing== 77440 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_b)))

                    ; #56854: <==uncertain_firing== 72504 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_b)))

                    ; #58838: <==negation-removal== 29722 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_b)))

                    ; #59296: <==negation-removal== 16872 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_b)))

                    ; #60334: <==uncertain_firing== 70480 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_b)))

                    ; #63433: <==negation-removal== 49037 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_b)))

                    ; #66718: <==uncertain_firing== 32489 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_b)))

                    ; #68433: <==negation-removal== 70480 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_b)))

                    ; #68779: <==uncertain_firing== 27125 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_b)))

                    ; #68998: <==uncertain_firing== 52913 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_b)))

                    ; #74457: <==negation-removal== 13087 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_b)))

                    ; #75384: <==uncertain_firing== 75761 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #75781: <==uncertain_firing== 90402 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_b)))

                    ; #75848: <==negation-removal== 50930 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78388: <==negation-removal== 68773 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_b)))

                    ; #82718: <==uncertain_firing== 86075 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_b)))

                    ; #84659: <==negation-removal== 86075 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_b)))

                    ; #85724: <==uncertain_firing== 19243 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_b)))

                    ; #89757: <==negation-removal== 24833 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_b)))

                    ; #91587: <==uncertain_firing== 16872 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_b)))

                    ; #99727: <==negation-removal== 27125 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #10406: <==commonly_known== 63876 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Pa_secret_c))

                    ; #11055: <==commonly_known== 63876 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Pa_secret_c))

                    ; #11136: <==commonly_known== 68835 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Bc_secret_c))

                    ; #15094: <==commonly_known== 19973 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Pc_secret_c))

                    ; #19389: <==closure== 72844 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Pb_secret_c))

                    ; #19595: <==commonly_known== 83895 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Bb_Ba_secret_c))

                    ; #19735: <==commonly_known== 54775 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Pb_secret_c))

                    ; #19973: <==closure== 68835 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #22296: <==commonly_known== 99994 (neg)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pb_Ba_secret_c))

                    ; #22657: <==commonly_known== 68835 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Ba_Bc_secret_c))

                    ; #32010: <==commonly_known== 19973 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bb_Pc_secret_c))

                    ; #35930: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36170: <==closure== 59123 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Pa_secret_c))

                    ; #41703: <==closure== 11136 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Pc_secret_c))

                    ; #46665: <==commonly_known== 35483 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Bc_secret_c))

                    ; #49601: <==closure== 19595 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pb_Pa_secret_c))

                    ; #51672: <==commonly_known== 35483 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pb_Bc_secret_c))

                    ; #54775: <==closure== 35930 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #57145: <==commonly_known== 35930 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Ba_Bb_secret_c))

                    ; #58413: <==commonly_known== 73304 (neg)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Pc_Bb_secret_c))

                    ; #59123: <==commonly_known== 83895 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Bc_Ba_secret_c))

                    ; #60966: <==closure== 22657 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pa_Pc_secret_c))

                    ; #63399: <==closure== 57145 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (Pa_Pb_secret_c))

                    ; #63876: <==closure== 83895 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #65921: <==commonly_known== 54775 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Pb_secret_c))

                    ; #68835: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #72844: <==commonly_known== 35930 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (Bc_Bb_secret_c))

                    ; #77892: <==commonly_known== 73304 (neg)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (Pa_Bb_secret_c))

                    ; #83895: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #86485: <==commonly_known== 99994 (neg)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (Pc_Ba_secret_c))

                    ; #11851: <==negation-removal== 19973 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #13120: <==uncertain_firing== 54775 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #13322: <==uncertain_firing== 11055 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #16678: <==negation-removal== 11136 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #17125: <==negation-removal== 60966 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #17852: <==negation-removal== 11055 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #18284: <==negation-removal== 35930 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #19961: <==uncertain_firing== 65921 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #22353: <==uncertain_firing== 60966 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #24399: <==uncertain_firing== 11136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #25109: <==uncertain_firing== 19735 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #25888: <==negation-removal== 58413 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #27079: <==uncertain_firing== 19389 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #27107: <==negation-removal== 54775 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #28405: <==negation-removal== 41703 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #28512: <==uncertain_firing== 46665 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #29716: <==uncertain_firing== 86485 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #30138: <==uncertain_firing== 41703 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #30232: <==uncertain_firing== 57145 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #35441: <==uncertain_firing== 51672 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #35483: <==uncertain_firing== 68835 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #37465: <==uncertain_firing== 19973 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #37984: <==uncertain_firing== 77892 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #38740: <==negation-removal== 72844 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #38928: <==negation-removal== 86485 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #41049: <==negation-removal== 49601 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #43528: <==uncertain_firing== 63876 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #43969: <==negation-removal== 83895 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #45668: <==negation-removal== 36170 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #45775: <==uncertain_firing== 22657 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #46487: <==uncertain_firing== 15094 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #47218: <==uncertain_firing== 49601 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #49103: <==negation-removal== 15094 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #53536: <==negation-removal== 77892 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #55072: <==negation-removal== 57145 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #61843: <==negation-removal== 19389 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #62392: <==uncertain_firing== 58413 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #62562: <==negation-removal== 19595 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #62873: <==uncertain_firing== 32010 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #64280: <==negation-removal== 63399 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #69195: <==negation-removal== 65921 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #70438: <==negation-removal== 68835 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #70752: <==uncertain_firing== 63399 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #72030: <==negation-removal== 19735 (pos)
                    (when (and (and (at_a_l1)
                               (at_b_l1)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #73304: <==uncertain_firing== 35930 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #74307: <==negation-removal== 22296 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #79301: <==uncertain_firing== 72844 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #81068: <==negation-removal== 22657 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #81489: <==uncertain_firing== 19595 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #81878: <==negation-removal== 10406 (pos)
                    (when (and (and (at_b_l1)
                               (at_a_l1)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #82410: <==uncertain_firing== 22296 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #82704: <==negation-removal== 59123 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #83699: <==uncertain_firing== 59123 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #87449: <==uncertain_firing== 36170 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_c_l1))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #87957: <==negation-removal== 32010 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #88260: <==negation-removal== 63876 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #89816: <==uncertain_firing== 10406 (pos)
                    (when (and (and (not (not_at_a_l1))
                               (not (not_at_b_l1))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #90750: <==negation-removal== 46665 (pos)
                    (when (and (and (at_c_l1)
                               (at_a_l1)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #91888: <==negation-removal== 51672 (pos)
                    (when (and (and (at_c_l1)
                               (at_b_l1)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #99994: <==uncertain_firing== 83895 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #13835: <==commonly_known== 40251 (neg)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pc_Bb_secret_c))

                    ; #17884: <==commonly_known== 75039 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Ba_secret_c))

                    ; #19877: <==commonly_known== 70094 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Bb_Pa_secret_c))

                    ; #23831: <==closure== 74168 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Pb_Pc_secret_c))

                    ; #26354: <==commonly_known== 64964 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Bb_secret_c))

                    ; #28254: <==commonly_known== 82810 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (Bc_Pb_secret_c))

                    ; #34612: <==closure== 17884 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Pa_secret_c))

                    ; #38048: <==commonly_known== 99155 (neg)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pb_Bc_secret_c))

                    ; #39313: <==closure== 69808 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Pc_secret_c))

                    ; #44229: <==commonly_known== 99155 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pa_Bc_secret_c))

                    ; #46212: <==commonly_known== 70094 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Pa_secret_c))

                    ; #52136: <==commonly_known== 75039 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Bc_Ba_secret_c))

                    ; #53096: <==commonly_known== 64964 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Bb_secret_c))

                    ; #54381: <==commonly_known== 89933 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Pc_secret_c))

                    ; #56567: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #57942: <==commonly_known== 46351 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pb_Ba_secret_c))

                    ; #60855: <==closure== 53096 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Pb_secret_c))

                    ; #64964: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #69808: <==commonly_known== 56567 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Ba_Bc_secret_c))

                    ; #70094: <==closure== 75039 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #72928: <==commonly_known== 82810 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Ba_Pb_secret_c))

                    ; #74168: <==commonly_known== 56567 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Bc_secret_c))

                    ; #75039: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #78845: <==commonly_known== 46351 (neg)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Ba_secret_c))

                    ; #80564: <==closure== 52136 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (Pc_Pa_secret_c))

                    ; #82810: <==closure== 64964 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #86859: <==commonly_known== 89933 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Bb_Pc_secret_c))

                    ; #89057: <==closure== 26354 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (Pc_Pb_secret_c))

                    ; #89933: <==closure== 56567 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #94302: <==commonly_known== 40251 (neg)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (Pa_Bb_secret_c))

                    ; #12502: <==negation-removal== 56567 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #12945: <==negation-removal== 39313 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Bc_not_secret_c)))

                    ; #14218: <==negation-removal== 75039 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #14294: <==uncertain_firing== 69808 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pc_not_secret_c)))

                    ; #16014: <==negation-removal== 54381 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Bc_not_secret_c)))

                    ; #16088: <==uncertain_firing== 54381 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bc_not_secret_c)))

                    ; #16148: <==negation-removal== 72928 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Bb_not_secret_c)))

                    ; #16482: <==negation-removal== 94302 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Pb_not_secret_c)))

                    ; #16982: <==negation-removal== 52136 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Pa_not_secret_c)))

                    ; #18350: <==negation-removal== 89933 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #20737: <==negation-removal== 64964 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #22032: <==negation-removal== 28254 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Bb_not_secret_c)))

                    ; #22038: <==negation-removal== 57942 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Pa_not_secret_c)))

                    ; #22174: <==negation-removal== 86859 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Bc_not_secret_c)))

                    ; #22207: <==negation-removal== 17884 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Pa_not_secret_c)))

                    ; #22713: <==negation-removal== 53096 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pa_Pb_not_secret_c)))

                    ; #24108: <==uncertain_firing== 17884 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Pa_not_secret_c)))

                    ; #25877: <==negation-removal== 13835 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bc_Pb_not_secret_c)))

                    ; #29311: <==uncertain_firing== 53096 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Pb_not_secret_c)))

                    ; #29635: <==uncertain_firing== 26354 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Pb_not_secret_c)))

                    ; #30301: <==uncertain_firing== 46212 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Ba_not_secret_c)))

                    ; #32558: <==uncertain_firing== 74168 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Pc_not_secret_c)))

                    ; #34218: <==uncertain_firing== 23831 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Bc_not_secret_c)))

                    ; #36256: <==negation-removal== 69808 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pa_Pc_not_secret_c)))

                    ; #36346: <==uncertain_firing== 44229 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pc_not_secret_c)))

                    ; #37744: <==uncertain_firing== 89933 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #40016: <==uncertain_firing== 38048 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bb_Pc_not_secret_c)))

                    ; #40251: <==uncertain_firing== 64964 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #45608: <==negation-removal== 23831 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Bb_Bc_not_secret_c)))

                    ; #46351: <==uncertain_firing== 75039 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #50465: <==negation-removal== 70094 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #53639: <==negation-removal== 44229 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Ba_Pc_not_secret_c)))

                    ; #58885: <==uncertain_firing== 19877 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pb_Ba_not_secret_c)))

                    ; #59180: <==negation-removal== 38048 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bb_Pc_not_secret_c)))

                    ; #59193: <==uncertain_firing== 39313 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bc_not_secret_c)))

                    ; #59860: <==uncertain_firing== 82810 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #60649: <==uncertain_firing== 13835 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Pb_not_secret_c)))

                    ; #63733: <==negation-removal== 74168 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Pb_Pc_not_secret_c)))

                    ; #64011: <==negation-removal== 34612 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Bb_Ba_not_secret_c)))

                    ; #68802: <==negation-removal== 80564 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Ba_not_secret_c)))

                    ; #69245: <==uncertain_firing== 86859 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pb_Bc_not_secret_c)))

                    ; #72140: <==uncertain_firing== 78845 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Pa_not_secret_c)))

                    ; #72581: <==uncertain_firing== 28254 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Pc_Bb_not_secret_c)))

                    ; #73511: <==negation-removal== 46212 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Pc_Ba_not_secret_c)))

                    ; #76626: <==uncertain_firing== 34612 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Ba_not_secret_c)))

                    ; #77841: <==uncertain_firing== 89057 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_b_l2))))
                          (not (Bc_Bb_not_secret_c)))

                    ; #78403: <==negation-removal== 19877 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Pb_Ba_not_secret_c)))

                    ; #79020: <==uncertain_firing== 80564 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Bc_Ba_not_secret_c)))

                    ; #80545: <==negation-removal== 60855 (pos)
                    (when (and (and (at_a_l2)
                               (at_b_l2)))
                          (not (Ba_Bb_not_secret_c)))

                    ; #84973: <==uncertain_firing== 72928 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Pa_Bb_not_secret_c)))

                    ; #86104: <==uncertain_firing== 60855 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Bb_not_secret_c)))

                    ; #87162: <==uncertain_firing== 70094 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #87617: <==negation-removal== 26354 (pos)
                    (when (and (and (at_c_l2)
                               (at_b_l2)))
                          (not (Pc_Pb_not_secret_c)))

                    ; #88397: <==negation-removal== 89057 (pos)
                    (when (and (and (at_b_l2)
                               (at_c_l2)))
                          (not (Bc_Bb_not_secret_c)))

                    ; #89074: <==negation-removal== 78845 (pos)
                    (when (and (and (at_a_l2)
                               (at_c_l2)))
                          (not (Bc_Pa_not_secret_c)))

                    ; #89184: <==uncertain_firing== 94302 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Ba_Pb_not_secret_c)))

                    ; #89553: <==uncertain_firing== 52136 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (not_at_a_l2))))
                          (not (Pc_Pa_not_secret_c)))

                    ; #90312: <==negation-removal== 82810 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #96605: <==uncertain_firing== 57942 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (not_at_a_l2))))
                          (not (Bb_Pa_not_secret_c)))

                    ; #99155: <==uncertain_firing== 56567 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))))

)