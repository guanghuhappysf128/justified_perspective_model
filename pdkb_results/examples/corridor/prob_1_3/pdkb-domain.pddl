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

    (:action left_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #67128: origin
                    (not_at_l2)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #60725: origin
                    (not_at_l3)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #41936: origin
                    (not_at_l4)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l1))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #76274: origin
                    (at_l2)

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #67128: origin
                    (not_at_l2)

                    ; #76274: origin
                    (at_l2)

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #60725: origin
                    (not_at_l3)

                    ; #76274: origin
                    (at_l2)

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #41936: origin
                    (not_at_l4)

                    ; #76274: origin
                    (at_l2)

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #62485: origin
                    (at_l3)

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #62485: origin
                    (at_l3)

                    ; #67128: origin
                    (not_at_l2)

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #60725: origin
                    (not_at_l3)

                    ; #62485: origin
                    (at_l3)

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #41936: origin
                    (not_at_l4)

                    ; #62485: origin
                    (at_l3)

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #24059: origin
                    (at_l4)

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #24059: origin
                    (at_l4)

                    ; #67128: origin
                    (not_at_l2)

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #24059: origin
                    (at_l4)

                    ; #60725: origin
                    (not_at_l3)

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #24059: origin
                    (at_l4)

                    ; #41936: origin
                    (not_at_l4)

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #76274: origin
                    (at_l2)

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #62485: origin
                    (at_l3)

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #11123: origin
                    (not_at_l1)

                    ; #24059: origin
                    (at_l4)

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))

                    ; #72040: <==negation-removal== 11123 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #67128: origin
                    (not_at_l2)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #67128: origin
                    (not_at_l2)

                    ; #76274: origin
                    (at_l2)

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #62485: origin
                    (at_l3)

                    ; #67128: origin
                    (not_at_l2)

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #24059: origin
                    (at_l4)

                    ; #67128: origin
                    (not_at_l2)

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))

                    ; #76274: <==negation-removal== 67128 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #60725: origin
                    (not_at_l3)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #60725: origin
                    (not_at_l3)

                    ; #76274: origin
                    (at_l2)

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #60725: origin
                    (not_at_l3)

                    ; #62485: origin
                    (at_l3)

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #24059: origin
                    (at_l4)

                    ; #60725: origin
                    (not_at_l3)

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))

                    ; #62485: <==negation-removal== 60725 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #41936: origin
                    (not_at_l4)

                    ; #72040: origin
                    (at_l1)

                    ; #11123: <==negation-removal== 72040 (pos)
                    (not (not_at_l1))

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #41936: origin
                    (not_at_l4)

                    ; #76274: origin
                    (at_l2)

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))

                    ; #67128: <==negation-removal== 76274 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #41936: origin
                    (not_at_l4)

                    ; #62485: origin
                    (at_l3)

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))

                    ; #60725: <==negation-removal== 62485 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #24059: origin
                    (at_l4)

                    ; #41936: origin
                    (not_at_l4)

                    ; #24059: <==negation-removal== 41936 (pos)
                    (not (at_l4))

                    ; #41936: <==negation-removal== 24059 (pos)
                    (not (not_at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #39157: <==closure== 67219 (pos)
                    (Pa_secret)

                    ; #67219: origin
                    (Ba_secret)

                    ; #73632: <==negation-removal== 67219 (pos)
                    (not (Pa_not_secret))

                    ; #74443: <==negation-removal== 39157 (pos)
                    (not (Ba_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (at_l1)
                           (Pa_secret))
        :effect (and
                    ; #19959: <==closure== 85182 (pos)
                    (Pb_secret)

                    ; #85182: origin
                    (Bb_secret)

                    ; #33614: <==negation-removal== 19959 (pos)
                    (not (Bb_not_secret))

                    ; #68959: <==negation-removal== 85182 (pos)
                    (not (Pb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (at_l2)
                           (Pa_secret))
        :effect (and
                    ; #19959: <==closure== 85182 (pos)
                    (Pb_secret)

                    ; #24924: <==closure== 69583 (pos)
                    (Pc_secret)

                    ; #69583: origin
                    (Bc_secret)

                    ; #85182: origin
                    (Bb_secret)

                    ; #19854: <==negation-removal== 69583 (pos)
                    (not (Pc_not_secret))

                    ; #33614: <==negation-removal== 19959 (pos)
                    (not (Bb_not_secret))

                    ; #43108: <==negation-removal== 24924 (pos)
                    (not (Bc_not_secret))

                    ; #68959: <==negation-removal== 85182 (pos)
                    (not (Pb_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (at_l3)
                           (Pa_secret))
        :effect (and
                    ; #19959: <==closure== 85182 (pos)
                    (Pb_secret)

                    ; #24924: <==closure== 69583 (pos)
                    (Pc_secret)

                    ; #69583: origin
                    (Bc_secret)

                    ; #85182: origin
                    (Bb_secret)

                    ; #19854: <==negation-removal== 69583 (pos)
                    (not (Pc_not_secret))

                    ; #33614: <==negation-removal== 19959 (pos)
                    (not (Bb_not_secret))

                    ; #43108: <==negation-removal== 24924 (pos)
                    (not (Bc_not_secret))

                    ; #68959: <==negation-removal== 85182 (pos)
                    (not (Pb_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #24924: <==closure== 69583 (pos)
                    (Pc_secret)

                    ; #69583: origin
                    (Bc_secret)

                    ; #19854: <==negation-removal== 69583 (pos)
                    (not (Pc_not_secret))

                    ; #43108: <==negation-removal== 24924 (pos)
                    (not (Bc_not_secret))))

)