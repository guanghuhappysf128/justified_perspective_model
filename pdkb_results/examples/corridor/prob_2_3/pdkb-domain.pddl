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
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
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
                    ; #27293: origin
                    (at_l1)

                    ; #39908: origin
                    (not_at_l1)

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (at_l2)
                           (succ_l1_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #27293: origin
                    (at_l1)

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #27293: origin
                    (at_l1)

                    ; #78172: origin
                    (not_at_l3)

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))))

    (:action left_l1_l4
        :precondition (and (succ_l1_l4)
                           (at_l4))
        :effect (and
                    ; #27293: origin
                    (at_l1)

                    ; #48608: origin
                    (not_at_l4)

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #39908: origin
                    (not_at_l1)

                    ; #61788: origin
                    (at_l2)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #61788: origin
                    (at_l2)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l3))
        :effect (and
                    ; #61788: origin
                    (at_l2)

                    ; #78172: origin
                    (not_at_l3)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l4))
        :effect (and
                    ; #48608: origin
                    (not_at_l4)

                    ; #61788: origin
                    (at_l2)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (at_l1)
                           (succ_l3_l1))
        :effect (and
                    ; #39908: origin
                    (not_at_l1)

                    ; #57536: origin
                    (at_l3)

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #57536: origin
                    (at_l3)

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #57536: origin
                    (at_l3)

                    ; #78172: origin
                    (not_at_l3)

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l4))
        :effect (and
                    ; #48608: origin
                    (not_at_l4)

                    ; #57536: origin
                    (at_l3)

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #39908: origin
                    (not_at_l1)

                    ; #79078: origin
                    (at_l4)

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #79078: origin
                    (at_l4)

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #78172: origin
                    (not_at_l3)

                    ; #79078: origin
                    (at_l4)

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #48608: origin
                    (not_at_l4)

                    ; #79078: origin
                    (at_l4)

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (at_l1)
                           (succ_l1_l1))
        :effect (and
                    ; #27293: origin
                    (at_l1)

                    ; #39908: origin
                    (not_at_l1)

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #39908: origin
                    (not_at_l1)

                    ; #61788: origin
                    (at_l2)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #39908: origin
                    (not_at_l1)

                    ; #57536: origin
                    (at_l3)

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #39908: origin
                    (not_at_l1)

                    ; #79078: origin
                    (at_l4)

                    ; #27293: <==negation-removal== 39908 (pos)
                    (not (at_l1))

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (at_l2)
                           (succ_l2_l1))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #27293: origin
                    (at_l1)

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))))

    (:action right_l2_l2
        :precondition (and (at_l2)
                           (succ_l2_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #61788: origin
                    (at_l2)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #57536: origin
                    (at_l3)

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))))

    (:action right_l2_l4
        :precondition (and (succ_l2_l4)
                           (at_l2))
        :effect (and
                    ; #12288: origin
                    (not_at_l2)

                    ; #79078: origin
                    (at_l4)

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))

                    ; #61788: <==negation-removal== 12288 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (at_l3)
                           (succ_l3_l1))
        :effect (and
                    ; #27293: origin
                    (at_l1)

                    ; #78172: origin
                    (not_at_l3)

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))))

    (:action right_l3_l2
        :precondition (and (succ_l3_l2)
                           (at_l3))
        :effect (and
                    ; #61788: origin
                    (at_l2)

                    ; #78172: origin
                    (not_at_l3)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (succ_l3_l3)
                           (at_l3))
        :effect (and
                    ; #57536: origin
                    (at_l3)

                    ; #78172: origin
                    (not_at_l3)

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #78172: origin
                    (not_at_l3)

                    ; #79078: origin
                    (at_l4)

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))

                    ; #57536: <==negation-removal== 78172 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l4))
        :effect (and
                    ; #27293: origin
                    (at_l1)

                    ; #48608: origin
                    (not_at_l4)

                    ; #39908: <==negation-removal== 27293 (pos)
                    (not (not_at_l1))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action right_l4_l2
        :precondition (and (succ_l4_l2)
                           (at_l4))
        :effect (and
                    ; #48608: origin
                    (not_at_l4)

                    ; #61788: origin
                    (at_l2)

                    ; #12288: <==negation-removal== 61788 (pos)
                    (not (not_at_l2))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l4))
        :effect (and
                    ; #48608: origin
                    (not_at_l4)

                    ; #57536: origin
                    (at_l3)

                    ; #78172: <==negation-removal== 57536 (pos)
                    (not (not_at_l3))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action right_l4_l4
        :precondition (and (succ_l4_l4)
                           (at_l4))
        :effect (and
                    ; #48608: origin
                    (not_at_l4)

                    ; #79078: origin
                    (at_l4)

                    ; #48608: <==negation-removal== 79078 (pos)
                    (not (not_at_l4))

                    ; #79078: <==negation-removal== 48608 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #16448: <==commonly_known== 44023 (pos)
                    (Bc_Pa_secret)

                    ; #21852: <==closure== 57936 (pos)
                    (Pb_Pa_secret)

                    ; #23925: origin
                    (Ba_secret)

                    ; #31658: <==commonly_known== 39020 (neg)
                    (Pc_Ba_secret)

                    ; #44023: <==closure== 23925 (pos)
                    (Pa_secret)

                    ; #57936: <==commonly_known== 23925 (pos)
                    (Bb_Ba_secret)

                    ; #58988: <==closure== 92971 (pos)
                    (Pc_Pa_secret)

                    ; #60900: <==commonly_known== 39020 (neg)
                    (Pb_Ba_secret)

                    ; #85598: <==commonly_known== 44023 (pos)
                    (Bb_Pa_secret)

                    ; #92971: <==commonly_known== 23925 (pos)
                    (Bc_Ba_secret)

                    ; #16535: <==negation-removal== 57936 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #37993: <==negation-removal== 92971 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #39020: <==negation-removal== 23925 (pos)
                    (not (Pa_not_secret))

                    ; #44060: <==negation-removal== 44023 (pos)
                    (not (Ba_not_secret))

                    ; #48634: <==negation-removal== 31658 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #56563: <==negation-removal== 21852 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #57768: <==negation-removal== 60900 (pos)
                    (not (Bb_Pa_not_secret))

                    ; #68265: <==negation-removal== 16448 (pos)
                    (not (Pc_Ba_not_secret))

                    ; #85346: <==negation-removal== 85598 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #88350: <==negation-removal== 58988 (pos)
                    (not (Bc_Ba_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (at_l1)
                           (Pa_secret))
        :effect (and
                    ; #13432: <==closure== 50289 (pos)
                    (Pb_secret)

                    ; #19576: <==commonly_known== 17387 (neg)
                    (Pa_Bb_secret)

                    ; #27067: <==closure== 32941 (pos)
                    (Pc_Pb_secret)

                    ; #32941: <==commonly_known== 50289 (pos)
                    (Bc_Bb_secret)

                    ; #50289: origin
                    (Bb_secret)

                    ; #54837: <==commonly_known== 50289 (pos)
                    (Ba_Bb_secret)

                    ; #56570: <==closure== 54837 (pos)
                    (Pa_Pb_secret)

                    ; #69784: <==commonly_known== 13432 (pos)
                    (Bc_Pb_secret)

                    ; #69905: <==commonly_known== 13432 (pos)
                    (Ba_Pb_secret)

                    ; #75564: <==commonly_known== 17387 (neg)
                    (Pc_Bb_secret)

                    ; #11792: <==negation-removal== 32941 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #16817: <==negation-removal== 13432 (pos)
                    (not (Bb_not_secret))

                    ; #17387: <==negation-removal== 50289 (pos)
                    (not (Pb_not_secret))

                    ; #26059: <==negation-removal== 75564 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #29877: <==negation-removal== 56570 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #30029: <==negation-removal== 54837 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #61334: <==negation-removal== 69905 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #65678: <==negation-removal== 19576 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #77065: <==negation-removal== 27067 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #99434: <==negation-removal== 69784 (pos)
                    (not (Pc_Bb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (at_l2)
                           (Pa_secret))
        :effect (and
                    ; #13432: <==closure== 50289 (pos)
                    (Pb_secret)

                    ; #19576: <==commonly_known== 17387 (neg)
                    (Pa_Bb_secret)

                    ; #21911: <==commonly_known== 21438 (neg)
                    (Pa_Bc_secret)

                    ; #25207: <==commonly_known== 21438 (neg)
                    (Pb_Bc_secret)

                    ; #27067: <==closure== 32941 (pos)
                    (Pc_Pb_secret)

                    ; #32941: <==commonly_known== 50289 (pos)
                    (Bc_Bb_secret)

                    ; #40828: <==closure== 90942 (pos)
                    (Pb_Pc_secret)

                    ; #46790: <==commonly_known== 66140 (pos)
                    (Ba_Pc_secret)

                    ; #50289: origin
                    (Bb_secret)

                    ; #51942: <==closure== 53380 (pos)
                    (Pa_Pc_secret)

                    ; #53380: <==commonly_known== 65010 (pos)
                    (Ba_Bc_secret)

                    ; #54837: <==commonly_known== 50289 (pos)
                    (Ba_Bb_secret)

                    ; #56570: <==closure== 54837 (pos)
                    (Pa_Pb_secret)

                    ; #65010: origin
                    (Bc_secret)

                    ; #66140: <==closure== 65010 (pos)
                    (Pc_secret)

                    ; #69784: <==commonly_known== 13432 (pos)
                    (Bc_Pb_secret)

                    ; #69905: <==commonly_known== 13432 (pos)
                    (Ba_Pb_secret)

                    ; #71464: <==commonly_known== 66140 (pos)
                    (Bb_Pc_secret)

                    ; #75564: <==commonly_known== 17387 (neg)
                    (Pc_Bb_secret)

                    ; #90942: <==commonly_known== 65010 (pos)
                    (Bb_Bc_secret)

                    ; #10893: <==negation-removal== 51942 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #11393: <==negation-removal== 40828 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #11792: <==negation-removal== 32941 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #16817: <==negation-removal== 13432 (pos)
                    (not (Bb_not_secret))

                    ; #17387: <==negation-removal== 50289 (pos)
                    (not (Pb_not_secret))

                    ; #17890: <==negation-removal== 90942 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #19250: <==negation-removal== 21911 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #21438: <==negation-removal== 65010 (pos)
                    (not (Pc_not_secret))

                    ; #26059: <==negation-removal== 75564 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #29877: <==negation-removal== 56570 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #30029: <==negation-removal== 54837 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #39299: <==negation-removal== 46790 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #46162: <==negation-removal== 71464 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #61334: <==negation-removal== 69905 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #65678: <==negation-removal== 19576 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #77065: <==negation-removal== 27067 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #84891: <==negation-removal== 25207 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #87645: <==negation-removal== 53380 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #90911: <==negation-removal== 66140 (pos)
                    (not (Bc_not_secret))

                    ; #99434: <==negation-removal== 69784 (pos)
                    (not (Pc_Bb_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #13432: <==closure== 50289 (pos)
                    (Pb_secret)

                    ; #19576: <==commonly_known== 17387 (neg)
                    (Pa_Bb_secret)

                    ; #21911: <==commonly_known== 21438 (neg)
                    (Pa_Bc_secret)

                    ; #25207: <==commonly_known== 21438 (neg)
                    (Pb_Bc_secret)

                    ; #27067: <==closure== 32941 (pos)
                    (Pc_Pb_secret)

                    ; #32941: <==commonly_known== 50289 (pos)
                    (Bc_Bb_secret)

                    ; #40828: <==closure== 90942 (pos)
                    (Pb_Pc_secret)

                    ; #46790: <==commonly_known== 66140 (pos)
                    (Ba_Pc_secret)

                    ; #50289: origin
                    (Bb_secret)

                    ; #51942: <==closure== 53380 (pos)
                    (Pa_Pc_secret)

                    ; #53380: <==commonly_known== 65010 (pos)
                    (Ba_Bc_secret)

                    ; #54837: <==commonly_known== 50289 (pos)
                    (Ba_Bb_secret)

                    ; #56570: <==closure== 54837 (pos)
                    (Pa_Pb_secret)

                    ; #65010: origin
                    (Bc_secret)

                    ; #66140: <==closure== 65010 (pos)
                    (Pc_secret)

                    ; #69784: <==commonly_known== 13432 (pos)
                    (Bc_Pb_secret)

                    ; #69905: <==commonly_known== 13432 (pos)
                    (Ba_Pb_secret)

                    ; #71464: <==commonly_known== 66140 (pos)
                    (Bb_Pc_secret)

                    ; #75564: <==commonly_known== 17387 (neg)
                    (Pc_Bb_secret)

                    ; #90942: <==commonly_known== 65010 (pos)
                    (Bb_Bc_secret)

                    ; #10893: <==negation-removal== 51942 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #11393: <==negation-removal== 40828 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #11792: <==negation-removal== 32941 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #16817: <==negation-removal== 13432 (pos)
                    (not (Bb_not_secret))

                    ; #17387: <==negation-removal== 50289 (pos)
                    (not (Pb_not_secret))

                    ; #17890: <==negation-removal== 90942 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #19250: <==negation-removal== 21911 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #21438: <==negation-removal== 65010 (pos)
                    (not (Pc_not_secret))

                    ; #26059: <==negation-removal== 75564 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #29877: <==negation-removal== 56570 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #30029: <==negation-removal== 54837 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #39299: <==negation-removal== 46790 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #46162: <==negation-removal== 71464 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #61334: <==negation-removal== 69905 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #65678: <==negation-removal== 19576 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #77065: <==negation-removal== 27067 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #84891: <==negation-removal== 25207 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #87645: <==negation-removal== 53380 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #90911: <==negation-removal== 66140 (pos)
                    (not (Bc_not_secret))

                    ; #99434: <==negation-removal== 69784 (pos)
                    (not (Pc_Bb_not_secret))))

    (:action shout-4
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l4))
        :effect (and
                    ; #21911: <==commonly_known== 21438 (neg)
                    (Pa_Bc_secret)

                    ; #25207: <==commonly_known== 21438 (neg)
                    (Pb_Bc_secret)

                    ; #40828: <==closure== 90942 (pos)
                    (Pb_Pc_secret)

                    ; #46790: <==commonly_known== 66140 (pos)
                    (Ba_Pc_secret)

                    ; #51942: <==closure== 53380 (pos)
                    (Pa_Pc_secret)

                    ; #53380: <==commonly_known== 65010 (pos)
                    (Ba_Bc_secret)

                    ; #65010: origin
                    (Bc_secret)

                    ; #66140: <==closure== 65010 (pos)
                    (Pc_secret)

                    ; #71464: <==commonly_known== 66140 (pos)
                    (Bb_Pc_secret)

                    ; #90942: <==commonly_known== 65010 (pos)
                    (Bb_Bc_secret)

                    ; #10893: <==negation-removal== 51942 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #11393: <==negation-removal== 40828 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #17890: <==negation-removal== 90942 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #19250: <==negation-removal== 21911 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #21438: <==negation-removal== 65010 (pos)
                    (not (Pc_not_secret))

                    ; #39299: <==negation-removal== 46790 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #46162: <==negation-removal== 71464 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #84891: <==negation-removal== 25207 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #87645: <==negation-removal== 53380 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #90911: <==negation-removal== 66140 (pos)
                    (not (Bc_not_secret))))

)