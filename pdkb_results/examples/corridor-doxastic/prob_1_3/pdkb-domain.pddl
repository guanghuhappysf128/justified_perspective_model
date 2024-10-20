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
        (Pa_not_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_secret)
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
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #55377: origin
                    (Bb_not_secret)

                    ; #69159: <==closure== 55377 (pos)
                    (Pb_not_secret)

                    ; #26109: <==negation-removal== 69159 (pos)
                    (not (Bb_secret))

                    ; #40026: <==negation-removal== 55377 (pos)
                    (not (Pb_secret))))

    (:action fib-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #51246: <==closure== 83628 (pos)
                    (Pc_not_secret)

                    ; #55377: origin
                    (Bb_not_secret)

                    ; #69159: <==closure== 55377 (pos)
                    (Pb_not_secret)

                    ; #83628: origin
                    (Bc_not_secret)

                    ; #20449: <==negation-removal== 83628 (pos)
                    (not (Pc_secret))

                    ; #26109: <==negation-removal== 69159 (pos)
                    (not (Bb_secret))

                    ; #40026: <==negation-removal== 55377 (pos)
                    (not (Pb_secret))

                    ; #44792: <==negation-removal== 51246 (pos)
                    (not (Bc_secret))))

    (:action fib-3
        :precondition (and (Ba_secret)
                           (at_l3)
                           (Pa_secret))
        :effect (and
                    ; #51246: <==closure== 83628 (pos)
                    (Pc_not_secret)

                    ; #55377: origin
                    (Bb_not_secret)

                    ; #69159: <==closure== 55377 (pos)
                    (Pb_not_secret)

                    ; #83628: origin
                    (Bc_not_secret)

                    ; #20449: <==negation-removal== 83628 (pos)
                    (not (Pc_secret))

                    ; #26109: <==negation-removal== 69159 (pos)
                    (not (Bb_secret))

                    ; #40026: <==negation-removal== 55377 (pos)
                    (not (Pb_secret))

                    ; #44792: <==negation-removal== 51246 (pos)
                    (not (Bc_secret))))

    (:action fib-4
        :precondition (and (Ba_secret)
                           (at_l4)
                           (Pa_secret))
        :effect (and
                    ; #51246: <==closure== 83628 (pos)
                    (Pc_not_secret)

                    ; #83628: origin
                    (Bc_not_secret)

                    ; #20449: <==negation-removal== 83628 (pos)
                    (not (Pc_secret))

                    ; #44792: <==negation-removal== 51246 (pos)
                    (not (Bc_secret))))

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #17882: origin
                    (at_l1)

                    ; #25703: origin
                    (not_at_l1)

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #17882: origin
                    (at_l1)

                    ; #38847: origin
                    (not_at_l2)

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #17882: origin
                    (at_l1)

                    ; #90214: origin
                    (not_at_l3)

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #17882: origin
                    (at_l1)

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #25703: origin
                    (not_at_l1)

                    ; #25913: origin
                    (at_l2)

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #25913: origin
                    (at_l2)

                    ; #38847: origin
                    (not_at_l2)

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #25913: origin
                    (at_l2)

                    ; #90214: origin
                    (not_at_l3)

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #25913: origin
                    (at_l2)

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #18128: origin
                    (at_l3)

                    ; #25703: origin
                    (not_at_l1)

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #18128: origin
                    (at_l3)

                    ; #38847: origin
                    (not_at_l2)

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #18128: origin
                    (at_l3)

                    ; #90214: origin
                    (not_at_l3)

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #18128: origin
                    (at_l3)

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (at_l1)
                           (succ_l4_l1))
        :effect (and
                    ; #25703: origin
                    (not_at_l1)

                    ; #56570: origin
                    (at_l4)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l2))
        :effect (and
                    ; #38847: origin
                    (not_at_l2)

                    ; #56570: origin
                    (at_l4)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #56570: origin
                    (at_l4)

                    ; #90214: origin
                    (not_at_l3)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #56570: origin
                    (at_l4)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #17882: origin
                    (at_l1)

                    ; #25703: origin
                    (not_at_l1)

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #25703: origin
                    (not_at_l1)

                    ; #25913: origin
                    (at_l2)

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #18128: origin
                    (at_l3)

                    ; #25703: origin
                    (not_at_l1)

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #25703: origin
                    (not_at_l1)

                    ; #56570: origin
                    (at_l4)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #17882: <==negation-removal== 25703 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #17882: origin
                    (at_l1)

                    ; #38847: origin
                    (not_at_l2)

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #25913: origin
                    (at_l2)

                    ; #38847: origin
                    (not_at_l2)

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #18128: origin
                    (at_l3)

                    ; #38847: origin
                    (not_at_l2)

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #38847: origin
                    (not_at_l2)

                    ; #56570: origin
                    (at_l4)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #25913: <==negation-removal== 38847 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #17882: origin
                    (at_l1)

                    ; #90214: origin
                    (not_at_l3)

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #25913: origin
                    (at_l2)

                    ; #90214: origin
                    (not_at_l3)

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #18128: origin
                    (at_l3)

                    ; #90214: origin
                    (not_at_l3)

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #56570: origin
                    (at_l4)

                    ; #90214: origin
                    (not_at_l3)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #18128: <==negation-removal== 90214 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #17882: origin
                    (at_l1)

                    ; #25703: <==negation-removal== 17882 (pos)
                    (not (not_at_l1))

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #25913: origin
                    (at_l2)

                    ; #38847: <==negation-removal== 25913 (pos)
                    (not (not_at_l2))

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #18128: origin
                    (at_l3)

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))

                    ; #90214: <==negation-removal== 18128 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #12762: origin
                    (not_at_l4)

                    ; #56570: origin
                    (at_l4)

                    ; #12762: <==negation-removal== 56570 (pos)
                    (not (not_at_l4))

                    ; #56570: <==negation-removal== 12762 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #87928: origin
                    (Ba_secret)

                    ; #90902: <==closure== 87928 (pos)
                    (Pa_secret)

                    ; #35986: <==negation-removal== 90902 (pos)
                    (not (Ba_not_secret))

                    ; #85236: <==negation-removal== 87928 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #26109: origin
                    (Bb_secret)

                    ; #40026: <==closure== 26109 (pos)
                    (Pb_secret)

                    ; #55377: <==negation-removal== 40026 (pos)
                    (not (Bb_not_secret))

                    ; #69159: <==negation-removal== 26109 (pos)
                    (not (Pb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #20449: <==closure== 44792 (pos)
                    (Pc_secret)

                    ; #26109: origin
                    (Bb_secret)

                    ; #40026: <==closure== 26109 (pos)
                    (Pb_secret)

                    ; #44792: origin
                    (Bc_secret)

                    ; #51246: <==negation-removal== 44792 (pos)
                    (not (Pc_not_secret))

                    ; #55377: <==negation-removal== 40026 (pos)
                    (not (Bb_not_secret))

                    ; #69159: <==negation-removal== 26109 (pos)
                    (not (Pb_not_secret))

                    ; #83628: <==negation-removal== 20449 (pos)
                    (not (Bc_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (at_l3)
                           (Pa_secret))
        :effect (and
                    ; #20449: <==closure== 44792 (pos)
                    (Pc_secret)

                    ; #26109: origin
                    (Bb_secret)

                    ; #40026: <==closure== 26109 (pos)
                    (Pb_secret)

                    ; #44792: origin
                    (Bc_secret)

                    ; #51246: <==negation-removal== 44792 (pos)
                    (not (Pc_not_secret))

                    ; #55377: <==negation-removal== 40026 (pos)
                    (not (Bb_not_secret))

                    ; #69159: <==negation-removal== 26109 (pos)
                    (not (Pb_not_secret))

                    ; #83628: <==negation-removal== 20449 (pos)
                    (not (Bc_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (at_l4)
                           (Pa_secret))
        :effect (and
                    ; #20449: <==closure== 44792 (pos)
                    (Pc_secret)

                    ; #44792: origin
                    (Bc_secret)

                    ; #51246: <==negation-removal== 44792 (pos)
                    (not (Pc_not_secret))

                    ; #83628: <==negation-removal== 20449 (pos)
                    (not (Bc_not_secret))))

)