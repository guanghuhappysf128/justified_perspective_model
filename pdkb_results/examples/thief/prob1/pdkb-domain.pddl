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
                    ; #18220: origin
                    (goal)

                    ; #50817: <==negation-removal== 18220 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #16033: <==commonly_known== 65982 (neg)
                    (Pg_Bt_guard)

                    ; #21371: <==closure== 30138 (pos)
                    (Pt_Pg_thief)

                    ; #22668: <==commonly_known== 32764 (pos)
                    (Bt_Pg_thief)

                    ; #30138: <==commonly_known== 43431 (pos)
                    (Bt_Bg_thief)

                    ; #32764: <==closure== 43431 (pos)
                    (Pg_thief)

                    ; #37180: <==closure== 75702 (pos)
                    (Pg_Pt_guard)

                    ; #43078: <==commonly_known== 83842 (neg)
                    (Pt_Bg_thief)

                    ; #43431: origin
                    (Bg_thief)

                    ; #45387: origin
                    (Bt_guard)

                    ; #65514: <==commonly_known== 73224 (pos)
                    (Bg_Pt_guard)

                    ; #73224: <==closure== 45387 (pos)
                    (Pt_guard)

                    ; #75702: <==commonly_known== 45387 (pos)
                    (Bg_Bt_guard)

                    ; #13940: <==negation-removal== 65514 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #22780: <==negation-removal== 73224 (pos)
                    (not (Bt_not_guard))

                    ; #34284: <==negation-removal== 43078 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #36634: <==negation-removal== 21371 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #42672: <==negation-removal== 37180 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #53561: <==negation-removal== 16033 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #54101: <==negation-removal== 32764 (pos)
                    (not (Bg_not_thief))

                    ; #60445: <==negation-removal== 22668 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #65982: <==negation-removal== 45387 (pos)
                    (not (Pt_not_guard))

                    ; #71202: <==negation-removal== 30138 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #78747: <==negation-removal== 75702 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #83842: <==negation-removal== 43431 (pos)
                    (not (Pg_not_thief))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #21371: <==closure== 30138 (pos)
                    (Pt_Pg_thief)

                    ; #22668: <==commonly_known== 32764 (pos)
                    (Bt_Pg_thief)

                    ; #30138: <==commonly_known== 43431 (pos)
                    (Bt_Bg_thief)

                    ; #32764: <==closure== 43431 (pos)
                    (Pg_thief)

                    ; #43078: <==commonly_known== 83842 (neg)
                    (Pt_Bg_thief)

                    ; #43431: origin
                    (Bg_thief)

                    ; #34284: <==negation-removal== 43078 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #36634: <==negation-removal== 21371 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #54101: <==negation-removal== 32764 (pos)
                    (not (Bg_not_thief))

                    ; #60445: <==negation-removal== 22668 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #71202: <==negation-removal== 30138 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #83842: <==negation-removal== 43431 (pos)
                    (not (Pg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #10956: <==commonly_known== 30755 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Bt_guard))

                    ; #16640: <==commonly_known== 30755 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Bt_guard))

                    ; #20153: <==closure== 30755 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #27167: <==commonly_known== 36785 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #30755: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #39970: <==closure== 16640 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Pt_guard))

                    ; #40218: <==commonly_known== 20153 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Pt_guard))

                    ; #46513: <==commonly_known== 10956 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (Bg_Bt_guard))

                    ; #64557: <==closure== 46513 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #67770: <==commonly_known== 40901 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #71320: <==commonly_known== 88243 (neg)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Bt_guard))

                    ; #74641: <==commonly_known== 20153 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Pt_guard))

                    ; #78480: <==commonly_known== 77251 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #86122: <==commonly_known== 40218 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (Bg_Pt_guard))

                    ; #87709: <==commonly_known== 79708 (neg)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #90423: <==commonly_known== 10987 (neg)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #10987: <==uncertain_firing== 20153 (pos)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #16766: <==uncertain_firing== 27167 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #17103: <==negation-removal== 71320 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #20068: <==uncertain_firing== 74641 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #21259: <==negation-removal== 78480 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #21558: <==negation-removal== 40218 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Bt_not_guard)))

                    ; #23471: <==uncertain_firing== 67770 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #31340: <==negation-removal== 20153 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #32057: <==negation-removal== 87709 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #35164: <==uncertain_firing== 64557 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #35543: <==negation-removal== 16640 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #36355: <==uncertain_firing== 39970 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #36785: <==uncertain_firing== 30755 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #38158: <==negation-removal== 27167 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #40901: <==uncertain_firing== 10956 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #45161: <==negation-removal== 64557 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #46441: <==negation-removal== 67770 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #47018: <==negation-removal== 74641 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #55685: <==uncertain_firing== 16640 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #58726: <==negation-removal== 86122 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #59014: <==negation-removal== 39970 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #69510: <==uncertain_firing== 86122 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #73322: <==negation-removal== 90423 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #75442: <==uncertain_firing== 46513 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #77251: <==uncertain_firing== 40218 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #79708: <==negation-removal== 10956 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Pt_not_guard)))

                    ; #87675: <==negation-removal== 46513 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Bt_thief)
                               (Bg_Pt_thief)
                               (Pg_Pt_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #88243: <==negation-removal== 30755 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #16873: <==commonly_known== 22440 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Bg_thief))

                    ; #16891: <==closure== 32710 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #20022: <==commonly_known== 24451 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Pg_thief))

                    ; #22440: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #22872: <==commonly_known== 88082 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #24451: <==closure== 22440 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #29741: <==commonly_known== 36217 (neg)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Bg_thief))

                    ; #32710: <==commonly_known== 16873 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Bt_Bg_thief))

                    ; #39100: <==closure== 77485 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Pg_thief))

                    ; #40031: <==commonly_known== 85782 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #41990: <==commonly_known== 14095 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #50576: <==commonly_known== 91311 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #57560: <==commonly_known== 24451 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Pg_thief))

                    ; #77485: <==commonly_known== 22440 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Bg_thief))

                    ; #81425: <==commonly_known== 24630 (neg)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #89779: <==commonly_known== 57560 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Bt_Pg_thief))

                    ; #10200: <==negation-removal== 89779 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #10616: <==negation-removal== 16891 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #12188: <==uncertain_firing== 32710 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #14095: <==uncertain_firing== 57560 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #18702: <==negation-removal== 50576 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #19158: <==negation-removal== 41990 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #19198: <==negation-removal== 39100 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #19384: <==uncertain_firing== 89779 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #24630: <==uncertain_firing== 24451 (pos)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #29454: <==negation-removal== 77485 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #29534: <==uncertain_firing== 22872 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #30886: <==uncertain_firing== 50576 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #36217: <==negation-removal== 22440 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))

                    ; #38314: <==uncertain_firing== 39100 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #44379: <==negation-removal== 29741 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #49354: <==uncertain_firing== 20022 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #50297: <==uncertain_firing== 77485 (pos)
                    (when (and (and (not (Bt_not_guard))
                               (not (Pt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #53476: <==uncertain_firing== 16891 (pos)
                    (when (and (and (not (Pt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #56636: <==negation-removal== 24451 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #58959: <==negation-removal== 32710 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #64774: <==negation-removal== 40031 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #73769: <==negation-removal== 57560 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Bg_not_thief)))

                    ; #79871: <==negation-removal== 20022 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #80786: <==negation-removal== 81425 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #85782: <==negation-removal== 16873 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Pg_not_thief)))

                    ; #87740: <==negation-removal== 22872 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #88082: <==uncertain_firing== 16873 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #91311: <==uncertain_firing== 22440 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #18220: origin
                    (goal)

                    ; #50817: <==negation-removal== 18220 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #16033: <==commonly_known== 65982 (neg)
                    (Pg_Bt_guard)

                    ; #37180: <==closure== 75702 (pos)
                    (Pg_Pt_guard)

                    ; #45387: origin
                    (Bt_guard)

                    ; #65514: <==commonly_known== 73224 (pos)
                    (Bg_Pt_guard)

                    ; #73224: <==closure== 45387 (pos)
                    (Pt_guard)

                    ; #75702: <==commonly_known== 45387 (pos)
                    (Bg_Bt_guard)

                    ; #13940: <==negation-removal== 65514 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #22780: <==negation-removal== 73224 (pos)
                    (not (Bt_not_guard))

                    ; #42672: <==negation-removal== 37180 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #53561: <==negation-removal== 16033 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #65982: <==negation-removal== 45387 (pos)
                    (not (Pt_not_guard))

                    ; #78747: <==negation-removal== 75702 (pos)
                    (not (Pg_Pt_not_guard))))

    (:action trick
        :precondition (and (Pt_guard)
                           (thief)
                           (Bt_guard)
                           (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief))
        :effect (and
                    ; #18220: origin
                    (goal)

                    ; #50817: <==negation-removal== 18220 (pos)
                    (not (not_goal))))

)