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
        (Ba_Ba_not_secret)
        (Ba_Ba_Ba_not_secret)
        (Ba_Ba_Ba_secret)
        (Ba_Ba_Bb_not_secret)
        (Ba_Ba_Bb_secret)
        (Ba_Ba_Bc_not_secret)
        (Ba_Ba_Bc_secret)
        (Ba_Ba_Pa_not_secret)
        (Ba_Ba_Pa_secret)
        (Ba_Ba_Pb_not_secret)
        (Ba_Ba_Pb_secret)
        (Ba_Ba_Pc_not_secret)
        (Ba_Ba_Pc_secret)
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_Ba_not_secret)
        (Ba_Bb_Ba_secret)
        (Ba_Bb_Bb_not_secret)
        (Ba_Bb_Bb_secret)
        (Ba_Bb_Bc_not_secret)
        (Ba_Bb_Bc_secret)
        (Ba_Bb_Pa_not_secret)
        (Ba_Bb_Pa_secret)
        (Ba_Bb_Pb_not_secret)
        (Ba_Bb_Pb_secret)
        (Ba_Bb_Pc_not_secret)
        (Ba_Bb_Pc_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_Ba_not_secret)
        (Ba_Bc_Ba_secret)
        (Ba_Bc_Bb_not_secret)
        (Ba_Bc_Bb_secret)
        (Ba_Bc_Bc_not_secret)
        (Ba_Bc_Bc_secret)
        (Ba_Bc_Pa_not_secret)
        (Ba_Bc_Pa_secret)
        (Ba_Bc_Pb_not_secret)
        (Ba_Bc_Pb_secret)
        (Ba_Bc_Pc_not_secret)
        (Ba_Bc_Pc_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_Ba_not_secret)
        (Ba_Pa_Ba_secret)
        (Ba_Pa_Bb_not_secret)
        (Ba_Pa_Bb_secret)
        (Ba_Pa_Bc_not_secret)
        (Ba_Pa_Bc_secret)
        (Ba_Pa_Pa_not_secret)
        (Ba_Pa_Pa_secret)
        (Ba_Pa_Pb_not_secret)
        (Ba_Pa_Pb_secret)
        (Ba_Pa_Pc_not_secret)
        (Ba_Pa_Pc_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_Ba_not_secret)
        (Ba_Pb_Ba_secret)
        (Ba_Pb_Bb_not_secret)
        (Ba_Pb_Bb_secret)
        (Ba_Pb_Bc_not_secret)
        (Ba_Pb_Bc_secret)
        (Ba_Pb_Pa_not_secret)
        (Ba_Pb_Pa_secret)
        (Ba_Pb_Pb_not_secret)
        (Ba_Pb_Pb_secret)
        (Ba_Pb_Pc_not_secret)
        (Ba_Pb_Pc_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_Ba_not_secret)
        (Ba_Pc_Ba_secret)
        (Ba_Pc_Bb_not_secret)
        (Ba_Pc_Bb_secret)
        (Ba_Pc_Bc_not_secret)
        (Ba_Pc_Bc_secret)
        (Ba_Pc_Pa_not_secret)
        (Ba_Pc_Pa_secret)
        (Ba_Pc_Pb_not_secret)
        (Ba_Pc_Pb_secret)
        (Ba_Pc_Pc_not_secret)
        (Ba_Pc_Pc_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_Ba_not_secret)
        (Bb_Ba_Ba_secret)
        (Bb_Ba_Bb_not_secret)
        (Bb_Ba_Bb_secret)
        (Bb_Ba_Bc_not_secret)
        (Bb_Ba_Bc_secret)
        (Bb_Ba_Pa_not_secret)
        (Bb_Ba_Pa_secret)
        (Bb_Ba_Pb_not_secret)
        (Bb_Ba_Pb_secret)
        (Bb_Ba_Pc_not_secret)
        (Bb_Ba_Pc_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_Ba_not_secret)
        (Bb_Bb_Ba_secret)
        (Bb_Bb_Bb_not_secret)
        (Bb_Bb_Bb_secret)
        (Bb_Bb_Bc_not_secret)
        (Bb_Bb_Bc_secret)
        (Bb_Bb_Pa_not_secret)
        (Bb_Bb_Pa_secret)
        (Bb_Bb_Pb_not_secret)
        (Bb_Bb_Pb_secret)
        (Bb_Bb_Pc_not_secret)
        (Bb_Bb_Pc_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_Ba_not_secret)
        (Bb_Bc_Ba_secret)
        (Bb_Bc_Bb_not_secret)
        (Bb_Bc_Bb_secret)
        (Bb_Bc_Bc_not_secret)
        (Bb_Bc_Bc_secret)
        (Bb_Bc_Pa_not_secret)
        (Bb_Bc_Pa_secret)
        (Bb_Bc_Pb_not_secret)
        (Bb_Bc_Pb_secret)
        (Bb_Bc_Pc_not_secret)
        (Bb_Bc_Pc_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_Ba_not_secret)
        (Bb_Pa_Ba_secret)
        (Bb_Pa_Bb_not_secret)
        (Bb_Pa_Bb_secret)
        (Bb_Pa_Bc_not_secret)
        (Bb_Pa_Bc_secret)
        (Bb_Pa_Pa_not_secret)
        (Bb_Pa_Pa_secret)
        (Bb_Pa_Pb_not_secret)
        (Bb_Pa_Pb_secret)
        (Bb_Pa_Pc_not_secret)
        (Bb_Pa_Pc_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_Ba_not_secret)
        (Bb_Pb_Ba_secret)
        (Bb_Pb_Bb_not_secret)
        (Bb_Pb_Bb_secret)
        (Bb_Pb_Bc_not_secret)
        (Bb_Pb_Bc_secret)
        (Bb_Pb_Pa_not_secret)
        (Bb_Pb_Pa_secret)
        (Bb_Pb_Pb_not_secret)
        (Bb_Pb_Pb_secret)
        (Bb_Pb_Pc_not_secret)
        (Bb_Pb_Pc_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_Ba_not_secret)
        (Bb_Pc_Ba_secret)
        (Bb_Pc_Bb_not_secret)
        (Bb_Pc_Bb_secret)
        (Bb_Pc_Bc_not_secret)
        (Bb_Pc_Bc_secret)
        (Bb_Pc_Pa_not_secret)
        (Bb_Pc_Pa_secret)
        (Bb_Pc_Pb_not_secret)
        (Bb_Pc_Pb_secret)
        (Bb_Pc_Pc_not_secret)
        (Bb_Pc_Pc_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_Ba_not_secret)
        (Bc_Ba_Ba_secret)
        (Bc_Ba_Bb_not_secret)
        (Bc_Ba_Bb_secret)
        (Bc_Ba_Bc_not_secret)
        (Bc_Ba_Bc_secret)
        (Bc_Ba_Pa_not_secret)
        (Bc_Ba_Pa_secret)
        (Bc_Ba_Pb_not_secret)
        (Bc_Ba_Pb_secret)
        (Bc_Ba_Pc_not_secret)
        (Bc_Ba_Pc_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_Ba_not_secret)
        (Bc_Bb_Ba_secret)
        (Bc_Bb_Bb_not_secret)
        (Bc_Bb_Bb_secret)
        (Bc_Bb_Bc_not_secret)
        (Bc_Bb_Bc_secret)
        (Bc_Bb_Pa_not_secret)
        (Bc_Bb_Pa_secret)
        (Bc_Bb_Pb_not_secret)
        (Bc_Bb_Pb_secret)
        (Bc_Bb_Pc_not_secret)
        (Bc_Bb_Pc_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_Ba_not_secret)
        (Bc_Bc_Ba_secret)
        (Bc_Bc_Bb_not_secret)
        (Bc_Bc_Bb_secret)
        (Bc_Bc_Bc_not_secret)
        (Bc_Bc_Bc_secret)
        (Bc_Bc_Pa_not_secret)
        (Bc_Bc_Pa_secret)
        (Bc_Bc_Pb_not_secret)
        (Bc_Bc_Pb_secret)
        (Bc_Bc_Pc_not_secret)
        (Bc_Bc_Pc_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_Ba_not_secret)
        (Bc_Pa_Ba_secret)
        (Bc_Pa_Bb_not_secret)
        (Bc_Pa_Bb_secret)
        (Bc_Pa_Bc_not_secret)
        (Bc_Pa_Bc_secret)
        (Bc_Pa_Pa_not_secret)
        (Bc_Pa_Pa_secret)
        (Bc_Pa_Pb_not_secret)
        (Bc_Pa_Pb_secret)
        (Bc_Pa_Pc_not_secret)
        (Bc_Pa_Pc_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_Ba_not_secret)
        (Bc_Pb_Ba_secret)
        (Bc_Pb_Bb_not_secret)
        (Bc_Pb_Bb_secret)
        (Bc_Pb_Bc_not_secret)
        (Bc_Pb_Bc_secret)
        (Bc_Pb_Pa_not_secret)
        (Bc_Pb_Pa_secret)
        (Bc_Pb_Pb_not_secret)
        (Bc_Pb_Pb_secret)
        (Bc_Pb_Pc_not_secret)
        (Bc_Pb_Pc_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_Ba_not_secret)
        (Bc_Pc_Ba_secret)
        (Bc_Pc_Bb_not_secret)
        (Bc_Pc_Bb_secret)
        (Bc_Pc_Bc_not_secret)
        (Bc_Pc_Bc_secret)
        (Bc_Pc_Pa_not_secret)
        (Bc_Pc_Pa_secret)
        (Bc_Pc_Pb_not_secret)
        (Bc_Pc_Pb_secret)
        (Bc_Pc_Pc_not_secret)
        (Bc_Pc_Pc_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_Ba_not_secret)
        (Pa_Ba_Ba_secret)
        (Pa_Ba_Bb_not_secret)
        (Pa_Ba_Bb_secret)
        (Pa_Ba_Bc_not_secret)
        (Pa_Ba_Bc_secret)
        (Pa_Ba_Pa_not_secret)
        (Pa_Ba_Pa_secret)
        (Pa_Ba_Pb_not_secret)
        (Pa_Ba_Pb_secret)
        (Pa_Ba_Pc_not_secret)
        (Pa_Ba_Pc_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_Ba_not_secret)
        (Pa_Bb_Ba_secret)
        (Pa_Bb_Bb_not_secret)
        (Pa_Bb_Bb_secret)
        (Pa_Bb_Bc_not_secret)
        (Pa_Bb_Bc_secret)
        (Pa_Bb_Pa_not_secret)
        (Pa_Bb_Pa_secret)
        (Pa_Bb_Pb_not_secret)
        (Pa_Bb_Pb_secret)
        (Pa_Bb_Pc_not_secret)
        (Pa_Bb_Pc_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_Ba_not_secret)
        (Pa_Bc_Ba_secret)
        (Pa_Bc_Bb_not_secret)
        (Pa_Bc_Bb_secret)
        (Pa_Bc_Bc_not_secret)
        (Pa_Bc_Bc_secret)
        (Pa_Bc_Pa_not_secret)
        (Pa_Bc_Pa_secret)
        (Pa_Bc_Pb_not_secret)
        (Pa_Bc_Pb_secret)
        (Pa_Bc_Pc_not_secret)
        (Pa_Bc_Pc_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_Ba_not_secret)
        (Pa_Pa_Ba_secret)
        (Pa_Pa_Bb_not_secret)
        (Pa_Pa_Bb_secret)
        (Pa_Pa_Bc_not_secret)
        (Pa_Pa_Bc_secret)
        (Pa_Pa_Pa_not_secret)
        (Pa_Pa_Pa_secret)
        (Pa_Pa_Pb_not_secret)
        (Pa_Pa_Pb_secret)
        (Pa_Pa_Pc_not_secret)
        (Pa_Pa_Pc_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_Ba_not_secret)
        (Pa_Pb_Ba_secret)
        (Pa_Pb_Bb_not_secret)
        (Pa_Pb_Bb_secret)
        (Pa_Pb_Bc_not_secret)
        (Pa_Pb_Bc_secret)
        (Pa_Pb_Pa_not_secret)
        (Pa_Pb_Pa_secret)
        (Pa_Pb_Pb_not_secret)
        (Pa_Pb_Pb_secret)
        (Pa_Pb_Pc_not_secret)
        (Pa_Pb_Pc_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_Ba_not_secret)
        (Pa_Pc_Ba_secret)
        (Pa_Pc_Bb_not_secret)
        (Pa_Pc_Bb_secret)
        (Pa_Pc_Bc_not_secret)
        (Pa_Pc_Bc_secret)
        (Pa_Pc_Pa_not_secret)
        (Pa_Pc_Pa_secret)
        (Pa_Pc_Pb_not_secret)
        (Pa_Pc_Pb_secret)
        (Pa_Pc_Pc_not_secret)
        (Pa_Pc_Pc_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_Ba_not_secret)
        (Pb_Ba_Ba_secret)
        (Pb_Ba_Bb_not_secret)
        (Pb_Ba_Bb_secret)
        (Pb_Ba_Bc_not_secret)
        (Pb_Ba_Bc_secret)
        (Pb_Ba_Pa_not_secret)
        (Pb_Ba_Pa_secret)
        (Pb_Ba_Pb_not_secret)
        (Pb_Ba_Pb_secret)
        (Pb_Ba_Pc_not_secret)
        (Pb_Ba_Pc_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_Ba_not_secret)
        (Pb_Bb_Ba_secret)
        (Pb_Bb_Bb_not_secret)
        (Pb_Bb_Bb_secret)
        (Pb_Bb_Bc_not_secret)
        (Pb_Bb_Bc_secret)
        (Pb_Bb_Pa_not_secret)
        (Pb_Bb_Pa_secret)
        (Pb_Bb_Pb_not_secret)
        (Pb_Bb_Pb_secret)
        (Pb_Bb_Pc_not_secret)
        (Pb_Bb_Pc_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_Ba_not_secret)
        (Pb_Bc_Ba_secret)
        (Pb_Bc_Bb_not_secret)
        (Pb_Bc_Bb_secret)
        (Pb_Bc_Bc_not_secret)
        (Pb_Bc_Bc_secret)
        (Pb_Bc_Pa_not_secret)
        (Pb_Bc_Pa_secret)
        (Pb_Bc_Pb_not_secret)
        (Pb_Bc_Pb_secret)
        (Pb_Bc_Pc_not_secret)
        (Pb_Bc_Pc_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_Ba_not_secret)
        (Pb_Pa_Ba_secret)
        (Pb_Pa_Bb_not_secret)
        (Pb_Pa_Bb_secret)
        (Pb_Pa_Bc_not_secret)
        (Pb_Pa_Bc_secret)
        (Pb_Pa_Pa_not_secret)
        (Pb_Pa_Pa_secret)
        (Pb_Pa_Pb_not_secret)
        (Pb_Pa_Pb_secret)
        (Pb_Pa_Pc_not_secret)
        (Pb_Pa_Pc_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_Ba_not_secret)
        (Pb_Pb_Ba_secret)
        (Pb_Pb_Bb_not_secret)
        (Pb_Pb_Bb_secret)
        (Pb_Pb_Bc_not_secret)
        (Pb_Pb_Bc_secret)
        (Pb_Pb_Pa_not_secret)
        (Pb_Pb_Pa_secret)
        (Pb_Pb_Pb_not_secret)
        (Pb_Pb_Pb_secret)
        (Pb_Pb_Pc_not_secret)
        (Pb_Pb_Pc_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_Ba_not_secret)
        (Pb_Pc_Ba_secret)
        (Pb_Pc_Bb_not_secret)
        (Pb_Pc_Bb_secret)
        (Pb_Pc_Bc_not_secret)
        (Pb_Pc_Bc_secret)
        (Pb_Pc_Pa_not_secret)
        (Pb_Pc_Pa_secret)
        (Pb_Pc_Pb_not_secret)
        (Pb_Pc_Pb_secret)
        (Pb_Pc_Pc_not_secret)
        (Pb_Pc_Pc_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_Ba_not_secret)
        (Pc_Ba_Ba_secret)
        (Pc_Ba_Bb_not_secret)
        (Pc_Ba_Bb_secret)
        (Pc_Ba_Bc_not_secret)
        (Pc_Ba_Bc_secret)
        (Pc_Ba_Pa_not_secret)
        (Pc_Ba_Pa_secret)
        (Pc_Ba_Pb_not_secret)
        (Pc_Ba_Pb_secret)
        (Pc_Ba_Pc_not_secret)
        (Pc_Ba_Pc_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_Ba_not_secret)
        (Pc_Bb_Ba_secret)
        (Pc_Bb_Bb_not_secret)
        (Pc_Bb_Bb_secret)
        (Pc_Bb_Bc_not_secret)
        (Pc_Bb_Bc_secret)
        (Pc_Bb_Pa_not_secret)
        (Pc_Bb_Pa_secret)
        (Pc_Bb_Pb_not_secret)
        (Pc_Bb_Pb_secret)
        (Pc_Bb_Pc_not_secret)
        (Pc_Bb_Pc_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_Ba_not_secret)
        (Pc_Bc_Ba_secret)
        (Pc_Bc_Bb_not_secret)
        (Pc_Bc_Bb_secret)
        (Pc_Bc_Bc_not_secret)
        (Pc_Bc_Bc_secret)
        (Pc_Bc_Pa_not_secret)
        (Pc_Bc_Pa_secret)
        (Pc_Bc_Pb_not_secret)
        (Pc_Bc_Pb_secret)
        (Pc_Bc_Pc_not_secret)
        (Pc_Bc_Pc_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_Ba_not_secret)
        (Pc_Pa_Ba_secret)
        (Pc_Pa_Bb_not_secret)
        (Pc_Pa_Bb_secret)
        (Pc_Pa_Bc_not_secret)
        (Pc_Pa_Bc_secret)
        (Pc_Pa_Pa_not_secret)
        (Pc_Pa_Pa_secret)
        (Pc_Pa_Pb_not_secret)
        (Pc_Pa_Pb_secret)
        (Pc_Pa_Pc_not_secret)
        (Pc_Pa_Pc_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_Ba_not_secret)
        (Pc_Pb_Ba_secret)
        (Pc_Pb_Bb_not_secret)
        (Pc_Pb_Bb_secret)
        (Pc_Pb_Bc_not_secret)
        (Pc_Pb_Bc_secret)
        (Pc_Pb_Pa_not_secret)
        (Pc_Pb_Pa_secret)
        (Pc_Pb_Pb_not_secret)
        (Pc_Pb_Pb_secret)
        (Pc_Pb_Pc_not_secret)
        (Pc_Pb_Pc_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
        (Pc_Pc_Ba_not_secret)
        (Pc_Pc_Ba_secret)
        (Pc_Pc_Bb_not_secret)
        (Pc_Pc_Bb_secret)
        (Pc_Pc_Bc_not_secret)
        (Pc_Pc_Bc_secret)
        (Pc_Pc_Pa_not_secret)
        (Pc_Pc_Pa_secret)
        (Pc_Pc_Pb_not_secret)
        (Pc_Pc_Pb_secret)
        (Pc_Pc_Pc_not_secret)
        (Pc_Pc_Pc_secret)
        (Pc_Pc_secret)
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

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #44929: origin
                    (not_at_l1)

                    ; #77618: origin
                    (at_l1)

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #47863: origin
                    (not_at_l2)

                    ; #77618: origin
                    (at_l1)

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #77618: origin
                    (at_l1)

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #77618: origin
                    (at_l1)

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #38815: origin
                    (at_l2)

                    ; #44929: origin
                    (not_at_l1)

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #38815: origin
                    (at_l2)

                    ; #47863: origin
                    (not_at_l2)

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #38815: origin
                    (at_l2)

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #38815: origin
                    (at_l2)

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #44929: origin
                    (not_at_l1)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #47863: origin
                    (not_at_l2)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #44929: origin
                    (not_at_l1)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #47863: origin
                    (not_at_l2)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #44929: origin
                    (not_at_l1)

                    ; #77618: origin
                    (at_l1)

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #38815: origin
                    (at_l2)

                    ; #44929: origin
                    (not_at_l1)

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #44929: origin
                    (not_at_l1)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #44929: origin
                    (not_at_l1)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #77618: <==negation-removal== 44929 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #47863: origin
                    (not_at_l2)

                    ; #77618: origin
                    (at_l1)

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #38815: origin
                    (at_l2)

                    ; #47863: origin
                    (not_at_l2)

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #47863: origin
                    (not_at_l2)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #47863: origin
                    (not_at_l2)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #38815: <==negation-removal== 47863 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #77618: origin
                    (at_l1)

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #38815: origin
                    (at_l2)

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #20632: origin
                    (not_at_l3)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #51454: <==negation-removal== 20632 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #77618: origin
                    (at_l1)

                    ; #44929: <==negation-removal== 77618 (pos)
                    (not (not_at_l1))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #38815: origin
                    (at_l2)

                    ; #47863: <==negation-removal== 38815 (pos)
                    (not (not_at_l2))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #51454: origin
                    (at_l3)

                    ; #20632: <==negation-removal== 51454 (pos)
                    (not (not_at_l3))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #12068: origin
                    (not_at_l4)

                    ; #50345: origin
                    (at_l4)

                    ; #12068: <==negation-removal== 50345 (pos)
                    (not (not_at_l4))

                    ; #50345: <==negation-removal== 12068 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #11658: <==commonly_known== 66359 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #11883: <==commonly_known== 84742 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #12169: <==commonly_known== 71478 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #13513: <==closure== 32458 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #14533: <==closure== 11658 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #16513: <==closure== 32458 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #17951: <==commonly_known== 71001 (pos)
                    (Bc_Pa_secret)

                    ; #20451: <==commonly_known== 84155 (neg)
                    (Pc_Ba_secret)

                    ; #26450: <==commonly_known== 48915 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #30707: <==closure== 83424 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #32022: <==commonly_known== 48915 (neg)
                    (Pc_Bb_Ba_secret)

                    ; #32458: <==commonly_known== 66359 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #34263: <==closure== 11658 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #34509: <==commonly_known== 62072 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #36398: <==commonly_known== 20451 (pos)
                    (Bb_Pc_Ba_secret)

                    ; #36848: <==commonly_known== 41907 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #38931: <==commonly_known== 17951 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #39592: <==commonly_known== 71001 (pos)
                    (Bb_Pa_secret)

                    ; #39653: <==closure== 83424 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #40640: <==commonly_known== 20451 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #41384: <==commonly_known== 17951 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #41907: <==commonly_known== 84155 (neg)
                    (Pb_Ba_secret)

                    ; #42974: <==closure== 66359 (pos)
                    (Pc_Pa_secret)

                    ; #48505: <==commonly_known== 71478 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #50647: <==closure== 34509 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #50756: origin
                    (Ba_secret)

                    ; #54361: <==closure== 34509 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #60562: <==commonly_known== 41907 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #62072: <==commonly_known== 50756 (pos)
                    (Bb_Ba_secret)

                    ; #62074: <==commonly_known== 39592 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #66359: <==commonly_known== 50756 (pos)
                    (Bc_Ba_secret)

                    ; #70929: <==closure== 83424 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #71001: <==closure== 50756 (pos)
                    (Pa_secret)

                    ; #73027: <==closure== 32458 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #77329: <==commonly_known== 42974 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #77640: <==closure== 11658 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #83424: <==commonly_known== 62072 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #84742: <==closure== 62072 (pos)
                    (Pb_Pa_secret)

                    ; #86232: <==commonly_known== 42974 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #86603: <==commonly_known== 84742 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #87393: <==commonly_known== 39592 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #88220: <==closure== 34509 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #14236: <==negation-removal== 86232 (pos)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #20755: <==negation-removal== 48505 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #21098: <==negation-removal== 77640 (pos)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #21853: <==negation-removal== 36848 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #22528: <==negation-removal== 11658 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #22760: <==negation-removal== 42974 (pos)
                    (not (Bc_Ba_not_secret))

                    ; #24156: <==negation-removal== 71001 (pos)
                    (not (Ba_not_secret))

                    ; #26754: <==negation-removal== 39592 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #28060: <==negation-removal== 54361 (pos)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #28185: <==negation-removal== 38931 (pos)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #30027: <==negation-removal== 17951 (pos)
                    (not (Pc_Ba_not_secret))

                    ; #31022: <==negation-removal== 84742 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #35001: <==negation-removal== 20451 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #35979: <==negation-removal== 16513 (pos)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #40781: <==negation-removal== 11883 (pos)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #40955: <==negation-removal== 41384 (pos)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #40956: <==negation-removal== 13513 (pos)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #41843: <==negation-removal== 34509 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #41872: <==negation-removal== 50647 (pos)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #48915: <==negation-removal== 62072 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #49346: <==negation-removal== 87393 (pos)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #53062: <==negation-removal== 83424 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #53634: <==negation-removal== 36398 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #55086: <==negation-removal== 73027 (pos)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #56698: <==negation-removal== 12169 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #56970: <==negation-removal== 88220 (pos)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #59300: <==negation-removal== 32458 (pos)
                    (not (Pa_Pc_Pa_not_secret))

                    ; #62423: <==negation-removal== 26450 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #63978: <==negation-removal== 40640 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #65226: <==negation-removal== 86603 (pos)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #71478: <==negation-removal== 66359 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #71802: <==negation-removal== 34263 (pos)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #75353: <==negation-removal== 30707 (pos)
                    (not (Bc_Bb_Ba_not_secret))

                    ; #77069: <==negation-removal== 70929 (pos)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #77705: <==negation-removal== 62074 (pos)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #78062: <==negation-removal== 39653 (pos)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #78688: <==negation-removal== 77329 (pos)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #83774: <==negation-removal== 14533 (pos)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #84155: <==negation-removal== 50756 (pos)
                    (not (Pa_not_secret))

                    ; #90131: <==negation-removal== 32022 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #91287: <==negation-removal== 41907 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #91393: <==negation-removal== 60562 (pos)
                    (not (Pc_Bb_Pa_not_secret))))

    (:action shout-1
        :precondition (and (at_l1)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #10615: <==closure== 70891 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #10914: <==closure== 50912 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #12766: <==commonly_known== 12660 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #13497: <==commonly_known== 17720 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #17347: <==commonly_known== 19579 (neg)
                    (Pc_Bb_secret)

                    ; #19641: <==commonly_known== 39523 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #22473: <==commonly_known== 42852 (pos)
                    (Ba_Pb_secret)

                    ; #22827: <==closure== 82327 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #24688: <==closure== 50912 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #29133: <==closure== 36002 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #32309: <==commonly_known== 49160 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #32605: <==commonly_known== 80241 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #36002: <==commonly_known== 36499 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #36499: <==commonly_known== 82064 (pos)
                    (Ba_Bb_secret)

                    ; #38090: <==commonly_known== 22473 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #38784: <==commonly_known== 12660 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #39523: <==closure== 36499 (pos)
                    (Pa_Pb_secret)

                    ; #40697: <==closure== 50912 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #42852: <==closure== 82064 (pos)
                    (Pb_secret)

                    ; #44891: <==commonly_known== 17347 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #48625: <==commonly_known== 82064 (pos)
                    (Bc_Bb_secret)

                    ; #48927: <==commonly_known== 54774 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #49160: <==commonly_known== 42852 (pos)
                    (Bc_Pb_secret)

                    ; #50912: <==commonly_known== 36499 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #51309: <==commonly_known== 22473 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #54774: <==commonly_known== 19579 (neg)
                    (Pa_Bb_secret)

                    ; #58884: <==commonly_known== 39523 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #60678: <==closure== 36002 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #63668: <==commonly_known== 54774 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #70219: <==closure== 82327 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #70891: <==commonly_known== 48625 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #74060: <==commonly_known== 49160 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #78027: <==closure== 36002 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #80241: <==closure== 48625 (pos)
                    (Pc_Pb_secret)

                    ; #80961: <==commonly_known== 17347 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #82064: origin
                    (Bb_secret)

                    ; #82327: <==commonly_known== 48625 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #84727: <==closure== 82327 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #86564: <==commonly_known== 17720 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #87152: <==closure== 70891 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #88451: <==commonly_known== 80241 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #91350: <==closure== 70891 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #11002: <==negation-removal== 32309 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #11090: <==negation-removal== 44891 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #11506: <==negation-removal== 78027 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #12660: <==negation-removal== 48625 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #16045: <==negation-removal== 13497 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #16221: <==negation-removal== 74060 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #17720: <==negation-removal== 36499 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #17887: <==negation-removal== 24688 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #18010: <==negation-removal== 80961 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #19579: <==negation-removal== 82064 (pos)
                    (not (Pb_not_secret))

                    ; #27224: <==negation-removal== 54774 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #28903: <==negation-removal== 17347 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #29900: <==negation-removal== 86564 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #30667: <==negation-removal== 49160 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #31910: <==negation-removal== 29133 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #32667: <==negation-removal== 40697 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #33158: <==negation-removal== 70891 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #33793: <==negation-removal== 63668 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #37907: <==negation-removal== 51309 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #40899: <==negation-removal== 10914 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #41413: <==negation-removal== 91350 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #42700: <==negation-removal== 70219 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #44093: <==negation-removal== 36002 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #45382: <==negation-removal== 88451 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #46585: <==negation-removal== 32605 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #47301: <==negation-removal== 38090 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #50258: <==negation-removal== 80241 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #51581: <==negation-removal== 19641 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #61775: <==negation-removal== 42852 (pos)
                    (not (Bb_not_secret))

                    ; #64124: <==negation-removal== 10615 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #69020: <==negation-removal== 58884 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #69647: <==negation-removal== 22473 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #70782: <==negation-removal== 84727 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #71467: <==negation-removal== 48927 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #72699: <==negation-removal== 87152 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #76948: <==negation-removal== 50912 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #78149: <==negation-removal== 39523 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #86236: <==negation-removal== 22827 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #89486: <==negation-removal== 60678 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #90001: <==negation-removal== 82327 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #91120: <==negation-removal== 38784 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #91123: <==negation-removal== 12766 (pos)
                    (not (Bb_Pc_Pb_not_secret))))

    (:action shout-2
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l2))
        :effect (and
                    ; #10615: <==closure== 70891 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #10676: <==closure== 72296 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #10914: <==closure== 50912 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #12766: <==commonly_known== 12660 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #12940: <==closure== 64019 (pos)
                    (Pc_secret)

                    ; #13497: <==commonly_known== 17720 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #17133: <==commonly_known== 24852 (neg)
                    (Pb_Bc_secret)

                    ; #17347: <==commonly_known== 19579 (neg)
                    (Pc_Bb_secret)

                    ; #17714: <==commonly_known== 24852 (neg)
                    (Pa_Bc_secret)

                    ; #18761: <==closure== 41730 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #19241: <==commonly_known== 42255 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #19641: <==commonly_known== 39523 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #20839: <==closure== 72296 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #21040: <==closure== 19241 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #22473: <==commonly_known== 42852 (pos)
                    (Ba_Pb_secret)

                    ; #22827: <==closure== 82327 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #24369: <==commonly_known== 12940 (pos)
                    (Bb_Pc_secret)

                    ; #24688: <==closure== 50912 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #24848: <==closure== 36784 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #29133: <==closure== 36002 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #30300: <==closure== 41730 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #30786: <==closure== 72296 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #31038: <==commonly_known== 64019 (pos)
                    (Ba_Bc_secret)

                    ; #31210: <==commonly_known== 31853 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #31853: <==closure== 31038 (pos)
                    (Pa_Pc_secret)

                    ; #32309: <==commonly_known== 49160 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #32605: <==commonly_known== 80241 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #35859: <==commonly_known== 17133 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #36002: <==commonly_known== 36499 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #36499: <==commonly_known== 82064 (pos)
                    (Ba_Bb_secret)

                    ; #36784: <==commonly_known== 31038 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #38090: <==commonly_known== 22473 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #38783: <==commonly_known== 17714 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #38784: <==commonly_known== 12660 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #39523: <==closure== 36499 (pos)
                    (Pa_Pb_secret)

                    ; #40683: <==closure== 41730 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #40697: <==closure== 50912 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #41730: <==commonly_known== 42255 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #42255: <==commonly_known== 64019 (pos)
                    (Bb_Bc_secret)

                    ; #42444: <==commonly_known== 17714 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #42852: <==closure== 82064 (pos)
                    (Pb_secret)

                    ; #44891: <==commonly_known== 17347 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #48625: <==commonly_known== 82064 (pos)
                    (Bc_Bb_secret)

                    ; #48927: <==commonly_known== 54774 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #49160: <==commonly_known== 42852 (pos)
                    (Bc_Pb_secret)

                    ; #50912: <==commonly_known== 36499 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #51309: <==commonly_known== 22473 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #54774: <==commonly_known== 19579 (neg)
                    (Pa_Bb_secret)

                    ; #55141: <==commonly_known== 68666 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #58884: <==commonly_known== 39523 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #59035: <==commonly_known== 98401 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #60678: <==closure== 36002 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #61983: <==commonly_known== 98401 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #63310: <==commonly_known== 24369 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #63668: <==commonly_known== 54774 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #64019: origin
                    (Bc_secret)

                    ; #64895: <==commonly_known== 67748 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #67635: <==commonly_known== 74238 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #67690: <==closure== 19241 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #67748: <==closure== 42255 (pos)
                    (Pb_Pc_secret)

                    ; #70219: <==closure== 82327 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #70891: <==commonly_known== 48625 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #72058: <==commonly_known== 74238 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #72296: <==commonly_known== 31038 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #74060: <==commonly_known== 49160 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #75820: <==closure== 36784 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #78016: <==commonly_known== 68666 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #78027: <==closure== 36002 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #80241: <==closure== 48625 (pos)
                    (Pc_Pb_secret)

                    ; #80961: <==commonly_known== 17347 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #81423: <==commonly_known== 17133 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #82064: origin
                    (Bb_secret)

                    ; #82088: <==closure== 19241 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #82327: <==commonly_known== 48625 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #84436: <==commonly_known== 67748 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #84727: <==closure== 82327 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #84971: <==commonly_known== 24369 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #86564: <==commonly_known== 17720 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #87152: <==closure== 70891 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #88451: <==commonly_known== 80241 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #90142: <==closure== 36784 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #91238: <==commonly_known== 31853 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #91350: <==closure== 70891 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #98401: <==commonly_known== 12940 (pos)
                    (Ba_Pc_secret)

                    ; #11002: <==negation-removal== 32309 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #11090: <==negation-removal== 44891 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #11319: <==negation-removal== 31853 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #11506: <==negation-removal== 78027 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #12660: <==negation-removal== 48625 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #13714: <==negation-removal== 31210 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #14133: <==negation-removal== 35859 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #16045: <==negation-removal== 13497 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #16221: <==negation-removal== 74060 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #17720: <==negation-removal== 36499 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #17887: <==negation-removal== 24688 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #18010: <==negation-removal== 80961 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #19178: <==negation-removal== 38783 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #19579: <==negation-removal== 82064 (pos)
                    (not (Pb_not_secret))

                    ; #22379: <==negation-removal== 41730 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #22722: <==negation-removal== 90142 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #23943: <==negation-removal== 78016 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #24443: <==negation-removal== 24369 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #24852: <==negation-removal== 64019 (pos)
                    (not (Pc_not_secret))

                    ; #25595: <==negation-removal== 55141 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #27224: <==negation-removal== 54774 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #28903: <==negation-removal== 17347 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #29900: <==negation-removal== 86564 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #30667: <==negation-removal== 49160 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #31910: <==negation-removal== 29133 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #32667: <==negation-removal== 40697 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #33158: <==negation-removal== 70891 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #33793: <==negation-removal== 63668 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #35197: <==negation-removal== 67690 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #36473: <==negation-removal== 30300 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #37907: <==negation-removal== 51309 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #40899: <==negation-removal== 10914 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #41413: <==negation-removal== 91350 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #42700: <==negation-removal== 70219 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #43603: <==negation-removal== 98401 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #44093: <==negation-removal== 36002 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #45382: <==negation-removal== 88451 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #46280: <==negation-removal== 84971 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #46585: <==negation-removal== 32605 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #47301: <==negation-removal== 38090 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #47967: <==negation-removal== 40683 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #48151: <==negation-removal== 67635 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #48480: <==negation-removal== 61983 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #49271: <==negation-removal== 67748 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #50258: <==negation-removal== 80241 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #51581: <==negation-removal== 19641 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #54124: <==negation-removal== 64895 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #56908: <==negation-removal== 17133 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #57085: <==negation-removal== 36784 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #60359: <==negation-removal== 30786 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #61517: <==negation-removal== 17714 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #61775: <==negation-removal== 42852 (pos)
                    (not (Bb_not_secret))

                    ; #63685: <==negation-removal== 82088 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #63707: <==negation-removal== 63310 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #64124: <==negation-removal== 10615 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #65111: <==negation-removal== 72058 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #67702: <==negation-removal== 20839 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #68666: <==negation-removal== 31038 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #69020: <==negation-removal== 58884 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #69400: <==negation-removal== 19241 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #69647: <==negation-removal== 22473 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #70782: <==negation-removal== 84727 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #71280: <==negation-removal== 91238 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #71467: <==negation-removal== 48927 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #72699: <==negation-removal== 87152 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #73173: <==negation-removal== 21040 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #73602: <==negation-removal== 12940 (pos)
                    (not (Bc_not_secret))

                    ; #73795: <==negation-removal== 75820 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #74238: <==negation-removal== 42255 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #75223: <==negation-removal== 59035 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #76948: <==negation-removal== 50912 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #78149: <==negation-removal== 39523 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #79305: <==negation-removal== 81423 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #79399: <==negation-removal== 72296 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #80359: <==negation-removal== 10676 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #84463: <==negation-removal== 84436 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #86099: <==negation-removal== 24848 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #86236: <==negation-removal== 22827 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #89486: <==negation-removal== 60678 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #90001: <==negation-removal== 82327 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #90034: <==negation-removal== 18761 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #91120: <==negation-removal== 38784 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #91123: <==negation-removal== 12766 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #91913: <==negation-removal== 42444 (pos)
                    (not (Pc_Ba_Pc_not_secret))))

    (:action shout-3
        :precondition (and (at_l3)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #10615: <==closure== 70891 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #10676: <==closure== 72296 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #10914: <==closure== 50912 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #12766: <==commonly_known== 12660 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #12940: <==closure== 64019 (pos)
                    (Pc_secret)

                    ; #13497: <==commonly_known== 17720 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #17133: <==commonly_known== 24852 (neg)
                    (Pb_Bc_secret)

                    ; #17347: <==commonly_known== 19579 (neg)
                    (Pc_Bb_secret)

                    ; #17714: <==commonly_known== 24852 (neg)
                    (Pa_Bc_secret)

                    ; #18761: <==closure== 41730 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #19241: <==commonly_known== 42255 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #19641: <==commonly_known== 39523 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #20839: <==closure== 72296 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #21040: <==closure== 19241 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #22473: <==commonly_known== 42852 (pos)
                    (Ba_Pb_secret)

                    ; #22827: <==closure== 82327 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #24369: <==commonly_known== 12940 (pos)
                    (Bb_Pc_secret)

                    ; #24688: <==closure== 50912 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #24848: <==closure== 36784 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #29133: <==closure== 36002 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #30300: <==closure== 41730 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #30786: <==closure== 72296 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #31038: <==commonly_known== 64019 (pos)
                    (Ba_Bc_secret)

                    ; #31210: <==commonly_known== 31853 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #31853: <==closure== 31038 (pos)
                    (Pa_Pc_secret)

                    ; #32309: <==commonly_known== 49160 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #32605: <==commonly_known== 80241 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #35859: <==commonly_known== 17133 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #36002: <==commonly_known== 36499 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #36499: <==commonly_known== 82064 (pos)
                    (Ba_Bb_secret)

                    ; #36784: <==commonly_known== 31038 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #38090: <==commonly_known== 22473 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #38783: <==commonly_known== 17714 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #38784: <==commonly_known== 12660 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #39523: <==closure== 36499 (pos)
                    (Pa_Pb_secret)

                    ; #40683: <==closure== 41730 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #40697: <==closure== 50912 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #41730: <==commonly_known== 42255 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #42255: <==commonly_known== 64019 (pos)
                    (Bb_Bc_secret)

                    ; #42444: <==commonly_known== 17714 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #42852: <==closure== 82064 (pos)
                    (Pb_secret)

                    ; #44891: <==commonly_known== 17347 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #48625: <==commonly_known== 82064 (pos)
                    (Bc_Bb_secret)

                    ; #48927: <==commonly_known== 54774 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #49160: <==commonly_known== 42852 (pos)
                    (Bc_Pb_secret)

                    ; #50912: <==commonly_known== 36499 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #51309: <==commonly_known== 22473 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #54774: <==commonly_known== 19579 (neg)
                    (Pa_Bb_secret)

                    ; #55141: <==commonly_known== 68666 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #58884: <==commonly_known== 39523 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #59035: <==commonly_known== 98401 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #60678: <==closure== 36002 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #61983: <==commonly_known== 98401 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #63310: <==commonly_known== 24369 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #63668: <==commonly_known== 54774 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #64019: origin
                    (Bc_secret)

                    ; #64895: <==commonly_known== 67748 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #67635: <==commonly_known== 74238 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #67690: <==closure== 19241 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #67748: <==closure== 42255 (pos)
                    (Pb_Pc_secret)

                    ; #70219: <==closure== 82327 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #70891: <==commonly_known== 48625 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #72058: <==commonly_known== 74238 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #72296: <==commonly_known== 31038 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #74060: <==commonly_known== 49160 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #75820: <==closure== 36784 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #78016: <==commonly_known== 68666 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #78027: <==closure== 36002 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #80241: <==closure== 48625 (pos)
                    (Pc_Pb_secret)

                    ; #80961: <==commonly_known== 17347 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #81423: <==commonly_known== 17133 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #82064: origin
                    (Bb_secret)

                    ; #82088: <==closure== 19241 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #82327: <==commonly_known== 48625 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #84436: <==commonly_known== 67748 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #84727: <==closure== 82327 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #84971: <==commonly_known== 24369 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #86564: <==commonly_known== 17720 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #87152: <==closure== 70891 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #88451: <==commonly_known== 80241 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #90142: <==closure== 36784 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #91238: <==commonly_known== 31853 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #91350: <==closure== 70891 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #98401: <==commonly_known== 12940 (pos)
                    (Ba_Pc_secret)

                    ; #11002: <==negation-removal== 32309 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #11090: <==negation-removal== 44891 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #11319: <==negation-removal== 31853 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #11506: <==negation-removal== 78027 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #12660: <==negation-removal== 48625 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #13714: <==negation-removal== 31210 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #14133: <==negation-removal== 35859 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #16045: <==negation-removal== 13497 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #16221: <==negation-removal== 74060 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #17720: <==negation-removal== 36499 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #17887: <==negation-removal== 24688 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #18010: <==negation-removal== 80961 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #19178: <==negation-removal== 38783 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #19579: <==negation-removal== 82064 (pos)
                    (not (Pb_not_secret))

                    ; #22379: <==negation-removal== 41730 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #22722: <==negation-removal== 90142 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #23943: <==negation-removal== 78016 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #24443: <==negation-removal== 24369 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #24852: <==negation-removal== 64019 (pos)
                    (not (Pc_not_secret))

                    ; #25595: <==negation-removal== 55141 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #27224: <==negation-removal== 54774 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #28903: <==negation-removal== 17347 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #29900: <==negation-removal== 86564 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #30667: <==negation-removal== 49160 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #31910: <==negation-removal== 29133 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #32667: <==negation-removal== 40697 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #33158: <==negation-removal== 70891 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #33793: <==negation-removal== 63668 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #35197: <==negation-removal== 67690 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #36473: <==negation-removal== 30300 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #37907: <==negation-removal== 51309 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #40899: <==negation-removal== 10914 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #41413: <==negation-removal== 91350 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #42700: <==negation-removal== 70219 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #43603: <==negation-removal== 98401 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #44093: <==negation-removal== 36002 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #45382: <==negation-removal== 88451 (pos)
                    (not (Pa_Bc_Bb_not_secret))

                    ; #46280: <==negation-removal== 84971 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #46585: <==negation-removal== 32605 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #47301: <==negation-removal== 38090 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #47967: <==negation-removal== 40683 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #48151: <==negation-removal== 67635 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #48480: <==negation-removal== 61983 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #49271: <==negation-removal== 67748 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #50258: <==negation-removal== 80241 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #51581: <==negation-removal== 19641 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #54124: <==negation-removal== 64895 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #56908: <==negation-removal== 17133 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #57085: <==negation-removal== 36784 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #60359: <==negation-removal== 30786 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #61517: <==negation-removal== 17714 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #61775: <==negation-removal== 42852 (pos)
                    (not (Bb_not_secret))

                    ; #63685: <==negation-removal== 82088 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #63707: <==negation-removal== 63310 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #64124: <==negation-removal== 10615 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #65111: <==negation-removal== 72058 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #67702: <==negation-removal== 20839 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #68666: <==negation-removal== 31038 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #69020: <==negation-removal== 58884 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #69400: <==negation-removal== 19241 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #69647: <==negation-removal== 22473 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #70782: <==negation-removal== 84727 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #71280: <==negation-removal== 91238 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #71467: <==negation-removal== 48927 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #72699: <==negation-removal== 87152 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #73173: <==negation-removal== 21040 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #73602: <==negation-removal== 12940 (pos)
                    (not (Bc_not_secret))

                    ; #73795: <==negation-removal== 75820 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #74238: <==negation-removal== 42255 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #75223: <==negation-removal== 59035 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #76948: <==negation-removal== 50912 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #78149: <==negation-removal== 39523 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #79305: <==negation-removal== 81423 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #79399: <==negation-removal== 72296 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #80359: <==negation-removal== 10676 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #84463: <==negation-removal== 84436 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #86099: <==negation-removal== 24848 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #86236: <==negation-removal== 22827 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #89486: <==negation-removal== 60678 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #90001: <==negation-removal== 82327 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #90034: <==negation-removal== 18761 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #91120: <==negation-removal== 38784 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #91123: <==negation-removal== 12766 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #91913: <==negation-removal== 42444 (pos)
                    (not (Pc_Ba_Pc_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #10676: <==closure== 72296 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #12940: <==closure== 64019 (pos)
                    (Pc_secret)

                    ; #17133: <==commonly_known== 24852 (neg)
                    (Pb_Bc_secret)

                    ; #17714: <==commonly_known== 24852 (neg)
                    (Pa_Bc_secret)

                    ; #18761: <==closure== 41730 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #19241: <==commonly_known== 42255 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #20839: <==closure== 72296 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #21040: <==closure== 19241 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #24369: <==commonly_known== 12940 (pos)
                    (Bb_Pc_secret)

                    ; #24848: <==closure== 36784 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #30300: <==closure== 41730 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #30786: <==closure== 72296 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #31038: <==commonly_known== 64019 (pos)
                    (Ba_Bc_secret)

                    ; #31210: <==commonly_known== 31853 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #31853: <==closure== 31038 (pos)
                    (Pa_Pc_secret)

                    ; #35859: <==commonly_known== 17133 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #36784: <==commonly_known== 31038 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #38783: <==commonly_known== 17714 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #40683: <==closure== 41730 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #41730: <==commonly_known== 42255 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #42255: <==commonly_known== 64019 (pos)
                    (Bb_Bc_secret)

                    ; #42444: <==commonly_known== 17714 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #55141: <==commonly_known== 68666 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #59035: <==commonly_known== 98401 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #61983: <==commonly_known== 98401 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #63310: <==commonly_known== 24369 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #64019: origin
                    (Bc_secret)

                    ; #64895: <==commonly_known== 67748 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #67635: <==commonly_known== 74238 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #67690: <==closure== 19241 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #67748: <==closure== 42255 (pos)
                    (Pb_Pc_secret)

                    ; #72058: <==commonly_known== 74238 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #72296: <==commonly_known== 31038 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #75820: <==closure== 36784 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #78016: <==commonly_known== 68666 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #81423: <==commonly_known== 17133 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #82088: <==closure== 19241 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #84436: <==commonly_known== 67748 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #84971: <==commonly_known== 24369 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #90142: <==closure== 36784 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #91238: <==commonly_known== 31853 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #98401: <==commonly_known== 12940 (pos)
                    (Ba_Pc_secret)

                    ; #11319: <==negation-removal== 31853 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #13714: <==negation-removal== 31210 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #14133: <==negation-removal== 35859 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #19178: <==negation-removal== 38783 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #22379: <==negation-removal== 41730 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #22722: <==negation-removal== 90142 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #23943: <==negation-removal== 78016 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #24443: <==negation-removal== 24369 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #24852: <==negation-removal== 64019 (pos)
                    (not (Pc_not_secret))

                    ; #25595: <==negation-removal== 55141 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #35197: <==negation-removal== 67690 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #36473: <==negation-removal== 30300 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #43603: <==negation-removal== 98401 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #46280: <==negation-removal== 84971 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #47967: <==negation-removal== 40683 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #48151: <==negation-removal== 67635 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #48480: <==negation-removal== 61983 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #49271: <==negation-removal== 67748 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #54124: <==negation-removal== 64895 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #56908: <==negation-removal== 17133 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #57085: <==negation-removal== 36784 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #60359: <==negation-removal== 30786 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #61517: <==negation-removal== 17714 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #63685: <==negation-removal== 82088 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #63707: <==negation-removal== 63310 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #65111: <==negation-removal== 72058 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #67702: <==negation-removal== 20839 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #68666: <==negation-removal== 31038 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #69400: <==negation-removal== 19241 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #71280: <==negation-removal== 91238 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #73173: <==negation-removal== 21040 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #73602: <==negation-removal== 12940 (pos)
                    (not (Bc_not_secret))

                    ; #73795: <==negation-removal== 75820 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #74238: <==negation-removal== 42255 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #75223: <==negation-removal== 59035 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #79305: <==negation-removal== 81423 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #79399: <==negation-removal== 72296 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #80359: <==negation-removal== 10676 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #84463: <==negation-removal== 84436 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #86099: <==negation-removal== 24848 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #90034: <==negation-removal== 18761 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #91913: <==negation-removal== 42444 (pos)
                    (not (Pc_Ba_Pc_not_secret))))

)