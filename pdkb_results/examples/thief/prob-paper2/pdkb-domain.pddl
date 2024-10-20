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
                    ; #61425: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #17281: origin
                    (thief)

                    ; #63158: <==commonly_known== 63158 (pos)
                    (Pt_guard)

                    ; #69605: <==commonly_known== 69605 (pos)
                    (Bt_guard)

                    ; #10986: <==closure== 30613 (pos)
                    (not (not_thief))

                    ; #76298: <==commonly_known== 76298 (neg)
                    (not (Pt_not_guard))

                    ; #81879: <==closure== 27513 (pos)
                    (not (Bt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #17281: origin
                    (thief)

                    ; #10986: <==closure== 30613 (pos)
                    (not (not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #35821: <==commonly_known== 55686 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (Pt_guard))

                    ; #53039: <==commonly_known== 51899 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Pt_guard))

                    ; #78906: <==commonly_known== 43598 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Bt_guard))

                    ; #86406: <==commonly_known== 33844 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (Bt_guard))

                    ; #21560: <==commonly_known== 21560 (neg)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #22118: <==commonly_known== 22118 (neg)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #41933: <==commonly_known== 46593 (neg)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Pt_not_guard)))

                    ; #54986: <==commonly_known== 54986 (neg)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #57228: <==commonly_known== 14602 (neg)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #59267: <==closure== 13173 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Bt_not_guard)))

                    ; #66047: <==closure== 44726 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #83796: <==commonly_known== 83796 (neg)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #85292: <==commonly_known== 18437 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (thief))

                    ; #62593: <==commonly_known== 42840 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #61425: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #63158: <==commonly_known== 63158 (pos)
                    (Pt_guard)

                    ; #69605: <==commonly_known== 69605 (pos)
                    (Bt_guard)

                    ; #76298: <==commonly_known== 76298 (neg)
                    (not (Pt_not_guard))

                    ; #81879: <==closure== 27513 (pos)
                    (not (Bt_not_guard))))

    (:action trick
        :precondition (and (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief)
                           (Pt_guard)
                           (thief)
                           (Bt_guard))
        :effect (and
                    ; #61425: origin
                    (goal)))

)