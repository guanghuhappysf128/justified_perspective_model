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

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #48312: origin
                    (at_l1)

                    ; #84713: origin
                    (not_at_l1)

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #48312: origin
                    (at_l1)

                    ; #52743: origin
                    (not_at_l2)

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #48312: origin
                    (at_l1)

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #48312: origin
                    (at_l1)

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #84713: origin
                    (not_at_l1)

                    ; #89744: origin
                    (at_l2)

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #52743: origin
                    (not_at_l2)

                    ; #89744: origin
                    (at_l2)

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #89744: origin
                    (at_l2)

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #89744: origin
                    (at_l2)

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #65794: origin
                    (at_l3)

                    ; #84713: origin
                    (not_at_l1)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #52743: origin
                    (not_at_l2)

                    ; #65794: origin
                    (at_l3)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #65794: origin
                    (at_l3)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #65794: origin
                    (at_l3)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #40051: origin
                    (at_l4)

                    ; #84713: origin
                    (not_at_l1)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #40051: origin
                    (at_l4)

                    ; #52743: origin
                    (not_at_l2)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #40051: origin
                    (at_l4)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #40051: origin
                    (at_l4)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #48312: origin
                    (at_l1)

                    ; #84713: origin
                    (not_at_l1)

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l1))
        :effect (and
                    ; #84713: origin
                    (not_at_l1)

                    ; #89744: origin
                    (at_l2)

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))))

    (:action right_l1_l3
        :precondition (and (succ_l1_l3)
                           (at_l1))
        :effect (and
                    ; #65794: origin
                    (at_l3)

                    ; #84713: origin
                    (not_at_l1)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #40051: origin
                    (at_l4)

                    ; #84713: origin
                    (not_at_l1)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #48312: <==negation-removal== 84713 (pos)
                    (not (at_l1))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #48312: origin
                    (at_l1)

                    ; #52743: origin
                    (not_at_l2)

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #52743: origin
                    (not_at_l2)

                    ; #89744: origin
                    (at_l2)

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #52743: origin
                    (not_at_l2)

                    ; #65794: origin
                    (at_l3)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #40051: origin
                    (at_l4)

                    ; #52743: origin
                    (not_at_l2)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #89744: <==negation-removal== 52743 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #48312: origin
                    (at_l1)

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #89744: origin
                    (at_l2)

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #65794: origin
                    (at_l3)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #29373: origin
                    (not_at_l3)

                    ; #40051: origin
                    (at_l4)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #65794: <==negation-removal== 29373 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #48312: origin
                    (at_l1)

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))

                    ; #84713: <==negation-removal== 48312 (pos)
                    (not (not_at_l1))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #89744: origin
                    (at_l2)

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))

                    ; #52743: <==negation-removal== 89744 (pos)
                    (not (not_at_l2))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #65794: origin
                    (at_l3)

                    ; #29373: <==negation-removal== 65794 (pos)
                    (not (not_at_l3))

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #16642: origin
                    (not_at_l4)

                    ; #40051: origin
                    (at_l4)

                    ; #16642: <==negation-removal== 40051 (pos)
                    (not (not_at_l4))

                    ; #40051: <==negation-removal== 16642 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #58999: <==closure== 61547 (pos)
                    (Pa_secret)

                    ; #61547: origin
                    (Ba_secret)

                    ; #71779: <==negation-removal== 61547 (pos)
                    (not (Pa_not_secret))

                    ; #73608: <==negation-removal== 58999 (pos)
                    (not (Ba_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (at_l1)
                           (Pa_secret))
        :effect (and
                    ; #15904: origin
                    (Bd_secret)

                    ; #32949: origin
                    (Bb_secret)

                    ; #37615: <==closure== 15904 (pos)
                    (Pd_secret)

                    ; #38169: <==closure== 39663 (pos)
                    (Pf_secret)

                    ; #39663: origin
                    (Bf_secret)

                    ; #53864: <==closure== 32949 (pos)
                    (Pb_secret)

                    ; #15726: <==negation-removal== 37615 (pos)
                    (not (Bd_not_secret))

                    ; #31577: <==negation-removal== 39663 (pos)
                    (not (Pf_not_secret))

                    ; #32921: <==negation-removal== 38169 (pos)
                    (not (Bf_not_secret))

                    ; #40591: <==negation-removal== 53864 (pos)
                    (not (Bb_not_secret))

                    ; #69706: <==negation-removal== 15904 (pos)
                    (not (Pd_not_secret))

                    ; #81884: <==negation-removal== 32949 (pos)
                    (not (Pb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #15904: origin
                    (Bd_secret)

                    ; #32949: origin
                    (Bb_secret)

                    ; #37615: <==closure== 15904 (pos)
                    (Pd_secret)

                    ; #38169: <==closure== 39663 (pos)
                    (Pf_secret)

                    ; #39663: origin
                    (Bf_secret)

                    ; #42499: <==closure== 78221 (pos)
                    (Pc_secret)

                    ; #47895: <==closure== 64059 (pos)
                    (Pg_secret)

                    ; #53864: <==closure== 32949 (pos)
                    (Pb_secret)

                    ; #64059: origin
                    (Bg_secret)

                    ; #78221: origin
                    (Bc_secret)

                    ; #84661: <==closure== 87208 (pos)
                    (Pe_secret)

                    ; #87208: origin
                    (Be_secret)

                    ; #15726: <==negation-removal== 37615 (pos)
                    (not (Bd_not_secret))

                    ; #31577: <==negation-removal== 39663 (pos)
                    (not (Pf_not_secret))

                    ; #32921: <==negation-removal== 38169 (pos)
                    (not (Bf_not_secret))

                    ; #40591: <==negation-removal== 53864 (pos)
                    (not (Bb_not_secret))

                    ; #41427: <==negation-removal== 87208 (pos)
                    (not (Pe_not_secret))

                    ; #53637: <==negation-removal== 47895 (pos)
                    (not (Bg_not_secret))

                    ; #58758: <==negation-removal== 78221 (pos)
                    (not (Pc_not_secret))

                    ; #67990: <==negation-removal== 64059 (pos)
                    (not (Pg_not_secret))

                    ; #69706: <==negation-removal== 15904 (pos)
                    (not (Pd_not_secret))

                    ; #70161: <==negation-removal== 84661 (pos)
                    (not (Be_not_secret))

                    ; #81884: <==negation-removal== 32949 (pos)
                    (not (Pb_not_secret))

                    ; #90380: <==negation-removal== 42499 (pos)
                    (not (Bc_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (at_l3)
                           (Pa_secret))
        :effect (and
                    ; #15904: origin
                    (Bd_secret)

                    ; #32949: origin
                    (Bb_secret)

                    ; #37615: <==closure== 15904 (pos)
                    (Pd_secret)

                    ; #38169: <==closure== 39663 (pos)
                    (Pf_secret)

                    ; #39663: origin
                    (Bf_secret)

                    ; #42499: <==closure== 78221 (pos)
                    (Pc_secret)

                    ; #47895: <==closure== 64059 (pos)
                    (Pg_secret)

                    ; #53864: <==closure== 32949 (pos)
                    (Pb_secret)

                    ; #64059: origin
                    (Bg_secret)

                    ; #78221: origin
                    (Bc_secret)

                    ; #84661: <==closure== 87208 (pos)
                    (Pe_secret)

                    ; #87208: origin
                    (Be_secret)

                    ; #15726: <==negation-removal== 37615 (pos)
                    (not (Bd_not_secret))

                    ; #31577: <==negation-removal== 39663 (pos)
                    (not (Pf_not_secret))

                    ; #32921: <==negation-removal== 38169 (pos)
                    (not (Bf_not_secret))

                    ; #40591: <==negation-removal== 53864 (pos)
                    (not (Bb_not_secret))

                    ; #41427: <==negation-removal== 87208 (pos)
                    (not (Pe_not_secret))

                    ; #53637: <==negation-removal== 47895 (pos)
                    (not (Bg_not_secret))

                    ; #58758: <==negation-removal== 78221 (pos)
                    (not (Pc_not_secret))

                    ; #67990: <==negation-removal== 64059 (pos)
                    (not (Pg_not_secret))

                    ; #69706: <==negation-removal== 15904 (pos)
                    (not (Pd_not_secret))

                    ; #70161: <==negation-removal== 84661 (pos)
                    (not (Be_not_secret))

                    ; #81884: <==negation-removal== 32949 (pos)
                    (not (Pb_not_secret))

                    ; #90380: <==negation-removal== 42499 (pos)
                    (not (Bc_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (at_l4)
                           (Pa_secret))
        :effect (and
                    ; #42499: <==closure== 78221 (pos)
                    (Pc_secret)

                    ; #47895: <==closure== 64059 (pos)
                    (Pg_secret)

                    ; #64059: origin
                    (Bg_secret)

                    ; #78221: origin
                    (Bc_secret)

                    ; #84661: <==closure== 87208 (pos)
                    (Pe_secret)

                    ; #87208: origin
                    (Be_secret)

                    ; #41427: <==negation-removal== 87208 (pos)
                    (not (Pe_not_secret))

                    ; #53637: <==negation-removal== 47895 (pos)
                    (not (Bg_not_secret))

                    ; #58758: <==negation-removal== 78221 (pos)
                    (not (Pc_not_secret))

                    ; #67990: <==negation-removal== 64059 (pos)
                    (not (Pg_not_secret))

                    ; #70161: <==negation-removal== 84661 (pos)
                    (not (Be_not_secret))

                    ; #90380: <==negation-removal== 42499 (pos)
                    (not (Bc_not_secret))))

)