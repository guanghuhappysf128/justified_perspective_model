(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_a_l3)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_b_l3)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_c_l3)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_at_d_l3)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l1_l3)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_connected_l2_l3)
        (not_connected_l3_l1)
        (not_connected_l3_l2)
        (not_connected_l3_l3)
        (not_initialized)
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
        (at_a_l3)
        (at_b_l1)
        (at_b_l2)
        (at_b_l3)
        (at_c_l1)
        (at_c_l2)
        (at_c_l3)
        (at_d_l1)
        (at_d_l2)
        (at_d_l3)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l1_l3)
        (connected_l2_l1)
        (connected_l2_l2)
        (connected_l2_l3)
        (connected_l3_l1)
        (connected_l3_l2)
        (connected_l3_l3)
        (initialized)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
    )

    (:action fib_a_a_l1
        :precondition (and (Pa_secret_a)
                           (initialized)
                           (Ba_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #24048: <==closure== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #40656: <==closure== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #45962: <==closure== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #53253: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #65300: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #76471: <==closure== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #87990: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #90465: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #14223: <==uncertain_firing== 76471 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #18155: <==negation-removal== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #18255: <==uncertain_firing== 40656 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #20095: <==uncertain_firing== 90465 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #32655: <==negation-removal== 24048 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #48262: <==negation-removal== 76471 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #53045: <==uncertain_firing== 65300 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #63135: <==negation-removal== 40656 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #63814: <==negation-removal== 45962 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #65174: <==negation-removal== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #65946: <==uncertain_firing== 45962 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #67200: <==uncertain_firing== 53253 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #74209: <==negation-removal== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #78035: <==uncertain_firing== 24048 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #79192: <==uncertain_firing== 87990 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #85879: <==negation-removal== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))))

    (:action fib_a_a_l2
        :precondition (and (Pa_secret_a)
                           (at_a_l2)
                           (Ba_secret_a)
                           (initialized))
        :effect (and
                    ; #19063: <==closure== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #25125: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #30910: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #37002: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40530: <==closure== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #53173: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #90539: <==closure== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #92208: <==closure== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14903: <==negation-removal== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #19383: <==negation-removal== 40530 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #23027: <==uncertain_firing== 30910 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #24235: <==uncertain_firing== 19063 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #28932: <==uncertain_firing== 37002 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #36389: <==negation-removal== 90539 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #43457: <==negation-removal== 19063 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #49922: <==negation-removal== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #51314: <==uncertain_firing== 25125 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55942: <==uncertain_firing== 53173 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #57395: <==negation-removal== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #72493: <==negation-removal== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #73285: <==uncertain_firing== 40530 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #77968: <==uncertain_firing== 90539 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #86875: <==negation-removal== 92208 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #90772: <==uncertain_firing== 92208 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_a_a_l3
        :precondition (and (at_a_l3)
                           (Pa_secret_a)
                           (initialized)
                           (Ba_secret_a))
        :effect (and
                    ; #13315: <==closure== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #23168: <==closure== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #24629: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #67437: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68721: <==closure== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #74877: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #75245: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #89983: <==closure== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10654: <==uncertain_firing== 67437 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #13648: <==negation-removal== 13315 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #14128: <==negation-removal== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #17209: <==negation-removal== 89983 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #17372: <==uncertain_firing== 68721 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #28866: <==negation-removal== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #35789: <==uncertain_firing== 89983 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #43786: <==negation-removal== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49691: <==uncertain_firing== 24629 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #57303: <==negation-removal== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #58602: <==uncertain_firing== 13315 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #75138: <==uncertain_firing== 75245 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #78220: <==negation-removal== 68721 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #82213: <==uncertain_firing== 74877 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #82662: <==uncertain_firing== 23168 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #89758: <==negation-removal== 23168 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))))

    (:action fib_a_b_l1
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #22086: <==closure== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #29302: <==closure== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #42350: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #55511: <==closure== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #55751: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #68768: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87289: <==closure== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #10427: <==negation-removal== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #15684: <==negation-removal== 29302 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #20355: <==negation-removal== 55511 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26401: <==negation-removal== 22086 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #34434: <==uncertain_firing== 55751 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #35279: <==uncertain_firing== 87289 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36358: <==negation-removal== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #42888: <==negation-removal== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #45228: <==uncertain_firing== 29302 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #59798: <==uncertain_firing== 42350 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #61326: <==uncertain_firing== 55511 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #61593: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #75715: <==negation-removal== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #76969: <==uncertain_firing== 68768 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #87124: <==negation-removal== 87289 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #99822: <==uncertain_firing== 22086 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))))

    (:action fib_a_b_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_b)
                           (Ba_secret_b)
                           (initialized))
        :effect (and
                    ; #21996: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35591: <==closure== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #44256: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #56816: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #56972: <==closure== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #57861: <==closure== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #58933: <==closure== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #64126: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #10908: <==uncertain_firing== 44256 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #11960: <==uncertain_firing== 64126 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #13304: <==negation-removal== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #13709: <==negation-removal== 35591 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #16745: <==negation-removal== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #20915: <==negation-removal== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #23857: <==uncertain_firing== 57861 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #30917: <==negation-removal== 57861 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #42428: <==negation-removal== 58933 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #42882: <==negation-removal== 56972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #55339: <==uncertain_firing== 56816 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #63656: <==uncertain_firing== 58933 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #80662: <==negation-removal== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #85750: <==uncertain_firing== 21996 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #86615: <==uncertain_firing== 35591 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #90589: <==uncertain_firing== 56972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))))

    (:action fib_a_b_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #24483: <==closure== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #32071: <==closure== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #35172: <==closure== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #44413: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #50977: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74022: <==closure== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84388: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #98239: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #18065: <==negation-removal== 35172 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #20344: <==uncertain_firing== 35172 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29015: <==uncertain_firing== 24483 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_b)))

                    ; #34731: <==uncertain_firing== 98239 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #38768: <==uncertain_firing== 32071 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_b)))

                    ; #39304: <==uncertain_firing== 50977 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #45433: <==negation-removal== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #45744: <==negation-removal== 32071 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #54541: <==uncertain_firing== 74022 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60393: <==negation-removal== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #63421: <==uncertain_firing== 84388 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_b)))

                    ; #66646: <==negation-removal== 74022 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #71819: <==negation-removal== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #86305: <==uncertain_firing== 44413 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_b)))

                    ; #86983: <==negation-removal== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #89233: <==negation-removal== 24483 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))))

    (:action fib_a_c_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Ba_secret_c)
                           (Pa_secret_c))
        :effect (and
                    ; #21721: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #28639: <==closure== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #35338: <==closure== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #35774: <==closure== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #40238: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #51267: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #55484: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #78575: <==closure== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #21326: <==negation-removal== 35774 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23430: <==negation-removal== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #23788: <==uncertain_firing== 78575 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #31215: <==negation-removal== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33992: <==uncertain_firing== 51267 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #36009: <==uncertain_firing== 35338 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #41891: <==negation-removal== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #42198: <==uncertain_firing== 28639 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #46822: <==negation-removal== 78575 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #53372: <==negation-removal== 28639 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #54929: <==negation-removal== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #58470: <==uncertain_firing== 40238 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #68971: <==uncertain_firing== 21721 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #79328: <==uncertain_firing== 55484 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #81127: <==negation-removal== 35338 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #82875: <==uncertain_firing== 35774 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))))

    (:action fib_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (initialized))
        :effect (and
                    ; #20932: <==closure== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #22530: <==closure== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25389: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #37997: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #40002: <==closure== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61078: <==closure== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #64596: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #82666: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #12607: <==negation-removal== 61078 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #14421: <==uncertain_firing== 22530 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #18629: <==negation-removal== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #19350: <==uncertain_firing== 82666 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #19539: <==uncertain_firing== 61078 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #19835: <==uncertain_firing== 20932 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #22779: <==negation-removal== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #33575: <==uncertain_firing== 40002 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #44539: <==negation-removal== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49112: <==negation-removal== 20932 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #66319: <==uncertain_firing== 25389 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #71147: <==uncertain_firing== 37997 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #80193: <==uncertain_firing== 64596 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #81257: <==negation-removal== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #85472: <==negation-removal== 40002 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #88109: <==negation-removal== 22530 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_a_c_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #23364: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #27315: <==closure== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #28621: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #34360: <==closure== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #49455: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #50855: <==closure== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #64510: <==closure== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #65322: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #11652: <==uncertain_firing== 23364 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #12575: <==uncertain_firing== 34360 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16024: <==uncertain_firing== 64510 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #20857: <==negation-removal== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #21238: <==negation-removal== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #27560: <==negation-removal== 27315 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #28504: <==uncertain_firing== 49455 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #28896: <==uncertain_firing== 65322 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #37415: <==negation-removal== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #42102: <==uncertain_firing== 28621 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #61044: <==negation-removal== 34360 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #64342: <==uncertain_firing== 27315 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #71464: <==uncertain_firing== 50855 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #72088: <==negation-removal== 64510 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83631: <==negation-removal== 50855 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #85389: <==negation-removal== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_a_d_l1
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #43957: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #46784: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #50938: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #52942: <==closure== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #57565: <==closure== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62250: <==closure== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #79619: <==closure== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #89900: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #18749: <==negation-removal== 57565 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #21341: <==negation-removal== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #24190: <==negation-removal== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #24608: <==negation-removal== 62250 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #27306: <==uncertain_firing== 52942 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #46399: <==uncertain_firing== 50938 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47498: <==negation-removal== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49995: <==uncertain_firing== 43957 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #50905: <==uncertain_firing== 62250 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60235: <==uncertain_firing== 89900 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #69518: <==uncertain_firing== 46784 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72148: <==uncertain_firing== 79619 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #76301: <==uncertain_firing== 57565 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #88647: <==negation-removal== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #88790: <==negation-removal== 79619 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #89648: <==negation-removal== 52942 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))))

    (:action fib_a_d_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_d)
                           (initialized)
                           (Ba_secret_d))
        :effect (and
                    ; #39786: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #42268: <==closure== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #57927: <==closure== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #59499: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #64213: <==closure== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79163: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #88170: <==closure== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #88540: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #17677: <==uncertain_firing== 39786 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #19212: <==negation-removal== 57927 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #20379: <==uncertain_firing== 59499 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #20971: <==negation-removal== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #22336: <==negation-removal== 64213 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #29097: <==uncertain_firing== 57927 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #49405: <==negation-removal== 88170 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #50511: <==uncertain_firing== 42268 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #51964: <==negation-removal== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #58927: <==uncertain_firing== 64213 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #61374: <==negation-removal== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #62353: <==negation-removal== 42268 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #67026: <==uncertain_firing== 88170 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69665: <==negation-removal== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #77435: <==uncertain_firing== 79163 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #87922: <==uncertain_firing== 88540 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_a_d_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_d)
                           (Pa_secret_d)
                           (initialized))
        :effect (and
                    ; #10052: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #12660: <==closure== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #23245: <==closure== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #47994: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #55768: <==closure== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #82003: <==closure== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #84630: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #87139: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #15123: <==negation-removal== 82003 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16328: <==uncertain_firing== 84630 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #19893: <==negation-removal== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #27033: <==negation-removal== 55768 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #34952: <==negation-removal== 23245 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #40161: <==uncertain_firing== 87139 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #46527: <==negation-removal== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49324: <==uncertain_firing== 12660 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #50690: <==uncertain_firing== 82003 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #56480: <==uncertain_firing== 23245 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))

                    ; #59267: <==negation-removal== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60399: <==uncertain_firing== 47994 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #64199: <==negation-removal== 12660 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #82397: <==uncertain_firing== 10052 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #84519: <==negation-removal== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #85234: <==uncertain_firing== 55768 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))))

    (:action fib_b_a_l1
        :precondition (and (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #24048: <==closure== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #40656: <==closure== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #45962: <==closure== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #53253: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #65300: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #76471: <==closure== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #87990: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #90465: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #14223: <==uncertain_firing== 76471 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #18155: <==negation-removal== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #18255: <==uncertain_firing== 40656 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #20095: <==uncertain_firing== 90465 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #32655: <==negation-removal== 24048 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #48262: <==negation-removal== 76471 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #53045: <==uncertain_firing== 65300 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #63135: <==negation-removal== 40656 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #63814: <==negation-removal== 45962 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #65174: <==negation-removal== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #65946: <==uncertain_firing== 45962 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #67200: <==uncertain_firing== 53253 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #74209: <==negation-removal== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #78035: <==uncertain_firing== 24048 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #79192: <==uncertain_firing== 87990 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #85879: <==negation-removal== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))))

    (:action fib_b_a_l2
        :precondition (and (Pb_secret_a)
                           (at_b_l2)
                           (Bb_secret_a)
                           (initialized))
        :effect (and
                    ; #19063: <==closure== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #25125: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #30910: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #37002: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40530: <==closure== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #53173: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #90539: <==closure== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #92208: <==closure== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14903: <==negation-removal== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #19383: <==negation-removal== 40530 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #23027: <==uncertain_firing== 30910 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #24235: <==uncertain_firing== 19063 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #28932: <==uncertain_firing== 37002 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #36389: <==negation-removal== 90539 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #43457: <==negation-removal== 19063 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #49922: <==negation-removal== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #51314: <==uncertain_firing== 25125 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55942: <==uncertain_firing== 53173 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #57395: <==negation-removal== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #72493: <==negation-removal== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #73285: <==uncertain_firing== 40530 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #77968: <==uncertain_firing== 90539 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #86875: <==negation-removal== 92208 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #90772: <==uncertain_firing== 92208 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_b_a_l3
        :precondition (and (Pb_secret_a)
                           (at_b_l3)
                           (Bb_secret_a)
                           (initialized))
        :effect (and
                    ; #13315: <==closure== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #23168: <==closure== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #24629: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #67437: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68721: <==closure== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #74877: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #75245: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #89983: <==closure== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10654: <==uncertain_firing== 67437 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #13648: <==negation-removal== 13315 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #14128: <==negation-removal== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #17209: <==negation-removal== 89983 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #17372: <==uncertain_firing== 68721 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #28866: <==negation-removal== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #35789: <==uncertain_firing== 89983 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #43786: <==negation-removal== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49691: <==uncertain_firing== 24629 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #57303: <==negation-removal== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #58602: <==uncertain_firing== 13315 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #75138: <==uncertain_firing== 75245 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #78220: <==negation-removal== 68721 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #82213: <==uncertain_firing== 74877 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #82662: <==uncertain_firing== 23168 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #89758: <==negation-removal== 23168 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))))

    (:action fib_b_b_l1
        :precondition (and (initialized)
                           (Bb_secret_b)
                           (at_b_l1)
                           (Pb_secret_b))
        :effect (and
                    ; #22086: <==closure== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #29302: <==closure== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #42350: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #55511: <==closure== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #55751: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #68768: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87289: <==closure== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #10427: <==negation-removal== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #15684: <==negation-removal== 29302 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #20355: <==negation-removal== 55511 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26401: <==negation-removal== 22086 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #34434: <==uncertain_firing== 55751 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #35279: <==uncertain_firing== 87289 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36358: <==negation-removal== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #42888: <==negation-removal== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #45228: <==uncertain_firing== 29302 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #59798: <==uncertain_firing== 42350 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #61326: <==uncertain_firing== 55511 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #61593: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #75715: <==negation-removal== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #76969: <==uncertain_firing== 68768 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #87124: <==negation-removal== 87289 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #99822: <==uncertain_firing== 22086 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))))

    (:action fib_b_b_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #21996: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35591: <==closure== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #44256: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #56816: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #56972: <==closure== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #57861: <==closure== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #58933: <==closure== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #64126: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #10908: <==uncertain_firing== 44256 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #11960: <==uncertain_firing== 64126 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #13304: <==negation-removal== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #13709: <==negation-removal== 35591 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #16745: <==negation-removal== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #20915: <==negation-removal== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #23857: <==uncertain_firing== 57861 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #30917: <==negation-removal== 57861 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #42428: <==negation-removal== 58933 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #42882: <==negation-removal== 56972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #55339: <==uncertain_firing== 56816 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #63656: <==uncertain_firing== 58933 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #80662: <==negation-removal== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #85750: <==uncertain_firing== 21996 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #86615: <==uncertain_firing== 35591 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #90589: <==uncertain_firing== 56972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))))

    (:action fib_b_b_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #24483: <==closure== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #32071: <==closure== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #35172: <==closure== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #44413: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #50977: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74022: <==closure== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84388: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #98239: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #18065: <==negation-removal== 35172 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #20344: <==uncertain_firing== 35172 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29015: <==uncertain_firing== 24483 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_b)))

                    ; #34731: <==uncertain_firing== 98239 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #38768: <==uncertain_firing== 32071 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_b)))

                    ; #39304: <==uncertain_firing== 50977 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #45433: <==negation-removal== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #45744: <==negation-removal== 32071 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #54541: <==uncertain_firing== 74022 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60393: <==negation-removal== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #63421: <==uncertain_firing== 84388 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_b)))

                    ; #66646: <==negation-removal== 74022 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #71819: <==negation-removal== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #86305: <==uncertain_firing== 44413 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_b)))

                    ; #86983: <==negation-removal== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #89233: <==negation-removal== 24483 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))))

    (:action fib_b_c_l1
        :precondition (and (initialized)
                           (Pb_secret_c)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #21721: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #28639: <==closure== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #35338: <==closure== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #35774: <==closure== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #40238: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #51267: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #55484: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #78575: <==closure== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #21326: <==negation-removal== 35774 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23430: <==negation-removal== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #23788: <==uncertain_firing== 78575 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #31215: <==negation-removal== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33992: <==uncertain_firing== 51267 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #36009: <==uncertain_firing== 35338 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #41891: <==negation-removal== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #42198: <==uncertain_firing== 28639 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #46822: <==negation-removal== 78575 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #53372: <==negation-removal== 28639 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #54929: <==negation-removal== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #58470: <==uncertain_firing== 40238 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #68971: <==uncertain_firing== 21721 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #79328: <==uncertain_firing== 55484 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #81127: <==negation-removal== 35338 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #82875: <==uncertain_firing== 35774 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))))

    (:action fib_b_c_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #20932: <==closure== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #22530: <==closure== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25389: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #37997: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #40002: <==closure== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61078: <==closure== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #64596: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #82666: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #12607: <==negation-removal== 61078 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #14421: <==uncertain_firing== 22530 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #18629: <==negation-removal== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #19350: <==uncertain_firing== 82666 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #19539: <==uncertain_firing== 61078 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #19835: <==uncertain_firing== 20932 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #22779: <==negation-removal== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #33575: <==uncertain_firing== 40002 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #44539: <==negation-removal== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49112: <==negation-removal== 20932 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #66319: <==uncertain_firing== 25389 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #71147: <==uncertain_firing== 37997 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #80193: <==uncertain_firing== 64596 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #81257: <==negation-removal== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #85472: <==negation-removal== 40002 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #88109: <==negation-removal== 22530 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_b_c_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #23364: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #27315: <==closure== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #28621: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #34360: <==closure== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #49455: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #50855: <==closure== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #64510: <==closure== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #65322: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #11652: <==uncertain_firing== 23364 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #12575: <==uncertain_firing== 34360 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16024: <==uncertain_firing== 64510 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #20857: <==negation-removal== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #21238: <==negation-removal== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #27560: <==negation-removal== 27315 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #28504: <==uncertain_firing== 49455 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #28896: <==uncertain_firing== 65322 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #37415: <==negation-removal== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #42102: <==uncertain_firing== 28621 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #61044: <==negation-removal== 34360 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #64342: <==uncertain_firing== 27315 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #71464: <==uncertain_firing== 50855 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #72088: <==negation-removal== 64510 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83631: <==negation-removal== 50855 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #85389: <==negation-removal== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_b_d_l1
        :precondition (and (Bb_secret_d)
                           (at_b_l1)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #43957: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #46784: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #50938: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #52942: <==closure== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #57565: <==closure== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62250: <==closure== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #79619: <==closure== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #89900: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #18749: <==negation-removal== 57565 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #21341: <==negation-removal== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #24190: <==negation-removal== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #24608: <==negation-removal== 62250 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #27306: <==uncertain_firing== 52942 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #46399: <==uncertain_firing== 50938 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47498: <==negation-removal== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49995: <==uncertain_firing== 43957 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #50905: <==uncertain_firing== 62250 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60235: <==uncertain_firing== 89900 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #69518: <==uncertain_firing== 46784 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72148: <==uncertain_firing== 79619 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #76301: <==uncertain_firing== 57565 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #88647: <==negation-removal== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #88790: <==negation-removal== 79619 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #89648: <==negation-removal== 52942 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))))

    (:action fib_b_d_l2
        :precondition (and (Bb_secret_d)
                           (at_b_l2)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #39786: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #42268: <==closure== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #57927: <==closure== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #59499: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #64213: <==closure== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79163: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #88170: <==closure== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #88540: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #17677: <==uncertain_firing== 39786 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #19212: <==negation-removal== 57927 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #20379: <==uncertain_firing== 59499 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #20971: <==negation-removal== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #22336: <==negation-removal== 64213 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #29097: <==uncertain_firing== 57927 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #49405: <==negation-removal== 88170 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #50511: <==uncertain_firing== 42268 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #51964: <==negation-removal== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #58927: <==uncertain_firing== 64213 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #61374: <==negation-removal== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #62353: <==negation-removal== 42268 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #67026: <==uncertain_firing== 88170 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69665: <==negation-removal== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #77435: <==uncertain_firing== 79163 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #87922: <==uncertain_firing== 88540 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_b_d_l3
        :precondition (and (Bb_secret_d)
                           (at_b_l3)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #10052: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #12660: <==closure== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #23245: <==closure== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #47994: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #55768: <==closure== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #82003: <==closure== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #84630: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #87139: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #15123: <==negation-removal== 82003 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16328: <==uncertain_firing== 84630 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #19893: <==negation-removal== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #27033: <==negation-removal== 55768 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #34952: <==negation-removal== 23245 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #40161: <==uncertain_firing== 87139 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #46527: <==negation-removal== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49324: <==uncertain_firing== 12660 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #50690: <==uncertain_firing== 82003 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #56480: <==uncertain_firing== 23245 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))

                    ; #59267: <==negation-removal== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60399: <==uncertain_firing== 47994 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #64199: <==negation-removal== 12660 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #82397: <==uncertain_firing== 10052 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #84519: <==negation-removal== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #85234: <==uncertain_firing== 55768 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))))

    (:action fib_c_a_l1
        :precondition (and (Pc_secret_a)
                           (initialized)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #24048: <==closure== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #40656: <==closure== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #45962: <==closure== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #53253: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #65300: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #76471: <==closure== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #87990: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #90465: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #14223: <==uncertain_firing== 76471 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #18155: <==negation-removal== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #18255: <==uncertain_firing== 40656 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #20095: <==uncertain_firing== 90465 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #32655: <==negation-removal== 24048 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #48262: <==negation-removal== 76471 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #53045: <==uncertain_firing== 65300 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #63135: <==negation-removal== 40656 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #63814: <==negation-removal== 45962 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #65174: <==negation-removal== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #65946: <==uncertain_firing== 45962 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #67200: <==uncertain_firing== 53253 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #74209: <==negation-removal== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #78035: <==uncertain_firing== 24048 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #79192: <==uncertain_firing== 87990 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #85879: <==negation-removal== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))))

    (:action fib_c_a_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #19063: <==closure== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #25125: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #30910: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #37002: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40530: <==closure== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #53173: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #90539: <==closure== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #92208: <==closure== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14903: <==negation-removal== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #19383: <==negation-removal== 40530 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #23027: <==uncertain_firing== 30910 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #24235: <==uncertain_firing== 19063 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #28932: <==uncertain_firing== 37002 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #36389: <==negation-removal== 90539 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #43457: <==negation-removal== 19063 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #49922: <==negation-removal== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #51314: <==uncertain_firing== 25125 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55942: <==uncertain_firing== 53173 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #57395: <==negation-removal== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #72493: <==negation-removal== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #73285: <==uncertain_firing== 40530 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #77968: <==uncertain_firing== 90539 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #86875: <==negation-removal== 92208 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #90772: <==uncertain_firing== 92208 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_c_a_l3
        :precondition (and (Pc_secret_a)
                           (initialized)
                           (at_c_l3)
                           (Bc_secret_a))
        :effect (and
                    ; #13315: <==closure== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #23168: <==closure== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #24629: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #67437: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68721: <==closure== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #74877: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #75245: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #89983: <==closure== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10654: <==uncertain_firing== 67437 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #13648: <==negation-removal== 13315 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #14128: <==negation-removal== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #17209: <==negation-removal== 89983 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #17372: <==uncertain_firing== 68721 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #28866: <==negation-removal== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #35789: <==uncertain_firing== 89983 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #43786: <==negation-removal== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49691: <==uncertain_firing== 24629 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #57303: <==negation-removal== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #58602: <==uncertain_firing== 13315 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #75138: <==uncertain_firing== 75245 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #78220: <==negation-removal== 68721 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #82213: <==uncertain_firing== 74877 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #82662: <==uncertain_firing== 23168 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #89758: <==negation-removal== 23168 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))))

    (:action fib_c_b_l1
        :precondition (and (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b)
                           (at_c_l1))
        :effect (and
                    ; #22086: <==closure== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #29302: <==closure== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #42350: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #55511: <==closure== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #55751: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #68768: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87289: <==closure== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #10427: <==negation-removal== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #15684: <==negation-removal== 29302 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #20355: <==negation-removal== 55511 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26401: <==negation-removal== 22086 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #34434: <==uncertain_firing== 55751 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #35279: <==uncertain_firing== 87289 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36358: <==negation-removal== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #42888: <==negation-removal== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #45228: <==uncertain_firing== 29302 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #59798: <==uncertain_firing== 42350 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #61326: <==uncertain_firing== 55511 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #61593: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #75715: <==negation-removal== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #76969: <==uncertain_firing== 68768 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #87124: <==negation-removal== 87289 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #99822: <==uncertain_firing== 22086 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))))

    (:action fib_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #21996: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35591: <==closure== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #44256: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #56816: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #56972: <==closure== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #57861: <==closure== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #58933: <==closure== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #64126: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #10908: <==uncertain_firing== 44256 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #11960: <==uncertain_firing== 64126 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #13304: <==negation-removal== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #13709: <==negation-removal== 35591 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #16745: <==negation-removal== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #20915: <==negation-removal== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #23857: <==uncertain_firing== 57861 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #30917: <==negation-removal== 57861 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #42428: <==negation-removal== 58933 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #42882: <==negation-removal== 56972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #55339: <==uncertain_firing== 56816 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #63656: <==uncertain_firing== 58933 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #80662: <==negation-removal== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #85750: <==uncertain_firing== 21996 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #86615: <==uncertain_firing== 35591 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #90589: <==uncertain_firing== 56972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))))

    (:action fib_c_b_l3
        :precondition (and (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b)
                           (at_c_l3))
        :effect (and
                    ; #24483: <==closure== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #32071: <==closure== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #35172: <==closure== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #44413: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #50977: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74022: <==closure== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84388: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #98239: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #18065: <==negation-removal== 35172 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #20344: <==uncertain_firing== 35172 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29015: <==uncertain_firing== 24483 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_b)))

                    ; #34731: <==uncertain_firing== 98239 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #38768: <==uncertain_firing== 32071 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_b)))

                    ; #39304: <==uncertain_firing== 50977 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #45433: <==negation-removal== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #45744: <==negation-removal== 32071 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #54541: <==uncertain_firing== 74022 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60393: <==negation-removal== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #63421: <==uncertain_firing== 84388 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_b)))

                    ; #66646: <==negation-removal== 74022 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #71819: <==negation-removal== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #86305: <==uncertain_firing== 44413 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_b)))

                    ; #86983: <==negation-removal== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #89233: <==negation-removal== 24483 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))))

    (:action fib_c_c_l1
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l1))
        :effect (and
                    ; #21721: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #28639: <==closure== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #35338: <==closure== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #35774: <==closure== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #40238: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #51267: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #55484: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #78575: <==closure== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #21326: <==negation-removal== 35774 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23430: <==negation-removal== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #23788: <==uncertain_firing== 78575 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #31215: <==negation-removal== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33992: <==uncertain_firing== 51267 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #36009: <==uncertain_firing== 35338 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #41891: <==negation-removal== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #42198: <==uncertain_firing== 28639 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #46822: <==negation-removal== 78575 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #53372: <==negation-removal== 28639 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #54929: <==negation-removal== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #58470: <==uncertain_firing== 40238 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #68971: <==uncertain_firing== 21721 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #79328: <==uncertain_firing== 55484 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #81127: <==negation-removal== 35338 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #82875: <==uncertain_firing== 35774 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))))

    (:action fib_c_c_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #20932: <==closure== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #22530: <==closure== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25389: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #37997: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #40002: <==closure== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61078: <==closure== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #64596: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #82666: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #12607: <==negation-removal== 61078 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #14421: <==uncertain_firing== 22530 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #18629: <==negation-removal== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #19350: <==uncertain_firing== 82666 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #19539: <==uncertain_firing== 61078 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #19835: <==uncertain_firing== 20932 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #22779: <==negation-removal== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #33575: <==uncertain_firing== 40002 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #44539: <==negation-removal== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49112: <==negation-removal== 20932 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #66319: <==uncertain_firing== 25389 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #71147: <==uncertain_firing== 37997 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #80193: <==uncertain_firing== 64596 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #81257: <==negation-removal== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #85472: <==negation-removal== 40002 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #88109: <==negation-removal== 22530 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_c_c_l3
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l3))
        :effect (and
                    ; #23364: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #27315: <==closure== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #28621: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #34360: <==closure== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #49455: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #50855: <==closure== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #64510: <==closure== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #65322: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #11652: <==uncertain_firing== 23364 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #12575: <==uncertain_firing== 34360 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16024: <==uncertain_firing== 64510 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #20857: <==negation-removal== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #21238: <==negation-removal== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #27560: <==negation-removal== 27315 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #28504: <==uncertain_firing== 49455 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #28896: <==uncertain_firing== 65322 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #37415: <==negation-removal== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #42102: <==uncertain_firing== 28621 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #61044: <==negation-removal== 34360 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #64342: <==uncertain_firing== 27315 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #71464: <==uncertain_firing== 50855 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #72088: <==negation-removal== 64510 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83631: <==negation-removal== 50855 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #85389: <==negation-removal== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_c_d_l1
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (at_c_l1)
                           (initialized))
        :effect (and
                    ; #43957: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #46784: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #50938: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #52942: <==closure== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #57565: <==closure== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62250: <==closure== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #79619: <==closure== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #89900: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #18749: <==negation-removal== 57565 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #21341: <==negation-removal== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #24190: <==negation-removal== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #24608: <==negation-removal== 62250 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #27306: <==uncertain_firing== 52942 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #46399: <==uncertain_firing== 50938 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47498: <==negation-removal== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49995: <==uncertain_firing== 43957 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #50905: <==uncertain_firing== 62250 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60235: <==uncertain_firing== 89900 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #69518: <==uncertain_firing== 46784 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72148: <==uncertain_firing== 79619 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #76301: <==uncertain_firing== 57565 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #88647: <==negation-removal== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #88790: <==negation-removal== 79619 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #89648: <==negation-removal== 52942 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))))

    (:action fib_c_d_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d)
                           (initialized))
        :effect (and
                    ; #39786: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #42268: <==closure== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #57927: <==closure== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #59499: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #64213: <==closure== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79163: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #88170: <==closure== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #88540: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #17677: <==uncertain_firing== 39786 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #19212: <==negation-removal== 57927 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #20379: <==uncertain_firing== 59499 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #20971: <==negation-removal== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #22336: <==negation-removal== 64213 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #29097: <==uncertain_firing== 57927 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #49405: <==negation-removal== 88170 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #50511: <==uncertain_firing== 42268 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #51964: <==negation-removal== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #58927: <==uncertain_firing== 64213 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #61374: <==negation-removal== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #62353: <==negation-removal== 42268 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #67026: <==uncertain_firing== 88170 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69665: <==negation-removal== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #77435: <==uncertain_firing== 79163 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #87922: <==uncertain_firing== 88540 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_c_d_l3
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (at_c_l3)
                           (initialized))
        :effect (and
                    ; #10052: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #12660: <==closure== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #23245: <==closure== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #47994: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #55768: <==closure== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #82003: <==closure== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #84630: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #87139: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #15123: <==negation-removal== 82003 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16328: <==uncertain_firing== 84630 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #19893: <==negation-removal== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #27033: <==negation-removal== 55768 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #34952: <==negation-removal== 23245 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #40161: <==uncertain_firing== 87139 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #46527: <==negation-removal== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49324: <==uncertain_firing== 12660 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #50690: <==uncertain_firing== 82003 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #56480: <==uncertain_firing== 23245 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))

                    ; #59267: <==negation-removal== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60399: <==uncertain_firing== 47994 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #64199: <==negation-removal== 12660 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #82397: <==uncertain_firing== 10052 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #84519: <==negation-removal== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #85234: <==uncertain_firing== 55768 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))))

    (:action fib_d_a_l1
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #24048: <==closure== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Pb_not_secret_a))

                    ; #40656: <==closure== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #45962: <==closure== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #53253: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #65300: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (Bb_not_secret_a))

                    ; #76471: <==closure== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Pc_not_secret_a))

                    ; #87990: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (Bc_not_secret_a))

                    ; #90465: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #14223: <==uncertain_firing== 76471 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_a)))

                    ; #18155: <==negation-removal== 90465 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #18255: <==uncertain_firing== 40656 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #20095: <==uncertain_firing== 90465 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #32655: <==negation-removal== 24048 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Bb_secret_a)))

                    ; #48262: <==negation-removal== 76471 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Bc_secret_a)))

                    ; #53045: <==uncertain_firing== 65300 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #63135: <==negation-removal== 40656 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #63814: <==negation-removal== 45962 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #65174: <==negation-removal== 53253 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #65946: <==uncertain_firing== 45962 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_a)))

                    ; #67200: <==uncertain_firing== 53253 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_a)))

                    ; #74209: <==negation-removal== 87990 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l1)))
                          (not (Pc_secret_a)))

                    ; #78035: <==uncertain_firing== 24048 (pos)
                    (when (and (and (not (Pb_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #79192: <==uncertain_firing== 87990 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_a)))

                    ; #85879: <==negation-removal== 65300 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l1)))
                          (not (Pb_secret_a)))))

    (:action fib_d_a_l2
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l2)
                           (Bd_secret_a))
        :effect (and
                    ; #19063: <==closure== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Pb_not_secret_a))

                    ; #25125: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #30910: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (Bb_not_secret_a))

                    ; #37002: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Bc_not_secret_a))

                    ; #40530: <==closure== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (Pc_not_secret_a))

                    ; #53173: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #90539: <==closure== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #92208: <==closure== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #14903: <==negation-removal== 25125 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #19383: <==negation-removal== 40530 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Bc_secret_a)))

                    ; #23027: <==uncertain_firing== 30910 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #24235: <==uncertain_firing== 19063 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #28932: <==uncertain_firing== 37002 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Pc_secret_a)))

                    ; #36389: <==negation-removal== 90539 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #43457: <==negation-removal== 19063 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Bb_secret_a)))

                    ; #49922: <==negation-removal== 53173 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #51314: <==uncertain_firing== 25125 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #55942: <==uncertain_firing== 53173 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_a)))

                    ; #57395: <==negation-removal== 30910 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l2)))
                          (not (Pb_secret_a)))

                    ; #72493: <==negation-removal== 37002 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_a)))
                          (not (Pc_secret_a)))

                    ; #73285: <==uncertain_firing== 40530 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (not_at_c_l2))
                               (not (Bc_secret_a))))
                          (not (Bc_secret_a)))

                    ; #77968: <==uncertain_firing== 90539 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_a)))

                    ; #86875: <==negation-removal== 92208 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #90772: <==uncertain_firing== 92208 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_a))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))))

    (:action fib_d_a_l3
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l3)
                           (Bd_secret_a))
        :effect (and
                    ; #13315: <==closure== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Pb_not_secret_a))

                    ; #23168: <==closure== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Pc_not_secret_a))

                    ; #24629: origin
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (Bc_not_secret_a))

                    ; #67437: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Ba_not_secret_a))

                    ; #68721: <==closure== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (Pa_not_secret_a))

                    ; #74877: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Bd_not_secret_a))

                    ; #75245: origin
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (Bb_not_secret_a))

                    ; #89983: <==closure== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (Pd_not_secret_a))

                    ; #10654: <==uncertain_firing== 67437 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_a)))

                    ; #13648: <==negation-removal== 13315 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Bb_secret_a)))

                    ; #14128: <==negation-removal== 24629 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Pc_secret_a)))

                    ; #17209: <==negation-removal== 89983 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Bd_secret_a)))

                    ; #17372: <==uncertain_firing== 68721 (pos)
                    (when (and (and (not (Pa_secret_a))
                               (not (Ba_secret_a))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_a)))

                    ; #28866: <==negation-removal== 75245 (pos)
                    (when (and (and (Pb_not_secret_a)
                               (at_b_l3)))
                          (not (Pb_secret_a)))

                    ; #35789: <==uncertain_firing== 89983 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Bd_secret_a)))

                    ; #43786: <==negation-removal== 67437 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Pa_secret_a)))

                    ; #49691: <==uncertain_firing== 24629 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_a)))

                    ; #57303: <==negation-removal== 74877 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_a)))
                          (not (Pd_secret_a)))

                    ; #58602: <==uncertain_firing== 13315 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Bb_secret_a)))

                    ; #75138: <==uncertain_firing== 75245 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_a))
                               (not (Bb_secret_a))))
                          (not (Pb_secret_a)))

                    ; #78220: <==negation-removal== 68721 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_a)))
                          (not (Ba_secret_a)))

                    ; #82213: <==uncertain_firing== 74877 (pos)
                    (when (and (and (not (Pd_secret_a))
                               (not (not_at_d_l3))
                               (not (Bd_secret_a))))
                          (not (Pd_secret_a)))

                    ; #82662: <==uncertain_firing== 23168 (pos)
                    (when (and (and (not (Pc_secret_a))
                               (not (Bc_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_a)))

                    ; #89758: <==negation-removal== 23168 (pos)
                    (when (and (and (Pc_not_secret_a)
                               (at_c_l3)))
                          (not (Bc_secret_a)))))

    (:action fib_d_b_l1
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #22086: <==closure== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Pc_not_secret_b))

                    ; #26080: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Bd_not_secret_b))

                    ; #29302: <==closure== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (Pd_not_secret_b))

                    ; #42350: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (Bc_not_secret_b))

                    ; #55511: <==closure== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #55751: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #68768: origin
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Bb_not_secret_b))

                    ; #87289: <==closure== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (Pb_not_secret_b))

                    ; #10427: <==negation-removal== 55751 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #15684: <==negation-removal== 29302 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Bd_secret_b)))

                    ; #20355: <==negation-removal== 55511 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #26401: <==negation-removal== 22086 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Bc_secret_b)))

                    ; #34434: <==uncertain_firing== 55751 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_b)))

                    ; #35279: <==uncertain_firing== 87289 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #36358: <==negation-removal== 26080 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l1)))
                          (not (Pd_secret_b)))

                    ; #42888: <==negation-removal== 42350 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l1)))
                          (not (Pc_secret_b)))

                    ; #45228: <==uncertain_firing== 29302 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #59798: <==uncertain_firing== 42350 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_b)))

                    ; #61326: <==uncertain_firing== 55511 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_b)))

                    ; #61593: <==uncertain_firing== 26080 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #75715: <==negation-removal== 68768 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Pb_secret_b)))

                    ; #76969: <==uncertain_firing== 68768 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #87124: <==negation-removal== 87289 (pos)
                    (when (and (and (Pb_not_secret_b)
                               (at_b_l1)))
                          (not (Bb_secret_b)))

                    ; #99822: <==uncertain_firing== 22086 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_b)))))

    (:action fib_d_b_l2
        :precondition (and (Pd_secret_b)
                           (initialized)
                           (at_d_l2)
                           (Bd_secret_b))
        :effect (and
                    ; #21996: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #35591: <==closure== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #44256: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Bd_not_secret_b))

                    ; #56816: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #56972: <==closure== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Pc_not_secret_b))

                    ; #57861: <==closure== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (Pd_not_secret_b))

                    ; #58933: <==closure== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #64126: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (Bc_not_secret_b))

                    ; #10908: <==uncertain_firing== 44256 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #11960: <==uncertain_firing== 64126 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Pc_secret_b)))

                    ; #13304: <==negation-removal== 56816 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #13709: <==negation-removal== 35591 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))

                    ; #16745: <==negation-removal== 21996 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #20915: <==negation-removal== 44256 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Pd_secret_b)))

                    ; #23857: <==uncertain_firing== 57861 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_b))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #30917: <==negation-removal== 57861 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l2)))
                          (not (Bd_secret_b)))

                    ; #42428: <==negation-removal== 58933 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #42882: <==negation-removal== 56972 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Bc_secret_b)))

                    ; #55339: <==uncertain_firing== 56816 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #63656: <==uncertain_firing== 58933 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #80662: <==negation-removal== 64126 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_b)))
                          (not (Pc_secret_b)))

                    ; #85750: <==uncertain_firing== 21996 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_b)))

                    ; #86615: <==uncertain_firing== 35591 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_b)))

                    ; #90589: <==uncertain_firing== 56972 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_secret_b))))
                          (not (Bc_secret_b)))))

    (:action fib_d_b_l3
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #24483: <==closure== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Pa_not_secret_b))

                    ; #32071: <==closure== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Pc_not_secret_b))

                    ; #35172: <==closure== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Pd_not_secret_b))

                    ; #44413: origin
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (Bc_not_secret_b))

                    ; #50977: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Bb_not_secret_b))

                    ; #74022: <==closure== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (Pb_not_secret_b))

                    ; #84388: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (Ba_not_secret_b))

                    ; #98239: origin
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (Bd_not_secret_b))

                    ; #18065: <==negation-removal== 35172 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Bd_secret_b)))

                    ; #20344: <==uncertain_firing== 35172 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Bd_secret_b)))

                    ; #29015: <==uncertain_firing== 24483 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_b)))

                    ; #34731: <==uncertain_firing== 98239 (pos)
                    (when (and (and (not (Bd_secret_b))
                               (not (not_at_d_l3))
                               (not (Pd_secret_b))))
                          (not (Pd_secret_b)))

                    ; #38768: <==uncertain_firing== 32071 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_b)))

                    ; #39304: <==uncertain_firing== 50977 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Pb_secret_b)))

                    ; #45433: <==negation-removal== 98239 (pos)
                    (when (and (and (Pd_not_secret_b)
                               (at_d_l3)))
                          (not (Pd_secret_b)))

                    ; #45744: <==negation-removal== 32071 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Bc_secret_b)))

                    ; #54541: <==uncertain_firing== 74022 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_b))
                               (not (Pb_secret_b))))
                          (not (Bb_secret_b)))

                    ; #60393: <==negation-removal== 50977 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Pb_secret_b)))

                    ; #63421: <==uncertain_firing== 84388 (pos)
                    (when (and (and (not (Pa_secret_b))
                               (not (Ba_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_b)))

                    ; #66646: <==negation-removal== 74022 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_b)))
                          (not (Bb_secret_b)))

                    ; #71819: <==negation-removal== 84388 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Pa_secret_b)))

                    ; #86305: <==uncertain_firing== 44413 (pos)
                    (when (and (and (not (Pc_secret_b))
                               (not (Bc_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_b)))

                    ; #86983: <==negation-removal== 44413 (pos)
                    (when (and (and (Pc_not_secret_b)
                               (at_c_l3)))
                          (not (Pc_secret_b)))

                    ; #89233: <==negation-removal== 24483 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_b)))
                          (not (Ba_secret_b)))))

    (:action fib_d_c_l1
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c))
        :effect (and
                    ; #21721: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Bc_not_secret_c))

                    ; #28639: <==closure== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #35338: <==closure== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (Pc_not_secret_c))

                    ; #35774: <==closure== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #40238: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Bb_not_secret_c))

                    ; #51267: origin
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #55484: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #78575: <==closure== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (Pb_not_secret_c))

                    ; #21326: <==negation-removal== 35774 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #23430: <==negation-removal== 40238 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Pb_secret_c)))

                    ; #23788: <==uncertain_firing== 78575 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #31215: <==negation-removal== 55484 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #33992: <==uncertain_firing== 51267 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #36009: <==uncertain_firing== 35338 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_c)))

                    ; #41891: <==negation-removal== 51267 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #42198: <==uncertain_firing== 28639 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #46822: <==negation-removal== 78575 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l1)))
                          (not (Bb_secret_c)))

                    ; #53372: <==negation-removal== 28639 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #54929: <==negation-removal== 21721 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Pc_secret_c)))

                    ; #58470: <==uncertain_firing== 40238 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #68971: <==uncertain_firing== 21721 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_c)))

                    ; #79328: <==uncertain_firing== 55484 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_c)))

                    ; #81127: <==negation-removal== 35338 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l1)))
                          (not (Bc_secret_c)))

                    ; #82875: <==uncertain_firing== 35774 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_c)))))

    (:action fib_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c))
        :effect (and
                    ; #20932: <==closure== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Pb_not_secret_c))

                    ; #22530: <==closure== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #25389: origin
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #37997: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (Bb_not_secret_c))

                    ; #40002: <==closure== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #61078: <==closure== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Pc_not_secret_c))

                    ; #64596: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (Bc_not_secret_c))

                    ; #82666: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #12607: <==negation-removal== 61078 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Bc_secret_c)))

                    ; #14421: <==uncertain_firing== 22530 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_c)))

                    ; #18629: <==negation-removal== 37997 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Pb_secret_c)))

                    ; #19350: <==uncertain_firing== 82666 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_c)))

                    ; #19539: <==uncertain_firing== 61078 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Bc_secret_c)))

                    ; #19835: <==uncertain_firing== 20932 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #22779: <==negation-removal== 64596 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_c)))
                          (not (Pc_secret_c)))

                    ; #33575: <==uncertain_firing== 40002 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #44539: <==negation-removal== 25389 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))

                    ; #49112: <==negation-removal== 20932 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l2)))
                          (not (Bb_secret_c)))

                    ; #66319: <==uncertain_firing== 25389 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_secret_c))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #71147: <==uncertain_firing== 37997 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #80193: <==uncertain_firing== 64596 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (not_at_c_l2))
                               (not (Pc_secret_c))))
                          (not (Pc_secret_c)))

                    ; #81257: <==negation-removal== 82666 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #85472: <==negation-removal== 40002 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #88109: <==negation-removal== 22530 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))))

    (:action fib_d_c_l3
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l3)
                           (Bd_secret_c))
        :effect (and
                    ; #23364: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Ba_not_secret_c))

                    ; #27315: <==closure== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (Pa_not_secret_c))

                    ; #28621: origin
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Bc_not_secret_c))

                    ; #34360: <==closure== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Pd_not_secret_c))

                    ; #49455: origin
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (Bd_not_secret_c))

                    ; #50855: <==closure== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (Pc_not_secret_c))

                    ; #64510: <==closure== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Pb_not_secret_c))

                    ; #65322: origin
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (Bb_not_secret_c))

                    ; #11652: <==uncertain_firing== 23364 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_c)))

                    ; #12575: <==uncertain_firing== 34360 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Bd_secret_c)))

                    ; #16024: <==uncertain_firing== 64510 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Bb_secret_c)))

                    ; #20857: <==negation-removal== 65322 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Pb_secret_c)))

                    ; #21238: <==negation-removal== 28621 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Pc_secret_c)))

                    ; #27560: <==negation-removal== 27315 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Ba_secret_c)))

                    ; #28504: <==uncertain_firing== 49455 (pos)
                    (when (and (and (not (Pd_secret_c))
                               (not (not_at_d_l3))
                               (not (Bd_secret_c))))
                          (not (Pd_secret_c)))

                    ; #28896: <==uncertain_firing== 65322 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_secret_c))
                               (not (Bb_secret_c))))
                          (not (Pb_secret_c)))

                    ; #37415: <==negation-removal== 23364 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_c)))
                          (not (Pa_secret_c)))

                    ; #42102: <==uncertain_firing== 28621 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_c)))

                    ; #61044: <==negation-removal== 34360 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Bd_secret_c)))

                    ; #64342: <==uncertain_firing== 27315 (pos)
                    (when (and (and (not (Pa_secret_c))
                               (not (Ba_secret_c))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_c)))

                    ; #71464: <==uncertain_firing== 50855 (pos)
                    (when (and (and (not (Bc_secret_c))
                               (not (Pc_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_c)))

                    ; #72088: <==negation-removal== 64510 (pos)
                    (when (and (and (Pb_not_secret_c)
                               (at_b_l3)))
                          (not (Bb_secret_c)))

                    ; #83631: <==negation-removal== 50855 (pos)
                    (when (and (and (Pc_not_secret_c)
                               (at_c_l3)))
                          (not (Bc_secret_c)))

                    ; #85389: <==negation-removal== 49455 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_not_secret_c)))
                          (not (Pd_secret_c)))))

    (:action fib_d_d_l1
        :precondition (and (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #43957: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Bc_not_secret_d))

                    ; #46784: origin
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Bb_not_secret_d))

                    ; #50938: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Bd_not_secret_d))

                    ; #52942: <==closure== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (Pc_not_secret_d))

                    ; #57565: <==closure== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #62250: <==closure== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (Pb_not_secret_d))

                    ; #79619: <==closure== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (Pd_not_secret_d))

                    ; #89900: origin
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #18749: <==negation-removal== 57565 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #21341: <==negation-removal== 50938 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Pd_secret_d)))

                    ; #24190: <==negation-removal== 46784 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Pb_secret_d)))

                    ; #24608: <==negation-removal== 62250 (pos)
                    (when (and (and (Pb_not_secret_d)
                               (at_b_l1)))
                          (not (Bb_secret_d)))

                    ; #27306: <==uncertain_firing== 52942 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_secret_d)))

                    ; #46399: <==uncertain_firing== 50938 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #47498: <==negation-removal== 89900 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49995: <==uncertain_firing== 43957 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_secret_d)))

                    ; #50905: <==uncertain_firing== 62250 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #60235: <==uncertain_firing== 89900 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Pa_secret_d)))

                    ; #69518: <==uncertain_firing== 46784 (pos)
                    (when (and (and (not (Bb_secret_d))
                               (not (not_at_b_l1))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #72148: <==uncertain_firing== 79619 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #76301: <==uncertain_firing== 57565 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l1))))
                          (not (Ba_secret_d)))

                    ; #88647: <==negation-removal== 43957 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Pc_secret_d)))

                    ; #88790: <==negation-removal== 79619 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l1)))
                          (not (Bd_secret_d)))

                    ; #89648: <==negation-removal== 52942 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l1)))
                          (not (Bc_secret_d)))))

    (:action fib_d_d_l2
        :precondition (and (Bd_secret_d)
                           (at_d_l2)
                           (Pd_secret_d)
                           (initialized))
        :effect (and
                    ; #39786: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Bd_not_secret_d))

                    ; #42268: <==closure== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Pc_not_secret_d))

                    ; #57927: <==closure== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #59499: origin
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (Bc_not_secret_d))

                    ; #64213: <==closure== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #79163: origin
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #88170: <==closure== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (Pd_not_secret_d))

                    ; #88540: origin
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #17677: <==uncertain_firing== 39786 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #19212: <==negation-removal== 57927 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #20379: <==uncertain_firing== 59499 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Pc_secret_d)))

                    ; #20971: <==negation-removal== 79163 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #22336: <==negation-removal== 64213 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #29097: <==uncertain_firing== 57927 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))

                    ; #49405: <==negation-removal== 88170 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Bd_secret_d)))

                    ; #50511: <==uncertain_firing== 42268 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l2))))
                          (not (Bc_secret_d)))

                    ; #51964: <==negation-removal== 88540 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #58927: <==uncertain_firing== 64213 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Ba_secret_d)))

                    ; #61374: <==negation-removal== 39786 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l2)))
                          (not (Pd_secret_d)))

                    ; #62353: <==negation-removal== 42268 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Bc_secret_d)))

                    ; #67026: <==uncertain_firing== 88170 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_secret_d))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #69665: <==negation-removal== 59499 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_not_secret_d)))
                          (not (Pc_secret_d)))

                    ; #77435: <==uncertain_firing== 79163 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #87922: <==uncertain_firing== 88540 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l2))))
                          (not (Pa_secret_d)))))

    (:action fib_d_d_l3
        :precondition (and (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l3)
                           (initialized))
        :effect (and
                    ; #10052: origin
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Bd_not_secret_d))

                    ; #12660: <==closure== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (Pd_not_secret_d))

                    ; #23245: <==closure== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Pc_not_secret_d))

                    ; #47994: origin
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Ba_not_secret_d))

                    ; #55768: <==closure== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Pb_not_secret_d))

                    ; #82003: <==closure== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (Pa_not_secret_d))

                    ; #84630: origin
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (Bc_not_secret_d))

                    ; #87139: origin
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (Bb_not_secret_d))

                    ; #15123: <==negation-removal== 82003 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Ba_secret_d)))

                    ; #16328: <==uncertain_firing== 84630 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_secret_d)))

                    ; #19893: <==negation-removal== 10052 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Pd_secret_d)))

                    ; #27033: <==negation-removal== 55768 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Bb_secret_d)))

                    ; #34952: <==negation-removal== 23245 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Bc_secret_d)))

                    ; #40161: <==uncertain_firing== 87139 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Pb_secret_d)))

                    ; #46527: <==negation-removal== 47994 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_not_secret_d)))
                          (not (Pa_secret_d)))

                    ; #49324: <==uncertain_firing== 12660 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Bd_secret_d)))

                    ; #50690: <==uncertain_firing== 82003 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Ba_secret_d)))

                    ; #56480: <==uncertain_firing== 23245 (pos)
                    (when (and (and (not (Bc_secret_d))
                               (not (Pc_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_secret_d)))

                    ; #59267: <==negation-removal== 87139 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_not_secret_d)))
                          (not (Pb_secret_d)))

                    ; #60399: <==uncertain_firing== 47994 (pos)
                    (when (and (and (not (Ba_secret_d))
                               (not (Pa_secret_d))
                               (not (not_at_a_l3))))
                          (not (Pa_secret_d)))

                    ; #64199: <==negation-removal== 12660 (pos)
                    (when (and (and (Pd_not_secret_d)
                               (at_d_l3)))
                          (not (Bd_secret_d)))

                    ; #82397: <==uncertain_firing== 10052 (pos)
                    (when (and (and (not (Bd_secret_d))
                               (not (not_at_d_l3))
                               (not (Pd_secret_d))))
                          (not (Pd_secret_d)))

                    ; #84519: <==negation-removal== 84630 (pos)
                    (when (and (and (Pc_not_secret_d)
                               (at_c_l3)))
                          (not (Pc_secret_d)))

                    ; #85234: <==uncertain_firing== 55768 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_secret_d))
                               (not (Pb_secret_d))))
                          (not (Bb_secret_d)))))

    (:action initialize
        :precondition (and )
        :effect (and
                    ; #14341: <==closure== 37747 (pos)
                    (Pc_secret_c)

                    ; #29286: origin
                    (Ba_secret_a)

                    ; #37747: origin
                    (Bc_secret_c)

                    ; #38026: <==closure== 73152 (pos)
                    (Pd_secret_d)

                    ; #38433: origin
                    (initialized)

                    ; #52497: <==closure== 87053 (pos)
                    (Pb_secret_b)

                    ; #67828: <==closure== 29286 (pos)
                    (Pa_secret_a)

                    ; #73152: origin
                    (Bd_secret_d)

                    ; #87053: origin
                    (Bb_secret_b)

                    ; #26773: <==negation-removal== 87053 (pos)
                    (not (Pb_not_secret_b))

                    ; #27813: <==negation-removal== 37747 (pos)
                    (not (Pc_not_secret_c))

                    ; #42047: <==negation-removal== 29286 (pos)
                    (not (Pa_not_secret_a))

                    ; #43548: <==negation-removal== 14341 (pos)
                    (not (Bc_not_secret_c))

                    ; #47879: <==negation-removal== 38433 (pos)
                    (not (not_initialized))

                    ; #79595: <==negation-removal== 52497 (pos)
                    (not (Bb_not_secret_b))

                    ; #82606: <==negation-removal== 67828 (pos)
                    (not (Ba_not_secret_a))

                    ; #83909: <==negation-removal== 38026 (pos)
                    (not (Bd_not_secret_d))

                    ; #89045: <==negation-removal== 73152 (pos)
                    (not (Pd_not_secret_d))))

    (:action move_a_l1_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #13371: origin
                    (not_at_a_l1)

                    ; #87094: origin
                    (at_a_l1)

                    ; #13371: <==negation-removal== 87094 (pos)
                    (not (not_at_a_l1))

                    ; #87094: <==negation-removal== 13371 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_a_l1))
        :effect (and
                    ; #13371: origin
                    (not_at_a_l1)

                    ; #68791: origin
                    (at_a_l2)

                    ; #67068: <==negation-removal== 68791 (pos)
                    (not (not_at_a_l2))

                    ; #87094: <==negation-removal== 13371 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_a_l1))
        :effect (and
                    ; #13371: origin
                    (not_at_a_l1)

                    ; #46760: origin
                    (at_a_l3)

                    ; #69601: <==negation-removal== 46760 (pos)
                    (not (not_at_a_l3))

                    ; #87094: <==negation-removal== 13371 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (at_a_l2)
                           (connected_l2_l1)
                           (initialized))
        :effect (and
                    ; #67068: origin
                    (not_at_a_l2)

                    ; #87094: origin
                    (at_a_l1)

                    ; #13371: <==negation-removal== 87094 (pos)
                    (not (not_at_a_l1))

                    ; #68791: <==negation-removal== 67068 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (initialized)
                           (connected_l2_l2))
        :effect (and
                    ; #67068: origin
                    (not_at_a_l2)

                    ; #68791: origin
                    (at_a_l2)

                    ; #67068: <==negation-removal== 68791 (pos)
                    (not (not_at_a_l2))

                    ; #68791: <==negation-removal== 67068 (pos)
                    (not (at_a_l2))))

    (:action move_a_l2_l3
        :precondition (and (at_a_l2)
                           (connected_l2_l3)
                           (initialized))
        :effect (and
                    ; #46760: origin
                    (at_a_l3)

                    ; #67068: origin
                    (not_at_a_l2)

                    ; #68791: <==negation-removal== 67068 (pos)
                    (not (at_a_l2))

                    ; #69601: <==negation-removal== 46760 (pos)
                    (not (not_at_a_l3))))

    (:action move_a_l3_l1
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l1))
        :effect (and
                    ; #69601: origin
                    (not_at_a_l3)

                    ; #87094: origin
                    (at_a_l1)

                    ; #13371: <==negation-removal== 87094 (pos)
                    (not (not_at_a_l1))

                    ; #46760: <==negation-removal== 69601 (pos)
                    (not (at_a_l3))))

    (:action move_a_l3_l2
        :precondition (and (at_a_l3)
                           (connected_l3_l2)
                           (initialized))
        :effect (and
                    ; #68791: origin
                    (at_a_l2)

                    ; #69601: origin
                    (not_at_a_l3)

                    ; #46760: <==negation-removal== 69601 (pos)
                    (not (at_a_l3))

                    ; #67068: <==negation-removal== 68791 (pos)
                    (not (not_at_a_l2))))

    (:action move_a_l3_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (connected_l3_l3))
        :effect (and
                    ; #46760: origin
                    (at_a_l3)

                    ; #69601: origin
                    (not_at_a_l3)

                    ; #46760: <==negation-removal== 69601 (pos)
                    (not (at_a_l3))

                    ; #69601: <==negation-removal== 46760 (pos)
                    (not (not_at_a_l3))))

    (:action move_b_l1_l1
        :precondition (and (initialized)
                           (at_b_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #15431: origin
                    (not_at_b_l1)

                    ; #58833: origin
                    (at_b_l1)

                    ; #15431: <==negation-removal== 58833 (pos)
                    (not (not_at_b_l1))

                    ; #58833: <==negation-removal== 15431 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_b_l1))
        :effect (and
                    ; #15431: origin
                    (not_at_b_l1)

                    ; #28559: origin
                    (at_b_l2)

                    ; #23012: <==negation-removal== 28559 (pos)
                    (not (not_at_b_l2))

                    ; #58833: <==negation-removal== 15431 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_b_l1))
        :effect (and
                    ; #15431: origin
                    (not_at_b_l1)

                    ; #53271: origin
                    (at_b_l3)

                    ; #55996: <==negation-removal== 53271 (pos)
                    (not (not_at_b_l3))

                    ; #58833: <==negation-removal== 15431 (pos)
                    (not (at_b_l1))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (initialized)
                           (at_b_l2))
        :effect (and
                    ; #23012: origin
                    (not_at_b_l2)

                    ; #58833: origin
                    (at_b_l1)

                    ; #15431: <==negation-removal== 58833 (pos)
                    (not (not_at_b_l1))

                    ; #28559: <==negation-removal== 23012 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #23012: origin
                    (not_at_b_l2)

                    ; #28559: origin
                    (at_b_l2)

                    ; #23012: <==negation-removal== 28559 (pos)
                    (not (not_at_b_l2))

                    ; #28559: <==negation-removal== 23012 (pos)
                    (not (at_b_l2))))

    (:action move_b_l2_l3
        :precondition (and (initialized)
                           (at_b_l2)
                           (connected_l2_l3))
        :effect (and
                    ; #23012: origin
                    (not_at_b_l2)

                    ; #53271: origin
                    (at_b_l3)

                    ; #28559: <==negation-removal== 23012 (pos)
                    (not (at_b_l2))

                    ; #55996: <==negation-removal== 53271 (pos)
                    (not (not_at_b_l3))))

    (:action move_b_l3_l1
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #55996: origin
                    (not_at_b_l3)

                    ; #58833: origin
                    (at_b_l1)

                    ; #15431: <==negation-removal== 58833 (pos)
                    (not (not_at_b_l1))

                    ; #53271: <==negation-removal== 55996 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l2
        :precondition (and (connected_l3_l2)
                           (at_b_l3)
                           (initialized))
        :effect (and
                    ; #28559: origin
                    (at_b_l2)

                    ; #55996: origin
                    (not_at_b_l3)

                    ; #23012: <==negation-removal== 28559 (pos)
                    (not (not_at_b_l2))

                    ; #53271: <==negation-removal== 55996 (pos)
                    (not (at_b_l3))))

    (:action move_b_l3_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #53271: origin
                    (at_b_l3)

                    ; #55996: origin
                    (not_at_b_l3)

                    ; #53271: <==negation-removal== 55996 (pos)
                    (not (at_b_l3))

                    ; #55996: <==negation-removal== 53271 (pos)
                    (not (not_at_b_l3))))

    (:action move_c_l1_l1
        :precondition (and (initialized)
                           (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #30212: origin
                    (at_c_l1)

                    ; #63065: origin
                    (not_at_c_l1)

                    ; #30212: <==negation-removal== 63065 (pos)
                    (not (at_c_l1))

                    ; #63065: <==negation-removal== 30212 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_c_l1))
        :effect (and
                    ; #48945: origin
                    (at_c_l2)

                    ; #63065: origin
                    (not_at_c_l1)

                    ; #30212: <==negation-removal== 63065 (pos)
                    (not (at_c_l1))

                    ; #36907: <==negation-removal== 48945 (pos)
                    (not (not_at_c_l2))))

    (:action move_c_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_c_l1))
        :effect (and
                    ; #51826: origin
                    (at_c_l3)

                    ; #63065: origin
                    (not_at_c_l1)

                    ; #30212: <==negation-removal== 63065 (pos)
                    (not (at_c_l1))

                    ; #88793: <==negation-removal== 51826 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l2_l1
        :precondition (and (at_c_l2)
                           (initialized)
                           (connected_l2_l1))
        :effect (and
                    ; #30212: origin
                    (at_c_l1)

                    ; #36907: origin
                    (not_at_c_l2)

                    ; #48945: <==negation-removal== 36907 (pos)
                    (not (at_c_l2))

                    ; #63065: <==negation-removal== 30212 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l2_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (connected_l2_l2))
        :effect (and
                    ; #36907: origin
                    (not_at_c_l2)

                    ; #48945: origin
                    (at_c_l2)

                    ; #36907: <==negation-removal== 48945 (pos)
                    (not (not_at_c_l2))

                    ; #48945: <==negation-removal== 36907 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l3
        :precondition (and (at_c_l2)
                           (initialized)
                           (connected_l2_l3))
        :effect (and
                    ; #36907: origin
                    (not_at_c_l2)

                    ; #51826: origin
                    (at_c_l3)

                    ; #48945: <==negation-removal== 36907 (pos)
                    (not (at_c_l2))

                    ; #88793: <==negation-removal== 51826 (pos)
                    (not (not_at_c_l3))))

    (:action move_c_l3_l1
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #30212: origin
                    (at_c_l1)

                    ; #88793: origin
                    (not_at_c_l3)

                    ; #51826: <==negation-removal== 88793 (pos)
                    (not (at_c_l3))

                    ; #63065: <==negation-removal== 30212 (pos)
                    (not (not_at_c_l1))))

    (:action move_c_l3_l2
        :precondition (and (connected_l3_l2)
                           (at_c_l3)
                           (initialized))
        :effect (and
                    ; #48945: origin
                    (at_c_l2)

                    ; #88793: origin
                    (not_at_c_l3)

                    ; #36907: <==negation-removal== 48945 (pos)
                    (not (not_at_c_l2))

                    ; #51826: <==negation-removal== 88793 (pos)
                    (not (at_c_l3))))

    (:action move_c_l3_l3
        :precondition (and (initialized)
                           (at_c_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #51826: origin
                    (at_c_l3)

                    ; #88793: origin
                    (not_at_c_l3)

                    ; #51826: <==negation-removal== 88793 (pos)
                    (not (at_c_l3))

                    ; #88793: <==negation-removal== 51826 (pos)
                    (not (not_at_c_l3))))

    (:action move_d_l1_l1
        :precondition (and (initialized)
                           (at_d_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #28237: origin
                    (not_at_d_l1)

                    ; #83999: origin
                    (at_d_l1)

                    ; #28237: <==negation-removal== 83999 (pos)
                    (not (not_at_d_l1))

                    ; #83999: <==negation-removal== 28237 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (initialized)
                           (connected_l1_l2)
                           (at_d_l1))
        :effect (and
                    ; #28237: origin
                    (not_at_d_l1)

                    ; #45529: origin
                    (at_d_l2)

                    ; #74080: <==negation-removal== 45529 (pos)
                    (not (not_at_d_l2))

                    ; #83999: <==negation-removal== 28237 (pos)
                    (not (at_d_l1))))

    (:action move_d_l1_l3
        :precondition (and (connected_l1_l3)
                           (initialized)
                           (at_d_l1))
        :effect (and
                    ; #28237: origin
                    (not_at_d_l1)

                    ; #90712: origin
                    (at_d_l3)

                    ; #32489: <==negation-removal== 90712 (pos)
                    (not (not_at_d_l3))

                    ; #83999: <==negation-removal== 28237 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (initialized)
                           (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #74080: origin
                    (not_at_d_l2)

                    ; #83999: origin
                    (at_d_l1)

                    ; #28237: <==negation-removal== 83999 (pos)
                    (not (not_at_d_l1))

                    ; #45529: <==negation-removal== 74080 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (initialized)
                           (at_d_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #45529: origin
                    (at_d_l2)

                    ; #74080: origin
                    (not_at_d_l2)

                    ; #45529: <==negation-removal== 74080 (pos)
                    (not (at_d_l2))

                    ; #74080: <==negation-removal== 45529 (pos)
                    (not (not_at_d_l2))))

    (:action move_d_l2_l3
        :precondition (and (initialized)
                           (connected_l2_l3)
                           (at_d_l2))
        :effect (and
                    ; #74080: origin
                    (not_at_d_l2)

                    ; #90712: origin
                    (at_d_l3)

                    ; #32489: <==negation-removal== 90712 (pos)
                    (not (not_at_d_l3))

                    ; #45529: <==negation-removal== 74080 (pos)
                    (not (at_d_l2))))

    (:action move_d_l3_l1
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l1))
        :effect (and
                    ; #32489: origin
                    (not_at_d_l3)

                    ; #83999: origin
                    (at_d_l1)

                    ; #28237: <==negation-removal== 83999 (pos)
                    (not (not_at_d_l1))

                    ; #90712: <==negation-removal== 32489 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l2
        :precondition (and (connected_l3_l2)
                           (at_d_l3)
                           (initialized))
        :effect (and
                    ; #32489: origin
                    (not_at_d_l3)

                    ; #45529: origin
                    (at_d_l2)

                    ; #74080: <==negation-removal== 45529 (pos)
                    (not (not_at_d_l2))

                    ; #90712: <==negation-removal== 32489 (pos)
                    (not (at_d_l3))))

    (:action move_d_l3_l3
        :precondition (and (initialized)
                           (at_d_l3)
                           (connected_l3_l3))
        :effect (and
                    ; #32489: origin
                    (not_at_d_l3)

                    ; #90712: origin
                    (at_d_l3)

                    ; #32489: <==negation-removal== 90712 (pos)
                    (not (not_at_d_l3))

                    ; #90712: <==negation-removal== 32489 (pos)
                    (not (at_d_l3))))

    (:action share_a_a_l1
        :precondition (and (Pa_secret_a)
                           (initialized)
                           (Ba_secret_a)
                           (at_a_l1))
        :effect (and
                    ; #15557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #37025: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #54858: <==closure== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #67275: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #69361: <==closure== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #76696: <==closure== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #80783: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #81413: <==closure== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #15117: <==negation-removal== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17064: <==uncertain_firing== 15557 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20750: <==uncertain_firing== 37025 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23488: <==uncertain_firing== 76696 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #28175: <==negation-removal== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #41250: <==negation-removal== 76696 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #49749: <==uncertain_firing== 80783 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #53597: <==uncertain_firing== 69361 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #56986: <==uncertain_firing== 81413 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #59336: <==negation-removal== 54858 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59936: <==negation-removal== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #69249: <==uncertain_firing== 54858 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #74763: <==negation-removal== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #86611: <==negation-removal== 69361 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #89044: <==uncertain_firing== 67275 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #94317: <==negation-removal== 81413 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Pa_secret_a)
                           (at_a_l2)
                           (Ba_secret_a)
                           (initialized))
        :effect (and
                    ; #12747: <==closure== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #15882: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #26321: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #38906: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #51154: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #56407: <==closure== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #75853: <==closure== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #78659: <==closure== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14037: <==uncertain_firing== 75853 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #25574: <==negation-removal== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #30581: <==negation-removal== 12747 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #30759: <==uncertain_firing== 12747 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #38443: <==negation-removal== 75853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42164: <==uncertain_firing== 56407 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #44610: <==negation-removal== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #46050: <==negation-removal== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #47323: <==uncertain_firing== 38906 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #49877: <==uncertain_firing== 26321 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #55577: <==negation-removal== 78659 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #61512: <==uncertain_firing== 51154 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #61646: <==uncertain_firing== 78659 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #85199: <==negation-removal== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #85252: <==negation-removal== 56407 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #87158: <==uncertain_firing== 15882 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_a_a_l3
        :precondition (and (at_a_l3)
                           (Pa_secret_a)
                           (initialized)
                           (Ba_secret_a))
        :effect (and
                    ; #28471: <==closure== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #32051: <==closure== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #39384: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #42122: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #45296: <==closure== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #75002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #84113: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Bc_secret_a))

                    ; #86930: <==closure== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #13150: <==uncertain_firing== 32051 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #14889: <==uncertain_firing== 86930 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #18421: <==negation-removal== 28471 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #22633: <==negation-removal== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #29092: <==negation-removal== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #35208: <==uncertain_firing== 45296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #36505: <==negation-removal== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #40334: <==negation-removal== 45296 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Bc_not_secret_a)))

                    ; #47456: <==uncertain_firing== 42122 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #56939: <==uncertain_firing== 84113 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #61099: <==negation-removal== 32051 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #74778: <==uncertain_firing== 75002 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78338: <==negation-removal== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #80916: <==uncertain_firing== 28471 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #86518: <==uncertain_firing== 39384 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #87186: <==negation-removal== 86930 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (Pa_secret_b)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #23136: <==closure== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #28211: <==closure== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #50834: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #51088: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #62098: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67239: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #87913: <==closure== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #88622: <==closure== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #14618: <==uncertain_firing== 87913 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25503: <==negation-removal== 88622 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #27553: <==negation-removal== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #34039: <==negation-removal== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #38246: <==negation-removal== 87913 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46221: <==uncertain_firing== 88622 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #47772: <==uncertain_firing== 28211 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #54829: <==negation-removal== 23136 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #64959: <==uncertain_firing== 50834 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #70160: <==negation-removal== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #71064: <==uncertain_firing== 62098 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #73677: <==uncertain_firing== 23136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #76096: <==negation-removal== 28211 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #76399: <==uncertain_firing== 67239 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #79565: <==negation-removal== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87329: <==uncertain_firing== 51088 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_b)
                           (Ba_secret_b)
                           (initialized))
        :effect (and
                    ; #45583: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #61150: <==closure== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #62152: <==closure== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #66761: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #73808: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #74727: <==closure== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #79284: <==closure== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #82338: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #18818: <==negation-removal== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #19173: <==negation-removal== 74727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20984: <==negation-removal== 79284 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #26657: <==uncertain_firing== 66761 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #26988: <==uncertain_firing== 45583 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #32748: <==negation-removal== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #43045: <==uncertain_firing== 82338 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49680: <==uncertain_firing== 74727 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #58021: <==uncertain_firing== 79284 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #65338: <==uncertain_firing== 73808 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #65665: <==uncertain_firing== 61150 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #73768: <==uncertain_firing== 62152 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #74116: <==negation-removal== 62152 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #76143: <==negation-removal== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #77824: <==negation-removal== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #82648: <==negation-removal== 61150 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_a_b_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (Pa_secret_b)
                           (Ba_secret_b))
        :effect (and
                    ; #14196: <==closure== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #51611: <==closure== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #55612: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #66483: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67885: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #74197: <==closure== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #90078: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #90111: <==closure== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #23510: <==uncertain_firing== 55612 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #25377: <==uncertain_firing== 74197 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #42919: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #45818: <==negation-removal== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #48952: <==negation-removal== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #51249: <==uncertain_firing== 90111 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #53207: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #60302: <==uncertain_firing== 67885 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #62295: <==negation-removal== 74197 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #73623: <==uncertain_firing== 14196 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #75817: <==negation-removal== 90111 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83726: <==negation-removal== 14196 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #84994: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #88840: <==negation-removal== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #91639: <==negation-removal== 51611 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #95475: <==negation-removal== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (initialized)
                           (at_a_l1)
                           (Ba_secret_c)
                           (Pa_secret_c))
        :effect (and
                    ; #14509: <==closure== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #26326: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #37543: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #45175: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #54981: <==closure== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #65454: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #91179: <==closure== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #11271: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #12597: <==negation-removal== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #22304: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29000: <==negation-removal== 91179 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #48430: <==negation-removal== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #49635: <==uncertain_firing== 65454 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #51882: <==uncertain_firing== 91179 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #54323: <==negation-removal== 26326 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #55676: <==uncertain_firing== 54981 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #58133: <==uncertain_firing== 14509 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #62419: <==uncertain_firing== 37543 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #73894: <==negation-removal== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #78010: <==uncertain_firing== 45175 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #84149: <==negation-removal== 54981 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86828: <==uncertain_firing== 26326 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #90813: <==negation-removal== 14509 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_c)
                           (Ba_secret_c)
                           (initialized))
        :effect (and
                    ; #13464: <==closure== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26050: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #36832: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #41593: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #42842: <==closure== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44828: <==closure== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #64486: <==closure== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #86406: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #20839: <==uncertain_firing== 44828 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22237: <==uncertain_firing== 64486 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22337: <==uncertain_firing== 26050 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #26080: <==uncertain_firing== 86406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26496: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #30945: <==negation-removal== 13464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31694: <==uncertain_firing== 41593 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53687: <==negation-removal== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #56310: <==uncertain_firing== 13464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #65798: <==negation-removal== 64486 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #67129: <==uncertain_firing== 36832 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #71430: <==negation-removal== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #79659: <==negation-removal== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #88157: <==negation-removal== 42842 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88891: <==negation-removal== 44828 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #88925: <==negation-removal== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))))

    (:action share_a_c_l3
        :precondition (and (at_a_l3)
                           (initialized)
                           (Pa_secret_c)
                           (Ba_secret_c))
        :effect (and
                    ; #20991: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #23326: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #39853: <==closure== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #63074: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #67103: <==closure== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #69986: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #77592: <==closure== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #79720: <==closure== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18707: <==negation-removal== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #19301: <==negation-removal== 67103 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #19705: <==uncertain_firing== 79720 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #25450: <==uncertain_firing== 69986 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #27861: <==uncertain_firing== 20991 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #41546: <==uncertain_firing== 77592 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #48272: <==negation-removal== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #54903: <==uncertain_firing== 63074 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #56434: <==uncertain_firing== 39853 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #72996: <==uncertain_firing== 23326 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #75129: <==negation-removal== 79720 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #77446: <==negation-removal== 77592 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #81435: <==uncertain_firing== 67103 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84673: <==negation-removal== 39853 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #87308: <==negation-removal== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #89560: <==negation-removal== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (Ba_secret_d)
                           (Pa_secret_d)
                           (at_a_l1)
                           (initialized))
        :effect (and
                    ; #10318: <==closure== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #16494: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #17088: <==closure== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #22481: <==closure== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #63823: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #66565: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #82442: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #87977: <==closure== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #12015: <==uncertain_firing== 82442 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #25348: <==negation-removal== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #26030: <==uncertain_firing== 22481 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #38601: <==negation-removal== 87977 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #43143: <==uncertain_firing== 10318 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #50983: <==negation-removal== 17088 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #51900: <==negation-removal== 10318 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #52010: <==negation-removal== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #53833: <==uncertain_firing== 17088 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #60754: <==uncertain_firing== 63823 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #65702: <==negation-removal== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #69526: <==uncertain_firing== 87977 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #74354: <==uncertain_firing== 16494 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #79891: <==negation-removal== 22481 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #83159: <==negation-removal== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #86290: <==uncertain_firing== 66565 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_d)
                           (initialized)
                           (Ba_secret_d))
        :effect (and
                    ; #12706: <==closure== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #20327: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #24865: <==closure== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #38153: <==closure== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #43150: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79662: <==closure== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #82987: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #91897: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13954: <==negation-removal== 24865 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #17497: <==uncertain_firing== 20327 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19245: <==negation-removal== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #20284: <==uncertain_firing== 79662 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #27561: <==uncertain_firing== 12706 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #27977: <==uncertain_firing== 43150 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38804: <==uncertain_firing== 24865 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #55967: <==negation-removal== 38153 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #58773: <==negation-removal== 79662 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #72336: <==negation-removal== 12706 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #74133: <==uncertain_firing== 91897 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #76123: <==negation-removal== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #79247: <==uncertain_firing== 82987 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #79702: <==uncertain_firing== 38153 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84438: <==negation-removal== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #85901: <==negation-removal== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))))

    (:action share_a_d_l3
        :precondition (and (at_a_l3)
                           (Ba_secret_d)
                           (Pa_secret_d)
                           (initialized))
        :effect (and
                    ; #12606: <==closure== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14373: <==closure== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #19014: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Bc_secret_d))

                    ; #32357: <==closure== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Pc_secret_d))

                    ; #37296: <==closure== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #58179: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #61331: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #92585: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13629: <==uncertain_firing== 12606 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #15619: <==uncertain_firing== 37296 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #28402: <==negation-removal== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #29181: <==uncertain_firing== 92585 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36103: <==uncertain_firing== 14373 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #37704: <==negation-removal== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #41372: <==negation-removal== 14373 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #47536: <==negation-removal== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #48902: <==uncertain_firing== 19014 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #65295: <==uncertain_firing== 61331 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #68344: <==negation-removal== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Pc_not_secret_d)))

                    ; #70637: <==negation-removal== 12606 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #71707: <==negation-removal== 37296 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #73618: <==negation-removal== 32357 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Bc_not_secret_d)))

                    ; #77467: <==uncertain_firing== 32357 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #81703: <==uncertain_firing== 58179 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l1)
                           (initialized))
        :effect (and
                    ; #15557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #37025: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #54858: <==closure== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #67275: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #69361: <==closure== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #76696: <==closure== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #80783: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #81413: <==closure== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #15117: <==negation-removal== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17064: <==uncertain_firing== 15557 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20750: <==uncertain_firing== 37025 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23488: <==uncertain_firing== 76696 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #28175: <==negation-removal== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #41250: <==negation-removal== 76696 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #49749: <==uncertain_firing== 80783 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #53597: <==uncertain_firing== 69361 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #56986: <==uncertain_firing== 81413 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #59336: <==negation-removal== 54858 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59936: <==negation-removal== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #69249: <==uncertain_firing== 54858 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #74763: <==negation-removal== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #86611: <==negation-removal== 69361 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #89044: <==uncertain_firing== 67275 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #94317: <==negation-removal== 81413 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Pb_secret_a)
                           (at_b_l2)
                           (Bb_secret_a)
                           (initialized))
        :effect (and
                    ; #12747: <==closure== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #15882: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #26321: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #38906: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #51154: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #56407: <==closure== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #75853: <==closure== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #78659: <==closure== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14037: <==uncertain_firing== 75853 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #25574: <==negation-removal== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #30581: <==negation-removal== 12747 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #30759: <==uncertain_firing== 12747 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #38443: <==negation-removal== 75853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42164: <==uncertain_firing== 56407 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #44610: <==negation-removal== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #46050: <==negation-removal== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #47323: <==uncertain_firing== 38906 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #49877: <==uncertain_firing== 26321 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #55577: <==negation-removal== 78659 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #61512: <==uncertain_firing== 51154 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #61646: <==uncertain_firing== 78659 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #85199: <==negation-removal== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #85252: <==negation-removal== 56407 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #87158: <==uncertain_firing== 15882 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_b_a_l3
        :precondition (and (Pb_secret_a)
                           (at_b_l3)
                           (Bb_secret_a)
                           (initialized))
        :effect (and
                    ; #28471: <==closure== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #32051: <==closure== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #39384: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #42122: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #45296: <==closure== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #75002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #84113: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Bc_secret_a))

                    ; #86930: <==closure== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #13150: <==uncertain_firing== 32051 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #14889: <==uncertain_firing== 86930 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #18421: <==negation-removal== 28471 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #22633: <==negation-removal== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #29092: <==negation-removal== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #35208: <==uncertain_firing== 45296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #36505: <==negation-removal== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #40334: <==negation-removal== 45296 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Bc_not_secret_a)))

                    ; #47456: <==uncertain_firing== 42122 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #56939: <==uncertain_firing== 84113 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #61099: <==negation-removal== 32051 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #74778: <==uncertain_firing== 75002 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78338: <==negation-removal== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #80916: <==uncertain_firing== 28471 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #86518: <==uncertain_firing== 39384 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #87186: <==negation-removal== 86930 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (initialized)
                           (Bb_secret_b)
                           (at_b_l1)
                           (Pb_secret_b))
        :effect (and
                    ; #23136: <==closure== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #28211: <==closure== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #50834: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #51088: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #62098: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67239: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #87913: <==closure== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #88622: <==closure== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #14618: <==uncertain_firing== 87913 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25503: <==negation-removal== 88622 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #27553: <==negation-removal== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #34039: <==negation-removal== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #38246: <==negation-removal== 87913 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46221: <==uncertain_firing== 88622 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #47772: <==uncertain_firing== 28211 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #54829: <==negation-removal== 23136 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #64959: <==uncertain_firing== 50834 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #70160: <==negation-removal== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #71064: <==uncertain_firing== 62098 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #73677: <==uncertain_firing== 23136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #76096: <==negation-removal== 28211 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #76399: <==uncertain_firing== 67239 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #79565: <==negation-removal== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87329: <==uncertain_firing== 51088 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #45583: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #61150: <==closure== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #62152: <==closure== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #66761: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #73808: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #74727: <==closure== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #79284: <==closure== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #82338: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #18818: <==negation-removal== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #19173: <==negation-removal== 74727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20984: <==negation-removal== 79284 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #26657: <==uncertain_firing== 66761 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #26988: <==uncertain_firing== 45583 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #32748: <==negation-removal== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #43045: <==uncertain_firing== 82338 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49680: <==uncertain_firing== 74727 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #58021: <==uncertain_firing== 79284 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #65338: <==uncertain_firing== 73808 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #65665: <==uncertain_firing== 61150 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #73768: <==uncertain_firing== 62152 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #74116: <==negation-removal== 62152 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #76143: <==negation-removal== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #77824: <==negation-removal== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #82648: <==negation-removal== 61150 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_b_b_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Bb_secret_b)
                           (Pb_secret_b))
        :effect (and
                    ; #14196: <==closure== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #51611: <==closure== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #55612: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #66483: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67885: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #74197: <==closure== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #90078: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #90111: <==closure== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #23510: <==uncertain_firing== 55612 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #25377: <==uncertain_firing== 74197 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #42919: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #45818: <==negation-removal== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #48952: <==negation-removal== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #51249: <==uncertain_firing== 90111 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #53207: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #60302: <==uncertain_firing== 67885 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #62295: <==negation-removal== 74197 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #73623: <==uncertain_firing== 14196 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #75817: <==negation-removal== 90111 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83726: <==negation-removal== 14196 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #84994: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #88840: <==negation-removal== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #91639: <==negation-removal== 51611 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #95475: <==negation-removal== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (initialized)
                           (Pb_secret_c)
                           (at_b_l1)
                           (Bb_secret_c))
        :effect (and
                    ; #14509: <==closure== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #26326: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #37543: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #45175: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #54981: <==closure== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #65454: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #91179: <==closure== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #11271: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #12597: <==negation-removal== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #22304: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29000: <==negation-removal== 91179 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #48430: <==negation-removal== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #49635: <==uncertain_firing== 65454 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #51882: <==uncertain_firing== 91179 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #54323: <==negation-removal== 26326 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #55676: <==uncertain_firing== 54981 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #58133: <==uncertain_firing== 14509 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #62419: <==uncertain_firing== 37543 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #73894: <==negation-removal== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #78010: <==uncertain_firing== 45175 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #84149: <==negation-removal== 54981 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86828: <==uncertain_firing== 26326 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #90813: <==negation-removal== 14509 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (initialized)
                           (at_b_l2)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #13464: <==closure== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26050: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #36832: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #41593: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #42842: <==closure== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44828: <==closure== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #64486: <==closure== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #86406: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #20839: <==uncertain_firing== 44828 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22237: <==uncertain_firing== 64486 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22337: <==uncertain_firing== 26050 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #26080: <==uncertain_firing== 86406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26496: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #30945: <==negation-removal== 13464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31694: <==uncertain_firing== 41593 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53687: <==negation-removal== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #56310: <==uncertain_firing== 13464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #65798: <==negation-removal== 64486 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #67129: <==uncertain_firing== 36832 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #71430: <==negation-removal== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #79659: <==negation-removal== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #88157: <==negation-removal== 42842 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88891: <==negation-removal== 44828 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #88925: <==negation-removal== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))))

    (:action share_b_c_l3
        :precondition (and (initialized)
                           (at_b_l3)
                           (Pb_secret_c)
                           (Bb_secret_c))
        :effect (and
                    ; #20991: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #23326: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #39853: <==closure== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #63074: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #67103: <==closure== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #69986: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #77592: <==closure== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #79720: <==closure== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18707: <==negation-removal== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #19301: <==negation-removal== 67103 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #19705: <==uncertain_firing== 79720 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #25450: <==uncertain_firing== 69986 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #27861: <==uncertain_firing== 20991 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #41546: <==uncertain_firing== 77592 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #48272: <==negation-removal== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #54903: <==uncertain_firing== 63074 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #56434: <==uncertain_firing== 39853 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #72996: <==uncertain_firing== 23326 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #75129: <==negation-removal== 79720 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #77446: <==negation-removal== 77592 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #81435: <==uncertain_firing== 67103 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84673: <==negation-removal== 39853 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #87308: <==negation-removal== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #89560: <==negation-removal== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Bb_secret_d)
                           (at_b_l1)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #10318: <==closure== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #16494: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #17088: <==closure== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #22481: <==closure== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #63823: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #66565: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #82442: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #87977: <==closure== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #12015: <==uncertain_firing== 82442 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #25348: <==negation-removal== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #26030: <==uncertain_firing== 22481 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #38601: <==negation-removal== 87977 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #43143: <==uncertain_firing== 10318 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #50983: <==negation-removal== 17088 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #51900: <==negation-removal== 10318 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #52010: <==negation-removal== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #53833: <==uncertain_firing== 17088 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #60754: <==uncertain_firing== 63823 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #65702: <==negation-removal== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #69526: <==uncertain_firing== 87977 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #74354: <==uncertain_firing== 16494 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #79891: <==negation-removal== 22481 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #83159: <==negation-removal== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #86290: <==uncertain_firing== 66565 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Bb_secret_d)
                           (at_b_l2)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #12706: <==closure== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #20327: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #24865: <==closure== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #38153: <==closure== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #43150: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79662: <==closure== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #82987: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #91897: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13954: <==negation-removal== 24865 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #17497: <==uncertain_firing== 20327 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19245: <==negation-removal== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #20284: <==uncertain_firing== 79662 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #27561: <==uncertain_firing== 12706 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #27977: <==uncertain_firing== 43150 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38804: <==uncertain_firing== 24865 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #55967: <==negation-removal== 38153 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #58773: <==negation-removal== 79662 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #72336: <==negation-removal== 12706 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #74133: <==uncertain_firing== 91897 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #76123: <==negation-removal== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #79247: <==uncertain_firing== 82987 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #79702: <==uncertain_firing== 38153 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84438: <==negation-removal== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #85901: <==negation-removal== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))))

    (:action share_b_d_l3
        :precondition (and (Bb_secret_d)
                           (at_b_l3)
                           (initialized)
                           (Pb_secret_d))
        :effect (and
                    ; #12606: <==closure== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14373: <==closure== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #19014: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Bc_secret_d))

                    ; #32357: <==closure== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Pc_secret_d))

                    ; #37296: <==closure== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #58179: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #61331: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #92585: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13629: <==uncertain_firing== 12606 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #15619: <==uncertain_firing== 37296 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #28402: <==negation-removal== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #29181: <==uncertain_firing== 92585 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36103: <==uncertain_firing== 14373 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #37704: <==negation-removal== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #41372: <==negation-removal== 14373 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #47536: <==negation-removal== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #48902: <==uncertain_firing== 19014 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #65295: <==uncertain_firing== 61331 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #68344: <==negation-removal== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Pc_not_secret_d)))

                    ; #70637: <==negation-removal== 12606 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #71707: <==negation-removal== 37296 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #73618: <==negation-removal== 32357 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Bc_not_secret_d)))

                    ; #77467: <==uncertain_firing== 32357 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #81703: <==uncertain_firing== 58179 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Pc_secret_a)
                           (initialized)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #15557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #37025: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #54858: <==closure== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #67275: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #69361: <==closure== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #76696: <==closure== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #80783: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #81413: <==closure== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #15117: <==negation-removal== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17064: <==uncertain_firing== 15557 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20750: <==uncertain_firing== 37025 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23488: <==uncertain_firing== 76696 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #28175: <==negation-removal== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #41250: <==negation-removal== 76696 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #49749: <==uncertain_firing== 80783 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #53597: <==uncertain_firing== 69361 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #56986: <==uncertain_firing== 81413 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #59336: <==negation-removal== 54858 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59936: <==negation-removal== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #69249: <==uncertain_firing== 54858 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #74763: <==negation-removal== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #86611: <==negation-removal== 69361 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #89044: <==uncertain_firing== 67275 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #94317: <==negation-removal== 81413 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_a)
                           (initialized)
                           (Bc_secret_a))
        :effect (and
                    ; #12747: <==closure== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #15882: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #26321: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #38906: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #51154: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #56407: <==closure== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #75853: <==closure== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #78659: <==closure== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14037: <==uncertain_firing== 75853 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #25574: <==negation-removal== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #30581: <==negation-removal== 12747 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #30759: <==uncertain_firing== 12747 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #38443: <==negation-removal== 75853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42164: <==uncertain_firing== 56407 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #44610: <==negation-removal== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #46050: <==negation-removal== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #47323: <==uncertain_firing== 38906 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #49877: <==uncertain_firing== 26321 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #55577: <==negation-removal== 78659 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #61512: <==uncertain_firing== 51154 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #61646: <==uncertain_firing== 78659 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #85199: <==negation-removal== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #85252: <==negation-removal== 56407 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #87158: <==uncertain_firing== 15882 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_c_a_l3
        :precondition (and (Pc_secret_a)
                           (initialized)
                           (at_c_l3)
                           (Bc_secret_a))
        :effect (and
                    ; #28471: <==closure== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #32051: <==closure== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #39384: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #42122: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #45296: <==closure== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #75002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #84113: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Bc_secret_a))

                    ; #86930: <==closure== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #13150: <==uncertain_firing== 32051 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #14889: <==uncertain_firing== 86930 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #18421: <==negation-removal== 28471 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #22633: <==negation-removal== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #29092: <==negation-removal== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #35208: <==uncertain_firing== 45296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #36505: <==negation-removal== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #40334: <==negation-removal== 45296 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Bc_not_secret_a)))

                    ; #47456: <==uncertain_firing== 42122 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #56939: <==uncertain_firing== 84113 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #61099: <==negation-removal== 32051 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #74778: <==uncertain_firing== 75002 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78338: <==negation-removal== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #80916: <==uncertain_firing== 28471 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #86518: <==uncertain_firing== 39384 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #87186: <==negation-removal== 86930 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b)
                           (at_c_l1))
        :effect (and
                    ; #23136: <==closure== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #28211: <==closure== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #50834: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #51088: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #62098: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67239: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #87913: <==closure== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #88622: <==closure== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #14618: <==uncertain_firing== 87913 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25503: <==negation-removal== 88622 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #27553: <==negation-removal== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #34039: <==negation-removal== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #38246: <==negation-removal== 87913 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46221: <==uncertain_firing== 88622 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #47772: <==uncertain_firing== 28211 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #54829: <==negation-removal== 23136 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #64959: <==uncertain_firing== 50834 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #70160: <==negation-removal== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #71064: <==uncertain_firing== 62098 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #73677: <==uncertain_firing== 23136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #76096: <==negation-removal== 28211 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #76399: <==uncertain_firing== 67239 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #79565: <==negation-removal== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87329: <==uncertain_firing== 51088 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b))
        :effect (and
                    ; #45583: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #61150: <==closure== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #62152: <==closure== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #66761: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #73808: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #74727: <==closure== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #79284: <==closure== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #82338: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #18818: <==negation-removal== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #19173: <==negation-removal== 74727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20984: <==negation-removal== 79284 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #26657: <==uncertain_firing== 66761 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #26988: <==uncertain_firing== 45583 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #32748: <==negation-removal== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #43045: <==uncertain_firing== 82338 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49680: <==uncertain_firing== 74727 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #58021: <==uncertain_firing== 79284 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #65338: <==uncertain_firing== 73808 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #65665: <==uncertain_firing== 61150 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #73768: <==uncertain_firing== 62152 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #74116: <==negation-removal== 62152 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #76143: <==negation-removal== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #77824: <==negation-removal== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #82648: <==negation-removal== 61150 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_c_b_l3
        :precondition (and (Pc_secret_b)
                           (initialized)
                           (Bc_secret_b)
                           (at_c_l3))
        :effect (and
                    ; #14196: <==closure== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #51611: <==closure== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #55612: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #66483: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67885: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #74197: <==closure== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #90078: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #90111: <==closure== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #23510: <==uncertain_firing== 55612 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #25377: <==uncertain_firing== 74197 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #42919: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #45818: <==negation-removal== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #48952: <==negation-removal== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #51249: <==uncertain_firing== 90111 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #53207: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #60302: <==uncertain_firing== 67885 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #62295: <==negation-removal== 74197 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #73623: <==uncertain_firing== 14196 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #75817: <==negation-removal== 90111 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83726: <==negation-removal== 14196 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #84994: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #88840: <==negation-removal== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #91639: <==negation-removal== 51611 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #95475: <==negation-removal== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l1))
        :effect (and
                    ; #14509: <==closure== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #26326: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #37543: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #45175: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #54981: <==closure== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #65454: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #91179: <==closure== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #11271: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #12597: <==negation-removal== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #22304: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29000: <==negation-removal== 91179 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #48430: <==negation-removal== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #49635: <==uncertain_firing== 65454 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #51882: <==uncertain_firing== 91179 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #54323: <==negation-removal== 26326 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #55676: <==uncertain_firing== 54981 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #58133: <==uncertain_firing== 14509 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #62419: <==uncertain_firing== 37543 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #73894: <==negation-removal== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #78010: <==uncertain_firing== 45175 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #84149: <==negation-removal== 54981 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86828: <==uncertain_firing== 26326 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #90813: <==negation-removal== 14509 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (at_c_l2)
                           (initialized)
                           (Pc_secret_c)
                           (Bc_secret_c))
        :effect (and
                    ; #13464: <==closure== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26050: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #36832: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #41593: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #42842: <==closure== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44828: <==closure== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #64486: <==closure== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #86406: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #20839: <==uncertain_firing== 44828 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22237: <==uncertain_firing== 64486 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22337: <==uncertain_firing== 26050 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #26080: <==uncertain_firing== 86406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26496: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #30945: <==negation-removal== 13464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31694: <==uncertain_firing== 41593 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53687: <==negation-removal== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #56310: <==uncertain_firing== 13464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #65798: <==negation-removal== 64486 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #67129: <==uncertain_firing== 36832 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #71430: <==negation-removal== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #79659: <==negation-removal== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #88157: <==negation-removal== 42842 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88891: <==negation-removal== 44828 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #88925: <==negation-removal== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))))

    (:action share_c_c_l3
        :precondition (and (Bc_secret_c)
                           (initialized)
                           (Pc_secret_c)
                           (at_c_l3))
        :effect (and
                    ; #20991: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #23326: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #39853: <==closure== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #63074: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #67103: <==closure== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #69986: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #77592: <==closure== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #79720: <==closure== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18707: <==negation-removal== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #19301: <==negation-removal== 67103 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #19705: <==uncertain_firing== 79720 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #25450: <==uncertain_firing== 69986 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #27861: <==uncertain_firing== 20991 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #41546: <==uncertain_firing== 77592 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #48272: <==negation-removal== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #54903: <==uncertain_firing== 63074 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #56434: <==uncertain_firing== 39853 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #72996: <==uncertain_firing== 23326 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #75129: <==negation-removal== 79720 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #77446: <==negation-removal== 77592 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #81435: <==uncertain_firing== 67103 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84673: <==negation-removal== 39853 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #87308: <==negation-removal== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #89560: <==negation-removal== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (at_c_l1)
                           (initialized))
        :effect (and
                    ; #10318: <==closure== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #16494: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #17088: <==closure== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #22481: <==closure== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #63823: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #66565: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #82442: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #87977: <==closure== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #12015: <==uncertain_firing== 82442 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #25348: <==negation-removal== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #26030: <==uncertain_firing== 22481 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #38601: <==negation-removal== 87977 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #43143: <==uncertain_firing== 10318 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #50983: <==negation-removal== 17088 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #51900: <==negation-removal== 10318 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #52010: <==negation-removal== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #53833: <==uncertain_firing== 17088 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #60754: <==uncertain_firing== 63823 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #65702: <==negation-removal== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #69526: <==uncertain_firing== 87977 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #74354: <==uncertain_firing== 16494 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #79891: <==negation-removal== 22481 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #83159: <==negation-removal== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #86290: <==uncertain_firing== 66565 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (at_c_l2)
                           (Pc_secret_d)
                           (Bc_secret_d)
                           (initialized))
        :effect (and
                    ; #12706: <==closure== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #20327: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #24865: <==closure== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #38153: <==closure== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #43150: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79662: <==closure== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #82987: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #91897: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13954: <==negation-removal== 24865 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #17497: <==uncertain_firing== 20327 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19245: <==negation-removal== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #20284: <==uncertain_firing== 79662 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #27561: <==uncertain_firing== 12706 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #27977: <==uncertain_firing== 43150 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38804: <==uncertain_firing== 24865 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #55967: <==negation-removal== 38153 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #58773: <==negation-removal== 79662 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #72336: <==negation-removal== 12706 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #74133: <==uncertain_firing== 91897 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #76123: <==negation-removal== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #79247: <==uncertain_firing== 82987 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #79702: <==uncertain_firing== 38153 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84438: <==negation-removal== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #85901: <==negation-removal== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))))

    (:action share_c_d_l3
        :precondition (and (Bc_secret_d)
                           (Pc_secret_d)
                           (at_c_l3)
                           (initialized))
        :effect (and
                    ; #12606: <==closure== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14373: <==closure== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #19014: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Bc_secret_d))

                    ; #32357: <==closure== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Pc_secret_d))

                    ; #37296: <==closure== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #58179: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #61331: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #92585: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13629: <==uncertain_firing== 12606 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #15619: <==uncertain_firing== 37296 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #28402: <==negation-removal== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #29181: <==uncertain_firing== 92585 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36103: <==uncertain_firing== 14373 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #37704: <==negation-removal== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #41372: <==negation-removal== 14373 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #47536: <==negation-removal== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #48902: <==uncertain_firing== 19014 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #65295: <==uncertain_firing== 61331 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #68344: <==negation-removal== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Pc_not_secret_d)))

                    ; #70637: <==negation-removal== 12606 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #71707: <==negation-removal== 37296 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #73618: <==negation-removal== 32357 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Bc_not_secret_d)))

                    ; #77467: <==uncertain_firing== 32357 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #81703: <==uncertain_firing== 58179 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l1)
                           (Bd_secret_a))
        :effect (and
                    ; #15557: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Bb_secret_a))

                    ; #37025: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Bd_secret_a))

                    ; #54858: <==closure== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (Pd_secret_a))

                    ; #67275: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Ba_secret_a))

                    ; #69361: <==closure== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (Pb_secret_a))

                    ; #76696: <==closure== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Pc_secret_a))

                    ; #80783: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (Bc_secret_a))

                    ; #81413: <==closure== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (Pa_secret_a))

                    ; #15117: <==negation-removal== 15557 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Pb_not_secret_a)))

                    ; #17064: <==uncertain_firing== 15557 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #20750: <==uncertain_firing== 37025 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #23488: <==uncertain_firing== 76696 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_a)))

                    ; #28175: <==negation-removal== 80783 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #41250: <==negation-removal== 76696 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #49749: <==uncertain_firing== 80783 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_a)))

                    ; #53597: <==uncertain_firing== 69361 (pos)
                    (when (and (and (not (Pb_not_secret_a))
                               (not (not_at_b_l1))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #56986: <==uncertain_firing== 81413 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #59336: <==negation-removal== 54858 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #59936: <==negation-removal== 67275 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #69249: <==uncertain_firing== 54858 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #74763: <==negation-removal== 37025 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #86611: <==negation-removal== 69361 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #89044: <==uncertain_firing== 67275 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #94317: <==negation-removal== 81413 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l1)))
                          (not (Ba_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l2)
                           (Bd_secret_a))
        :effect (and
                    ; #12747: <==closure== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Pb_secret_a))

                    ; #15882: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (Bb_secret_a))

                    ; #26321: origin
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Ba_secret_a))

                    ; #38906: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Bc_secret_a))

                    ; #51154: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Bd_secret_a))

                    ; #56407: <==closure== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (Pd_secret_a))

                    ; #75853: <==closure== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (Pa_secret_a))

                    ; #78659: <==closure== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (Pc_secret_a))

                    ; #14037: <==uncertain_firing== 75853 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_a)))

                    ; #25574: <==negation-removal== 51154 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #30581: <==negation-removal== 12747 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #30759: <==uncertain_firing== 12747 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #38443: <==negation-removal== 75853 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #42164: <==uncertain_firing== 56407 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #44610: <==negation-removal== 26321 (pos)
                    (when (and (and (Pa_secret_a)
                               (at_a_l2)))
                          (not (Pa_not_secret_a)))

                    ; #46050: <==negation-removal== 38906 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Pc_not_secret_a)))

                    ; #47323: <==uncertain_firing== 38906 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Pc_not_secret_a)))

                    ; #49877: <==uncertain_firing== 26321 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (Pa_not_secret_a))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_a)))

                    ; #55577: <==negation-removal== 78659 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_a)))
                          (not (Bc_not_secret_a)))

                    ; #61512: <==uncertain_firing== 51154 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_a))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #61646: <==uncertain_firing== 78659 (pos)
                    (when (and (and (not (not_at_c_l2))
                               (not (Pc_not_secret_a))
                               (not (Bc_not_secret_a))))
                          (not (Bc_not_secret_a)))

                    ; #85199: <==negation-removal== 15882 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #85252: <==negation-removal== 56407 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #87158: <==uncertain_firing== 15882 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))))

    (:action share_d_a_l3
        :precondition (and (Pd_secret_a)
                           (initialized)
                           (at_d_l3)
                           (Bd_secret_a))
        :effect (and
                    ; #28471: <==closure== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Pa_secret_a))

                    ; #32051: <==closure== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Pb_secret_a))

                    ; #39384: origin
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (Bb_secret_a))

                    ; #42122: origin
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Bd_secret_a))

                    ; #45296: <==closure== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Pc_secret_a))

                    ; #75002: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (Ba_secret_a))

                    ; #84113: origin
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (Bc_secret_a))

                    ; #86930: <==closure== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (Pd_secret_a))

                    ; #13150: <==uncertain_firing== 32051 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Bb_not_secret_a)))

                    ; #14889: <==uncertain_firing== 86930 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Bd_not_secret_a)))

                    ; #18421: <==negation-removal== 28471 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Ba_not_secret_a)))

                    ; #22633: <==negation-removal== 84113 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Pc_not_secret_a)))

                    ; #29092: <==negation-removal== 39384 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Pb_not_secret_a)))

                    ; #35208: <==uncertain_firing== 45296 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_a)))

                    ; #36505: <==negation-removal== 75002 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_a)))
                          (not (Pa_not_secret_a)))

                    ; #40334: <==negation-removal== 45296 (pos)
                    (when (and (and (Pc_secret_a)
                               (at_c_l3)))
                          (not (Bc_not_secret_a)))

                    ; #47456: <==uncertain_firing== 42122 (pos)
                    (when (and (and (not (Bd_not_secret_a))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_a))))
                          (not (Pd_not_secret_a)))

                    ; #56939: <==uncertain_firing== 84113 (pos)
                    (when (and (and (not (Bc_not_secret_a))
                               (not (Pc_not_secret_a))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_a)))

                    ; #61099: <==negation-removal== 32051 (pos)
                    (when (and (and (Pb_secret_a)
                               (at_b_l3)))
                          (not (Bb_not_secret_a)))

                    ; #74778: <==uncertain_firing== 75002 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Pa_not_secret_a)))

                    ; #78338: <==negation-removal== 42122 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Pd_not_secret_a)))

                    ; #80916: <==uncertain_firing== 28471 (pos)
                    (when (and (and (not (Ba_not_secret_a))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_a))))
                          (not (Ba_not_secret_a)))

                    ; #86518: <==uncertain_firing== 39384 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_a))
                               (not (Bb_not_secret_a))))
                          (not (Pb_not_secret_a)))

                    ; #87186: <==negation-removal== 86930 (pos)
                    (when (and (and (Pd_secret_a)
                               (at_d_l3)))
                          (not (Bd_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l1)
                           (Pd_secret_b))
        :effect (and
                    ; #23136: <==closure== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #28211: <==closure== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #50834: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #51088: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Bc_secret_b))

                    ; #62098: origin
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67239: origin
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Ba_secret_b))

                    ; #87913: <==closure== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (Pa_secret_b))

                    ; #88622: <==closure== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (Pc_secret_b))

                    ; #14618: <==uncertain_firing== 87913 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Ba_not_secret_b)))

                    ; #25503: <==negation-removal== 88622 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #27553: <==negation-removal== 67239 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #34039: <==negation-removal== 51088 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l1)))
                          (not (Pc_not_secret_b)))

                    ; #38246: <==negation-removal== 87913 (pos)
                    (when (and (and (Pa_secret_b)
                               (at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #46221: <==uncertain_firing== 88622 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_b)))

                    ; #47772: <==uncertain_firing== 28211 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #54829: <==negation-removal== 23136 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #64959: <==uncertain_firing== 50834 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #70160: <==negation-removal== 50834 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #71064: <==uncertain_firing== 62098 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_b))
                               (not (Pd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #73677: <==uncertain_firing== 23136 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_b))
                               (not (Bb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #76096: <==negation-removal== 28211 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #76399: <==uncertain_firing== 67239 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (not_at_a_l1))
                               (not (Ba_not_secret_b))))
                          (not (Pa_not_secret_b)))

                    ; #79565: <==negation-removal== 62098 (pos)
                    (when (and (and (at_d_l1)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #87329: <==uncertain_firing== 51088 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (Pd_secret_b)
                           (initialized)
                           (at_d_l2)
                           (Bd_secret_b))
        :effect (and
                    ; #45583: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #61150: <==closure== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #62152: <==closure== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #66761: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #73808: origin
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #74727: <==closure== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #79284: <==closure== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Pc_secret_b))

                    ; #82338: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (Bc_secret_b))

                    ; #18818: <==negation-removal== 82338 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Pc_not_secret_b)))

                    ; #19173: <==negation-removal== 74727 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #20984: <==negation-removal== 79284 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_b)))
                          (not (Bc_not_secret_b)))

                    ; #26657: <==uncertain_firing== 66761 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #26988: <==uncertain_firing== 45583 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Pa_not_secret_b)))

                    ; #32748: <==negation-removal== 73808 (pos)
                    (when (and (and (at_d_l2)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))

                    ; #43045: <==uncertain_firing== 82338 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Pc_not_secret_b)))

                    ; #49680: <==uncertain_firing== 74727 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #58021: <==uncertain_firing== 79284 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_b))))
                          (not (Bc_not_secret_b)))

                    ; #65338: <==uncertain_firing== 73808 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l2))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #65665: <==uncertain_firing== 61150 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #73768: <==uncertain_firing== 62152 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l2))))
                          (not (Ba_not_secret_b)))

                    ; #74116: <==negation-removal== 62152 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #76143: <==negation-removal== 45583 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #77824: <==negation-removal== 66761 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #82648: <==negation-removal== 61150 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))))

    (:action share_d_b_l3
        :precondition (and (initialized)
                           (Bd_secret_b)
                           (at_d_l3)
                           (Pd_secret_b))
        :effect (and
                    ; #14196: <==closure== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Pb_secret_b))

                    ; #51611: <==closure== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Pa_secret_b))

                    ; #55612: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (Ba_secret_b))

                    ; #66483: origin
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Bd_secret_b))

                    ; #67885: origin
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Bc_secret_b))

                    ; #74197: <==closure== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (Pc_secret_b))

                    ; #90078: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (Bb_secret_b))

                    ; #90111: <==closure== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (Pd_secret_b))

                    ; #23510: <==uncertain_firing== 55612 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Pa_not_secret_b)))

                    ; #25377: <==uncertain_firing== 74197 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_b)))

                    ; #42919: <==uncertain_firing== 90078 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Pb_not_secret_b)))

                    ; #45818: <==negation-removal== 90078 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Pb_not_secret_b)))

                    ; #48952: <==negation-removal== 55612 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Pa_not_secret_b)))

                    ; #51249: <==uncertain_firing== 90111 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Bd_not_secret_b)))

                    ; #53207: <==uncertain_firing== 51611 (pos)
                    (when (and (and (not (Pa_not_secret_b))
                               (not (Ba_not_secret_b))
                               (not (not_at_a_l3))))
                          (not (Ba_not_secret_b)))

                    ; #60302: <==uncertain_firing== 67885 (pos)
                    (when (and (and (not (Pc_not_secret_b))
                               (not (Bc_not_secret_b))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_b)))

                    ; #62295: <==negation-removal== 74197 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Bc_not_secret_b)))

                    ; #73623: <==uncertain_firing== 14196 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Bb_not_secret_b))
                               (not (Pb_not_secret_b))))
                          (not (Bb_not_secret_b)))

                    ; #75817: <==negation-removal== 90111 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Bd_not_secret_b)))

                    ; #83726: <==negation-removal== 14196 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_b)))
                          (not (Bb_not_secret_b)))

                    ; #84994: <==uncertain_firing== 66483 (pos)
                    (when (and (and (not (Pd_not_secret_b))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_b))))
                          (not (Pd_not_secret_b)))

                    ; #88840: <==negation-removal== 67885 (pos)
                    (when (and (and (Pc_secret_b)
                               (at_c_l3)))
                          (not (Pc_not_secret_b)))

                    ; #91639: <==negation-removal== 51611 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_b)))
                          (not (Ba_not_secret_b)))

                    ; #95475: <==negation-removal== 66483 (pos)
                    (when (and (and (at_d_l3)
                               (Pd_secret_b)))
                          (not (Pd_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l1)
                           (Bd_secret_c))
        :effect (and
                    ; #14509: <==closure== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Pd_secret_c))

                    ; #25459: origin
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #26326: <==closure== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #37543: origin
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Bb_secret_c))

                    ; #45175: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (Bd_secret_c))

                    ; #54981: <==closure== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (Pb_secret_c))

                    ; #65454: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Bc_secret_c))

                    ; #91179: <==closure== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (Pc_secret_c))

                    ; #11271: <==negation-removal== 25459 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #12597: <==negation-removal== 65454 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #22304: <==uncertain_firing== 25459 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #29000: <==negation-removal== 91179 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #48430: <==negation-removal== 45175 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #49635: <==uncertain_firing== 65454 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_c)))

                    ; #51882: <==uncertain_firing== 91179 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_c)))

                    ; #54323: <==negation-removal== 26326 (pos)
                    (when (and (and (at_a_l1)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #55676: <==uncertain_firing== 54981 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Bb_not_secret_c)))

                    ; #58133: <==uncertain_firing== 14509 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #62419: <==uncertain_firing== 37543 (pos)
                    (when (and (and (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))
                               (not (not_at_b_l1))))
                          (not (Pb_not_secret_c)))

                    ; #73894: <==negation-removal== 37543 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #78010: <==uncertain_firing== 45175 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #84149: <==negation-removal== 54981 (pos)
                    (when (and (and (Pb_secret_c)
                               (at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #86828: <==uncertain_firing== 26326 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #90813: <==negation-removal== 14509 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l1)))
                          (not (Bd_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c))
        :effect (and
                    ; #13464: <==closure== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #26050: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Bd_secret_c))

                    ; #36832: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #41593: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #42842: <==closure== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Pc_secret_c))

                    ; #44828: <==closure== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #64486: <==closure== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (Pd_secret_c))

                    ; #86406: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (Bc_secret_c))

                    ; #20839: <==uncertain_firing== 44828 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #22237: <==uncertain_firing== 64486 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #22337: <==uncertain_firing== 26050 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Bd_not_secret_c))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #26080: <==uncertain_firing== 86406 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Pc_not_secret_c)))

                    ; #26496: <==uncertain_firing== 42842 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_c))))
                          (not (Bc_not_secret_c)))

                    ; #30945: <==negation-removal== 13464 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #31694: <==uncertain_firing== 41593 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #53687: <==negation-removal== 86406 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Pc_not_secret_c)))

                    ; #56310: <==uncertain_firing== 13464 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_c))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #65798: <==negation-removal== 64486 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #67129: <==uncertain_firing== 36832 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Bb_not_secret_c))
                               (not (Pb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #71430: <==negation-removal== 26050 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #79659: <==negation-removal== 36832 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #88157: <==negation-removal== 42842 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_c)))
                          (not (Bc_not_secret_c)))

                    ; #88891: <==negation-removal== 44828 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #88925: <==negation-removal== 41593 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))))

    (:action share_d_c_l3
        :precondition (and (initialized)
                           (Pd_secret_c)
                           (at_d_l3)
                           (Bd_secret_c))
        :effect (and
                    ; #20991: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Ba_secret_c))

                    ; #23326: origin
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Bd_secret_c))

                    ; #39853: <==closure== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Pc_secret_c))

                    ; #63074: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Bb_secret_c))

                    ; #67103: <==closure== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (Pb_secret_c))

                    ; #69986: origin
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (Bc_secret_c))

                    ; #77592: <==closure== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (Pd_secret_c))

                    ; #79720: <==closure== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (Pa_secret_c))

                    ; #18707: <==negation-removal== 20991 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Pa_not_secret_c)))

                    ; #19301: <==negation-removal== 67103 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Bb_not_secret_c)))

                    ; #19705: <==uncertain_firing== 79720 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Ba_not_secret_c)))

                    ; #25450: <==uncertain_firing== 69986 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_c)))

                    ; #27861: <==uncertain_firing== 20991 (pos)
                    (when (and (and (not (Ba_not_secret_c))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_c))))
                          (not (Pa_not_secret_c)))

                    ; #41546: <==uncertain_firing== 77592 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Bd_not_secret_c)))

                    ; #48272: <==negation-removal== 63074 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_c)))
                          (not (Pb_not_secret_c)))

                    ; #54903: <==uncertain_firing== 63074 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Pb_not_secret_c)))

                    ; #56434: <==uncertain_firing== 39853 (pos)
                    (when (and (and (not (Pc_not_secret_c))
                               (not (Bc_not_secret_c))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_c)))

                    ; #72996: <==uncertain_firing== 23326 (pos)
                    (when (and (and (not (Bd_not_secret_c))
                               (not (not_at_d_l3))
                               (not (Pd_not_secret_c))))
                          (not (Pd_not_secret_c)))

                    ; #75129: <==negation-removal== 79720 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_c)))
                          (not (Ba_not_secret_c)))

                    ; #77446: <==negation-removal== 77592 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Bd_not_secret_c)))

                    ; #81435: <==uncertain_firing== 67103 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_c))
                               (not (Bb_not_secret_c))))
                          (not (Bb_not_secret_c)))

                    ; #84673: <==negation-removal== 39853 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Bc_not_secret_c)))

                    ; #87308: <==negation-removal== 23326 (pos)
                    (when (and (and (Pd_secret_c)
                               (at_d_l3)))
                          (not (Pd_not_secret_c)))

                    ; #89560: <==negation-removal== 69986 (pos)
                    (when (and (and (Pc_secret_c)
                               (at_c_l3)))
                          (not (Pc_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l1)
                           (initialized))
        :effect (and
                    ; #10318: <==closure== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #16494: origin
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #17088: <==closure== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Pa_secret_d))

                    ; #22481: <==closure== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Pd_secret_d))

                    ; #63823: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (Bd_secret_d))

                    ; #66565: origin
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (Ba_secret_d))

                    ; #82442: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Bc_secret_d))

                    ; #87977: <==closure== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (Pc_secret_d))

                    ; #12015: <==uncertain_firing== 82442 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Pc_not_secret_d)))

                    ; #25348: <==negation-removal== 63823 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #26030: <==uncertain_firing== 22481 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #38601: <==negation-removal== 87977 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #43143: <==uncertain_firing== 10318 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #50983: <==negation-removal== 17088 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #51900: <==negation-removal== 10318 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #52010: <==negation-removal== 16494 (pos)
                    (when (and (and (at_b_l1)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #53833: <==uncertain_firing== 17088 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #60754: <==uncertain_firing== 63823 (pos)
                    (when (and (and (not (not_at_d_l1))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #65702: <==negation-removal== 66565 (pos)
                    (when (and (and (Pa_secret_d)
                               (at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #69526: <==uncertain_firing== 87977 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l1))))
                          (not (Bc_not_secret_d)))

                    ; #74354: <==uncertain_firing== 16494 (pos)
                    (when (and (and (not (not_at_b_l1))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #79891: <==negation-removal== 22481 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #83159: <==negation-removal== 82442 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #86290: <==uncertain_firing== 66565 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l1))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (Bd_secret_d)
                           (at_d_l2)
                           (Pd_secret_d)
                           (initialized))
        :effect (and
                    ; #12706: <==closure== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Pd_secret_d))

                    ; #20327: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (Bd_secret_d))

                    ; #24865: <==closure== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Pc_secret_d))

                    ; #38153: <==closure== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #43150: origin
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (Bc_secret_d))

                    ; #79662: <==closure== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #82987: origin
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #91897: origin
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13954: <==negation-removal== 24865 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Bc_not_secret_d)))

                    ; #17497: <==uncertain_firing== 20327 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #19245: <==negation-removal== 82987 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #20284: <==uncertain_firing== 79662 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #27561: <==uncertain_firing== 12706 (pos)
                    (when (and (and (not (not_at_d_l2))
                               (not (Pd_not_secret_d))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #27977: <==uncertain_firing== 43150 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Pc_not_secret_d)))

                    ; #38804: <==uncertain_firing== 24865 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (not_at_c_l2))
                               (not (Bc_not_secret_d))))
                          (not (Bc_not_secret_d)))

                    ; #55967: <==negation-removal== 38153 (pos)
                    (when (and (and (at_a_l2)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #58773: <==negation-removal== 79662 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #72336: <==negation-removal== 12706 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #74133: <==uncertain_firing== 91897 (pos)
                    (when (and (and (not (not_at_b_l2))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #76123: <==negation-removal== 91897 (pos)
                    (when (and (and (at_b_l2)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #79247: <==uncertain_firing== 82987 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))

                    ; #79702: <==uncertain_firing== 38153 (pos)
                    (when (and (and (not (not_at_a_l2))
                               (not (Ba_not_secret_d))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #84438: <==negation-removal== 20327 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #85901: <==negation-removal== 43150 (pos)
                    (when (and (and (at_c_l2)
                               (Pc_secret_d)))
                          (not (Pc_not_secret_d)))))

    (:action share_d_d_l3
        :precondition (and (Pd_secret_d)
                           (Bd_secret_d)
                           (at_d_l3)
                           (initialized))
        :effect (and
                    ; #12606: <==closure== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Pd_secret_d))

                    ; #14373: <==closure== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Pb_secret_d))

                    ; #19014: origin
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Bc_secret_d))

                    ; #32357: <==closure== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (Pc_secret_d))

                    ; #37296: <==closure== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Pa_secret_d))

                    ; #58179: origin
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (Ba_secret_d))

                    ; #61331: origin
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (Bd_secret_d))

                    ; #92585: origin
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (Bb_secret_d))

                    ; #13629: <==uncertain_firing== 12606 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Bd_not_secret_d)))

                    ; #15619: <==uncertain_firing== 37296 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Ba_not_secret_d)))

                    ; #28402: <==negation-removal== 92585 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Pb_not_secret_d)))

                    ; #29181: <==uncertain_firing== 92585 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Pb_not_secret_d)))

                    ; #36103: <==uncertain_firing== 14373 (pos)
                    (when (and (and (not (not_at_b_l3))
                               (not (Pb_not_secret_d))
                               (not (Bb_not_secret_d))))
                          (not (Bb_not_secret_d)))

                    ; #37704: <==negation-removal== 61331 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Pd_not_secret_d)))

                    ; #41372: <==negation-removal== 14373 (pos)
                    (when (and (and (at_b_l3)
                               (Pb_secret_d)))
                          (not (Bb_not_secret_d)))

                    ; #47536: <==negation-removal== 58179 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Pa_not_secret_d)))

                    ; #48902: <==uncertain_firing== 19014 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Pc_not_secret_d)))

                    ; #65295: <==uncertain_firing== 61331 (pos)
                    (when (and (and (not (Pd_not_secret_d))
                               (not (not_at_d_l3))
                               (not (Bd_not_secret_d))))
                          (not (Pd_not_secret_d)))

                    ; #68344: <==negation-removal== 19014 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Pc_not_secret_d)))

                    ; #70637: <==negation-removal== 12606 (pos)
                    (when (and (and (Pd_secret_d)
                               (at_d_l3)))
                          (not (Bd_not_secret_d)))

                    ; #71707: <==negation-removal== 37296 (pos)
                    (when (and (and (at_a_l3)
                               (Pa_secret_d)))
                          (not (Ba_not_secret_d)))

                    ; #73618: <==negation-removal== 32357 (pos)
                    (when (and (and (Pc_secret_d)
                               (at_c_l3)))
                          (not (Bc_not_secret_d)))

                    ; #77467: <==uncertain_firing== 32357 (pos)
                    (when (and (and (not (Pc_not_secret_d))
                               (not (Bc_not_secret_d))
                               (not (not_at_c_l3))))
                          (not (Bc_not_secret_d)))

                    ; #81703: <==uncertain_firing== 58179 (pos)
                    (when (and (and (not (Ba_not_secret_d))
                               (not (not_at_a_l3))
                               (not (Pa_not_secret_d))))
                          (not (Pa_not_secret_d)))))

)