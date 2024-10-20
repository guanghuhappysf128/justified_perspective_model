(define (domain thief)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_goal)
        (not_guard)
        (not_thief)
        (Bg_not_guard)
        (Bg_not_thief)
        (Bg_Bg_not_guard)
        (Bg_Bg_not_thief)
        (Bg_Bg_guard)
        (Bg_Bg_thief)
        (Bg_Bt_not_guard)
        (Bg_Bt_not_thief)
        (Bg_Bt_guard)
        (Bg_Bt_thief)
        (Bg_Pg_not_guard)
        (Bg_Pg_not_thief)
        (Bg_Pg_guard)
        (Bg_Pg_thief)
        (Bg_Pt_not_guard)
        (Bg_Pt_not_thief)
        (Bg_Pt_guard)
        (Bg_Pt_thief)
        (Bg_guard)
        (Bg_thief)
        (Bt_not_guard)
        (Bt_not_thief)
        (Bt_Bg_not_guard)
        (Bt_Bg_not_thief)
        (Bt_Bg_guard)
        (Bt_Bg_thief)
        (Bt_Bt_not_guard)
        (Bt_Bt_not_thief)
        (Bt_Bt_guard)
        (Bt_Bt_thief)
        (Bt_Pg_not_guard)
        (Bt_Pg_not_thief)
        (Bt_Pg_guard)
        (Bt_Pg_thief)
        (Bt_Pt_not_guard)
        (Bt_Pt_not_thief)
        (Bt_Pt_guard)
        (Bt_Pt_thief)
        (Bt_guard)
        (Bt_thief)
        (Pg_not_guard)
        (Pg_not_thief)
        (Pg_Bg_not_guard)
        (Pg_Bg_not_thief)
        (Pg_Bg_guard)
        (Pg_Bg_thief)
        (Pg_Bt_not_guard)
        (Pg_Bt_not_thief)
        (Pg_Bt_guard)
        (Pg_Bt_thief)
        (Pg_Pg_not_guard)
        (Pg_Pg_not_thief)
        (Pg_Pg_guard)
        (Pg_Pg_thief)
        (Pg_Pt_not_guard)
        (Pg_Pt_not_thief)
        (Pg_Pt_guard)
        (Pg_Pt_thief)
        (Pg_guard)
        (Pg_thief)
        (Pt_not_guard)
        (Pt_not_thief)
        (Pt_Bg_not_guard)
        (Pt_Bg_not_thief)
        (Pt_Bg_guard)
        (Pt_Bg_thief)
        (Pt_Bt_not_guard)
        (Pt_Bt_not_thief)
        (Pt_Bt_guard)
        (Pt_Bt_thief)
        (Pt_Pg_not_guard)
        (Pt_Pg_not_thief)
        (Pt_Pg_guard)
        (Pt_Pg_thief)
        (Pt_Pt_not_guard)
        (Pt_Pt_not_thief)
        (Pt_Pt_guard)
        (Pt_Pt_thief)
        (Pt_guard)
        (Pt_thief)
        (goal)
        (guard)
        (thief)
    )

    (:action ambush
        :precondition (and (thief)
                           (Pt_not_guard))
        :effect (and
                    ; #34380: origin
                    (goal)

                    ; #60574: <==negation-removal== 34380 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #11868: origin
                    (Bg_thief)

                    ; #12378: <==closure== 11868 (pos)
                    (Pg_thief)

                    ; #21926: <==closure== 45325 (pos)
                    (Pg_Pt_guard)

                    ; #45325: <==commonly_known== 88975 (pos)
                    (Bg_Bt_guard)

                    ; #45519: <==commonly_known== 11868 (pos)
                    (Bt_Bg_thief)

                    ; #53566: <==commonly_known== 97850 (neg)
                    (Pg_Bt_guard)

                    ; #58157: <==commonly_known== 12378 (pos)
                    (Bt_Pg_thief)

                    ; #63895: <==closure== 88975 (pos)
                    (Pt_guard)

                    ; #68958: <==closure== 45519 (pos)
                    (Pt_Pg_thief)

                    ; #81965: <==commonly_known== 63895 (pos)
                    (Bg_Pt_guard)

                    ; #86905: <==commonly_known== 35062 (neg)
                    (Pt_Bg_thief)

                    ; #88975: origin
                    (Bt_guard)

                    ; #14952: <==negation-removal== 58157 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #25953: <==negation-removal== 45325 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #35062: <==negation-removal== 11868 (pos)
                    (not (Pg_not_thief))

                    ; #39755: <==negation-removal== 81965 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #46170: <==negation-removal== 45519 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #60282: <==negation-removal== 68958 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #69433: <==negation-removal== 86905 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #80214: <==negation-removal== 63895 (pos)
                    (not (Bt_not_guard))

                    ; #82237: <==negation-removal== 21926 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #86365: <==negation-removal== 53566 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #87027: <==negation-removal== 12378 (pos)
                    (not (Bg_not_thief))

                    ; #97850: <==negation-removal== 88975 (pos)
                    (not (Pt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #11868: origin
                    (Bg_thief)

                    ; #12378: <==closure== 11868 (pos)
                    (Pg_thief)

                    ; #45519: <==commonly_known== 11868 (pos)
                    (Bt_Bg_thief)

                    ; #58157: <==commonly_known== 12378 (pos)
                    (Bt_Pg_thief)

                    ; #68958: <==closure== 45519 (pos)
                    (Pt_Pg_thief)

                    ; #86905: <==commonly_known== 35062 (neg)
                    (Pt_Bg_thief)

                    ; #14952: <==negation-removal== 58157 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #35062: <==negation-removal== 11868 (pos)
                    (not (Pg_not_thief))

                    ; #46170: <==negation-removal== 45519 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #60282: <==negation-removal== 68958 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #69433: <==negation-removal== 86905 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #87027: <==negation-removal== 12378 (pos)
                    (not (Bg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #23698: <==commonly_known== 57146 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #25195: <==commonly_known== 81028 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Bg_Pt_guard))

                    ; #30635: <==commonly_known== 28936 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #36498: <==closure== 77550 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Pt_guard))

                    ; #37410: <==commonly_known== 19198 (neg)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Bt_guard))

                    ; #43616: <==commonly_known== 70389 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #46261: <==closure== 73278 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #51583: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #52903: <==closure== 51583 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #53121: <==commonly_known== 52903 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Pt_guard))

                    ; #56534: <==commonly_known== 24811 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #73241: <==commonly_known== 30742 (neg)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #73278: <==commonly_known== 84066 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Bg_Bt_guard))

                    ; #77550: <==commonly_known== 51583 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Bt_guard))

                    ; #81028: <==commonly_known== 52903 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Pt_guard))

                    ; #84066: <==commonly_known== 51583 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Bt_guard))

                    ; #10865: <==negation-removal== 73278 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #14321: <==negation-removal== 46261 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #15003: <==negation-removal== 53121 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #19153: <==negation-removal== 77550 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #19198: <==negation-removal== 51583 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))

                    ; #24811: <==uncertain_firing== 51583 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #25548: <==negation-removal== 73241 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #26068: <==negation-removal== 30635 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #27455: <==negation-removal== 36498 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #28936: <==uncertain_firing== 84066 (pos)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #29267: <==uncertain_firing== 56534 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #30742: <==uncertain_firing== 52903 (pos)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #34312: <==uncertain_firing== 53121 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #36122: <==negation-removal== 23698 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #36951: <==negation-removal== 25195 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #45045: <==negation-removal== 81028 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Bt_not_guard)))

                    ; #48536: <==negation-removal== 56534 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #53913: <==uncertain_firing== 30635 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #54529: <==uncertain_firing== 46261 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #57146: <==negation-removal== 84066 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Pt_not_guard)))

                    ; #66495: <==uncertain_firing== 25195 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #67770: <==uncertain_firing== 36498 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #68247: <==negation-removal== 37410 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #70389: <==uncertain_firing== 81028 (pos)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #73030: <==negation-removal== 52903 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #78194: <==uncertain_firing== 73278 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #78868: <==uncertain_firing== 77550 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #98959: <==negation-removal== 43616 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #30622: <==closure== 64355 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #34383: <==commonly_known== 64355 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (Bg_thief))

                    ; #35225: <==closure== 71653 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Pg_thief))

                    ; #37123: <==commonly_known== 34383 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (Bt_Bg_thief))

                    ; #39849: <==commonly_known== 35097 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #40057: <==commonly_known== 30622 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (Pg_thief))

                    ; #41146: <==commonly_known== 83209 (neg)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Bg_thief))

                    ; #47761: <==commonly_known== 50221 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #53967: <==commonly_known== 40057 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (Bt_Pg_thief))

                    ; #56239: <==closure== 37123 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (Pt_Pg_thief))

                    ; #63104: <==commonly_known== 76212 (neg)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #64355: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #71653: <==commonly_known== 64355 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Bg_thief))

                    ; #74258: <==commonly_known== 30622 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Pg_thief))

                    ; #85738: <==commonly_known== 11827 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #89701: <==commonly_known== 49712 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (Pt_Bg_thief))

                    ; #10290: <==negation-removal== 89701 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #11827: <==uncertain_firing== 64355 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #13790: <==negation-removal== 30622 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #26308: <==uncertain_firing== 35225 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #28271: <==uncertain_firing== 39849 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #29406: <==negation-removal== 40057 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Bg_not_thief)))

                    ; #30492: <==uncertain_firing== 56239 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #33101: <==negation-removal== 41146 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #35097: <==uncertain_firing== 34383 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #35791: <==negation-removal== 35225 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #44708: <==negation-removal== 74258 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #46453: <==uncertain_firing== 37123 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #48832: <==negation-removal== 85738 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #49712: <==negation-removal== 34383 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Pg_not_thief)))

                    ; #50221: <==uncertain_firing== 40057 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #52969: <==negation-removal== 53967 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #54817: <==negation-removal== 71653 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #57789: <==uncertain_firing== 71653 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #62164: <==uncertain_firing== 85738 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #72469: <==negation-removal== 37123 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #72885: <==uncertain_firing== 53967 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #73948: <==negation-removal== 39849 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #75419: <==negation-removal== 63104 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #76212: <==uncertain_firing== 30622 (pos)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #78873: <==negation-removal== 47761 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #83209: <==negation-removal== 64355 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))

                    ; #87544: <==uncertain_firing== 74258 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #92165: <==negation-removal== 56239 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)))
                          (not (Bt_Bg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #34380: origin
                    (goal)

                    ; #60574: <==negation-removal== 34380 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #21926: <==closure== 45325 (pos)
                    (Pg_Pt_guard)

                    ; #45325: <==commonly_known== 88975 (pos)
                    (Bg_Bt_guard)

                    ; #53566: <==commonly_known== 97850 (neg)
                    (Pg_Bt_guard)

                    ; #63895: <==closure== 88975 (pos)
                    (Pt_guard)

                    ; #81965: <==commonly_known== 63895 (pos)
                    (Bg_Pt_guard)

                    ; #88975: origin
                    (Bt_guard)

                    ; #25953: <==negation-removal== 45325 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #39755: <==negation-removal== 81965 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #80214: <==negation-removal== 63895 (pos)
                    (not (Bt_not_guard))

                    ; #82237: <==negation-removal== 21926 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #86365: <==negation-removal== 53566 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #97850: <==negation-removal== 88975 (pos)
                    (not (Pt_not_guard))))

    (:action trick
        :precondition (and (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief)
                           (thief)
                           (Pt_guard)
                           (Bt_guard))
        :effect (and
                    ; #34380: origin
                    (goal)

                    ; #60574: <==negation-removal== 34380 (pos)
                    (not (not_goal))))

)