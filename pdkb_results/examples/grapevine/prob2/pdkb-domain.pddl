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
                    ; #52046: origin
                    (not_at_a_l1)

                    ; #77651: origin
                    (at_a_l1)

                    ; #52046: <==negation-removal== 77651 (pos)
                    (not (not_at_a_l1))

                    ; #77651: <==negation-removal== 52046 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #52046: origin
                    (not_at_a_l1)

                    ; #52735: origin
                    (at_a_l2)

                    ; #69206: <==negation-removal== 52735 (pos)
                    (not (not_at_a_l2))

                    ; #77651: <==negation-removal== 52046 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_a_l2))
        :effect (and
                    ; #69206: origin
                    (not_at_a_l2)

                    ; #77651: origin
                    (at_a_l1)

                    ; #52046: <==negation-removal== 77651 (pos)
                    (not (not_at_a_l1))

                    ; #52735: <==negation-removal== 69206 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_a_l2))
        :effect (and
                    ; #52735: origin
                    (at_a_l2)

                    ; #69206: origin
                    (not_at_a_l2)

                    ; #52735: <==negation-removal== 69206 (pos)
                    (not (at_a_l2))

                    ; #69206: <==negation-removal== 52735 (pos)
                    (not (not_at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #73719: origin
                    (not_at_b_l1)

                    ; #76471: origin
                    (at_b_l1)

                    ; #73719: <==negation-removal== 76471 (pos)
                    (not (not_at_b_l1))

                    ; #76471: <==negation-removal== 73719 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #60558: origin
                    (at_b_l2)

                    ; #73719: origin
                    (not_at_b_l1)

                    ; #67009: <==negation-removal== 60558 (pos)
                    (not (not_at_b_l2))

                    ; #76471: <==negation-removal== 73719 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #67009: origin
                    (not_at_b_l2)

                    ; #76471: origin
                    (at_b_l1)

                    ; #60558: <==negation-removal== 67009 (pos)
                    (not (at_b_l2))

                    ; #73719: <==negation-removal== 76471 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #60558: origin
                    (at_b_l2)

                    ; #67009: origin
                    (not_at_b_l2)

                    ; #60558: <==negation-removal== 67009 (pos)
                    (not (at_b_l2))

                    ; #67009: <==negation-removal== 60558 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_c_l1))
        :effect (and
                    ; #31724: origin
                    (at_c_l1)

                    ; #35264: origin
                    (not_at_c_l1)

                    ; #31724: <==negation-removal== 35264 (pos)
                    (not (at_c_l1))

                    ; #35264: <==negation-removal== 31724 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #35264: origin
                    (not_at_c_l1)

                    ; #40780: origin
                    (at_c_l2)

                    ; #31724: <==negation-removal== 35264 (pos)
                    (not (at_c_l1))

                    ; #53223: <==negation-removal== 40780 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #31724: origin
                    (at_c_l1)

                    ; #53223: origin
                    (not_at_c_l2)

                    ; #35264: <==negation-removal== 31724 (pos)
                    (not (not_at_c_l1))

                    ; #40780: <==negation-removal== 53223 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #40780: origin
                    (at_c_l2)

                    ; #53223: origin
                    (not_at_c_l2)

                    ; #40780: <==negation-removal== 53223 (pos)
                    (not (at_c_l2))

                    ; #53223: <==negation-removal== 40780 (pos)
                    (not (not_at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_d_l1))
        :effect (and
                    ; #50438: origin
                    (not_at_d_l1)

                    ; #56162: origin
                    (at_d_l1)

                    ; #50438: <==negation-removal== 56162 (pos)
                    (not (not_at_d_l1))

                    ; #56162: <==negation-removal== 50438 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #50438: origin
                    (not_at_d_l1)

                    ; #71447: origin
                    (at_d_l2)

                    ; #56162: <==negation-removal== 50438 (pos)
                    (not (at_d_l1))

                    ; #61586: <==negation-removal== 71447 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #56162: origin
                    (at_d_l1)

                    ; #61586: origin
                    (not_at_d_l2)

                    ; #50438: <==negation-removal== 56162 (pos)
                    (not (not_at_d_l1))

                    ; #71447: <==negation-removal== 61586 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #61586: origin
                    (not_at_d_l2)

                    ; #71447: origin
                    (at_d_l2)

                    ; #61586: <==negation-removal== 71447 (pos)
                    (not (not_at_d_l2))

                    ; #71447: <==negation-removal== 61586 (pos)
                    (not (at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #10613: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #18185: <==closure== 10613 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #26420: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #34723: <==closure== 26420 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #60798: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #67158: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #71457: <==closure== 67158 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #79751: <==closure== 60798 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #21114: <==negation-removal== 79751 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #25363: <==uncertain_firing== 26420 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #27482: <==negation-removal== 34723 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #29373: <==uncertain_firing== 34723 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #30383: <==negation-removal== 10613 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #33356: <==negation-removal== 60798 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #35606: <==negation-removal== 71457 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #37180: <==uncertain_firing== 67158 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #37920: <==uncertain_firing== 10613 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42861: <==negation-removal== 18185 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #52124: <==uncertain_firing== 60798 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #60441: <==negation-removal== 26420 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #62697: <==uncertain_firing== 71457 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #69155: <==negation-removal== 67158 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #80488: <==uncertain_firing== 18185 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81614: <==uncertain_firing== 79751 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Pa_secret_a)
                           (Ba_secret_a)
                           (at_a_l2))
        :effect (and
                    ; #15320: <==closure== 28085 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #28085: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #33318: <==closure== 62448 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #43492: <==closure== 52549 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #52549: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #62448: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #70343: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #87294: <==closure== 70343 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #14134: <==negation-removal== 15320 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #14670: <==negation-removal== 62448 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14770: <==negation-removal== 87294 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15961: <==uncertain_firing== 28085 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #17622: <==uncertain_firing== 62448 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #19175: <==uncertain_firing== 33318 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #21779: <==uncertain_firing== 15320 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #23981: <==negation-removal== 70343 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #25417: <==uncertain_firing== 43492 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #51884: <==uncertain_firing== 70343 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #60942: <==negation-removal== 28085 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #63039: <==uncertain_firing== 52549 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #67893: <==negation-removal== 52549 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #80332: <==negation-removal== 33318 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #85728: <==uncertain_firing== 87294 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #90939: <==negation-removal== 43492 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (at_a_l1)
                           (Pa_secret_b))
        :effect (and
                    ; #22103: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #51184: <==closure== 76656 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #57543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #64908: <==closure== 22103 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #74886: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76656: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #79267: <==closure== 57543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #88313: <==closure== 74886 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #14738: <==uncertain_firing== 64908 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #17985: <==uncertain_firing== 74886 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #28507: <==uncertain_firing== 22103 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #34799: <==negation-removal== 76656 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36527: <==uncertain_firing== 51184 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #49345: <==negation-removal== 88313 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #50482: <==negation-removal== 51184 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #55698: <==negation-removal== 79267 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #65016: <==uncertain_firing== 79267 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #67438: <==negation-removal== 57543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #72714: <==negation-removal== 64908 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #78020: <==uncertain_firing== 76656 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #79774: <==uncertain_firing== 88313 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #80011: <==uncertain_firing== 57543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #82955: <==negation-removal== 22103 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #87052: <==negation-removal== 74886 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l2))
        :effect (and
                    ; #24352: <==closure== 88497 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #26370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #51253: <==closure== 26370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #72432: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #80062: <==closure== 88604 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #81203: <==closure== 72432 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #88497: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #88604: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #15909: <==uncertain_firing== 80062 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #20605: <==uncertain_firing== 51253 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #25106: <==negation-removal== 72432 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #38730: <==negation-removal== 81203 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #44249: <==negation-removal== 51253 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50236: <==uncertain_firing== 88497 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #60040: <==uncertain_firing== 88604 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69806: <==uncertain_firing== 72432 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69860: <==uncertain_firing== 24352 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #70405: <==negation-removal== 24352 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #71420: <==negation-removal== 26370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #80580: <==negation-removal== 88497 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #80704: <==negation-removal== 80062 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #83520: <==uncertain_firing== 26370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #89602: <==negation-removal== 88604 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #93362: <==uncertain_firing== 81203 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (Pa_secret_c)
                           (Ba_secret_c)
                           (at_a_l1))
        :effect (and
                    ; #13147: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35532: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #37336: <==closure== 65616 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #65368: <==closure== 35532 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #65616: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #79155: <==closure== 13147 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #89675: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89965: <==closure== 89675 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #24053: <==negation-removal== 65616 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #34650: <==uncertain_firing== 79155 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #36683: <==negation-removal== 35532 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #37842: <==negation-removal== 79155 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #40408: <==uncertain_firing== 65368 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #53620: <==negation-removal== 89965 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #53679: <==negation-removal== 13147 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #55201: <==uncertain_firing== 13147 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #68471: <==negation-removal== 37336 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #72930: <==uncertain_firing== 37336 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #79296: <==uncertain_firing== 65616 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79513: <==negation-removal== 89675 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #81730: <==uncertain_firing== 89675 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #86945: <==uncertain_firing== 89965 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #92033: <==uncertain_firing== 35532 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #93000: <==negation-removal== 65368 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Pa_secret_c)
                           (Ba_secret_c)
                           (at_a_l2))
        :effect (and
                    ; #22717: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #32310: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #44589: <==closure== 78976 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #49466: <==closure== 32310 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #77313: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #78833: <==closure== 77313 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #78976: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83671: <==closure== 22717 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #12982: <==uncertain_firing== 77313 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #16028: <==uncertain_firing== 83671 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #26841: <==negation-removal== 78976 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #28039: <==negation-removal== 44589 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #31757: <==negation-removal== 32310 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #41838: <==negation-removal== 22717 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #55381: <==negation-removal== 49466 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #68459: <==uncertain_firing== 44589 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #69693: <==uncertain_firing== 32310 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #71769: <==negation-removal== 83671 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #72198: <==uncertain_firing== 49466 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75646: <==uncertain_firing== 22717 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #76338: <==negation-removal== 77313 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #76500: <==uncertain_firing== 78976 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #89302: <==uncertain_firing== 78833 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #89497: <==negation-removal== 78833 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l1))
        :effect (and
                    ; #11615: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #16493: <==closure== 65855 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #19748: <==closure== 11615 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #38811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #51870: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #65855: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #70923: <==closure== 51870 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #75434: <==closure== 38811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #16155: <==negation-removal== 16493 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #18063: <==negation-removal== 70923 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #19322: <==negation-removal== 19748 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #24661: <==uncertain_firing== 65855 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #25978: <==uncertain_firing== 70923 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #26214: <==uncertain_firing== 38811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #35512: <==uncertain_firing== 19748 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #48900: <==uncertain_firing== 51870 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #50887: <==negation-removal== 65855 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #51172: <==negation-removal== 11615 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #53158: <==uncertain_firing== 11615 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57123: <==uncertain_firing== 75434 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #60680: <==negation-removal== 51870 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #82011: <==uncertain_firing== 16493 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #87185: <==negation-removal== 75434 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #89099: <==negation-removal== 38811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l2))
        :effect (and
                    ; #21472: <==closure== 56506 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #56506: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #63908: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #65257: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #65876: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #74614: <==closure== 65876 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #79438: <==closure== 65257 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #92187: <==closure== 63908 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #10560: <==negation-removal== 21472 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #11075: <==negation-removal== 65876 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #14445: <==uncertain_firing== 63908 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #18670: <==uncertain_firing== 65257 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #22226: <==negation-removal== 92187 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #31164: <==negation-removal== 74614 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #33923: <==negation-removal== 79438 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #43543: <==negation-removal== 65257 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #49867: <==uncertain_firing== 74614 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #68770: <==uncertain_firing== 65876 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #73639: <==negation-removal== 63908 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #80628: <==negation-removal== 56506 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #87790: <==uncertain_firing== 21472 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #87903: <==uncertain_firing== 79438 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #91654: <==uncertain_firing== 56506 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #93996: <==uncertain_firing== 92187 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l1))
        :effect (and
                    ; #10613: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #18185: <==closure== 10613 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #26420: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #34723: <==closure== 26420 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #60798: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #67158: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #71457: <==closure== 67158 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #79751: <==closure== 60798 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #21114: <==negation-removal== 79751 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #25363: <==uncertain_firing== 26420 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #27482: <==negation-removal== 34723 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #29373: <==uncertain_firing== 34723 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #30383: <==negation-removal== 10613 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #33356: <==negation-removal== 60798 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #35606: <==negation-removal== 71457 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #37180: <==uncertain_firing== 67158 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #37920: <==uncertain_firing== 10613 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42861: <==negation-removal== 18185 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #52124: <==uncertain_firing== 60798 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #60441: <==negation-removal== 26420 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #62697: <==uncertain_firing== 71457 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #69155: <==negation-removal== 67158 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #80488: <==uncertain_firing== 18185 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81614: <==uncertain_firing== 79751 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_a)
                           (Pb_secret_a))
        :effect (and
                    ; #15320: <==closure== 28085 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #28085: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #33318: <==closure== 62448 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #43492: <==closure== 52549 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #52549: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #62448: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #70343: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #87294: <==closure== 70343 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #14134: <==negation-removal== 15320 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #14670: <==negation-removal== 62448 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14770: <==negation-removal== 87294 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15961: <==uncertain_firing== 28085 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #17622: <==uncertain_firing== 62448 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #19175: <==uncertain_firing== 33318 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #21779: <==uncertain_firing== 15320 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #23981: <==negation-removal== 70343 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #25417: <==uncertain_firing== 43492 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #51884: <==uncertain_firing== 70343 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #60942: <==negation-removal== 28085 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #63039: <==uncertain_firing== 52549 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #67893: <==negation-removal== 52549 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #80332: <==negation-removal== 33318 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #85728: <==uncertain_firing== 87294 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #90939: <==negation-removal== 43492 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Bb_secret_b)
                           (Pb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #22103: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #51184: <==closure== 76656 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #57543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #64908: <==closure== 22103 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #74886: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76656: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #79267: <==closure== 57543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #88313: <==closure== 74886 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #14738: <==uncertain_firing== 64908 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #17985: <==uncertain_firing== 74886 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #28507: <==uncertain_firing== 22103 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #34799: <==negation-removal== 76656 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36527: <==uncertain_firing== 51184 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #49345: <==negation-removal== 88313 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #50482: <==negation-removal== 51184 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #55698: <==negation-removal== 79267 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #65016: <==uncertain_firing== 79267 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #67438: <==negation-removal== 57543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #72714: <==negation-removal== 64908 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #78020: <==uncertain_firing== 76656 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #79774: <==uncertain_firing== 88313 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #80011: <==uncertain_firing== 57543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #82955: <==negation-removal== 22103 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #87052: <==negation-removal== 74886 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #24352: <==closure== 88497 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #26370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #51253: <==closure== 26370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #72432: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #80062: <==closure== 88604 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #81203: <==closure== 72432 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #88497: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #88604: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #15909: <==uncertain_firing== 80062 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #20605: <==uncertain_firing== 51253 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #25106: <==negation-removal== 72432 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #38730: <==negation-removal== 81203 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #44249: <==negation-removal== 51253 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50236: <==uncertain_firing== 88497 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #60040: <==uncertain_firing== 88604 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69806: <==uncertain_firing== 72432 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69860: <==uncertain_firing== 24352 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #70405: <==negation-removal== 24352 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #71420: <==negation-removal== 26370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #80580: <==negation-removal== 88497 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #80704: <==negation-removal== 80062 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #83520: <==uncertain_firing== 26370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #89602: <==negation-removal== 88604 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #93362: <==uncertain_firing== 81203 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #13147: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35532: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #37336: <==closure== 65616 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #65368: <==closure== 35532 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #65616: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #79155: <==closure== 13147 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #89675: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89965: <==closure== 89675 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #24053: <==negation-removal== 65616 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #34650: <==uncertain_firing== 79155 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #36683: <==negation-removal== 35532 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #37842: <==negation-removal== 79155 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #40408: <==uncertain_firing== 65368 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #53620: <==negation-removal== 89965 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #53679: <==negation-removal== 13147 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #55201: <==uncertain_firing== 13147 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #68471: <==negation-removal== 37336 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #72930: <==uncertain_firing== 37336 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #79296: <==uncertain_firing== 65616 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79513: <==negation-removal== 89675 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #81730: <==uncertain_firing== 89675 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #86945: <==uncertain_firing== 89965 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #92033: <==uncertain_firing== 35532 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #93000: <==negation-removal== 65368 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #22717: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #32310: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #44589: <==closure== 78976 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #49466: <==closure== 32310 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #77313: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #78833: <==closure== 77313 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #78976: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83671: <==closure== 22717 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #12982: <==uncertain_firing== 77313 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #16028: <==uncertain_firing== 83671 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #26841: <==negation-removal== 78976 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #28039: <==negation-removal== 44589 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #31757: <==negation-removal== 32310 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #41838: <==negation-removal== 22717 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #55381: <==negation-removal== 49466 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #68459: <==uncertain_firing== 44589 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #69693: <==uncertain_firing== 32310 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #71769: <==negation-removal== 83671 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #72198: <==uncertain_firing== 49466 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75646: <==uncertain_firing== 22717 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #76338: <==negation-removal== 77313 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #76500: <==uncertain_firing== 78976 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #89302: <==uncertain_firing== 78833 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #89497: <==negation-removal== 78833 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #11615: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #16493: <==closure== 65855 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #19748: <==closure== 11615 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #38811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #51870: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #65855: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #70923: <==closure== 51870 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #75434: <==closure== 38811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #16155: <==negation-removal== 16493 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #18063: <==negation-removal== 70923 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #19322: <==negation-removal== 19748 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #24661: <==uncertain_firing== 65855 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #25978: <==uncertain_firing== 70923 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #26214: <==uncertain_firing== 38811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #35512: <==uncertain_firing== 19748 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #48900: <==uncertain_firing== 51870 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #50887: <==negation-removal== 65855 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #51172: <==negation-removal== 11615 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #53158: <==uncertain_firing== 11615 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57123: <==uncertain_firing== 75434 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #60680: <==negation-removal== 51870 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #82011: <==uncertain_firing== 16493 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #87185: <==negation-removal== 75434 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #89099: <==negation-removal== 38811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Pb_secret_d)
                           (Bb_secret_d))
        :effect (and
                    ; #21472: <==closure== 56506 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #56506: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #63908: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #65257: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #65876: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #74614: <==closure== 65876 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #79438: <==closure== 65257 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #92187: <==closure== 63908 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #10560: <==negation-removal== 21472 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #11075: <==negation-removal== 65876 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #14445: <==uncertain_firing== 63908 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #18670: <==uncertain_firing== 65257 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #22226: <==negation-removal== 92187 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #31164: <==negation-removal== 74614 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #33923: <==negation-removal== 79438 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #43543: <==negation-removal== 65257 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #49867: <==uncertain_firing== 74614 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #68770: <==uncertain_firing== 65876 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #73639: <==negation-removal== 63908 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #80628: <==negation-removal== 56506 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #87790: <==uncertain_firing== 21472 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #87903: <==uncertain_firing== 79438 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #91654: <==uncertain_firing== 56506 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #93996: <==uncertain_firing== 92187 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Pc_secret_a)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #10613: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #18185: <==closure== 10613 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #26420: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #34723: <==closure== 26420 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #60798: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #67158: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #71457: <==closure== 67158 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #79751: <==closure== 60798 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #21114: <==negation-removal== 79751 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #25363: <==uncertain_firing== 26420 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #27482: <==negation-removal== 34723 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #29373: <==uncertain_firing== 34723 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #30383: <==negation-removal== 10613 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #33356: <==negation-removal== 60798 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #35606: <==negation-removal== 71457 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #37180: <==uncertain_firing== 67158 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #37920: <==uncertain_firing== 10613 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42861: <==negation-removal== 18185 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #52124: <==uncertain_firing== 60798 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #60441: <==negation-removal== 26420 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #62697: <==uncertain_firing== 71457 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #69155: <==negation-removal== 67158 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #80488: <==uncertain_firing== 18185 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81614: <==uncertain_firing== 79751 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #15320: <==closure== 28085 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #28085: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #33318: <==closure== 62448 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #43492: <==closure== 52549 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #52549: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #62448: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #70343: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #87294: <==closure== 70343 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #14134: <==negation-removal== 15320 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #14670: <==negation-removal== 62448 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14770: <==negation-removal== 87294 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15961: <==uncertain_firing== 28085 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #17622: <==uncertain_firing== 62448 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #19175: <==uncertain_firing== 33318 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #21779: <==uncertain_firing== 15320 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #23981: <==negation-removal== 70343 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #25417: <==uncertain_firing== 43492 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #51884: <==uncertain_firing== 70343 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #60942: <==negation-removal== 28085 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #63039: <==uncertain_firing== 52549 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #67893: <==negation-removal== 52549 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #80332: <==negation-removal== 33318 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #85728: <==uncertain_firing== 87294 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #90939: <==negation-removal== 43492 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (at_c_l1)
                           (Pc_secret_b))
        :effect (and
                    ; #22103: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #51184: <==closure== 76656 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #57543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #64908: <==closure== 22103 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #74886: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76656: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #79267: <==closure== 57543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #88313: <==closure== 74886 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #14738: <==uncertain_firing== 64908 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #17985: <==uncertain_firing== 74886 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #28507: <==uncertain_firing== 22103 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #34799: <==negation-removal== 76656 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36527: <==uncertain_firing== 51184 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #49345: <==negation-removal== 88313 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #50482: <==negation-removal== 51184 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #55698: <==negation-removal== 79267 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #65016: <==uncertain_firing== 79267 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #67438: <==negation-removal== 57543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #72714: <==negation-removal== 64908 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #78020: <==uncertain_firing== 76656 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #79774: <==uncertain_firing== 88313 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #80011: <==uncertain_firing== 57543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #82955: <==negation-removal== 22103 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #87052: <==negation-removal== 74886 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Bc_secret_b)
                           (at_c_l2)
                           (Pc_secret_b))
        :effect (and
                    ; #24352: <==closure== 88497 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #26370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #51253: <==closure== 26370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #72432: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #80062: <==closure== 88604 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #81203: <==closure== 72432 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #88497: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #88604: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #15909: <==uncertain_firing== 80062 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #20605: <==uncertain_firing== 51253 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #25106: <==negation-removal== 72432 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #38730: <==negation-removal== 81203 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #44249: <==negation-removal== 51253 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50236: <==uncertain_firing== 88497 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #60040: <==uncertain_firing== 88604 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69806: <==uncertain_firing== 72432 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69860: <==uncertain_firing== 24352 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #70405: <==negation-removal== 24352 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #71420: <==negation-removal== 26370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #80580: <==negation-removal== 88497 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #80704: <==negation-removal== 80062 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #83520: <==uncertain_firing== 26370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #89602: <==negation-removal== 88604 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #93362: <==uncertain_firing== 81203 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #13147: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35532: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #37336: <==closure== 65616 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #65368: <==closure== 35532 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #65616: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #79155: <==closure== 13147 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #89675: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89965: <==closure== 89675 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #24053: <==negation-removal== 65616 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #34650: <==uncertain_firing== 79155 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #36683: <==negation-removal== 35532 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #37842: <==negation-removal== 79155 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #40408: <==uncertain_firing== 65368 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #53620: <==negation-removal== 89965 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #53679: <==negation-removal== 13147 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #55201: <==uncertain_firing== 13147 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #68471: <==negation-removal== 37336 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #72930: <==uncertain_firing== 37336 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #79296: <==uncertain_firing== 65616 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79513: <==negation-removal== 89675 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #81730: <==uncertain_firing== 89675 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #86945: <==uncertain_firing== 89965 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #92033: <==uncertain_firing== 35532 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #93000: <==negation-removal== 65368 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_c)
                           (Pc_secret_c))
        :effect (and
                    ; #22717: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #32310: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #44589: <==closure== 78976 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #49466: <==closure== 32310 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #77313: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #78833: <==closure== 77313 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #78976: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83671: <==closure== 22717 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #12982: <==uncertain_firing== 77313 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #16028: <==uncertain_firing== 83671 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #26841: <==negation-removal== 78976 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #28039: <==negation-removal== 44589 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #31757: <==negation-removal== 32310 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #41838: <==negation-removal== 22717 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #55381: <==negation-removal== 49466 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #68459: <==uncertain_firing== 44589 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #69693: <==uncertain_firing== 32310 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #71769: <==negation-removal== 83671 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #72198: <==uncertain_firing== 49466 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75646: <==uncertain_firing== 22717 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #76338: <==negation-removal== 77313 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #76500: <==uncertain_firing== 78976 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #89302: <==uncertain_firing== 78833 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #89497: <==negation-removal== 78833 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (at_c_l1)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #11615: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #16493: <==closure== 65855 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #19748: <==closure== 11615 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #38811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #51870: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #65855: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #70923: <==closure== 51870 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #75434: <==closure== 38811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #16155: <==negation-removal== 16493 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #18063: <==negation-removal== 70923 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #19322: <==negation-removal== 19748 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #24661: <==uncertain_firing== 65855 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #25978: <==uncertain_firing== 70923 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #26214: <==uncertain_firing== 38811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #35512: <==uncertain_firing== 19748 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #48900: <==uncertain_firing== 51870 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #50887: <==negation-removal== 65855 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #51172: <==negation-removal== 11615 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #53158: <==uncertain_firing== 11615 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57123: <==uncertain_firing== 75434 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #60680: <==negation-removal== 51870 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #82011: <==uncertain_firing== 16493 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #87185: <==negation-removal== 75434 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #89099: <==negation-removal== 38811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #21472: <==closure== 56506 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #56506: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #63908: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #65257: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #65876: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #74614: <==closure== 65876 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #79438: <==closure== 65257 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #92187: <==closure== 63908 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #10560: <==negation-removal== 21472 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #11075: <==negation-removal== 65876 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #14445: <==uncertain_firing== 63908 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #18670: <==uncertain_firing== 65257 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #22226: <==negation-removal== 92187 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #31164: <==negation-removal== 74614 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #33923: <==negation-removal== 79438 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #43543: <==negation-removal== 65257 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #49867: <==uncertain_firing== 74614 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #68770: <==uncertain_firing== 65876 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #73639: <==negation-removal== 63908 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #80628: <==negation-removal== 56506 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #87790: <==uncertain_firing== 21472 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #87903: <==uncertain_firing== 79438 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #91654: <==uncertain_firing== 56506 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #93996: <==uncertain_firing== 92187 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Pd_secret_a)
                           (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #10613: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #18185: <==closure== 10613 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #26420: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #34723: <==closure== 26420 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #60798: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #67158: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #71457: <==closure== 67158 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #79751: <==closure== 60798 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #21114: <==negation-removal== 79751 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #25363: <==uncertain_firing== 26420 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #27482: <==negation-removal== 34723 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #29373: <==uncertain_firing== 34723 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #30383: <==negation-removal== 10613 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #33356: <==negation-removal== 60798 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #35606: <==negation-removal== 71457 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #37180: <==uncertain_firing== 67158 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #37920: <==uncertain_firing== 10613 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42861: <==negation-removal== 18185 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #52124: <==uncertain_firing== 60798 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #60441: <==negation-removal== 26420 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #62697: <==uncertain_firing== 71457 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #69155: <==negation-removal== 67158 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #80488: <==uncertain_firing== 18185 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #81614: <==uncertain_firing== 79751 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Pd_secret_a)
                           (Bd_secret_a)
                           (at_d_l2))
        :effect (and
                    ; #15320: <==closure== 28085 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #28085: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #33318: <==closure== 62448 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #43492: <==closure== 52549 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #52549: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #62448: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #70343: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #87294: <==closure== 70343 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #14134: <==negation-removal== 15320 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #14670: <==negation-removal== 62448 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #14770: <==negation-removal== 87294 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #15961: <==uncertain_firing== 28085 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #17622: <==uncertain_firing== 62448 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #19175: <==uncertain_firing== 33318 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #21779: <==uncertain_firing== 15320 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #23981: <==negation-removal== 70343 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #25417: <==uncertain_firing== 43492 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #51884: <==uncertain_firing== 70343 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #60942: <==negation-removal== 28085 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #63039: <==uncertain_firing== 52549 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #67893: <==negation-removal== 52549 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #80332: <==negation-removal== 33318 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #85728: <==uncertain_firing== 87294 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #90939: <==negation-removal== 43492 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Pd_secret_b)
                           (at_d_l1)
                           (Bd_secret_b))
        :effect (and
                    ; #22103: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #51184: <==closure== 76656 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #57543: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #64908: <==closure== 22103 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #74886: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76656: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #79267: <==closure== 57543 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #88313: <==closure== 74886 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #14738: <==uncertain_firing== 64908 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #17985: <==uncertain_firing== 74886 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #28507: <==uncertain_firing== 22103 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #34799: <==negation-removal== 76656 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #36527: <==uncertain_firing== 51184 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #49345: <==negation-removal== 88313 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #50482: <==negation-removal== 51184 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #55698: <==negation-removal== 79267 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #65016: <==uncertain_firing== 79267 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #67438: <==negation-removal== 57543 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #72714: <==negation-removal== 64908 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #78020: <==uncertain_firing== 76656 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #79774: <==uncertain_firing== 88313 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #80011: <==uncertain_firing== 57543 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #82955: <==negation-removal== 22103 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #87052: <==negation-removal== 74886 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Pd_secret_b)
                           (at_d_l2)
                           (Bd_secret_b))
        :effect (and
                    ; #24352: <==closure== 88497 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #26370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #51253: <==closure== 26370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #72432: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #80062: <==closure== 88604 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #81203: <==closure== 72432 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #88497: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #88604: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #15909: <==uncertain_firing== 80062 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #20605: <==uncertain_firing== 51253 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #25106: <==negation-removal== 72432 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #38730: <==negation-removal== 81203 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #44249: <==negation-removal== 51253 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #50236: <==uncertain_firing== 88497 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #60040: <==uncertain_firing== 88604 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #69806: <==uncertain_firing== 72432 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #69860: <==uncertain_firing== 24352 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #70405: <==negation-removal== 24352 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #71420: <==negation-removal== 26370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #80580: <==negation-removal== 88497 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #80704: <==negation-removal== 80062 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #83520: <==uncertain_firing== 26370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #89602: <==negation-removal== 88604 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #93362: <==uncertain_firing== 81203 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_c)
                           (Pd_secret_c))
        :effect (and
                    ; #13147: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #35532: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #37336: <==closure== 65616 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #65368: <==closure== 35532 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #65616: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #79155: <==closure== 13147 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #89675: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #89965: <==closure== 89675 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #24053: <==negation-removal== 65616 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #34650: <==uncertain_firing== 79155 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #36683: <==negation-removal== 35532 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #37842: <==negation-removal== 79155 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #40408: <==uncertain_firing== 65368 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #53620: <==negation-removal== 89965 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #53679: <==negation-removal== 13147 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #55201: <==uncertain_firing== 13147 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #68471: <==negation-removal== 37336 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #72930: <==uncertain_firing== 37336 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #79296: <==uncertain_firing== 65616 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #79513: <==negation-removal== 89675 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #81730: <==uncertain_firing== 89675 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #86945: <==uncertain_firing== 89965 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #92033: <==uncertain_firing== 35532 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #93000: <==negation-removal== 65368 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Bd_secret_c)
                           (at_d_l2)
                           (Pd_secret_c))
        :effect (and
                    ; #22717: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #32310: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #44589: <==closure== 78976 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #49466: <==closure== 32310 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #77313: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #78833: <==closure== 77313 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #78976: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #83671: <==closure== 22717 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #12982: <==uncertain_firing== 77313 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #16028: <==uncertain_firing== 83671 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #26841: <==negation-removal== 78976 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #28039: <==negation-removal== 44589 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #31757: <==negation-removal== 32310 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #41838: <==negation-removal== 22717 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #55381: <==negation-removal== 49466 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #68459: <==uncertain_firing== 44589 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #69693: <==uncertain_firing== 32310 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #71769: <==negation-removal== 83671 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #72198: <==uncertain_firing== 49466 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #75646: <==uncertain_firing== 22717 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #76338: <==negation-removal== 77313 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #76500: <==uncertain_firing== 78976 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #89302: <==uncertain_firing== 78833 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #89497: <==negation-removal== 78833 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #11615: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #16493: <==closure== 65855 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #19748: <==closure== 11615 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #38811: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #51870: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #65855: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #70923: <==closure== 51870 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #75434: <==closure== 38811 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #16155: <==negation-removal== 16493 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #18063: <==negation-removal== 70923 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #19322: <==negation-removal== 19748 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #24661: <==uncertain_firing== 65855 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #25978: <==uncertain_firing== 70923 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #26214: <==uncertain_firing== 38811 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #35512: <==uncertain_firing== 19748 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #48900: <==uncertain_firing== 51870 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #50887: <==negation-removal== 65855 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #51172: <==negation-removal== 11615 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #53158: <==uncertain_firing== 11615 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #57123: <==uncertain_firing== 75434 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #60680: <==negation-removal== 51870 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #82011: <==uncertain_firing== 16493 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #87185: <==negation-removal== 75434 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #89099: <==negation-removal== 38811 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l2))
        :effect (and
                    ; #21472: <==closure== 56506 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #56506: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #63908: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #65257: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #65876: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #74614: <==closure== 65876 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #79438: <==closure== 65257 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #92187: <==closure== 63908 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #10560: <==negation-removal== 21472 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #11075: <==negation-removal== 65876 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #14445: <==uncertain_firing== 63908 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #18670: <==uncertain_firing== 65257 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #22226: <==negation-removal== 92187 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #31164: <==negation-removal== 74614 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #33923: <==negation-removal== 79438 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #43543: <==negation-removal== 65257 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #49867: <==uncertain_firing== 74614 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #68770: <==uncertain_firing== 65876 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #73639: <==negation-removal== 63908 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #80628: <==negation-removal== 56506 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #87790: <==uncertain_firing== 21472 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #87903: <==uncertain_firing== 79438 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #91654: <==uncertain_firing== 56506 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #93996: <==uncertain_firing== 92187 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))))

)