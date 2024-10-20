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
        (Bf_not_secret)
        (Bf_secret)
        (Bg_not_secret)
        (Bg_secret)
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
        (Pf_not_secret)
        (Pf_secret)
        (Pg_not_secret)
        (Pg_secret)
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
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #29005: origin
                    (Bb_not_secret)

                    ; #56499: <==closure== 29005 (pos)
                    (Pb_not_secret)

                    ; #60606: origin
                    (Bd_not_secret)

                    ; #72154: origin
                    (Bf_not_secret)

                    ; #77710: <==closure== 60606 (pos)
                    (Pd_not_secret)

                    ; #77786: <==closure== 72154 (pos)
                    (Pf_not_secret)

                    ; #11900: <==negation-removal== 56499 (pos)
                    (not (Bb_secret))

                    ; #12148: <==negation-removal== 29005 (pos)
                    (not (Pb_secret))

                    ; #50156: <==negation-removal== 60606 (pos)
                    (not (Pd_secret))

                    ; #74583: <==negation-removal== 77786 (pos)
                    (not (Bf_secret))

                    ; #77560: <==negation-removal== 72154 (pos)
                    (not (Pf_secret))

                    ; #91966: <==negation-removal== 77710 (pos)
                    (not (Bd_secret))))

    (:action fib-2
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l2))
        :effect (and
                    ; #29005: origin
                    (Bb_not_secret)

                    ; #44247: <==closure== 95302 (pos)
                    (Pe_not_secret)

                    ; #56499: <==closure== 29005 (pos)
                    (Pb_not_secret)

                    ; #60606: origin
                    (Bd_not_secret)

                    ; #64924: <==closure== 69186 (pos)
                    (Pc_not_secret)

                    ; #69186: origin
                    (Bc_not_secret)

                    ; #72154: origin
                    (Bf_not_secret)

                    ; #77710: <==closure== 60606 (pos)
                    (Pd_not_secret)

                    ; #77786: <==closure== 72154 (pos)
                    (Pf_not_secret)

                    ; #95302: origin
                    (Be_not_secret)

                    ; #11900: <==negation-removal== 56499 (pos)
                    (not (Bb_secret))

                    ; #12148: <==negation-removal== 29005 (pos)
                    (not (Pb_secret))

                    ; #19824: <==negation-removal== 69186 (pos)
                    (not (Pc_secret))

                    ; #50156: <==negation-removal== 60606 (pos)
                    (not (Pd_secret))

                    ; #65833: <==negation-removal== 44247 (pos)
                    (not (Be_secret))

                    ; #74583: <==negation-removal== 77786 (pos)
                    (not (Bf_secret))

                    ; #77560: <==negation-removal== 72154 (pos)
                    (not (Pf_secret))

                    ; #78212: <==negation-removal== 95302 (pos)
                    (not (Pe_secret))

                    ; #82528: <==negation-removal== 64924 (pos)
                    (not (Bc_secret))

                    ; #91966: <==negation-removal== 77710 (pos)
                    (not (Bd_secret))))

    (:action fib-3
        :precondition (and (Pa_secret)
                           (at_l3)
                           (Ba_secret))
        :effect (and
                    ; #29005: origin
                    (Bb_not_secret)

                    ; #44247: <==closure== 95302 (pos)
                    (Pe_not_secret)

                    ; #56499: <==closure== 29005 (pos)
                    (Pb_not_secret)

                    ; #64924: <==closure== 69186 (pos)
                    (Pc_not_secret)

                    ; #69186: origin
                    (Bc_not_secret)

                    ; #72154: origin
                    (Bf_not_secret)

                    ; #77786: <==closure== 72154 (pos)
                    (Pf_not_secret)

                    ; #78531: origin
                    (Bg_not_secret)

                    ; #81367: <==closure== 78531 (pos)
                    (Pg_not_secret)

                    ; #95302: origin
                    (Be_not_secret)

                    ; #11900: <==negation-removal== 56499 (pos)
                    (not (Bb_secret))

                    ; #12148: <==negation-removal== 29005 (pos)
                    (not (Pb_secret))

                    ; #19824: <==negation-removal== 69186 (pos)
                    (not (Pc_secret))

                    ; #45915: <==negation-removal== 81367 (pos)
                    (not (Bg_secret))

                    ; #65833: <==negation-removal== 44247 (pos)
                    (not (Be_secret))

                    ; #74583: <==negation-removal== 77786 (pos)
                    (not (Bf_secret))

                    ; #77560: <==negation-removal== 72154 (pos)
                    (not (Pf_secret))

                    ; #78212: <==negation-removal== 95302 (pos)
                    (not (Pe_secret))

                    ; #81948: <==negation-removal== 78531 (pos)
                    (not (Pg_secret))

                    ; #82528: <==negation-removal== 64924 (pos)
                    (not (Bc_secret))))

    (:action fib-4
        :precondition (and (at_l4)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #44247: <==closure== 95302 (pos)
                    (Pe_not_secret)

                    ; #64924: <==closure== 69186 (pos)
                    (Pc_not_secret)

                    ; #69186: origin
                    (Bc_not_secret)

                    ; #78531: origin
                    (Bg_not_secret)

                    ; #81367: <==closure== 78531 (pos)
                    (Pg_not_secret)

                    ; #95302: origin
                    (Be_not_secret)

                    ; #19824: <==negation-removal== 69186 (pos)
                    (not (Pc_secret))

                    ; #45915: <==negation-removal== 81367 (pos)
                    (not (Bg_secret))

                    ; #65833: <==negation-removal== 44247 (pos)
                    (not (Be_secret))

                    ; #78212: <==negation-removal== 95302 (pos)
                    (not (Pe_secret))

                    ; #81948: <==negation-removal== 78531 (pos)
                    (not (Pg_secret))

                    ; #82528: <==negation-removal== 64924 (pos)
                    (not (Bc_secret))))

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #49105: origin
                    (at_l1)

                    ; #55761: origin
                    (not_at_l1)

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #49105: origin
                    (at_l1)

                    ; #58209: origin
                    (not_at_l2)

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #49105: origin
                    (at_l1)

                    ; #58751: origin
                    (not_at_l3)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #25038: origin
                    (not_at_l4)

                    ; #49105: origin
                    (at_l1)

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #55761: origin
                    (not_at_l1)

                    ; #87125: origin
                    (at_l2)

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #58209: origin
                    (not_at_l2)

                    ; #87125: origin
                    (at_l2)

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #58751: origin
                    (not_at_l3)

                    ; #87125: origin
                    (at_l2)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #25038: origin
                    (not_at_l4)

                    ; #87125: origin
                    (at_l2)

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #55761: origin
                    (not_at_l1)

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #58209: origin
                    (not_at_l2)

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #58751: origin
                    (not_at_l3)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #25038: origin
                    (not_at_l4)

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #55761: origin
                    (not_at_l1)

                    ; #84504: origin
                    (at_l4)

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #58209: origin
                    (not_at_l2)

                    ; #84504: origin
                    (at_l4)

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #58751: origin
                    (not_at_l3)

                    ; #84504: origin
                    (at_l4)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #25038: origin
                    (not_at_l4)

                    ; #84504: origin
                    (at_l4)

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #49105: origin
                    (at_l1)

                    ; #55761: origin
                    (not_at_l1)

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #55761: origin
                    (not_at_l1)

                    ; #87125: origin
                    (at_l2)

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #55761: origin
                    (not_at_l1)

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l1))
        :effect (and
                    ; #55761: origin
                    (not_at_l1)

                    ; #84504: origin
                    (at_l4)

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))

                    ; #49105: <==negation-removal== 55761 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #49105: origin
                    (at_l1)

                    ; #58209: origin
                    (not_at_l2)

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #58209: origin
                    (not_at_l2)

                    ; #87125: origin
                    (at_l2)

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #58209: origin
                    (not_at_l2)

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #58209: origin
                    (not_at_l2)

                    ; #84504: origin
                    (at_l4)

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))

                    ; #87125: <==negation-removal== 58209 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #49105: origin
                    (at_l1)

                    ; #58751: origin
                    (not_at_l3)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #58751: origin
                    (not_at_l3)

                    ; #87125: origin
                    (at_l2)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #58751: origin
                    (not_at_l3)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (at_l3)
                           (succ_l3_l4))
        :effect (and
                    ; #58751: origin
                    (not_at_l3)

                    ; #84504: origin
                    (at_l4)

                    ; #10991: <==negation-removal== 58751 (pos)
                    (not (at_l3))

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #25038: origin
                    (not_at_l4)

                    ; #49105: origin
                    (at_l1)

                    ; #55761: <==negation-removal== 49105 (pos)
                    (not (not_at_l1))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #25038: origin
                    (not_at_l4)

                    ; #87125: origin
                    (at_l2)

                    ; #58209: <==negation-removal== 87125 (pos)
                    (not (not_at_l2))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #10991: origin
                    (at_l3)

                    ; #25038: origin
                    (not_at_l4)

                    ; #58751: <==negation-removal== 10991 (pos)
                    (not (not_at_l3))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #25038: origin
                    (not_at_l4)

                    ; #84504: origin
                    (at_l4)

                    ; #25038: <==negation-removal== 84504 (pos)
                    (not (not_at_l4))

                    ; #84504: <==negation-removal== 25038 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #50500: <==closure== 82879 (pos)
                    (Pa_secret)

                    ; #82879: origin
                    (Ba_secret)

                    ; #18793: <==negation-removal== 50500 (pos)
                    (not (Ba_not_secret))

                    ; #89946: <==negation-removal== 82879 (pos)
                    (not (Pa_not_secret))))

    (:action shout-1
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l1))
        :effect (and
                    ; #11900: origin
                    (Bb_secret)

                    ; #12148: <==closure== 11900 (pos)
                    (Pb_secret)

                    ; #50156: <==closure== 91966 (pos)
                    (Pd_secret)

                    ; #74583: origin
                    (Bf_secret)

                    ; #77560: <==closure== 74583 (pos)
                    (Pf_secret)

                    ; #91966: origin
                    (Bd_secret)

                    ; #29005: <==negation-removal== 12148 (pos)
                    (not (Bb_not_secret))

                    ; #56499: <==negation-removal== 11900 (pos)
                    (not (Pb_not_secret))

                    ; #60606: <==negation-removal== 50156 (pos)
                    (not (Bd_not_secret))

                    ; #72154: <==negation-removal== 77560 (pos)
                    (not (Bf_not_secret))

                    ; #77710: <==negation-removal== 91966 (pos)
                    (not (Pd_not_secret))

                    ; #77786: <==negation-removal== 74583 (pos)
                    (not (Pf_not_secret))))

    (:action shout-2
        :precondition (and (Pa_secret)
                           (Ba_secret)
                           (at_l2))
        :effect (and
                    ; #11900: origin
                    (Bb_secret)

                    ; #12148: <==closure== 11900 (pos)
                    (Pb_secret)

                    ; #19824: <==closure== 82528 (pos)
                    (Pc_secret)

                    ; #50156: <==closure== 91966 (pos)
                    (Pd_secret)

                    ; #65833: origin
                    (Be_secret)

                    ; #74583: origin
                    (Bf_secret)

                    ; #77560: <==closure== 74583 (pos)
                    (Pf_secret)

                    ; #78212: <==closure== 65833 (pos)
                    (Pe_secret)

                    ; #82528: origin
                    (Bc_secret)

                    ; #91966: origin
                    (Bd_secret)

                    ; #29005: <==negation-removal== 12148 (pos)
                    (not (Bb_not_secret))

                    ; #44247: <==negation-removal== 65833 (pos)
                    (not (Pe_not_secret))

                    ; #56499: <==negation-removal== 11900 (pos)
                    (not (Pb_not_secret))

                    ; #60606: <==negation-removal== 50156 (pos)
                    (not (Bd_not_secret))

                    ; #64924: <==negation-removal== 82528 (pos)
                    (not (Pc_not_secret))

                    ; #69186: <==negation-removal== 19824 (pos)
                    (not (Bc_not_secret))

                    ; #72154: <==negation-removal== 77560 (pos)
                    (not (Bf_not_secret))

                    ; #77710: <==negation-removal== 91966 (pos)
                    (not (Pd_not_secret))

                    ; #77786: <==negation-removal== 74583 (pos)
                    (not (Pf_not_secret))

                    ; #95302: <==negation-removal== 78212 (pos)
                    (not (Be_not_secret))))

    (:action shout-3
        :precondition (and (Pa_secret)
                           (at_l3)
                           (Ba_secret))
        :effect (and
                    ; #11900: origin
                    (Bb_secret)

                    ; #12148: <==closure== 11900 (pos)
                    (Pb_secret)

                    ; #19824: <==closure== 82528 (pos)
                    (Pc_secret)

                    ; #45915: origin
                    (Bg_secret)

                    ; #65833: origin
                    (Be_secret)

                    ; #74583: origin
                    (Bf_secret)

                    ; #77560: <==closure== 74583 (pos)
                    (Pf_secret)

                    ; #78212: <==closure== 65833 (pos)
                    (Pe_secret)

                    ; #81948: <==closure== 45915 (pos)
                    (Pg_secret)

                    ; #82528: origin
                    (Bc_secret)

                    ; #29005: <==negation-removal== 12148 (pos)
                    (not (Bb_not_secret))

                    ; #44247: <==negation-removal== 65833 (pos)
                    (not (Pe_not_secret))

                    ; #56499: <==negation-removal== 11900 (pos)
                    (not (Pb_not_secret))

                    ; #64924: <==negation-removal== 82528 (pos)
                    (not (Pc_not_secret))

                    ; #69186: <==negation-removal== 19824 (pos)
                    (not (Bc_not_secret))

                    ; #72154: <==negation-removal== 77560 (pos)
                    (not (Bf_not_secret))

                    ; #77786: <==negation-removal== 74583 (pos)
                    (not (Pf_not_secret))

                    ; #78531: <==negation-removal== 81948 (pos)
                    (not (Bg_not_secret))

                    ; #81367: <==negation-removal== 45915 (pos)
                    (not (Pg_not_secret))

                    ; #95302: <==negation-removal== 78212 (pos)
                    (not (Be_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Pa_secret)
                           (Ba_secret))
        :effect (and
                    ; #19824: <==closure== 82528 (pos)
                    (Pc_secret)

                    ; #45915: origin
                    (Bg_secret)

                    ; #65833: origin
                    (Be_secret)

                    ; #78212: <==closure== 65833 (pos)
                    (Pe_secret)

                    ; #81948: <==closure== 45915 (pos)
                    (Pg_secret)

                    ; #82528: origin
                    (Bc_secret)

                    ; #44247: <==negation-removal== 65833 (pos)
                    (not (Pe_not_secret))

                    ; #64924: <==negation-removal== 82528 (pos)
                    (not (Pc_not_secret))

                    ; #69186: <==negation-removal== 19824 (pos)
                    (not (Bc_not_secret))

                    ; #78531: <==negation-removal== 81948 (pos)
                    (not (Bg_not_secret))

                    ; #81367: <==negation-removal== 45915 (pos)
                    (not (Pg_not_secret))

                    ; #95302: <==negation-removal== 78212 (pos)
                    (not (Be_not_secret))))

)