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
        :precondition (and (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #18634: origin
                    (at_a_l1)

                    ; #81274: origin
                    (not_at_a_l1)

                    ; #18634: <==negation-removal== 81274 (pos)
                    (not (at_a_l1))

                    ; #81274: <==negation-removal== 18634 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #65904: origin
                    (at_a_l2)

                    ; #81274: origin
                    (not_at_a_l1)

                    ; #18634: <==negation-removal== 81274 (pos)
                    (not (at_a_l1))

                    ; #37227: <==negation-removal== 65904 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #18634: origin
                    (at_a_l1)

                    ; #37227: origin
                    (not_at_a_l2)

                    ; #65904: <==negation-removal== 37227 (pos)
                    (not (at_a_l2))

                    ; #81274: <==negation-removal== 18634 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #37227: origin
                    (not_at_a_l2)

                    ; #65904: origin
                    (at_a_l2)

                    ; #37227: <==negation-removal== 65904 (pos)
                    (not (not_at_a_l2))

                    ; #65904: <==negation-removal== 37227 (pos)
                    (not (at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #58708: origin
                    (not_at_b_l1)

                    ; #80445: origin
                    (at_b_l1)

                    ; #58708: <==negation-removal== 80445 (pos)
                    (not (not_at_b_l1))

                    ; #80445: <==negation-removal== 58708 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #58708: origin
                    (not_at_b_l1)

                    ; #65998: origin
                    (at_b_l2)

                    ; #80445: <==negation-removal== 58708 (pos)
                    (not (at_b_l1))

                    ; #85299: <==negation-removal== 65998 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l1
        :precondition (and (at_b_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #80445: origin
                    (at_b_l1)

                    ; #85299: origin
                    (not_at_b_l2)

                    ; #58708: <==negation-removal== 80445 (pos)
                    (not (not_at_b_l1))

                    ; #65998: <==negation-removal== 85299 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #65998: origin
                    (at_b_l2)

                    ; #85299: origin
                    (not_at_b_l2)

                    ; #65998: <==negation-removal== 85299 (pos)
                    (not (at_b_l2))

                    ; #85299: <==negation-removal== 65998 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #58556: origin
                    (not_at_c_l1)

                    ; #65216: origin
                    (at_c_l1)

                    ; #58556: <==negation-removal== 65216 (pos)
                    (not (not_at_c_l1))

                    ; #65216: <==negation-removal== 58556 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #43939: origin
                    (at_c_l2)

                    ; #58556: origin
                    (not_at_c_l1)

                    ; #37828: <==negation-removal== 43939 (pos)
                    (not (not_at_c_l2))

                    ; #65216: <==negation-removal== 58556 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #37828: origin
                    (not_at_c_l2)

                    ; #65216: origin
                    (at_c_l1)

                    ; #43939: <==negation-removal== 37828 (pos)
                    (not (at_c_l2))

                    ; #58556: <==negation-removal== 65216 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #37828: origin
                    (not_at_c_l2)

                    ; #43939: origin
                    (at_c_l2)

                    ; #37828: <==negation-removal== 43939 (pos)
                    (not (not_at_c_l2))

                    ; #43939: <==negation-removal== 37828 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (at_d_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #26739: origin
                    (at_d_l1)

                    ; #54320: origin
                    (not_at_d_l1)

                    ; #26739: <==negation-removal== 54320 (pos)
                    (not (at_d_l1))

                    ; #54320: <==negation-removal== 26739 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #32648: origin
                    (at_d_l2)

                    ; #54320: origin
                    (not_at_d_l1)

                    ; #26739: <==negation-removal== 54320 (pos)
                    (not (at_d_l1))

                    ; #88116: <==negation-removal== 32648 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l1
        :precondition (and (at_d_l2)
                           (connected_l2_l1))
        :effect (and
                    ; #26739: origin
                    (at_d_l1)

                    ; #88116: origin
                    (not_at_d_l2)

                    ; #32648: <==negation-removal== 88116 (pos)
                    (not (at_d_l2))

                    ; #54320: <==negation-removal== 26739 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l2_l2
        :precondition (and (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #32648: origin
                    (at_d_l2)

                    ; #88116: origin
                    (not_at_d_l2)

                    ; #32648: <==negation-removal== 88116 (pos)
                    (not (at_d_l2))

                    ; #88116: <==negation-removal== 32648 (pos)
                    (not (not_at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_a)
                           (Ba_secret_a))
        :effect (and
                    ; #23380: <==closure== 84618 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #38921: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #48188: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #53367: <==closure== 38921 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #66223: <==closure== 48188 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #70430: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #84618: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84726: <==closure== 70430 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11825: <==negation-removal== 70430 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #19869: <==uncertain_firing== 84618 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #24294: <==negation-removal== 38921 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31101: <==negation-removal== 23380 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #35932: <==uncertain_firing== 66223 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #36277: <==uncertain_firing== 84726 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #38170: <==uncertain_firing== 38921 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42522: <==negation-removal== 48188 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #49679: <==uncertain_firing== 48188 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #61946: <==uncertain_firing== 23380 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #66147: <==uncertain_firing== 53367 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69780: <==uncertain_firing== 70430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #72649: <==negation-removal== 84618 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #72830: <==negation-removal== 53367 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #77265: <==negation-removal== 84726 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #85453: <==negation-removal== 66223 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Pa_secret_a)
                           (at_a_l2)
                           (Ba_secret_a))
        :effect (and
                    ; #11053: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #18940: <==closure== 38276 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #37808: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #38276: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #45185: <==closure== 37808 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #51392: <==closure== 11053 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #56240: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #59858: <==closure== 56240 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #10903: <==negation-removal== 37808 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #21060: <==negation-removal== 38276 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #32467: <==uncertain_firing== 45185 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #38625: <==uncertain_firing== 37808 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40786: <==negation-removal== 18940 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #44820: <==negation-removal== 11053 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45229: <==negation-removal== 56240 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #49355: <==uncertain_firing== 59858 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #54690: <==negation-removal== 59858 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #55312: <==uncertain_firing== 18940 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57019: <==negation-removal== 51392 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #73612: <==negation-removal== 45185 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #77504: <==uncertain_firing== 56240 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #84894: <==uncertain_firing== 38276 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #88922: <==uncertain_firing== 51392 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #93928: <==uncertain_firing== 11053 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_b)
                           (Pa_secret_b))
        :effect (and
                    ; #22550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #31122: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #31586: <==closure== 22550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #73015: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73102: <==closure== 31122 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #75706: <==closure== 83943 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #83943: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #92032: <==closure== 73015 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #10716: <==uncertain_firing== 22550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #15711: <==negation-removal== 73102 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33739: <==negation-removal== 22550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #34489: <==uncertain_firing== 83943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #45867: <==negation-removal== 31122 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #57482: <==negation-removal== 73015 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #58676: <==negation-removal== 75706 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #59640: <==negation-removal== 92032 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #64035: <==uncertain_firing== 75706 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #65224: <==negation-removal== 83943 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #69631: <==negation-removal== 31586 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #74075: <==uncertain_firing== 31586 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #74098: <==uncertain_firing== 73102 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #77488: <==uncertain_firing== 31122 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #82675: <==uncertain_firing== 92032 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #90335: <==uncertain_firing== 73015 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Pa_secret_b)
                           (Ba_secret_b)
                           (at_a_l2))
        :effect (and
                    ; #12436: <==closure== 65600 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #18681: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #36834: <==closure== 81550 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #39018: <==closure== 44270 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #44270: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #65600: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #77516: <==closure== 18681 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #81550: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #20501: <==negation-removal== 36834 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #20668: <==negation-removal== 81550 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #25817: <==negation-removal== 39018 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #29242: <==negation-removal== 65600 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30673: <==uncertain_firing== 18681 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37579: <==uncertain_firing== 81550 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #40999: <==uncertain_firing== 77516 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42814: <==negation-removal== 12436 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #52297: <==negation-removal== 44270 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #61239: <==uncertain_firing== 12436 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #61469: <==uncertain_firing== 36834 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #61715: <==uncertain_firing== 44270 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #62482: <==negation-removal== 77516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78378: <==uncertain_firing== 39018 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #86984: <==uncertain_firing== 65600 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #95520: <==negation-removal== 18681 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #35360: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44933: <==closure== 75861 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #46555: <==closure== 35360 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #48858: <==closure== 74127 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #61275: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #74127: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #75861: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #85197: <==closure== 61275 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #10627: <==negation-removal== 74127 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #13722: <==negation-removal== 85197 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #15019: <==uncertain_firing== 75861 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #16517: <==uncertain_firing== 74127 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #29743: <==uncertain_firing== 35360 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #32015: <==uncertain_firing== 44933 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #40024: <==negation-removal== 48858 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #52635: <==negation-removal== 44933 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #60869: <==negation-removal== 61275 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #68573: <==uncertain_firing== 85197 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #77242: <==negation-removal== 35360 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78991: <==uncertain_firing== 61275 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79495: <==uncertain_firing== 46555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #80224: <==negation-removal== 46555 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #80385: <==negation-removal== 75861 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #84098: <==uncertain_firing== 48858 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #19707: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #28301: <==closure== 32046 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #32046: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #34854: <==closure== 66614 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #40023: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #66614: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #67983: <==closure== 19707 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #82284: <==closure== 40023 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #17354: <==uncertain_firing== 40023 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18066: <==uncertain_firing== 34854 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #20247: <==negation-removal== 67983 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #23668: <==uncertain_firing== 28301 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #24361: <==negation-removal== 34854 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #27500: <==uncertain_firing== 82284 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #31333: <==uncertain_firing== 32046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45693: <==uncertain_firing== 19707 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58387: <==uncertain_firing== 66614 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #64623: <==negation-removal== 82284 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #66028: <==negation-removal== 32046 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #66230: <==negation-removal== 19707 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73987: <==uncertain_firing== 67983 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77866: <==negation-removal== 40023 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84569: <==negation-removal== 28301 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #93339: <==negation-removal== 66614 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_d)
                           (Pa_secret_d))
        :effect (and
                    ; #10178: <==closure== 12947 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #12947: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13626: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #42259: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49092: <==closure== 13626 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #58227: <==closure== 80089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #75224: <==closure== 42259 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #80089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #11785: <==uncertain_firing== 80089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #13581: <==negation-removal== 42259 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #17308: <==uncertain_firing== 49092 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #19875: <==uncertain_firing== 42259 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #26072: <==uncertain_firing== 58227 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #27743: <==uncertain_firing== 10178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #30478: <==uncertain_firing== 12947 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #30563: <==negation-removal== 12947 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #32560: <==uncertain_firing== 75224 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #34076: <==negation-removal== 13626 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #37459: <==negation-removal== 75224 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #47115: <==negation-removal== 58227 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #55329: <==negation-removal== 80089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #60081: <==negation-removal== 49092 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #68650: <==negation-removal== 10178 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #73827: <==uncertain_firing== 13626 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (Ba_secret_d)
                           (at_a_l2)
                           (Pa_secret_d))
        :effect (and
                    ; #12853: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #13290: <==closure== 30788 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #13538: <==closure== 67248 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #30788: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #39290: <==closure== 89370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #67248: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #86436: <==closure== 12853 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #89370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #10339: <==negation-removal== 86436 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #12321: <==uncertain_firing== 89370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17956: <==uncertain_firing== 13538 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #18615: <==negation-removal== 89370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #27645: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29744: <==negation-removal== 67248 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36396: <==uncertain_firing== 86436 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #52480: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #56713: <==negation-removal== 39290 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #60435: <==uncertain_firing== 13290 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #69332: <==uncertain_firing== 12853 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #70983: <==negation-removal== 12853 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #72795: <==negation-removal== 13290 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #76847: <==negation-removal== 13538 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81503: <==uncertain_firing== 39290 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #86597: <==uncertain_firing== 67248 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (at_b_l1)
                           (Pb_secret_a)
                           (Bb_secret_a))
        :effect (and
                    ; #23380: <==closure== 84618 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #38921: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #48188: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #53367: <==closure== 38921 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #66223: <==closure== 48188 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #70430: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #84618: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84726: <==closure== 70430 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11825: <==negation-removal== 70430 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #19869: <==uncertain_firing== 84618 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #24294: <==negation-removal== 38921 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31101: <==negation-removal== 23380 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #35932: <==uncertain_firing== 66223 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #36277: <==uncertain_firing== 84726 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #38170: <==uncertain_firing== 38921 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42522: <==negation-removal== 48188 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #49679: <==uncertain_firing== 48188 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #61946: <==uncertain_firing== 23380 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #66147: <==uncertain_firing== 53367 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69780: <==uncertain_firing== 70430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #72649: <==negation-removal== 84618 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #72830: <==negation-removal== 53367 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #77265: <==negation-removal== 84726 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #85453: <==negation-removal== 66223 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Bb_secret_a)
                           (at_b_l2)
                           (Pb_secret_a))
        :effect (and
                    ; #11053: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #18940: <==closure== 38276 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #37808: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #38276: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #45185: <==closure== 37808 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #51392: <==closure== 11053 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #56240: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #59858: <==closure== 56240 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #10903: <==negation-removal== 37808 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #21060: <==negation-removal== 38276 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #32467: <==uncertain_firing== 45185 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #38625: <==uncertain_firing== 37808 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40786: <==negation-removal== 18940 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #44820: <==negation-removal== 11053 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45229: <==negation-removal== 56240 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #49355: <==uncertain_firing== 59858 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #54690: <==negation-removal== 59858 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #55312: <==uncertain_firing== 18940 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57019: <==negation-removal== 51392 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #73612: <==negation-removal== 45185 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #77504: <==uncertain_firing== 56240 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #84894: <==uncertain_firing== 38276 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #88922: <==uncertain_firing== 51392 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #93928: <==uncertain_firing== 11053 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #22550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #31122: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #31586: <==closure== 22550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #73015: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73102: <==closure== 31122 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #75706: <==closure== 83943 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #83943: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #92032: <==closure== 73015 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #10716: <==uncertain_firing== 22550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #15711: <==negation-removal== 73102 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33739: <==negation-removal== 22550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #34489: <==uncertain_firing== 83943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #45867: <==negation-removal== 31122 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #57482: <==negation-removal== 73015 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #58676: <==negation-removal== 75706 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #59640: <==negation-removal== 92032 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #64035: <==uncertain_firing== 75706 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #65224: <==negation-removal== 83943 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #69631: <==negation-removal== 31586 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #74075: <==uncertain_firing== 31586 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #74098: <==uncertain_firing== 73102 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #77488: <==uncertain_firing== 31122 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #82675: <==uncertain_firing== 92032 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #90335: <==uncertain_firing== 73015 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #12436: <==closure== 65600 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #18681: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #36834: <==closure== 81550 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #39018: <==closure== 44270 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #44270: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #65600: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #77516: <==closure== 18681 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #81550: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #20501: <==negation-removal== 36834 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #20668: <==negation-removal== 81550 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #25817: <==negation-removal== 39018 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #29242: <==negation-removal== 65600 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30673: <==uncertain_firing== 18681 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37579: <==uncertain_firing== 81550 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #40999: <==uncertain_firing== 77516 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42814: <==negation-removal== 12436 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #52297: <==negation-removal== 44270 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #61239: <==uncertain_firing== 12436 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #61469: <==uncertain_firing== 36834 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #61715: <==uncertain_firing== 44270 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #62482: <==negation-removal== 77516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78378: <==uncertain_firing== 39018 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #86984: <==uncertain_firing== 65600 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #95520: <==negation-removal== 18681 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Bb_secret_c)
                           (at_b_l1)
                           (Pb_secret_c))
        :effect (and
                    ; #35360: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44933: <==closure== 75861 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #46555: <==closure== 35360 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #48858: <==closure== 74127 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #61275: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #74127: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #75861: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #85197: <==closure== 61275 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #10627: <==negation-removal== 74127 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #13722: <==negation-removal== 85197 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #15019: <==uncertain_firing== 75861 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #16517: <==uncertain_firing== 74127 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #29743: <==uncertain_firing== 35360 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #32015: <==uncertain_firing== 44933 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #40024: <==negation-removal== 48858 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #52635: <==negation-removal== 44933 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #60869: <==negation-removal== 61275 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #68573: <==uncertain_firing== 85197 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #77242: <==negation-removal== 35360 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78991: <==uncertain_firing== 61275 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79495: <==uncertain_firing== 46555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #80224: <==negation-removal== 46555 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #80385: <==negation-removal== 75861 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #84098: <==uncertain_firing== 48858 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Bb_secret_c)
                           (at_b_l2)
                           (Pb_secret_c))
        :effect (and
                    ; #19707: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #28301: <==closure== 32046 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #32046: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #34854: <==closure== 66614 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #40023: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #66614: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #67983: <==closure== 19707 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #82284: <==closure== 40023 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #17354: <==uncertain_firing== 40023 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18066: <==uncertain_firing== 34854 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #20247: <==negation-removal== 67983 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #23668: <==uncertain_firing== 28301 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #24361: <==negation-removal== 34854 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #27500: <==uncertain_firing== 82284 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #31333: <==uncertain_firing== 32046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45693: <==uncertain_firing== 19707 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58387: <==uncertain_firing== 66614 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #64623: <==negation-removal== 82284 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #66028: <==negation-removal== 32046 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #66230: <==negation-removal== 19707 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73987: <==uncertain_firing== 67983 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77866: <==negation-removal== 40023 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84569: <==negation-removal== 28301 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #93339: <==negation-removal== 66614 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (at_b_l1)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #10178: <==closure== 12947 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #12947: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13626: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #42259: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49092: <==closure== 13626 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #58227: <==closure== 80089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #75224: <==closure== 42259 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #80089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #11785: <==uncertain_firing== 80089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #13581: <==negation-removal== 42259 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #17308: <==uncertain_firing== 49092 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #19875: <==uncertain_firing== 42259 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #26072: <==uncertain_firing== 58227 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #27743: <==uncertain_firing== 10178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #30478: <==uncertain_firing== 12947 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #30563: <==negation-removal== 12947 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #32560: <==uncertain_firing== 75224 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #34076: <==negation-removal== 13626 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #37459: <==negation-removal== 75224 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #47115: <==negation-removal== 58227 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #55329: <==negation-removal== 80089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #60081: <==negation-removal== 49092 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #68650: <==negation-removal== 10178 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #73827: <==uncertain_firing== 13626 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (at_b_l2)
                           (Bb_secret_d)
                           (Pb_secret_d))
        :effect (and
                    ; #12853: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #13290: <==closure== 30788 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #13538: <==closure== 67248 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #30788: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #39290: <==closure== 89370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #67248: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #86436: <==closure== 12853 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #89370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #10339: <==negation-removal== 86436 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #12321: <==uncertain_firing== 89370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17956: <==uncertain_firing== 13538 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #18615: <==negation-removal== 89370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #27645: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29744: <==negation-removal== 67248 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36396: <==uncertain_firing== 86436 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #52480: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #56713: <==negation-removal== 39290 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #60435: <==uncertain_firing== 13290 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #69332: <==uncertain_firing== 12853 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #70983: <==negation-removal== 12853 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #72795: <==negation-removal== 13290 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #76847: <==negation-removal== 13538 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81503: <==uncertain_firing== 39290 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #86597: <==uncertain_firing== 67248 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Pc_secret_a)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #23380: <==closure== 84618 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #38921: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #48188: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #53367: <==closure== 38921 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #66223: <==closure== 48188 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #70430: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #84618: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84726: <==closure== 70430 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11825: <==negation-removal== 70430 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #19869: <==uncertain_firing== 84618 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #24294: <==negation-removal== 38921 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31101: <==negation-removal== 23380 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #35932: <==uncertain_firing== 66223 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #36277: <==uncertain_firing== 84726 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #38170: <==uncertain_firing== 38921 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42522: <==negation-removal== 48188 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #49679: <==uncertain_firing== 48188 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #61946: <==uncertain_firing== 23380 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #66147: <==uncertain_firing== 53367 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69780: <==uncertain_firing== 70430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #72649: <==negation-removal== 84618 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #72830: <==negation-removal== 53367 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #77265: <==negation-removal== 84726 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #85453: <==negation-removal== 66223 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_a)
                           (Bc_secret_a))
        :effect (and
                    ; #11053: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #18940: <==closure== 38276 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #37808: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #38276: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #45185: <==closure== 37808 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #51392: <==closure== 11053 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #56240: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #59858: <==closure== 56240 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #10903: <==negation-removal== 37808 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #21060: <==negation-removal== 38276 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #32467: <==uncertain_firing== 45185 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #38625: <==uncertain_firing== 37808 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40786: <==negation-removal== 18940 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #44820: <==negation-removal== 11053 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45229: <==negation-removal== 56240 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #49355: <==uncertain_firing== 59858 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #54690: <==negation-removal== 59858 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #55312: <==uncertain_firing== 18940 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57019: <==negation-removal== 51392 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #73612: <==negation-removal== 45185 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #77504: <==uncertain_firing== 56240 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #84894: <==uncertain_firing== 38276 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #88922: <==uncertain_firing== 51392 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #93928: <==uncertain_firing== 11053 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Bc_secret_b)
                           (at_c_l1)
                           (Pc_secret_b))
        :effect (and
                    ; #22550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #31122: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #31586: <==closure== 22550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #73015: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73102: <==closure== 31122 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #75706: <==closure== 83943 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #83943: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #92032: <==closure== 73015 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #10716: <==uncertain_firing== 22550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #15711: <==negation-removal== 73102 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33739: <==negation-removal== 22550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #34489: <==uncertain_firing== 83943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #45867: <==negation-removal== 31122 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #57482: <==negation-removal== 73015 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #58676: <==negation-removal== 75706 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #59640: <==negation-removal== 92032 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #64035: <==uncertain_firing== 75706 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #65224: <==negation-removal== 83943 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #69631: <==negation-removal== 31586 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #74075: <==uncertain_firing== 31586 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #74098: <==uncertain_firing== 73102 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #77488: <==uncertain_firing== 31122 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #82675: <==uncertain_firing== 92032 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #90335: <==uncertain_firing== 73015 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_b)
                           (Pc_secret_b))
        :effect (and
                    ; #12436: <==closure== 65600 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #18681: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #36834: <==closure== 81550 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #39018: <==closure== 44270 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #44270: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #65600: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #77516: <==closure== 18681 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #81550: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #20501: <==negation-removal== 36834 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #20668: <==negation-removal== 81550 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #25817: <==negation-removal== 39018 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #29242: <==negation-removal== 65600 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30673: <==uncertain_firing== 18681 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37579: <==uncertain_firing== 81550 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #40999: <==uncertain_firing== 77516 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42814: <==negation-removal== 12436 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #52297: <==negation-removal== 44270 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #61239: <==uncertain_firing== 12436 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #61469: <==uncertain_firing== 36834 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #61715: <==uncertain_firing== 44270 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #62482: <==negation-removal== 77516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78378: <==uncertain_firing== 39018 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #86984: <==uncertain_firing== 65600 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #95520: <==negation-removal== 18681 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Pc_secret_c)
                           (Bc_secret_c)
                           (at_c_l1))
        :effect (and
                    ; #35360: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44933: <==closure== 75861 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #46555: <==closure== 35360 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #48858: <==closure== 74127 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #61275: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #74127: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #75861: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #85197: <==closure== 61275 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #10627: <==negation-removal== 74127 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #13722: <==negation-removal== 85197 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #15019: <==uncertain_firing== 75861 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #16517: <==uncertain_firing== 74127 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #29743: <==uncertain_firing== 35360 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #32015: <==uncertain_firing== 44933 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #40024: <==negation-removal== 48858 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #52635: <==negation-removal== 44933 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #60869: <==negation-removal== 61275 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #68573: <==uncertain_firing== 85197 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #77242: <==negation-removal== 35360 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78991: <==uncertain_firing== 61275 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79495: <==uncertain_firing== 46555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #80224: <==negation-removal== 46555 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #80385: <==negation-removal== 75861 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #84098: <==uncertain_firing== 48858 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #19707: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #28301: <==closure== 32046 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #32046: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #34854: <==closure== 66614 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #40023: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #66614: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #67983: <==closure== 19707 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #82284: <==closure== 40023 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #17354: <==uncertain_firing== 40023 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18066: <==uncertain_firing== 34854 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #20247: <==negation-removal== 67983 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #23668: <==uncertain_firing== 28301 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #24361: <==negation-removal== 34854 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #27500: <==uncertain_firing== 82284 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #31333: <==uncertain_firing== 32046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45693: <==uncertain_firing== 19707 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58387: <==uncertain_firing== 66614 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #64623: <==negation-removal== 82284 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #66028: <==negation-removal== 32046 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #66230: <==negation-removal== 19707 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73987: <==uncertain_firing== 67983 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77866: <==negation-removal== 40023 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84569: <==negation-removal== 28301 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #93339: <==negation-removal== 66614 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (at_c_l1))
        :effect (and
                    ; #10178: <==closure== 12947 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #12947: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13626: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #42259: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49092: <==closure== 13626 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #58227: <==closure== 80089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #75224: <==closure== 42259 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #80089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #11785: <==uncertain_firing== 80089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #13581: <==negation-removal== 42259 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #17308: <==uncertain_firing== 49092 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #19875: <==uncertain_firing== 42259 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #26072: <==uncertain_firing== 58227 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #27743: <==uncertain_firing== 10178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #30478: <==uncertain_firing== 12947 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #30563: <==negation-removal== 12947 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #32560: <==uncertain_firing== 75224 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #34076: <==negation-removal== 13626 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #37459: <==negation-removal== 75224 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #47115: <==negation-removal== 58227 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #55329: <==negation-removal== 80089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #60081: <==negation-removal== 49092 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #68650: <==negation-removal== 10178 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #73827: <==uncertain_firing== 13626 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Bc_secret_d)
                           (Pc_secret_d))
        :effect (and
                    ; #12853: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #13290: <==closure== 30788 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #13538: <==closure== 67248 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #30788: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #39290: <==closure== 89370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #67248: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #86436: <==closure== 12853 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #89370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #10339: <==negation-removal== 86436 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #12321: <==uncertain_firing== 89370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17956: <==uncertain_firing== 13538 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #18615: <==negation-removal== 89370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #27645: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29744: <==negation-removal== 67248 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36396: <==uncertain_firing== 86436 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #52480: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #56713: <==negation-removal== 39290 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #60435: <==uncertain_firing== 13290 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #69332: <==uncertain_firing== 12853 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #70983: <==negation-removal== 12853 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #72795: <==negation-removal== 13290 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #76847: <==negation-removal== 13538 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81503: <==uncertain_firing== 39290 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #86597: <==uncertain_firing== 67248 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Pd_secret_a)
                           (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #23380: <==closure== 84618 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #38921: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #48188: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #53367: <==closure== 38921 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #66223: <==closure== 48188 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #70430: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #84618: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #84726: <==closure== 70430 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #11825: <==negation-removal== 70430 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #19869: <==uncertain_firing== 84618 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #24294: <==negation-removal== 38921 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #31101: <==negation-removal== 23380 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #35932: <==uncertain_firing== 66223 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #36277: <==uncertain_firing== 84726 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #38170: <==uncertain_firing== 38921 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #42522: <==negation-removal== 48188 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #49679: <==uncertain_firing== 48188 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #61946: <==uncertain_firing== 23380 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #66147: <==uncertain_firing== 53367 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #69780: <==uncertain_firing== 70430 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #72649: <==negation-removal== 84618 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #72830: <==negation-removal== 53367 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #77265: <==negation-removal== 84726 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #85453: <==negation-removal== 66223 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_a)
                           (Bd_secret_a))
        :effect (and
                    ; #11053: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #18940: <==closure== 38276 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #37808: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #38276: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #45185: <==closure== 37808 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #51392: <==closure== 11053 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #56240: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #59858: <==closure== 56240 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #10903: <==negation-removal== 37808 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #21060: <==negation-removal== 38276 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #32467: <==uncertain_firing== 45185 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #38625: <==uncertain_firing== 37808 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #40786: <==negation-removal== 18940 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #44820: <==negation-removal== 11053 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #45229: <==negation-removal== 56240 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #49355: <==uncertain_firing== 59858 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #54690: <==negation-removal== 59858 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #55312: <==uncertain_firing== 18940 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #57019: <==negation-removal== 51392 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #73612: <==negation-removal== 45185 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #77504: <==uncertain_firing== 56240 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #84894: <==uncertain_firing== 38276 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #88922: <==uncertain_firing== 51392 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #93928: <==uncertain_firing== 11053 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (Bd_secret_b)
                           (Pd_secret_b)
                           (at_d_l1))
        :effect (and
                    ; #22550: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #31122: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #31586: <==closure== 22550 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #73015: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #73102: <==closure== 31122 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #75706: <==closure== 83943 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #83943: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #92032: <==closure== 73015 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #10716: <==uncertain_firing== 22550 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #15711: <==negation-removal== 73102 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #33739: <==negation-removal== 22550 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #34489: <==uncertain_firing== 83943 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #45867: <==negation-removal== 31122 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #57482: <==negation-removal== 73015 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #58676: <==negation-removal== 75706 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #59640: <==negation-removal== 92032 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #64035: <==uncertain_firing== 75706 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #65224: <==negation-removal== 83943 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #69631: <==negation-removal== 31586 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #74075: <==uncertain_firing== 31586 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #74098: <==uncertain_firing== 73102 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #77488: <==uncertain_firing== 31122 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #82675: <==uncertain_firing== 92032 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #90335: <==uncertain_firing== 73015 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_b)
                           (Bd_secret_b))
        :effect (and
                    ; #12436: <==closure== 65600 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #18681: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #36834: <==closure== 81550 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #39018: <==closure== 44270 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #44270: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #65600: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #77516: <==closure== 18681 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #81550: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #20501: <==negation-removal== 36834 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #20668: <==negation-removal== 81550 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #25817: <==negation-removal== 39018 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #29242: <==negation-removal== 65600 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))

                    ; #30673: <==uncertain_firing== 18681 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #37579: <==uncertain_firing== 81550 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #40999: <==uncertain_firing== 77516 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #42814: <==negation-removal== 12436 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #52297: <==negation-removal== 44270 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #61239: <==uncertain_firing== 12436 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #61469: <==uncertain_firing== 36834 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #61715: <==uncertain_firing== 44270 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #62482: <==negation-removal== 77516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #78378: <==uncertain_firing== 39018 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #86984: <==uncertain_firing== 65600 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #95520: <==negation-removal== 18681 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (Bd_secret_c)
                           (at_d_l1)
                           (Pd_secret_c))
        :effect (and
                    ; #35360: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #44933: <==closure== 75861 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #46555: <==closure== 35360 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #48858: <==closure== 74127 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #61275: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #74127: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #75861: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #85197: <==closure== 61275 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #10627: <==negation-removal== 74127 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #13722: <==negation-removal== 85197 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #15019: <==uncertain_firing== 75861 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #16517: <==uncertain_firing== 74127 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #29743: <==uncertain_firing== 35360 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #32015: <==uncertain_firing== 44933 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #40024: <==negation-removal== 48858 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))

                    ; #52635: <==negation-removal== 44933 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #60869: <==negation-removal== 61275 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #68573: <==uncertain_firing== 85197 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #77242: <==negation-removal== 35360 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #78991: <==uncertain_firing== 61275 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #79495: <==uncertain_firing== 46555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #80224: <==negation-removal== 46555 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #80385: <==negation-removal== 75861 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #84098: <==uncertain_firing== 48858 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_c)
                           (Pd_secret_c))
        :effect (and
                    ; #19707: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #28301: <==closure== 32046 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #32046: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #34854: <==closure== 66614 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #40023: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #66614: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #67983: <==closure== 19707 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #82284: <==closure== 40023 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #17354: <==uncertain_firing== 40023 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #18066: <==uncertain_firing== 34854 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #20247: <==negation-removal== 67983 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #23668: <==uncertain_firing== 28301 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #24361: <==negation-removal== 34854 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #27500: <==uncertain_firing== 82284 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #31333: <==uncertain_firing== 32046 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #45693: <==uncertain_firing== 19707 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #58387: <==uncertain_firing== 66614 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #64623: <==negation-removal== 82284 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #66028: <==negation-removal== 32046 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))

                    ; #66230: <==negation-removal== 19707 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #73987: <==uncertain_firing== 67983 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #77866: <==negation-removal== 40023 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #84569: <==negation-removal== 28301 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #93339: <==negation-removal== 66614 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Bd_secret_d)
                           (Pd_secret_d)
                           (at_d_l1))
        :effect (and
                    ; #10178: <==closure== 12947 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #12947: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #13626: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #42259: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #49092: <==closure== 13626 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #58227: <==closure== 80089 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #75224: <==closure== 42259 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #80089: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #11785: <==uncertain_firing== 80089 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #13581: <==negation-removal== 42259 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #17308: <==uncertain_firing== 49092 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #19875: <==uncertain_firing== 42259 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #26072: <==uncertain_firing== 58227 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #27743: <==uncertain_firing== 10178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #30478: <==uncertain_firing== 12947 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #30563: <==negation-removal== 12947 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #32560: <==uncertain_firing== 75224 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #34076: <==negation-removal== 13626 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #37459: <==negation-removal== 75224 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #47115: <==negation-removal== 58227 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #55329: <==negation-removal== 80089 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #60081: <==negation-removal== 49092 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #68650: <==negation-removal== 10178 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))

                    ; #73827: <==uncertain_firing== 13626 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (Bd_secret_d)
                           (Pd_secret_d))
        :effect (and
                    ; #12853: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #13290: <==closure== 30788 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #13538: <==closure== 67248 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #30788: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #39290: <==closure== 89370 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #67248: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #86436: <==closure== 12853 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #89370: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #10339: <==negation-removal== 86436 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #12321: <==uncertain_firing== 89370 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17956: <==uncertain_firing== 13538 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #18615: <==negation-removal== 89370 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #27645: <==negation-removal== 30788 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #29744: <==negation-removal== 67248 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #36396: <==uncertain_firing== 86436 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #52480: <==uncertain_firing== 30788 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #56713: <==negation-removal== 39290 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))

                    ; #60435: <==uncertain_firing== 13290 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #69332: <==uncertain_firing== 12853 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #70983: <==negation-removal== 12853 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #72795: <==negation-removal== 13290 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #76847: <==negation-removal== 13538 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #81503: <==uncertain_firing== 39290 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #86597: <==uncertain_firing== 67248 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))))

)