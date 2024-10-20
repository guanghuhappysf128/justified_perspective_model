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
                           (not (guard)))
        :effect (and
                    ; #52404: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #37017: <==commonly_known== 37017 (pos)
                    (Bg_thief)

                    ; #80953: <==commonly_known== 80953 (pos)
                    (Pg_thief)

                    ; #85338: origin
                    (guard)

                    ; #39715: <==closure== 66863 (pos)
                    (not (not_guard))

                    ; #50333: <==closure== 55107 (pos)
                    (not (Bg_not_thief))

                    ; #64491: <==commonly_known== 64491 (neg)
                    (not (Pg_not_thief))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #37017: <==commonly_known== 37017 (pos)
                    (Bg_thief)

                    ; #80953: <==commonly_known== 80953 (pos)
                    (Pg_thief)

                    ; #50333: <==closure== 55107 (pos)
                    (not (Bg_not_thief))

                    ; #64491: <==commonly_known== 64491 (neg)
                    (not (Pg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #68012: <==commonly_known== 31472 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (guard))

                    ; #49644: <==commonly_known== 87217 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #12732: <==commonly_known== 86344 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (Bg_thief))

                    ; #38571: <==commonly_known== 38028 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (Bg_thief))

                    ; #44210: <==commonly_known== 66188 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (Pg_thief))

                    ; #88116: <==commonly_known== 82685 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (Pg_thief))

                    ; #27630: <==commonly_known== 13876 (neg)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #31386: <==commonly_known== 31386 (neg)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #36182: <==closure== 67549 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (Bg_not_thief)))

                    ; #54309: <==commonly_known== 54309 (neg)
                    (when (and (and (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #61822: <==commonly_known== 61822 (neg)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #67726: <==commonly_known== 67726 (neg)
                    (when (and (and (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #90373: <==closure== 17169 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #99448: <==commonly_known== 30787 (neg)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (Pg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #52404: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #85338: origin
                    (guard)

                    ; #39715: <==closure== 66863 (pos)
                    (not (not_guard))))

    (:action trick
        :precondition (and (guard)
                           (thief)
                           (Pg_not_thief)
                           (not (Pg_thief))
                           (not (not_guard))
                           (not (Bg_thief)))
        :effect (and
                    ; #52404: origin
                    (goal)))

)