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
        (Ba_Ba_Ba_not_secret)
        (Ba_Ba_Ba_secret)
        (Ba_Ba_Bb_not_secret)
        (Ba_Ba_Bb_secret)
        (Ba_Ba_Bc_not_secret)
        (Ba_Ba_Bc_secret)
        (Ba_Ba_Pa_not_secret)
        (Ba_Ba_Pa_secret)
        (Ba_Ba_Pb_not_secret)
        (Ba_Ba_Pb_secret)
        (Ba_Ba_Pc_not_secret)
        (Ba_Ba_Pc_secret)
        (Ba_Ba_secret)
        (Ba_Bb_not_secret)
        (Ba_Bb_Ba_not_secret)
        (Ba_Bb_Ba_secret)
        (Ba_Bb_Bb_not_secret)
        (Ba_Bb_Bb_secret)
        (Ba_Bb_Bc_not_secret)
        (Ba_Bb_Bc_secret)
        (Ba_Bb_Pa_not_secret)
        (Ba_Bb_Pa_secret)
        (Ba_Bb_Pb_not_secret)
        (Ba_Bb_Pb_secret)
        (Ba_Bb_Pc_not_secret)
        (Ba_Bb_Pc_secret)
        (Ba_Bb_secret)
        (Ba_Bc_not_secret)
        (Ba_Bc_Ba_not_secret)
        (Ba_Bc_Ba_secret)
        (Ba_Bc_Bb_not_secret)
        (Ba_Bc_Bb_secret)
        (Ba_Bc_Bc_not_secret)
        (Ba_Bc_Bc_secret)
        (Ba_Bc_Pa_not_secret)
        (Ba_Bc_Pa_secret)
        (Ba_Bc_Pb_not_secret)
        (Ba_Bc_Pb_secret)
        (Ba_Bc_Pc_not_secret)
        (Ba_Bc_Pc_secret)
        (Ba_Bc_secret)
        (Ba_Pa_not_secret)
        (Ba_Pa_Ba_not_secret)
        (Ba_Pa_Ba_secret)
        (Ba_Pa_Bb_not_secret)
        (Ba_Pa_Bb_secret)
        (Ba_Pa_Bc_not_secret)
        (Ba_Pa_Bc_secret)
        (Ba_Pa_Pa_not_secret)
        (Ba_Pa_Pa_secret)
        (Ba_Pa_Pb_not_secret)
        (Ba_Pa_Pb_secret)
        (Ba_Pa_Pc_not_secret)
        (Ba_Pa_Pc_secret)
        (Ba_Pa_secret)
        (Ba_Pb_not_secret)
        (Ba_Pb_Ba_not_secret)
        (Ba_Pb_Ba_secret)
        (Ba_Pb_Bb_not_secret)
        (Ba_Pb_Bb_secret)
        (Ba_Pb_Bc_not_secret)
        (Ba_Pb_Bc_secret)
        (Ba_Pb_Pa_not_secret)
        (Ba_Pb_Pa_secret)
        (Ba_Pb_Pb_not_secret)
        (Ba_Pb_Pb_secret)
        (Ba_Pb_Pc_not_secret)
        (Ba_Pb_Pc_secret)
        (Ba_Pb_secret)
        (Ba_Pc_not_secret)
        (Ba_Pc_Ba_not_secret)
        (Ba_Pc_Ba_secret)
        (Ba_Pc_Bb_not_secret)
        (Ba_Pc_Bb_secret)
        (Ba_Pc_Bc_not_secret)
        (Ba_Pc_Bc_secret)
        (Ba_Pc_Pa_not_secret)
        (Ba_Pc_Pa_secret)
        (Ba_Pc_Pb_not_secret)
        (Ba_Pc_Pb_secret)
        (Ba_Pc_Pc_not_secret)
        (Ba_Pc_Pc_secret)
        (Ba_Pc_secret)
        (Ba_secret)
        (Bb_not_secret)
        (Bb_Ba_not_secret)
        (Bb_Ba_Ba_not_secret)
        (Bb_Ba_Ba_secret)
        (Bb_Ba_Bb_not_secret)
        (Bb_Ba_Bb_secret)
        (Bb_Ba_Bc_not_secret)
        (Bb_Ba_Bc_secret)
        (Bb_Ba_Pa_not_secret)
        (Bb_Ba_Pa_secret)
        (Bb_Ba_Pb_not_secret)
        (Bb_Ba_Pb_secret)
        (Bb_Ba_Pc_not_secret)
        (Bb_Ba_Pc_secret)
        (Bb_Ba_secret)
        (Bb_Bb_not_secret)
        (Bb_Bb_Ba_not_secret)
        (Bb_Bb_Ba_secret)
        (Bb_Bb_Bb_not_secret)
        (Bb_Bb_Bb_secret)
        (Bb_Bb_Bc_not_secret)
        (Bb_Bb_Bc_secret)
        (Bb_Bb_Pa_not_secret)
        (Bb_Bb_Pa_secret)
        (Bb_Bb_Pb_not_secret)
        (Bb_Bb_Pb_secret)
        (Bb_Bb_Pc_not_secret)
        (Bb_Bb_Pc_secret)
        (Bb_Bb_secret)
        (Bb_Bc_not_secret)
        (Bb_Bc_Ba_not_secret)
        (Bb_Bc_Ba_secret)
        (Bb_Bc_Bb_not_secret)
        (Bb_Bc_Bb_secret)
        (Bb_Bc_Bc_not_secret)
        (Bb_Bc_Bc_secret)
        (Bb_Bc_Pa_not_secret)
        (Bb_Bc_Pa_secret)
        (Bb_Bc_Pb_not_secret)
        (Bb_Bc_Pb_secret)
        (Bb_Bc_Pc_not_secret)
        (Bb_Bc_Pc_secret)
        (Bb_Bc_secret)
        (Bb_Pa_not_secret)
        (Bb_Pa_Ba_not_secret)
        (Bb_Pa_Ba_secret)
        (Bb_Pa_Bb_not_secret)
        (Bb_Pa_Bb_secret)
        (Bb_Pa_Bc_not_secret)
        (Bb_Pa_Bc_secret)
        (Bb_Pa_Pa_not_secret)
        (Bb_Pa_Pa_secret)
        (Bb_Pa_Pb_not_secret)
        (Bb_Pa_Pb_secret)
        (Bb_Pa_Pc_not_secret)
        (Bb_Pa_Pc_secret)
        (Bb_Pa_secret)
        (Bb_Pb_not_secret)
        (Bb_Pb_Ba_not_secret)
        (Bb_Pb_Ba_secret)
        (Bb_Pb_Bb_not_secret)
        (Bb_Pb_Bb_secret)
        (Bb_Pb_Bc_not_secret)
        (Bb_Pb_Bc_secret)
        (Bb_Pb_Pa_not_secret)
        (Bb_Pb_Pa_secret)
        (Bb_Pb_Pb_not_secret)
        (Bb_Pb_Pb_secret)
        (Bb_Pb_Pc_not_secret)
        (Bb_Pb_Pc_secret)
        (Bb_Pb_secret)
        (Bb_Pc_not_secret)
        (Bb_Pc_Ba_not_secret)
        (Bb_Pc_Ba_secret)
        (Bb_Pc_Bb_not_secret)
        (Bb_Pc_Bb_secret)
        (Bb_Pc_Bc_not_secret)
        (Bb_Pc_Bc_secret)
        (Bb_Pc_Pa_not_secret)
        (Bb_Pc_Pa_secret)
        (Bb_Pc_Pb_not_secret)
        (Bb_Pc_Pb_secret)
        (Bb_Pc_Pc_not_secret)
        (Bb_Pc_Pc_secret)
        (Bb_Pc_secret)
        (Bb_secret)
        (Bc_not_secret)
        (Bc_Ba_not_secret)
        (Bc_Ba_Ba_not_secret)
        (Bc_Ba_Ba_secret)
        (Bc_Ba_Bb_not_secret)
        (Bc_Ba_Bb_secret)
        (Bc_Ba_Bc_not_secret)
        (Bc_Ba_Bc_secret)
        (Bc_Ba_Pa_not_secret)
        (Bc_Ba_Pa_secret)
        (Bc_Ba_Pb_not_secret)
        (Bc_Ba_Pb_secret)
        (Bc_Ba_Pc_not_secret)
        (Bc_Ba_Pc_secret)
        (Bc_Ba_secret)
        (Bc_Bb_not_secret)
        (Bc_Bb_Ba_not_secret)
        (Bc_Bb_Ba_secret)
        (Bc_Bb_Bb_not_secret)
        (Bc_Bb_Bb_secret)
        (Bc_Bb_Bc_not_secret)
        (Bc_Bb_Bc_secret)
        (Bc_Bb_Pa_not_secret)
        (Bc_Bb_Pa_secret)
        (Bc_Bb_Pb_not_secret)
        (Bc_Bb_Pb_secret)
        (Bc_Bb_Pc_not_secret)
        (Bc_Bb_Pc_secret)
        (Bc_Bb_secret)
        (Bc_Bc_not_secret)
        (Bc_Bc_Ba_not_secret)
        (Bc_Bc_Ba_secret)
        (Bc_Bc_Bb_not_secret)
        (Bc_Bc_Bb_secret)
        (Bc_Bc_Bc_not_secret)
        (Bc_Bc_Bc_secret)
        (Bc_Bc_Pa_not_secret)
        (Bc_Bc_Pa_secret)
        (Bc_Bc_Pb_not_secret)
        (Bc_Bc_Pb_secret)
        (Bc_Bc_Pc_not_secret)
        (Bc_Bc_Pc_secret)
        (Bc_Bc_secret)
        (Bc_Pa_not_secret)
        (Bc_Pa_Ba_not_secret)
        (Bc_Pa_Ba_secret)
        (Bc_Pa_Bb_not_secret)
        (Bc_Pa_Bb_secret)
        (Bc_Pa_Bc_not_secret)
        (Bc_Pa_Bc_secret)
        (Bc_Pa_Pa_not_secret)
        (Bc_Pa_Pa_secret)
        (Bc_Pa_Pb_not_secret)
        (Bc_Pa_Pb_secret)
        (Bc_Pa_Pc_not_secret)
        (Bc_Pa_Pc_secret)
        (Bc_Pa_secret)
        (Bc_Pb_not_secret)
        (Bc_Pb_Ba_not_secret)
        (Bc_Pb_Ba_secret)
        (Bc_Pb_Bb_not_secret)
        (Bc_Pb_Bb_secret)
        (Bc_Pb_Bc_not_secret)
        (Bc_Pb_Bc_secret)
        (Bc_Pb_Pa_not_secret)
        (Bc_Pb_Pa_secret)
        (Bc_Pb_Pb_not_secret)
        (Bc_Pb_Pb_secret)
        (Bc_Pb_Pc_not_secret)
        (Bc_Pb_Pc_secret)
        (Bc_Pb_secret)
        (Bc_Pc_not_secret)
        (Bc_Pc_Ba_not_secret)
        (Bc_Pc_Ba_secret)
        (Bc_Pc_Bb_not_secret)
        (Bc_Pc_Bb_secret)
        (Bc_Pc_Bc_not_secret)
        (Bc_Pc_Bc_secret)
        (Bc_Pc_Pa_not_secret)
        (Bc_Pc_Pa_secret)
        (Bc_Pc_Pb_not_secret)
        (Bc_Pc_Pb_secret)
        (Bc_Pc_Pc_not_secret)
        (Bc_Pc_Pc_secret)
        (Bc_Pc_secret)
        (Bc_secret)
        (Pa_not_secret)
        (Pa_Ba_not_secret)
        (Pa_Ba_Ba_not_secret)
        (Pa_Ba_Ba_secret)
        (Pa_Ba_Bb_not_secret)
        (Pa_Ba_Bb_secret)
        (Pa_Ba_Bc_not_secret)
        (Pa_Ba_Bc_secret)
        (Pa_Ba_Pa_not_secret)
        (Pa_Ba_Pa_secret)
        (Pa_Ba_Pb_not_secret)
        (Pa_Ba_Pb_secret)
        (Pa_Ba_Pc_not_secret)
        (Pa_Ba_Pc_secret)
        (Pa_Ba_secret)
        (Pa_Bb_not_secret)
        (Pa_Bb_Ba_not_secret)
        (Pa_Bb_Ba_secret)
        (Pa_Bb_Bb_not_secret)
        (Pa_Bb_Bb_secret)
        (Pa_Bb_Bc_not_secret)
        (Pa_Bb_Bc_secret)
        (Pa_Bb_Pa_not_secret)
        (Pa_Bb_Pa_secret)
        (Pa_Bb_Pb_not_secret)
        (Pa_Bb_Pb_secret)
        (Pa_Bb_Pc_not_secret)
        (Pa_Bb_Pc_secret)
        (Pa_Bb_secret)
        (Pa_Bc_not_secret)
        (Pa_Bc_Ba_not_secret)
        (Pa_Bc_Ba_secret)
        (Pa_Bc_Bb_not_secret)
        (Pa_Bc_Bb_secret)
        (Pa_Bc_Bc_not_secret)
        (Pa_Bc_Bc_secret)
        (Pa_Bc_Pa_not_secret)
        (Pa_Bc_Pa_secret)
        (Pa_Bc_Pb_not_secret)
        (Pa_Bc_Pb_secret)
        (Pa_Bc_Pc_not_secret)
        (Pa_Bc_Pc_secret)
        (Pa_Bc_secret)
        (Pa_Pa_not_secret)
        (Pa_Pa_Ba_not_secret)
        (Pa_Pa_Ba_secret)
        (Pa_Pa_Bb_not_secret)
        (Pa_Pa_Bb_secret)
        (Pa_Pa_Bc_not_secret)
        (Pa_Pa_Bc_secret)
        (Pa_Pa_Pa_not_secret)
        (Pa_Pa_Pa_secret)
        (Pa_Pa_Pb_not_secret)
        (Pa_Pa_Pb_secret)
        (Pa_Pa_Pc_not_secret)
        (Pa_Pa_Pc_secret)
        (Pa_Pa_secret)
        (Pa_Pb_not_secret)
        (Pa_Pb_Ba_not_secret)
        (Pa_Pb_Ba_secret)
        (Pa_Pb_Bb_not_secret)
        (Pa_Pb_Bb_secret)
        (Pa_Pb_Bc_not_secret)
        (Pa_Pb_Bc_secret)
        (Pa_Pb_Pa_not_secret)
        (Pa_Pb_Pa_secret)
        (Pa_Pb_Pb_not_secret)
        (Pa_Pb_Pb_secret)
        (Pa_Pb_Pc_not_secret)
        (Pa_Pb_Pc_secret)
        (Pa_Pb_secret)
        (Pa_Pc_not_secret)
        (Pa_Pc_Ba_not_secret)
        (Pa_Pc_Ba_secret)
        (Pa_Pc_Bb_not_secret)
        (Pa_Pc_Bb_secret)
        (Pa_Pc_Bc_not_secret)
        (Pa_Pc_Bc_secret)
        (Pa_Pc_Pa_not_secret)
        (Pa_Pc_Pa_secret)
        (Pa_Pc_Pb_not_secret)
        (Pa_Pc_Pb_secret)
        (Pa_Pc_Pc_not_secret)
        (Pa_Pc_Pc_secret)
        (Pa_Pc_secret)
        (Pa_secret)
        (Pb_not_secret)
        (Pb_Ba_not_secret)
        (Pb_Ba_Ba_not_secret)
        (Pb_Ba_Ba_secret)
        (Pb_Ba_Bb_not_secret)
        (Pb_Ba_Bb_secret)
        (Pb_Ba_Bc_not_secret)
        (Pb_Ba_Bc_secret)
        (Pb_Ba_Pa_not_secret)
        (Pb_Ba_Pa_secret)
        (Pb_Ba_Pb_not_secret)
        (Pb_Ba_Pb_secret)
        (Pb_Ba_Pc_not_secret)
        (Pb_Ba_Pc_secret)
        (Pb_Ba_secret)
        (Pb_Bb_not_secret)
        (Pb_Bb_Ba_not_secret)
        (Pb_Bb_Ba_secret)
        (Pb_Bb_Bb_not_secret)
        (Pb_Bb_Bb_secret)
        (Pb_Bb_Bc_not_secret)
        (Pb_Bb_Bc_secret)
        (Pb_Bb_Pa_not_secret)
        (Pb_Bb_Pa_secret)
        (Pb_Bb_Pb_not_secret)
        (Pb_Bb_Pb_secret)
        (Pb_Bb_Pc_not_secret)
        (Pb_Bb_Pc_secret)
        (Pb_Bb_secret)
        (Pb_Bc_not_secret)
        (Pb_Bc_Ba_not_secret)
        (Pb_Bc_Ba_secret)
        (Pb_Bc_Bb_not_secret)
        (Pb_Bc_Bb_secret)
        (Pb_Bc_Bc_not_secret)
        (Pb_Bc_Bc_secret)
        (Pb_Bc_Pa_not_secret)
        (Pb_Bc_Pa_secret)
        (Pb_Bc_Pb_not_secret)
        (Pb_Bc_Pb_secret)
        (Pb_Bc_Pc_not_secret)
        (Pb_Bc_Pc_secret)
        (Pb_Bc_secret)
        (Pb_Pa_not_secret)
        (Pb_Pa_Ba_not_secret)
        (Pb_Pa_Ba_secret)
        (Pb_Pa_Bb_not_secret)
        (Pb_Pa_Bb_secret)
        (Pb_Pa_Bc_not_secret)
        (Pb_Pa_Bc_secret)
        (Pb_Pa_Pa_not_secret)
        (Pb_Pa_Pa_secret)
        (Pb_Pa_Pb_not_secret)
        (Pb_Pa_Pb_secret)
        (Pb_Pa_Pc_not_secret)
        (Pb_Pa_Pc_secret)
        (Pb_Pa_secret)
        (Pb_Pb_not_secret)
        (Pb_Pb_Ba_not_secret)
        (Pb_Pb_Ba_secret)
        (Pb_Pb_Bb_not_secret)
        (Pb_Pb_Bb_secret)
        (Pb_Pb_Bc_not_secret)
        (Pb_Pb_Bc_secret)
        (Pb_Pb_Pa_not_secret)
        (Pb_Pb_Pa_secret)
        (Pb_Pb_Pb_not_secret)
        (Pb_Pb_Pb_secret)
        (Pb_Pb_Pc_not_secret)
        (Pb_Pb_Pc_secret)
        (Pb_Pb_secret)
        (Pb_Pc_not_secret)
        (Pb_Pc_Ba_not_secret)
        (Pb_Pc_Ba_secret)
        (Pb_Pc_Bb_not_secret)
        (Pb_Pc_Bb_secret)
        (Pb_Pc_Bc_not_secret)
        (Pb_Pc_Bc_secret)
        (Pb_Pc_Pa_not_secret)
        (Pb_Pc_Pa_secret)
        (Pb_Pc_Pb_not_secret)
        (Pb_Pc_Pb_secret)
        (Pb_Pc_Pc_not_secret)
        (Pb_Pc_Pc_secret)
        (Pb_Pc_secret)
        (Pb_secret)
        (Pc_not_secret)
        (Pc_Ba_not_secret)
        (Pc_Ba_Ba_not_secret)
        (Pc_Ba_Ba_secret)
        (Pc_Ba_Bb_not_secret)
        (Pc_Ba_Bb_secret)
        (Pc_Ba_Bc_not_secret)
        (Pc_Ba_Bc_secret)
        (Pc_Ba_Pa_not_secret)
        (Pc_Ba_Pa_secret)
        (Pc_Ba_Pb_not_secret)
        (Pc_Ba_Pb_secret)
        (Pc_Ba_Pc_not_secret)
        (Pc_Ba_Pc_secret)
        (Pc_Ba_secret)
        (Pc_Bb_not_secret)
        (Pc_Bb_Ba_not_secret)
        (Pc_Bb_Ba_secret)
        (Pc_Bb_Bb_not_secret)
        (Pc_Bb_Bb_secret)
        (Pc_Bb_Bc_not_secret)
        (Pc_Bb_Bc_secret)
        (Pc_Bb_Pa_not_secret)
        (Pc_Bb_Pa_secret)
        (Pc_Bb_Pb_not_secret)
        (Pc_Bb_Pb_secret)
        (Pc_Bb_Pc_not_secret)
        (Pc_Bb_Pc_secret)
        (Pc_Bb_secret)
        (Pc_Bc_not_secret)
        (Pc_Bc_Ba_not_secret)
        (Pc_Bc_Ba_secret)
        (Pc_Bc_Bb_not_secret)
        (Pc_Bc_Bb_secret)
        (Pc_Bc_Bc_not_secret)
        (Pc_Bc_Bc_secret)
        (Pc_Bc_Pa_not_secret)
        (Pc_Bc_Pa_secret)
        (Pc_Bc_Pb_not_secret)
        (Pc_Bc_Pb_secret)
        (Pc_Bc_Pc_not_secret)
        (Pc_Bc_Pc_secret)
        (Pc_Bc_secret)
        (Pc_Pa_not_secret)
        (Pc_Pa_Ba_not_secret)
        (Pc_Pa_Ba_secret)
        (Pc_Pa_Bb_not_secret)
        (Pc_Pa_Bb_secret)
        (Pc_Pa_Bc_not_secret)
        (Pc_Pa_Bc_secret)
        (Pc_Pa_Pa_not_secret)
        (Pc_Pa_Pa_secret)
        (Pc_Pa_Pb_not_secret)
        (Pc_Pa_Pb_secret)
        (Pc_Pa_Pc_not_secret)
        (Pc_Pa_Pc_secret)
        (Pc_Pa_secret)
        (Pc_Pb_not_secret)
        (Pc_Pb_Ba_not_secret)
        (Pc_Pb_Ba_secret)
        (Pc_Pb_Bb_not_secret)
        (Pc_Pb_Bb_secret)
        (Pc_Pb_Bc_not_secret)
        (Pc_Pb_Bc_secret)
        (Pc_Pb_Pa_not_secret)
        (Pc_Pb_Pa_secret)
        (Pc_Pb_Pb_not_secret)
        (Pc_Pb_Pb_secret)
        (Pc_Pb_Pc_not_secret)
        (Pc_Pb_Pc_secret)
        (Pc_Pb_secret)
        (Pc_Pc_not_secret)
        (Pc_Pc_Ba_not_secret)
        (Pc_Pc_Ba_secret)
        (Pc_Pc_Bb_not_secret)
        (Pc_Pc_Bb_secret)
        (Pc_Pc_Bc_not_secret)
        (Pc_Pc_Bc_secret)
        (Pc_Pc_Pa_not_secret)
        (Pc_Pc_Pa_secret)
        (Pc_Pc_Pb_not_secret)
        (Pc_Pc_Pb_secret)
        (Pc_Pc_Pc_not_secret)
        (Pc_Pc_Pc_secret)
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

    (:action fib-1
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l1))
        :effect (and
                    ; #14180: <==commonly_known== 60419 (pos)
                    (Ba_Pb_not_secret)

                    ; #18228: <==commonly_known== 14180 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #18957: <==commonly_known== 22519 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #19244: <==closure== 38180 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #19703: <==commonly_known== 84641 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #19867: <==commonly_known== 25733 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #20521: <==commonly_known== 14180 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #22519: <==closure== 47405 (pos)
                    (Pc_Pb_not_secret)

                    ; #22799: <==commonly_known== 84641 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #23438: <==commonly_known== 44013 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #25381: <==closure== 44383 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #25733: <==commonly_known== 89677 (neg)
                    (Pa_Bb_not_secret)

                    ; #26036: <==commonly_known== 54969 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #26590: <==closure== 38180 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #26695: <==closure== 38180 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #28892: <==closure== 44383 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #28996: <==commonly_known== 25733 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #35085: <==commonly_known== 54969 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #38180: <==commonly_known== 47405 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #38474: <==closure== 22799 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #38986: <==commonly_known== 22519 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #42064: <==commonly_known== 85403 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #44013: <==closure== 84641 (pos)
                    (Pa_Pb_not_secret)

                    ; #44383: <==commonly_known== 47405 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #47405: <==commonly_known== 91416 (pos)
                    (Bc_Bb_not_secret)

                    ; #53624: <==commonly_known== 40584 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #54969: <==commonly_known== 89677 (neg)
                    (Pc_Bb_not_secret)

                    ; #59941: <==commonly_known== 60461 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #60419: <==closure== 91416 (pos)
                    (Pb_not_secret)

                    ; #63387: <==commonly_known== 40584 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #63684: <==closure== 44383 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #65062: <==closure== 19703 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #75081: <==closure== 22799 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #76368: <==commonly_known== 85403 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #77521: <==closure== 19703 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #83494: <==closure== 22799 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #84641: <==commonly_known== 91416 (pos)
                    (Ba_Bb_not_secret)

                    ; #85403: <==commonly_known== 60419 (pos)
                    (Bc_Pb_not_secret)

                    ; #85920: <==closure== 19703 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #90771: <==commonly_known== 44013 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #91416: origin
                    (Bb_not_secret)

                    ; #92093: <==commonly_known== 60461 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #13534: <==negation-removal== 59941 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #14737: <==negation-removal== 63684 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #17939: <==negation-removal== 28892 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #18686: <==negation-removal== 38180 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #24021: <==negation-removal== 44383 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #25695: <==negation-removal== 65062 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #26355: <==negation-removal== 18228 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #28134: <==negation-removal== 77521 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #28880: <==negation-removal== 35085 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #32256: <==negation-removal== 25733 (pos)
                    (not (Ba_Pb_secret))

                    ; #33474: <==negation-removal== 85403 (pos)
                    (not (Pc_Bb_secret))

                    ; #33754: <==negation-removal== 22519 (pos)
                    (not (Bc_Bb_secret))

                    ; #34515: <==negation-removal== 76368 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #35190: <==negation-removal== 60419 (pos)
                    (not (Bb_secret))

                    ; #39444: <==negation-removal== 23438 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #39857: <==negation-removal== 14180 (pos)
                    (not (Pa_Bb_secret))

                    ; #40460: <==negation-removal== 44013 (pos)
                    (not (Ba_Bb_secret))

                    ; #40584: <==negation-removal== 84641 (pos)
                    (not (Pa_Pb_secret))

                    ; #43111: <==negation-removal== 22799 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #43774: <==negation-removal== 20521 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #46084: <==negation-removal== 85920 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #46670: <==negation-removal== 28996 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #49794: <==negation-removal== 26036 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #52994: <==negation-removal== 38986 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #54893: <==negation-removal== 42064 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #56734: <==negation-removal== 83494 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #57632: <==negation-removal== 26695 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #58044: <==negation-removal== 90771 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #58432: <==negation-removal== 63387 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #60461: <==negation-removal== 47405 (pos)
                    (not (Pc_Pb_secret))

                    ; #60490: <==negation-removal== 19703 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #67500: <==negation-removal== 26590 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #69623: <==negation-removal== 19867 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #81636: <==negation-removal== 25381 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #84269: <==negation-removal== 75081 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #84758: <==negation-removal== 18957 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #84798: <==negation-removal== 53624 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #84892: <==negation-removal== 92093 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #89677: <==negation-removal== 91416 (pos)
                    (not (Pb_secret))

                    ; #90975: <==negation-removal== 19244 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #91715: <==negation-removal== 54969 (pos)
                    (not (Bc_Pb_secret))

                    ; #96152: <==negation-removal== 38474 (pos)
                    (not (Bc_Ba_Bb_secret))))

    (:action fib-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #12140: <==commonly_known== 35202 (neg)
                    (Pa_Bc_not_secret)

                    ; #14180: <==commonly_known== 60419 (pos)
                    (Ba_Pb_not_secret)

                    ; #18213: <==closure== 76126 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #18228: <==commonly_known== 14180 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #18957: <==commonly_known== 22519 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #19244: <==closure== 38180 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #19703: <==commonly_known== 84641 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #19867: <==commonly_known== 25733 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #20521: <==commonly_known== 14180 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #22519: <==closure== 47405 (pos)
                    (Pc_Pb_not_secret)

                    ; #22799: <==commonly_known== 84641 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #23438: <==commonly_known== 44013 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #24814: <==closure== 54478 (pos)
                    (Pb_Pc_not_secret)

                    ; #24945: <==commonly_known== 74946 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #25381: <==closure== 44383 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #25733: <==commonly_known== 89677 (neg)
                    (Pa_Bb_not_secret)

                    ; #26036: <==commonly_known== 54969 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #26590: <==closure== 38180 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #26695: <==closure== 38180 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #26764: <==commonly_known== 12140 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #28892: <==closure== 44383 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #28996: <==commonly_known== 25733 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #30372: <==closure== 55763 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #30915: <==commonly_known== 82399 (pos)
                    (Ba_Bc_not_secret)

                    ; #33719: <==commonly_known== 41201 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #35085: <==commonly_known== 54969 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #36921: <==closure== 79479 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #37659: <==commonly_known== 43686 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #38180: <==commonly_known== 47405 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #38474: <==closure== 22799 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #38986: <==commonly_known== 22519 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #39304: <==commonly_known== 12140 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #40492: <==commonly_known== 58527 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #40695: <==closure== 55763 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #41201: <==commonly_known== 67320 (pos)
                    (Ba_Pc_not_secret)

                    ; #41964: <==commonly_known== 70792 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #42064: <==commonly_known== 85403 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #43686: <==closure== 30915 (pos)
                    (Pa_Pc_not_secret)

                    ; #44013: <==closure== 84641 (pos)
                    (Pa_Pb_not_secret)

                    ; #44383: <==commonly_known== 47405 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #44839: <==commonly_known== 70792 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #46928: <==closure== 71976 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #47405: <==commonly_known== 91416 (pos)
                    (Bc_Bb_not_secret)

                    ; #47516: <==commonly_known== 43686 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #51234: <==commonly_known== 35202 (neg)
                    (Pb_Bc_not_secret)

                    ; #52826: <==closure== 79479 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #53624: <==commonly_known== 40584 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #54478: <==commonly_known== 82399 (pos)
                    (Bb_Bc_not_secret)

                    ; #54969: <==commonly_known== 89677 (neg)
                    (Pc_Bb_not_secret)

                    ; #54978: <==commonly_known== 74946 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #55763: <==commonly_known== 54478 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #57927: <==commonly_known== 24814 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #59941: <==commonly_known== 60461 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #60419: <==closure== 91416 (pos)
                    (Pb_not_secret)

                    ; #61846: <==commonly_known== 24814 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #63387: <==commonly_known== 40584 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #63684: <==closure== 44383 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #63916: <==commonly_known== 58527 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #65062: <==closure== 19703 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #65405: <==closure== 76126 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #66233: <==closure== 55763 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #67107: <==closure== 71976 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #67320: <==closure== 82399 (pos)
                    (Pc_not_secret)

                    ; #69967: <==commonly_known== 51234 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #71976: <==commonly_known== 54478 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #74700: <==closure== 76126 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #74946: <==commonly_known== 67320 (pos)
                    (Bb_Pc_not_secret)

                    ; #75070: <==commonly_known== 51234 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #75081: <==closure== 22799 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #76126: <==commonly_known== 30915 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #76368: <==commonly_known== 85403 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #77521: <==closure== 19703 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #79479: <==commonly_known== 30915 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #80846: <==closure== 71976 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #82399: origin
                    (Bc_not_secret)

                    ; #83494: <==closure== 22799 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #84641: <==commonly_known== 91416 (pos)
                    (Ba_Bb_not_secret)

                    ; #85403: <==commonly_known== 60419 (pos)
                    (Bc_Pb_not_secret)

                    ; #85920: <==closure== 19703 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #90771: <==commonly_known== 44013 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #91022: <==commonly_known== 41201 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #91413: <==closure== 79479 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #91416: origin
                    (Bb_not_secret)

                    ; #92093: <==commonly_known== 60461 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #11295: <==negation-removal== 33719 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #13534: <==negation-removal== 59941 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #14737: <==negation-removal== 63684 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #15399: <==negation-removal== 36921 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #16255: <==negation-removal== 39304 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #17067: <==negation-removal== 61846 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #17939: <==negation-removal== 28892 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #18686: <==negation-removal== 38180 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #20161: <==negation-removal== 74700 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #20738: <==negation-removal== 40492 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #21161: <==negation-removal== 46928 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #23233: <==negation-removal== 66233 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #24021: <==negation-removal== 44383 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #24203: <==negation-removal== 24945 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #25695: <==negation-removal== 65062 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #26355: <==negation-removal== 18228 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #26881: <==negation-removal== 54978 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #28134: <==negation-removal== 77521 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #28880: <==negation-removal== 35085 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #31373: <==negation-removal== 41964 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #32256: <==negation-removal== 25733 (pos)
                    (not (Ba_Pb_secret))

                    ; #33474: <==negation-removal== 85403 (pos)
                    (not (Pc_Bb_secret))

                    ; #33754: <==negation-removal== 22519 (pos)
                    (not (Bc_Bb_secret))

                    ; #34515: <==negation-removal== 76368 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #35190: <==negation-removal== 60419 (pos)
                    (not (Bb_secret))

                    ; #35202: <==negation-removal== 82399 (pos)
                    (not (Pc_secret))

                    ; #37645: <==negation-removal== 26764 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #38344: <==negation-removal== 69967 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #39444: <==negation-removal== 23438 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #39857: <==negation-removal== 14180 (pos)
                    (not (Pa_Bb_secret))

                    ; #40460: <==negation-removal== 44013 (pos)
                    (not (Ba_Bb_secret))

                    ; #40584: <==negation-removal== 84641 (pos)
                    (not (Pa_Pb_secret))

                    ; #40714: <==negation-removal== 67320 (pos)
                    (not (Bc_secret))

                    ; #41949: <==negation-removal== 40695 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #43111: <==negation-removal== 22799 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #43774: <==negation-removal== 20521 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #44987: <==negation-removal== 71976 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #46084: <==negation-removal== 85920 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #46670: <==negation-removal== 28996 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #48807: <==negation-removal== 44839 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #49794: <==negation-removal== 26036 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #50943: <==negation-removal== 51234 (pos)
                    (not (Bb_Pc_secret))

                    ; #51058: <==negation-removal== 75070 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #52777: <==negation-removal== 80846 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #52994: <==negation-removal== 38986 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #54893: <==negation-removal== 42064 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #56669: <==negation-removal== 41201 (pos)
                    (not (Pa_Bc_secret))

                    ; #56734: <==negation-removal== 83494 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #57632: <==negation-removal== 26695 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #57789: <==negation-removal== 91413 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #58044: <==negation-removal== 90771 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #58376: <==negation-removal== 63916 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #58432: <==negation-removal== 63387 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #58527: <==negation-removal== 54478 (pos)
                    (not (Pb_Pc_secret))

                    ; #59030: <==negation-removal== 91022 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #60461: <==negation-removal== 47405 (pos)
                    (not (Pc_Pb_secret))

                    ; #60490: <==negation-removal== 19703 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #61873: <==negation-removal== 79479 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #62864: <==negation-removal== 67107 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #63681: <==negation-removal== 76126 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #66407: <==negation-removal== 43686 (pos)
                    (not (Ba_Bc_secret))

                    ; #67448: <==negation-removal== 65405 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #67500: <==negation-removal== 26590 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #68513: <==negation-removal== 74946 (pos)
                    (not (Pb_Bc_secret))

                    ; #69623: <==negation-removal== 19867 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #70792: <==negation-removal== 30915 (pos)
                    (not (Pa_Pc_secret))

                    ; #72935: <==negation-removal== 12140 (pos)
                    (not (Ba_Pc_secret))

                    ; #74721: <==negation-removal== 57927 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #75258: <==negation-removal== 52826 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #75326: <==negation-removal== 55763 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #76973: <==negation-removal== 18213 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #77274: <==negation-removal== 47516 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #81636: <==negation-removal== 25381 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #82868: <==negation-removal== 24814 (pos)
                    (not (Bb_Bc_secret))

                    ; #84269: <==negation-removal== 75081 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #84758: <==negation-removal== 18957 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #84798: <==negation-removal== 53624 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #84892: <==negation-removal== 92093 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #85611: <==negation-removal== 30372 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #88641: <==negation-removal== 37659 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #89677: <==negation-removal== 91416 (pos)
                    (not (Pb_secret))

                    ; #90975: <==negation-removal== 19244 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #91715: <==negation-removal== 54969 (pos)
                    (not (Bc_Pb_secret))

                    ; #96152: <==negation-removal== 38474 (pos)
                    (not (Bc_Ba_Bb_secret))))

    (:action fib-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #12140: <==commonly_known== 35202 (neg)
                    (Pa_Bc_not_secret)

                    ; #14180: <==commonly_known== 60419 (pos)
                    (Ba_Pb_not_secret)

                    ; #18213: <==closure== 76126 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #18228: <==commonly_known== 14180 (pos)
                    (Bc_Ba_Pb_not_secret)

                    ; #18957: <==commonly_known== 22519 (pos)
                    (Ba_Pc_Pb_not_secret)

                    ; #19244: <==closure== 38180 (pos)
                    (Pa_Pc_Pb_not_secret)

                    ; #19703: <==commonly_known== 84641 (pos)
                    (Bb_Ba_Bb_not_secret)

                    ; #19867: <==commonly_known== 25733 (pos)
                    (Bb_Pa_Bb_not_secret)

                    ; #20521: <==commonly_known== 14180 (pos)
                    (Bb_Ba_Pb_not_secret)

                    ; #22519: <==closure== 47405 (pos)
                    (Pc_Pb_not_secret)

                    ; #22799: <==commonly_known== 84641 (pos)
                    (Bc_Ba_Bb_not_secret)

                    ; #23438: <==commonly_known== 44013 (pos)
                    (Bc_Pa_Pb_not_secret)

                    ; #24814: <==closure== 54478 (pos)
                    (Pb_Pc_not_secret)

                    ; #24945: <==commonly_known== 74946 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #25381: <==closure== 44383 (pos)
                    (Pb_Pc_Pb_not_secret)

                    ; #25733: <==commonly_known== 89677 (neg)
                    (Pa_Bb_not_secret)

                    ; #26036: <==commonly_known== 54969 (pos)
                    (Bb_Pc_Bb_not_secret)

                    ; #26590: <==closure== 38180 (pos)
                    (Pa_Pc_Bb_not_secret)

                    ; #26695: <==closure== 38180 (pos)
                    (Pa_Bc_Pb_not_secret)

                    ; #26764: <==commonly_known== 12140 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #28892: <==closure== 44383 (pos)
                    (Pb_Pc_Bb_not_secret)

                    ; #28996: <==commonly_known== 25733 (pos)
                    (Bc_Pa_Bb_not_secret)

                    ; #30372: <==closure== 55763 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #30915: <==commonly_known== 82399 (pos)
                    (Ba_Bc_not_secret)

                    ; #33719: <==commonly_known== 41201 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #35085: <==commonly_known== 54969 (pos)
                    (Ba_Pc_Bb_not_secret)

                    ; #36921: <==closure== 79479 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #37659: <==commonly_known== 43686 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #38180: <==commonly_known== 47405 (pos)
                    (Ba_Bc_Bb_not_secret)

                    ; #38474: <==closure== 22799 (pos)
                    (Pc_Pa_Pb_not_secret)

                    ; #38986: <==commonly_known== 22519 (pos)
                    (Bb_Pc_Pb_not_secret)

                    ; #39304: <==commonly_known== 12140 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #40492: <==commonly_known== 58527 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #40695: <==closure== 55763 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #41201: <==commonly_known== 67320 (pos)
                    (Ba_Pc_not_secret)

                    ; #41964: <==commonly_known== 70792 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #42064: <==commonly_known== 85403 (pos)
                    (Bb_Bc_Pb_not_secret)

                    ; #43686: <==closure== 30915 (pos)
                    (Pa_Pc_not_secret)

                    ; #44013: <==closure== 84641 (pos)
                    (Pa_Pb_not_secret)

                    ; #44383: <==commonly_known== 47405 (pos)
                    (Bb_Bc_Bb_not_secret)

                    ; #44839: <==commonly_known== 70792 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #46928: <==closure== 71976 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #47405: <==commonly_known== 91416 (pos)
                    (Bc_Bb_not_secret)

                    ; #47516: <==commonly_known== 43686 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #51234: <==commonly_known== 35202 (neg)
                    (Pb_Bc_not_secret)

                    ; #52826: <==closure== 79479 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #53624: <==commonly_known== 40584 (neg)
                    (Pc_Ba_Bb_not_secret)

                    ; #54478: <==commonly_known== 82399 (pos)
                    (Bb_Bc_not_secret)

                    ; #54969: <==commonly_known== 89677 (neg)
                    (Pc_Bb_not_secret)

                    ; #54978: <==commonly_known== 74946 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #55763: <==commonly_known== 54478 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #57927: <==commonly_known== 24814 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #59941: <==commonly_known== 60461 (neg)
                    (Pb_Bc_Bb_not_secret)

                    ; #60419: <==closure== 91416 (pos)
                    (Pb_not_secret)

                    ; #61846: <==commonly_known== 24814 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #63387: <==commonly_known== 40584 (neg)
                    (Pb_Ba_Bb_not_secret)

                    ; #63684: <==closure== 44383 (pos)
                    (Pb_Bc_Pb_not_secret)

                    ; #63916: <==commonly_known== 58527 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #65062: <==closure== 19703 (pos)
                    (Pb_Pa_Bb_not_secret)

                    ; #65405: <==closure== 76126 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #66233: <==closure== 55763 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #67107: <==closure== 71976 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #67320: <==closure== 82399 (pos)
                    (Pc_not_secret)

                    ; #69967: <==commonly_known== 51234 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #71976: <==commonly_known== 54478 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #74700: <==closure== 76126 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #74946: <==commonly_known== 67320 (pos)
                    (Bb_Pc_not_secret)

                    ; #75070: <==commonly_known== 51234 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #75081: <==closure== 22799 (pos)
                    (Pc_Ba_Pb_not_secret)

                    ; #76126: <==commonly_known== 30915 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #76368: <==commonly_known== 85403 (pos)
                    (Ba_Bc_Pb_not_secret)

                    ; #77521: <==closure== 19703 (pos)
                    (Pb_Ba_Pb_not_secret)

                    ; #79479: <==commonly_known== 30915 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #80846: <==closure== 71976 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #82399: origin
                    (Bc_not_secret)

                    ; #83494: <==closure== 22799 (pos)
                    (Pc_Pa_Bb_not_secret)

                    ; #84641: <==commonly_known== 91416 (pos)
                    (Ba_Bb_not_secret)

                    ; #85403: <==commonly_known== 60419 (pos)
                    (Bc_Pb_not_secret)

                    ; #85920: <==closure== 19703 (pos)
                    (Pb_Pa_Pb_not_secret)

                    ; #90771: <==commonly_known== 44013 (pos)
                    (Bb_Pa_Pb_not_secret)

                    ; #91022: <==commonly_known== 41201 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #91413: <==closure== 79479 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #91416: origin
                    (Bb_not_secret)

                    ; #92093: <==commonly_known== 60461 (neg)
                    (Pa_Bc_Bb_not_secret)

                    ; #11295: <==negation-removal== 33719 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #13534: <==negation-removal== 59941 (pos)
                    (not (Bb_Pc_Pb_secret))

                    ; #14737: <==negation-removal== 63684 (pos)
                    (not (Bb_Pc_Bb_secret))

                    ; #15399: <==negation-removal== 36921 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #16255: <==negation-removal== 39304 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #17067: <==negation-removal== 61846 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #17939: <==negation-removal== 28892 (pos)
                    (not (Bb_Bc_Pb_secret))

                    ; #18686: <==negation-removal== 38180 (pos)
                    (not (Pa_Pc_Pb_secret))

                    ; #20161: <==negation-removal== 74700 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #20738: <==negation-removal== 40492 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #21161: <==negation-removal== 46928 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #23233: <==negation-removal== 66233 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #24021: <==negation-removal== 44383 (pos)
                    (not (Pb_Pc_Pb_secret))

                    ; #24203: <==negation-removal== 24945 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #25695: <==negation-removal== 65062 (pos)
                    (not (Bb_Ba_Pb_secret))

                    ; #26355: <==negation-removal== 18228 (pos)
                    (not (Pc_Pa_Bb_secret))

                    ; #26881: <==negation-removal== 54978 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #28134: <==negation-removal== 77521 (pos)
                    (not (Bb_Pa_Bb_secret))

                    ; #28880: <==negation-removal== 35085 (pos)
                    (not (Pa_Bc_Pb_secret))

                    ; #31373: <==negation-removal== 41964 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #32256: <==negation-removal== 25733 (pos)
                    (not (Ba_Pb_secret))

                    ; #33474: <==negation-removal== 85403 (pos)
                    (not (Pc_Bb_secret))

                    ; #33754: <==negation-removal== 22519 (pos)
                    (not (Bc_Bb_secret))

                    ; #34515: <==negation-removal== 76368 (pos)
                    (not (Pa_Pc_Bb_secret))

                    ; #35190: <==negation-removal== 60419 (pos)
                    (not (Bb_secret))

                    ; #35202: <==negation-removal== 82399 (pos)
                    (not (Pc_secret))

                    ; #37645: <==negation-removal== 26764 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #38344: <==negation-removal== 69967 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #39444: <==negation-removal== 23438 (pos)
                    (not (Pc_Ba_Bb_secret))

                    ; #39857: <==negation-removal== 14180 (pos)
                    (not (Pa_Bb_secret))

                    ; #40460: <==negation-removal== 44013 (pos)
                    (not (Ba_Bb_secret))

                    ; #40584: <==negation-removal== 84641 (pos)
                    (not (Pa_Pb_secret))

                    ; #40714: <==negation-removal== 67320 (pos)
                    (not (Bc_secret))

                    ; #41949: <==negation-removal== 40695 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #43111: <==negation-removal== 22799 (pos)
                    (not (Pc_Pa_Pb_secret))

                    ; #43774: <==negation-removal== 20521 (pos)
                    (not (Pb_Pa_Bb_secret))

                    ; #44987: <==negation-removal== 71976 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #46084: <==negation-removal== 85920 (pos)
                    (not (Bb_Ba_Bb_secret))

                    ; #46670: <==negation-removal== 28996 (pos)
                    (not (Pc_Ba_Pb_secret))

                    ; #48807: <==negation-removal== 44839 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #49794: <==negation-removal== 26036 (pos)
                    (not (Pb_Bc_Pb_secret))

                    ; #50943: <==negation-removal== 51234 (pos)
                    (not (Bb_Pc_secret))

                    ; #51058: <==negation-removal== 75070 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #52777: <==negation-removal== 80846 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #52994: <==negation-removal== 38986 (pos)
                    (not (Pb_Bc_Bb_secret))

                    ; #54893: <==negation-removal== 42064 (pos)
                    (not (Pb_Pc_Bb_secret))

                    ; #56669: <==negation-removal== 41201 (pos)
                    (not (Pa_Bc_secret))

                    ; #56734: <==negation-removal== 83494 (pos)
                    (not (Bc_Ba_Pb_secret))

                    ; #57632: <==negation-removal== 26695 (pos)
                    (not (Ba_Pc_Bb_secret))

                    ; #57789: <==negation-removal== 91413 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #58044: <==negation-removal== 90771 (pos)
                    (not (Pb_Ba_Bb_secret))

                    ; #58376: <==negation-removal== 63916 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #58432: <==negation-removal== 63387 (pos)
                    (not (Bb_Pa_Pb_secret))

                    ; #58527: <==negation-removal== 54478 (pos)
                    (not (Pb_Pc_secret))

                    ; #59030: <==negation-removal== 91022 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #60461: <==negation-removal== 47405 (pos)
                    (not (Pc_Pb_secret))

                    ; #60490: <==negation-removal== 19703 (pos)
                    (not (Pb_Pa_Pb_secret))

                    ; #61873: <==negation-removal== 79479 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #62864: <==negation-removal== 67107 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #63681: <==negation-removal== 76126 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #66407: <==negation-removal== 43686 (pos)
                    (not (Ba_Bc_secret))

                    ; #67448: <==negation-removal== 65405 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #67500: <==negation-removal== 26590 (pos)
                    (not (Ba_Bc_Pb_secret))

                    ; #68513: <==negation-removal== 74946 (pos)
                    (not (Pb_Bc_secret))

                    ; #69623: <==negation-removal== 19867 (pos)
                    (not (Pb_Ba_Pb_secret))

                    ; #70792: <==negation-removal== 30915 (pos)
                    (not (Pa_Pc_secret))

                    ; #72935: <==negation-removal== 12140 (pos)
                    (not (Ba_Pc_secret))

                    ; #74721: <==negation-removal== 57927 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #75258: <==negation-removal== 52826 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #75326: <==negation-removal== 55763 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #76973: <==negation-removal== 18213 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #77274: <==negation-removal== 47516 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #81636: <==negation-removal== 25381 (pos)
                    (not (Bb_Bc_Bb_secret))

                    ; #82868: <==negation-removal== 24814 (pos)
                    (not (Bb_Bc_secret))

                    ; #84269: <==negation-removal== 75081 (pos)
                    (not (Bc_Pa_Bb_secret))

                    ; #84758: <==negation-removal== 18957 (pos)
                    (not (Pa_Bc_Bb_secret))

                    ; #84798: <==negation-removal== 53624 (pos)
                    (not (Bc_Pa_Pb_secret))

                    ; #84892: <==negation-removal== 92093 (pos)
                    (not (Ba_Pc_Pb_secret))

                    ; #85611: <==negation-removal== 30372 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #88641: <==negation-removal== 37659 (pos)
                    (not (Pb_Ba_Bc_secret))

                    ; #89677: <==negation-removal== 91416 (pos)
                    (not (Pb_secret))

                    ; #90975: <==negation-removal== 19244 (pos)
                    (not (Ba_Bc_Bb_secret))

                    ; #91715: <==negation-removal== 54969 (pos)
                    (not (Bc_Pb_secret))

                    ; #96152: <==negation-removal== 38474 (pos)
                    (not (Bc_Ba_Bb_secret))))

    (:action fib-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #12140: <==commonly_known== 35202 (neg)
                    (Pa_Bc_not_secret)

                    ; #18213: <==closure== 76126 (pos)
                    (Pc_Pa_Pc_not_secret)

                    ; #24814: <==closure== 54478 (pos)
                    (Pb_Pc_not_secret)

                    ; #24945: <==commonly_known== 74946 (pos)
                    (Ba_Bb_Pc_not_secret)

                    ; #26764: <==commonly_known== 12140 (pos)
                    (Bc_Pa_Bc_not_secret)

                    ; #30372: <==closure== 55763 (pos)
                    (Pc_Bb_Pc_not_secret)

                    ; #30915: <==commonly_known== 82399 (pos)
                    (Ba_Bc_not_secret)

                    ; #33719: <==commonly_known== 41201 (pos)
                    (Bc_Ba_Pc_not_secret)

                    ; #36921: <==closure== 79479 (pos)
                    (Pb_Pa_Bc_not_secret)

                    ; #37659: <==commonly_known== 43686 (pos)
                    (Bb_Pa_Pc_not_secret)

                    ; #39304: <==commonly_known== 12140 (pos)
                    (Bb_Pa_Bc_not_secret)

                    ; #40492: <==commonly_known== 58527 (neg)
                    (Pa_Bb_Bc_not_secret)

                    ; #40695: <==closure== 55763 (pos)
                    (Pc_Pb_Pc_not_secret)

                    ; #41201: <==commonly_known== 67320 (pos)
                    (Ba_Pc_not_secret)

                    ; #41964: <==commonly_known== 70792 (neg)
                    (Pb_Ba_Bc_not_secret)

                    ; #43686: <==closure== 30915 (pos)
                    (Pa_Pc_not_secret)

                    ; #44839: <==commonly_known== 70792 (neg)
                    (Pc_Ba_Bc_not_secret)

                    ; #46928: <==closure== 71976 (pos)
                    (Pa_Bb_Pc_not_secret)

                    ; #47516: <==commonly_known== 43686 (pos)
                    (Bc_Pa_Pc_not_secret)

                    ; #51234: <==commonly_known== 35202 (neg)
                    (Pb_Bc_not_secret)

                    ; #52826: <==closure== 79479 (pos)
                    (Pb_Pa_Pc_not_secret)

                    ; #54478: <==commonly_known== 82399 (pos)
                    (Bb_Bc_not_secret)

                    ; #54978: <==commonly_known== 74946 (pos)
                    (Bc_Bb_Pc_not_secret)

                    ; #55763: <==commonly_known== 54478 (pos)
                    (Bc_Bb_Bc_not_secret)

                    ; #57927: <==commonly_known== 24814 (pos)
                    (Ba_Pb_Pc_not_secret)

                    ; #61846: <==commonly_known== 24814 (pos)
                    (Bc_Pb_Pc_not_secret)

                    ; #63916: <==commonly_known== 58527 (neg)
                    (Pc_Bb_Bc_not_secret)

                    ; #65405: <==closure== 76126 (pos)
                    (Pc_Ba_Pc_not_secret)

                    ; #66233: <==closure== 55763 (pos)
                    (Pc_Pb_Bc_not_secret)

                    ; #67107: <==closure== 71976 (pos)
                    (Pa_Pb_Pc_not_secret)

                    ; #67320: <==closure== 82399 (pos)
                    (Pc_not_secret)

                    ; #69967: <==commonly_known== 51234 (pos)
                    (Bc_Pb_Bc_not_secret)

                    ; #71976: <==commonly_known== 54478 (pos)
                    (Ba_Bb_Bc_not_secret)

                    ; #74700: <==closure== 76126 (pos)
                    (Pc_Pa_Bc_not_secret)

                    ; #74946: <==commonly_known== 67320 (pos)
                    (Bb_Pc_not_secret)

                    ; #75070: <==commonly_known== 51234 (pos)
                    (Ba_Pb_Bc_not_secret)

                    ; #76126: <==commonly_known== 30915 (pos)
                    (Bc_Ba_Bc_not_secret)

                    ; #79479: <==commonly_known== 30915 (pos)
                    (Bb_Ba_Bc_not_secret)

                    ; #80846: <==closure== 71976 (pos)
                    (Pa_Pb_Bc_not_secret)

                    ; #82399: origin
                    (Bc_not_secret)

                    ; #91022: <==commonly_known== 41201 (pos)
                    (Bb_Ba_Pc_not_secret)

                    ; #91413: <==closure== 79479 (pos)
                    (Pb_Ba_Pc_not_secret)

                    ; #11295: <==negation-removal== 33719 (pos)
                    (not (Pc_Pa_Bc_secret))

                    ; #15399: <==negation-removal== 36921 (pos)
                    (not (Bb_Ba_Pc_secret))

                    ; #16255: <==negation-removal== 39304 (pos)
                    (not (Pb_Ba_Pc_secret))

                    ; #17067: <==negation-removal== 61846 (pos)
                    (not (Pc_Bb_Bc_secret))

                    ; #20161: <==negation-removal== 74700 (pos)
                    (not (Bc_Ba_Pc_secret))

                    ; #20738: <==negation-removal== 40492 (pos)
                    (not (Ba_Pb_Pc_secret))

                    ; #21161: <==negation-removal== 46928 (pos)
                    (not (Ba_Pb_Bc_secret))

                    ; #23233: <==negation-removal== 66233 (pos)
                    (not (Bc_Bb_Pc_secret))

                    ; #24203: <==negation-removal== 24945 (pos)
                    (not (Pa_Pb_Bc_secret))

                    ; #26881: <==negation-removal== 54978 (pos)
                    (not (Pc_Pb_Bc_secret))

                    ; #31373: <==negation-removal== 41964 (pos)
                    (not (Bb_Pa_Pc_secret))

                    ; #35202: <==negation-removal== 82399 (pos)
                    (not (Pc_secret))

                    ; #37645: <==negation-removal== 26764 (pos)
                    (not (Pc_Ba_Pc_secret))

                    ; #38344: <==negation-removal== 69967 (pos)
                    (not (Pc_Bb_Pc_secret))

                    ; #40714: <==negation-removal== 67320 (pos)
                    (not (Bc_secret))

                    ; #41949: <==negation-removal== 40695 (pos)
                    (not (Bc_Bb_Bc_secret))

                    ; #44987: <==negation-removal== 71976 (pos)
                    (not (Pa_Pb_Pc_secret))

                    ; #48807: <==negation-removal== 44839 (pos)
                    (not (Bc_Pa_Pc_secret))

                    ; #50943: <==negation-removal== 51234 (pos)
                    (not (Bb_Pc_secret))

                    ; #51058: <==negation-removal== 75070 (pos)
                    (not (Pa_Bb_Pc_secret))

                    ; #52777: <==negation-removal== 80846 (pos)
                    (not (Ba_Bb_Pc_secret))

                    ; #56669: <==negation-removal== 41201 (pos)
                    (not (Pa_Bc_secret))

                    ; #57789: <==negation-removal== 91413 (pos)
                    (not (Bb_Pa_Bc_secret))

                    ; #58376: <==negation-removal== 63916 (pos)
                    (not (Bc_Pb_Pc_secret))

                    ; #58527: <==negation-removal== 54478 (pos)
                    (not (Pb_Pc_secret))

                    ; #59030: <==negation-removal== 91022 (pos)
                    (not (Pb_Pa_Bc_secret))

                    ; #61873: <==negation-removal== 79479 (pos)
                    (not (Pb_Pa_Pc_secret))

                    ; #62864: <==negation-removal== 67107 (pos)
                    (not (Ba_Bb_Bc_secret))

                    ; #63681: <==negation-removal== 76126 (pos)
                    (not (Pc_Pa_Pc_secret))

                    ; #66407: <==negation-removal== 43686 (pos)
                    (not (Ba_Bc_secret))

                    ; #67448: <==negation-removal== 65405 (pos)
                    (not (Bc_Pa_Bc_secret))

                    ; #68513: <==negation-removal== 74946 (pos)
                    (not (Pb_Bc_secret))

                    ; #70792: <==negation-removal== 30915 (pos)
                    (not (Pa_Pc_secret))

                    ; #72935: <==negation-removal== 12140 (pos)
                    (not (Ba_Pc_secret))

                    ; #74721: <==negation-removal== 57927 (pos)
                    (not (Pa_Bb_Bc_secret))

                    ; #75258: <==negation-removal== 52826 (pos)
                    (not (Bb_Ba_Bc_secret))

                    ; #75326: <==negation-removal== 55763 (pos)
                    (not (Pc_Pb_Pc_secret))

                    ; #76973: <==negation-removal== 18213 (pos)
                    (not (Bc_Ba_Bc_secret))

                    ; #77274: <==negation-removal== 47516 (pos)
                    (not (Pc_Ba_Bc_secret))

                    ; #82868: <==negation-removal== 24814 (pos)
                    (not (Bb_Bc_secret))

                    ; #85611: <==negation-removal== 30372 (pos)
                    (not (Bc_Pb_Bc_secret))

                    ; #88641: <==negation-removal== 37659 (pos)
                    (not (Pb_Ba_Bc_secret))))

    (:action left_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #14582: origin
                    (at_l1)

                    ; #81471: origin
                    (not_at_l1)

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l2
        :precondition (and (succ_l1_l2)
                           (at_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #14582: origin
                    (at_l1)

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l3
        :precondition (and (at_l3)
                           (succ_l1_l3))
        :effect (and
                    ; #14582: origin
                    (at_l1)

                    ; #38145: origin
                    (not_at_l3)

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action left_l1_l4
        :precondition (and (at_l4)
                           (succ_l1_l4))
        :effect (and
                    ; #14582: origin
                    (at_l1)

                    ; #22894: origin
                    (not_at_l4)

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action left_l2_l1
        :precondition (and (at_l1)
                           (succ_l2_l1))
        :effect (and
                    ; #70845: origin
                    (at_l2)

                    ; #81471: origin
                    (not_at_l1)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))))

    (:action left_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #70845: origin
                    (at_l2)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))))

    (:action left_l2_l3
        :precondition (and (at_l3)
                           (succ_l2_l3))
        :effect (and
                    ; #38145: origin
                    (not_at_l3)

                    ; #70845: origin
                    (at_l2)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))))

    (:action left_l2_l4
        :precondition (and (at_l4)
                           (succ_l2_l4))
        :effect (and
                    ; #22894: origin
                    (not_at_l4)

                    ; #70845: origin
                    (at_l2)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))))

    (:action left_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l1))
        :effect (and
                    ; #43416: origin
                    (at_l3)

                    ; #81471: origin
                    (not_at_l1)

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))))

    (:action left_l3_l2
        :precondition (and (at_l2)
                           (succ_l3_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #43416: origin
                    (at_l3)

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))))

    (:action left_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #38145: origin
                    (not_at_l3)

                    ; #43416: origin
                    (at_l3)

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))))

    (:action left_l3_l4
        :precondition (and (at_l4)
                           (succ_l3_l4))
        :effect (and
                    ; #22894: origin
                    (not_at_l4)

                    ; #43416: origin
                    (at_l3)

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))))

    (:action left_l4_l1
        :precondition (and (succ_l4_l1)
                           (at_l1))
        :effect (and
                    ; #34111: origin
                    (at_l4)

                    ; #81471: origin
                    (not_at_l1)

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))))

    (:action left_l4_l2
        :precondition (and (at_l2)
                           (succ_l4_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #34111: origin
                    (at_l4)

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))))

    (:action left_l4_l3
        :precondition (and (succ_l4_l3)
                           (at_l3))
        :effect (and
                    ; #34111: origin
                    (at_l4)

                    ; #38145: origin
                    (not_at_l3)

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))))

    (:action left_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #22894: origin
                    (not_at_l4)

                    ; #34111: origin
                    (at_l4)

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))))

    (:action right_l1_l1
        :precondition (and (succ_l1_l1)
                           (at_l1))
        :effect (and
                    ; #14582: origin
                    (at_l1)

                    ; #81471: origin
                    (not_at_l1)

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action right_l1_l2
        :precondition (and (at_l1)
                           (succ_l1_l2))
        :effect (and
                    ; #70845: origin
                    (at_l2)

                    ; #81471: origin
                    (not_at_l1)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))))

    (:action right_l1_l3
        :precondition (and (at_l1)
                           (succ_l1_l3))
        :effect (and
                    ; #43416: origin
                    (at_l3)

                    ; #81471: origin
                    (not_at_l1)

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))))

    (:action right_l1_l4
        :precondition (and (at_l1)
                           (succ_l1_l4))
        :effect (and
                    ; #34111: origin
                    (at_l4)

                    ; #81471: origin
                    (not_at_l1)

                    ; #14582: <==negation-removal== 81471 (pos)
                    (not (at_l1))

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))))

    (:action right_l2_l1
        :precondition (and (succ_l2_l1)
                           (at_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #14582: origin
                    (at_l1)

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action right_l2_l2
        :precondition (and (succ_l2_l2)
                           (at_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #70845: origin
                    (at_l2)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))))

    (:action right_l2_l3
        :precondition (and (succ_l2_l3)
                           (at_l2))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #43416: origin
                    (at_l3)

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))))

    (:action right_l2_l4
        :precondition (and (at_l2)
                           (succ_l2_l4))
        :effect (and
                    ; #12440: origin
                    (not_at_l2)

                    ; #34111: origin
                    (at_l4)

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))

                    ; #70845: <==negation-removal== 12440 (pos)
                    (not (at_l2))))

    (:action right_l3_l1
        :precondition (and (succ_l3_l1)
                           (at_l3))
        :effect (and
                    ; #14582: origin
                    (at_l1)

                    ; #38145: origin
                    (not_at_l3)

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action right_l3_l2
        :precondition (and (at_l3)
                           (succ_l3_l2))
        :effect (and
                    ; #38145: origin
                    (not_at_l3)

                    ; #70845: origin
                    (at_l2)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))))

    (:action right_l3_l3
        :precondition (and (at_l3)
                           (succ_l3_l3))
        :effect (and
                    ; #38145: origin
                    (not_at_l3)

                    ; #43416: origin
                    (at_l3)

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))))

    (:action right_l3_l4
        :precondition (and (succ_l3_l4)
                           (at_l3))
        :effect (and
                    ; #34111: origin
                    (at_l4)

                    ; #38145: origin
                    (not_at_l3)

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))

                    ; #43416: <==negation-removal== 38145 (pos)
                    (not (at_l3))))

    (:action right_l4_l1
        :precondition (and (at_l4)
                           (succ_l4_l1))
        :effect (and
                    ; #14582: origin
                    (at_l1)

                    ; #22894: origin
                    (not_at_l4)

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))

                    ; #81471: <==negation-removal== 14582 (pos)
                    (not (not_at_l1))))

    (:action right_l4_l2
        :precondition (and (at_l4)
                           (succ_l4_l2))
        :effect (and
                    ; #22894: origin
                    (not_at_l4)

                    ; #70845: origin
                    (at_l2)

                    ; #12440: <==negation-removal== 70845 (pos)
                    (not (not_at_l2))

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))))

    (:action right_l4_l3
        :precondition (and (at_l4)
                           (succ_l4_l3))
        :effect (and
                    ; #22894: origin
                    (not_at_l4)

                    ; #43416: origin
                    (at_l3)

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))

                    ; #38145: <==negation-removal== 43416 (pos)
                    (not (not_at_l3))))

    (:action right_l4_l4
        :precondition (and (at_l4)
                           (succ_l4_l4))
        :effect (and
                    ; #22894: origin
                    (not_at_l4)

                    ; #34111: origin
                    (at_l4)

                    ; #22894: <==negation-removal== 34111 (pos)
                    (not (not_at_l4))

                    ; #34111: <==negation-removal== 22894 (pos)
                    (not (at_l4))))

    (:action sense
        :precondition (and (at_l2))
        :effect (and
                    ; #12022: <==commonly_known== 87281 (neg)
                    (Pb_Ba_secret)

                    ; #12870: <==commonly_known== 78906 (pos)
                    (Ba_Bb_Pa_secret)

                    ; #13949: <==closure== 40828 (pos)
                    (Pb_Pa_secret)

                    ; #15590: <==commonly_known== 69386 (pos)
                    (Bc_Pa_secret)

                    ; #16981: <==commonly_known== 15590 (pos)
                    (Ba_Bc_Pa_secret)

                    ; #20652: <==commonly_known== 45516 (pos)
                    (Bb_Bc_Ba_secret)

                    ; #21014: <==closure== 20652 (pos)
                    (Pb_Pc_Ba_secret)

                    ; #27697: <==closure== 84206 (pos)
                    (Pa_Pc_Ba_secret)

                    ; #32194: <==closure== 81434 (pos)
                    (Pa_Bb_Pa_secret)

                    ; #32705: <==commonly_known== 87281 (neg)
                    (Pc_Ba_secret)

                    ; #32863: <==commonly_known== 13949 (pos)
                    (Bc_Pb_Pa_secret)

                    ; #38783: <==commonly_known== 62191 (pos)
                    (Bb_Pc_Pa_secret)

                    ; #39692: <==closure== 81434 (pos)
                    (Pa_Pb_Pa_secret)

                    ; #40828: <==commonly_known== 84460 (pos)
                    (Bb_Ba_secret)

                    ; #41589: <==commonly_known== 12022 (pos)
                    (Ba_Pb_Ba_secret)

                    ; #45124: <==closure== 20652 (pos)
                    (Pb_Pc_Pa_secret)

                    ; #45516: <==commonly_known== 84460 (pos)
                    (Bc_Ba_secret)

                    ; #46000: <==commonly_known== 40828 (pos)
                    (Bc_Bb_Ba_secret)

                    ; #48277: <==closure== 46000 (pos)
                    (Pc_Bb_Pa_secret)

                    ; #49373: <==closure== 84206 (pos)
                    (Pa_Pc_Pa_secret)

                    ; #51906: <==commonly_known== 32705 (pos)
                    (Bb_Pc_Ba_secret)

                    ; #52608: <==closure== 84206 (pos)
                    (Pa_Bc_Pa_secret)

                    ; #61264: <==commonly_known== 62191 (pos)
                    (Ba_Pc_Pa_secret)

                    ; #62191: <==closure== 45516 (pos)
                    (Pc_Pa_secret)

                    ; #62806: <==commonly_known== 18462 (neg)
                    (Pa_Bb_Ba_secret)

                    ; #64009: <==closure== 81434 (pos)
                    (Pa_Pb_Ba_secret)

                    ; #65483: <==commonly_known== 13949 (pos)
                    (Ba_Pb_Pa_secret)

                    ; #67188: <==commonly_known== 79029 (neg)
                    (Pa_Bc_Ba_secret)

                    ; #67316: <==closure== 46000 (pos)
                    (Pc_Pb_Ba_secret)

                    ; #68558: <==commonly_known== 32705 (pos)
                    (Ba_Pc_Ba_secret)

                    ; #69386: <==closure== 84460 (pos)
                    (Pa_secret)

                    ; #70919: <==closure== 46000 (pos)
                    (Pc_Pb_Pa_secret)

                    ; #73292: <==commonly_known== 79029 (neg)
                    (Pb_Bc_Ba_secret)

                    ; #73769: <==commonly_known== 78906 (pos)
                    (Bc_Bb_Pa_secret)

                    ; #77317: <==commonly_known== 15590 (pos)
                    (Bb_Bc_Pa_secret)

                    ; #77757: <==closure== 20652 (pos)
                    (Pb_Bc_Pa_secret)

                    ; #78906: <==commonly_known== 69386 (pos)
                    (Bb_Pa_secret)

                    ; #80237: <==commonly_known== 12022 (pos)
                    (Bc_Pb_Ba_secret)

                    ; #81434: <==commonly_known== 40828 (pos)
                    (Ba_Bb_Ba_secret)

                    ; #84206: <==commonly_known== 45516 (pos)
                    (Ba_Bc_Ba_secret)

                    ; #84460: origin
                    (Ba_secret)

                    ; #90502: <==commonly_known== 18462 (neg)
                    (Pc_Bb_Ba_secret)

                    ; #12522: <==negation-removal== 46000 (pos)
                    (not (Pc_Pb_Pa_not_secret))

                    ; #15901: <==negation-removal== 32194 (pos)
                    (not (Ba_Pb_Ba_not_secret))

                    ; #16485: <==negation-removal== 77757 (pos)
                    (not (Bb_Pc_Ba_not_secret))

                    ; #18462: <==negation-removal== 40828 (pos)
                    (not (Pb_Pa_not_secret))

                    ; #18727: <==negation-removal== 15590 (pos)
                    (not (Pc_Ba_not_secret))

                    ; #18959: <==negation-removal== 52608 (pos)
                    (not (Ba_Pc_Ba_not_secret))

                    ; #19325: <==negation-removal== 67188 (pos)
                    (not (Ba_Pc_Pa_not_secret))

                    ; #20154: <==negation-removal== 48277 (pos)
                    (not (Bc_Pb_Ba_not_secret))

                    ; #28344: <==negation-removal== 32863 (pos)
                    (not (Pc_Bb_Ba_not_secret))

                    ; #33743: <==negation-removal== 64009 (pos)
                    (not (Ba_Bb_Pa_not_secret))

                    ; #33913: <==negation-removal== 27697 (pos)
                    (not (Ba_Bc_Pa_not_secret))

                    ; #36307: <==negation-removal== 90502 (pos)
                    (not (Bc_Pb_Pa_not_secret))

                    ; #36792: <==negation-removal== 62806 (pos)
                    (not (Ba_Pb_Pa_not_secret))

                    ; #37369: <==negation-removal== 67316 (pos)
                    (not (Bc_Bb_Pa_not_secret))

                    ; #39883: <==negation-removal== 51906 (pos)
                    (not (Pb_Bc_Pa_not_secret))

                    ; #44012: <==negation-removal== 21014 (pos)
                    (not (Bb_Bc_Pa_not_secret))

                    ; #45708: <==negation-removal== 84206 (pos)
                    (not (Pa_Pc_Pa_not_secret))

                    ; #46117: <==negation-removal== 45124 (pos)
                    (not (Bb_Bc_Ba_not_secret))

                    ; #47367: <==negation-removal== 61264 (pos)
                    (not (Pa_Bc_Ba_not_secret))

                    ; #48437: <==negation-removal== 38783 (pos)
                    (not (Pb_Bc_Ba_not_secret))

                    ; #55341: <==negation-removal== 16981 (pos)
                    (not (Pa_Pc_Ba_not_secret))

                    ; #55659: <==negation-removal== 73769 (pos)
                    (not (Pc_Pb_Ba_not_secret))

                    ; #56853: <==negation-removal== 73292 (pos)
                    (not (Bb_Pc_Pa_not_secret))

                    ; #57090: <==negation-removal== 13949 (pos)
                    (not (Bb_Ba_not_secret))

                    ; #57454: <==negation-removal== 12870 (pos)
                    (not (Pa_Pb_Ba_not_secret))

                    ; #62123: <==negation-removal== 49373 (pos)
                    (not (Ba_Bc_Ba_not_secret))

                    ; #62259: <==negation-removal== 65483 (pos)
                    (not (Pa_Bb_Ba_not_secret))

                    ; #62569: <==negation-removal== 78906 (pos)
                    (not (Pb_Ba_not_secret))

                    ; #64026: <==negation-removal== 69386 (pos)
                    (not (Ba_not_secret))

                    ; #68456: <==negation-removal== 80237 (pos)
                    (not (Pc_Bb_Pa_not_secret))

                    ; #70499: <==negation-removal== 81434 (pos)
                    (not (Pa_Pb_Pa_not_secret))

                    ; #71770: <==negation-removal== 70919 (pos)
                    (not (Bc_Bb_Ba_not_secret))

                    ; #72186: <==negation-removal== 41589 (pos)
                    (not (Pa_Bb_Pa_not_secret))

                    ; #73722: <==negation-removal== 32705 (pos)
                    (not (Bc_Pa_not_secret))

                    ; #74329: <==negation-removal== 39692 (pos)
                    (not (Ba_Bb_Ba_not_secret))

                    ; #79029: <==negation-removal== 45516 (pos)
                    (not (Pc_Pa_not_secret))

                    ; #80953: <==negation-removal== 68558 (pos)
                    (not (Pa_Bc_Pa_not_secret))

                    ; #83555: <==negation-removal== 62191 (pos)
                    (not (Bc_Ba_not_secret))

                    ; #87281: <==negation-removal== 84460 (pos)
                    (not (Pa_not_secret))

                    ; #87933: <==negation-removal== 20652 (pos)
                    (not (Pb_Pc_Pa_not_secret))

                    ; #88779: <==negation-removal== 77317 (pos)
                    (not (Pb_Pc_Ba_not_secret))

                    ; #96802: <==negation-removal== 12022 (pos)
                    (not (Bb_Pa_not_secret))))

    (:action shout-1
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l1))
        :effect (and
                    ; #13534: <==commonly_known== 60461 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #14737: <==commonly_known== 33474 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #17939: <==commonly_known== 91715 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #18686: <==closure== 90975 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #24021: <==closure== 81636 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #25695: <==commonly_known== 32256 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #26355: <==closure== 96152 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #28134: <==commonly_known== 39857 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #28880: <==closure== 90975 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #32256: <==commonly_known== 89677 (pos)
                    (Ba_Pb_secret)

                    ; #33474: <==commonly_known== 60419 (neg)
                    (Pc_Bb_secret)

                    ; #33754: <==commonly_known== 35190 (pos)
                    (Bc_Bb_secret)

                    ; #34515: <==closure== 90975 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #35190: origin
                    (Bb_secret)

                    ; #39444: <==commonly_known== 44013 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #39857: <==commonly_known== 60419 (neg)
                    (Pa_Bb_secret)

                    ; #40460: <==commonly_known== 35190 (pos)
                    (Ba_Bb_secret)

                    ; #40584: <==closure== 40460 (pos)
                    (Pa_Pb_secret)

                    ; #43111: <==closure== 96152 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #43774: <==closure== 46084 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #46084: <==commonly_known== 40460 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #46670: <==closure== 96152 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #49794: <==closure== 81636 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #52994: <==commonly_known== 22519 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #54893: <==closure== 81636 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #56734: <==commonly_known== 32256 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #57632: <==commonly_known== 33474 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #58044: <==commonly_known== 44013 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #58432: <==commonly_known== 40584 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #60461: <==closure== 33754 (pos)
                    (Pc_Pb_secret)

                    ; #60490: <==closure== 46084 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #67500: <==commonly_known== 91715 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #69623: <==closure== 46084 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #81636: <==commonly_known== 33754 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #84269: <==commonly_known== 39857 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #84758: <==commonly_known== 22519 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #84798: <==commonly_known== 40584 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #84892: <==commonly_known== 60461 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #89677: <==closure== 35190 (pos)
                    (Pb_secret)

                    ; #90975: <==commonly_known== 33754 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #91715: <==commonly_known== 89677 (pos)
                    (Bc_Pb_secret)

                    ; #96152: <==commonly_known== 40460 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #14180: <==negation-removal== 39857 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #18228: <==negation-removal== 26355 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #18957: <==negation-removal== 84758 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #19244: <==negation-removal== 90975 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #19703: <==negation-removal== 60490 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #19867: <==negation-removal== 69623 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #20521: <==negation-removal== 43774 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #22519: <==negation-removal== 33754 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #22799: <==negation-removal== 43111 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #23438: <==negation-removal== 39444 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #25381: <==negation-removal== 81636 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #25733: <==negation-removal== 32256 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #26036: <==negation-removal== 49794 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #26590: <==negation-removal== 67500 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #26695: <==negation-removal== 57632 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #28892: <==negation-removal== 17939 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #28996: <==negation-removal== 46670 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #35085: <==negation-removal== 28880 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #38180: <==negation-removal== 18686 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #38474: <==negation-removal== 96152 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #38986: <==negation-removal== 52994 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #42064: <==negation-removal== 54893 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #44013: <==negation-removal== 40460 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #44383: <==negation-removal== 24021 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #47405: <==negation-removal== 60461 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #53624: <==negation-removal== 84798 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #54969: <==negation-removal== 91715 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #59941: <==negation-removal== 13534 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #60419: <==negation-removal== 35190 (pos)
                    (not (Pb_not_secret))

                    ; #63387: <==negation-removal== 58432 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #63684: <==negation-removal== 14737 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #65062: <==negation-removal== 25695 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #75081: <==negation-removal== 84269 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #76368: <==negation-removal== 34515 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #77521: <==negation-removal== 28134 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #83494: <==negation-removal== 56734 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #84641: <==negation-removal== 40584 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #85403: <==negation-removal== 33474 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #85920: <==negation-removal== 46084 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #90771: <==negation-removal== 58044 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #91416: <==negation-removal== 89677 (pos)
                    (not (Bb_not_secret))

                    ; #92093: <==negation-removal== 84892 (pos)
                    (not (Pa_Bc_Bb_not_secret))))

    (:action shout-2
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l2))
        :effect (and
                    ; #11295: <==closure== 76973 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #13534: <==commonly_known== 60461 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #14737: <==commonly_known== 33474 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #15399: <==commonly_known== 72935 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #16255: <==closure== 75258 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #17067: <==commonly_known== 24814 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #17939: <==commonly_known== 91715 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #18686: <==closure== 90975 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #20161: <==commonly_known== 72935 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #20738: <==commonly_known== 58527 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #21161: <==commonly_known== 68513 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #23233: <==commonly_known== 50943 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #24021: <==closure== 81636 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #24203: <==closure== 62864 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #25695: <==commonly_known== 32256 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #26355: <==closure== 96152 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #26881: <==closure== 41949 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #28134: <==commonly_known== 39857 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #28880: <==closure== 90975 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #31373: <==commonly_known== 70792 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #32256: <==commonly_known== 89677 (pos)
                    (Ba_Pb_secret)

                    ; #33474: <==commonly_known== 60419 (neg)
                    (Pc_Bb_secret)

                    ; #33754: <==commonly_known== 35190 (pos)
                    (Bc_Bb_secret)

                    ; #34515: <==closure== 90975 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #35190: origin
                    (Bb_secret)

                    ; #35202: <==closure== 40714 (pos)
                    (Pc_secret)

                    ; #37645: <==closure== 76973 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #38344: <==closure== 41949 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #39444: <==commonly_known== 44013 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #39857: <==commonly_known== 60419 (neg)
                    (Pa_Bb_secret)

                    ; #40460: <==commonly_known== 35190 (pos)
                    (Ba_Bb_secret)

                    ; #40584: <==closure== 40460 (pos)
                    (Pa_Pb_secret)

                    ; #40714: origin
                    (Bc_secret)

                    ; #41949: <==commonly_known== 82868 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #43111: <==closure== 96152 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #43774: <==closure== 46084 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #44987: <==closure== 62864 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #46084: <==commonly_known== 40460 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #46670: <==closure== 96152 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #48807: <==commonly_known== 70792 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #49794: <==closure== 81636 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #50943: <==commonly_known== 35202 (pos)
                    (Bb_Pc_secret)

                    ; #51058: <==closure== 62864 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #52777: <==commonly_known== 50943 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #52994: <==commonly_known== 22519 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #54893: <==closure== 81636 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #56669: <==commonly_known== 67320 (neg)
                    (Pa_Bc_secret)

                    ; #56734: <==commonly_known== 32256 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #57632: <==commonly_known== 33474 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #57789: <==commonly_known== 56669 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #58044: <==commonly_known== 44013 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #58376: <==commonly_known== 58527 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #58432: <==commonly_known== 40584 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #58527: <==closure== 82868 (pos)
                    (Pb_Pc_secret)

                    ; #59030: <==closure== 75258 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #60461: <==closure== 33754 (pos)
                    (Pc_Pb_secret)

                    ; #60490: <==closure== 46084 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #61873: <==closure== 75258 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #62864: <==commonly_known== 82868 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #63681: <==closure== 76973 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #66407: <==commonly_known== 40714 (pos)
                    (Ba_Bc_secret)

                    ; #67448: <==commonly_known== 56669 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #67500: <==commonly_known== 91715 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #68513: <==commonly_known== 67320 (neg)
                    (Pb_Bc_secret)

                    ; #69623: <==closure== 46084 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #70792: <==closure== 66407 (pos)
                    (Pa_Pc_secret)

                    ; #72935: <==commonly_known== 35202 (pos)
                    (Ba_Pc_secret)

                    ; #74721: <==commonly_known== 24814 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #75258: <==commonly_known== 66407 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #75326: <==closure== 41949 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #76973: <==commonly_known== 66407 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #77274: <==commonly_known== 43686 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #81636: <==commonly_known== 33754 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #82868: <==commonly_known== 40714 (pos)
                    (Bb_Bc_secret)

                    ; #84269: <==commonly_known== 39857 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #84758: <==commonly_known== 22519 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #84798: <==commonly_known== 40584 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #84892: <==commonly_known== 60461 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #85611: <==commonly_known== 68513 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #88641: <==commonly_known== 43686 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #89677: <==closure== 35190 (pos)
                    (Pb_secret)

                    ; #90975: <==commonly_known== 33754 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #91715: <==commonly_known== 89677 (pos)
                    (Bc_Pb_secret)

                    ; #96152: <==commonly_known== 40460 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #12140: <==negation-removal== 72935 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #14180: <==negation-removal== 39857 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #18213: <==negation-removal== 76973 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #18228: <==negation-removal== 26355 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #18957: <==negation-removal== 84758 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #19244: <==negation-removal== 90975 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #19703: <==negation-removal== 60490 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #19867: <==negation-removal== 69623 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #20521: <==negation-removal== 43774 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #22519: <==negation-removal== 33754 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #22799: <==negation-removal== 43111 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #23438: <==negation-removal== 39444 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #24814: <==negation-removal== 82868 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #24945: <==negation-removal== 24203 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #25381: <==negation-removal== 81636 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #25733: <==negation-removal== 32256 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #26036: <==negation-removal== 49794 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #26590: <==negation-removal== 67500 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #26695: <==negation-removal== 57632 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #26764: <==negation-removal== 37645 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #28892: <==negation-removal== 17939 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #28996: <==negation-removal== 46670 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #30372: <==negation-removal== 85611 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #30915: <==negation-removal== 70792 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #33719: <==negation-removal== 11295 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #35085: <==negation-removal== 28880 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #36921: <==negation-removal== 15399 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #37659: <==negation-removal== 88641 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #38180: <==negation-removal== 18686 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #38474: <==negation-removal== 96152 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #38986: <==negation-removal== 52994 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #39304: <==negation-removal== 16255 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #40492: <==negation-removal== 20738 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #40695: <==negation-removal== 41949 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #41201: <==negation-removal== 56669 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #41964: <==negation-removal== 31373 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #42064: <==negation-removal== 54893 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #43686: <==negation-removal== 66407 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #44013: <==negation-removal== 40460 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #44383: <==negation-removal== 24021 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #44839: <==negation-removal== 48807 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #46928: <==negation-removal== 21161 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #47405: <==negation-removal== 60461 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #47516: <==negation-removal== 77274 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #51234: <==negation-removal== 50943 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #52826: <==negation-removal== 75258 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #53624: <==negation-removal== 84798 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #54478: <==negation-removal== 58527 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #54969: <==negation-removal== 91715 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #54978: <==negation-removal== 26881 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #55763: <==negation-removal== 75326 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #57927: <==negation-removal== 74721 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #59941: <==negation-removal== 13534 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #60419: <==negation-removal== 35190 (pos)
                    (not (Pb_not_secret))

                    ; #61846: <==negation-removal== 17067 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #63387: <==negation-removal== 58432 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #63684: <==negation-removal== 14737 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #63916: <==negation-removal== 58376 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #65062: <==negation-removal== 25695 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #65405: <==negation-removal== 67448 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #66233: <==negation-removal== 23233 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #67107: <==negation-removal== 62864 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #67320: <==negation-removal== 40714 (pos)
                    (not (Pc_not_secret))

                    ; #69967: <==negation-removal== 38344 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #71976: <==negation-removal== 44987 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #74700: <==negation-removal== 20161 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #74946: <==negation-removal== 68513 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #75070: <==negation-removal== 51058 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #75081: <==negation-removal== 84269 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #76126: <==negation-removal== 63681 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #76368: <==negation-removal== 34515 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #77521: <==negation-removal== 28134 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #79479: <==negation-removal== 61873 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #80846: <==negation-removal== 52777 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #82399: <==negation-removal== 35202 (pos)
                    (not (Bc_not_secret))

                    ; #83494: <==negation-removal== 56734 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #84641: <==negation-removal== 40584 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #85403: <==negation-removal== 33474 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #85920: <==negation-removal== 46084 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #90771: <==negation-removal== 58044 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #91022: <==negation-removal== 59030 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #91413: <==negation-removal== 57789 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #91416: <==negation-removal== 89677 (pos)
                    (not (Bb_not_secret))

                    ; #92093: <==negation-removal== 84892 (pos)
                    (not (Pa_Bc_Bb_not_secret))))

    (:action shout-3
        :precondition (and (Ba_secret)
                           (Pa_secret)
                           (at_l3))
        :effect (and
                    ; #11295: <==closure== 76973 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #13534: <==commonly_known== 60461 (pos)
                    (Bb_Pc_Pb_secret)

                    ; #14737: <==commonly_known== 33474 (pos)
                    (Bb_Pc_Bb_secret)

                    ; #15399: <==commonly_known== 72935 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #16255: <==closure== 75258 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #17067: <==commonly_known== 24814 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #17939: <==commonly_known== 91715 (pos)
                    (Bb_Bc_Pb_secret)

                    ; #18686: <==closure== 90975 (pos)
                    (Pa_Pc_Pb_secret)

                    ; #20161: <==commonly_known== 72935 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #20738: <==commonly_known== 58527 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #21161: <==commonly_known== 68513 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #23233: <==commonly_known== 50943 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #24021: <==closure== 81636 (pos)
                    (Pb_Pc_Pb_secret)

                    ; #24203: <==closure== 62864 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #25695: <==commonly_known== 32256 (pos)
                    (Bb_Ba_Pb_secret)

                    ; #26355: <==closure== 96152 (pos)
                    (Pc_Pa_Bb_secret)

                    ; #26881: <==closure== 41949 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #28134: <==commonly_known== 39857 (pos)
                    (Bb_Pa_Bb_secret)

                    ; #28880: <==closure== 90975 (pos)
                    (Pa_Bc_Pb_secret)

                    ; #31373: <==commonly_known== 70792 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #32256: <==commonly_known== 89677 (pos)
                    (Ba_Pb_secret)

                    ; #33474: <==commonly_known== 60419 (neg)
                    (Pc_Bb_secret)

                    ; #33754: <==commonly_known== 35190 (pos)
                    (Bc_Bb_secret)

                    ; #34515: <==closure== 90975 (pos)
                    (Pa_Pc_Bb_secret)

                    ; #35190: origin
                    (Bb_secret)

                    ; #35202: <==closure== 40714 (pos)
                    (Pc_secret)

                    ; #37645: <==closure== 76973 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #38344: <==closure== 41949 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #39444: <==commonly_known== 44013 (neg)
                    (Pc_Ba_Bb_secret)

                    ; #39857: <==commonly_known== 60419 (neg)
                    (Pa_Bb_secret)

                    ; #40460: <==commonly_known== 35190 (pos)
                    (Ba_Bb_secret)

                    ; #40584: <==closure== 40460 (pos)
                    (Pa_Pb_secret)

                    ; #40714: origin
                    (Bc_secret)

                    ; #41949: <==commonly_known== 82868 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #43111: <==closure== 96152 (pos)
                    (Pc_Pa_Pb_secret)

                    ; #43774: <==closure== 46084 (pos)
                    (Pb_Pa_Bb_secret)

                    ; #44987: <==closure== 62864 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #46084: <==commonly_known== 40460 (pos)
                    (Bb_Ba_Bb_secret)

                    ; #46670: <==closure== 96152 (pos)
                    (Pc_Ba_Pb_secret)

                    ; #48807: <==commonly_known== 70792 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #49794: <==closure== 81636 (pos)
                    (Pb_Bc_Pb_secret)

                    ; #50943: <==commonly_known== 35202 (pos)
                    (Bb_Pc_secret)

                    ; #51058: <==closure== 62864 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #52777: <==commonly_known== 50943 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #52994: <==commonly_known== 22519 (neg)
                    (Pb_Bc_Bb_secret)

                    ; #54893: <==closure== 81636 (pos)
                    (Pb_Pc_Bb_secret)

                    ; #56669: <==commonly_known== 67320 (neg)
                    (Pa_Bc_secret)

                    ; #56734: <==commonly_known== 32256 (pos)
                    (Bc_Ba_Pb_secret)

                    ; #57632: <==commonly_known== 33474 (pos)
                    (Ba_Pc_Bb_secret)

                    ; #57789: <==commonly_known== 56669 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #58044: <==commonly_known== 44013 (neg)
                    (Pb_Ba_Bb_secret)

                    ; #58376: <==commonly_known== 58527 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #58432: <==commonly_known== 40584 (pos)
                    (Bb_Pa_Pb_secret)

                    ; #58527: <==closure== 82868 (pos)
                    (Pb_Pc_secret)

                    ; #59030: <==closure== 75258 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #60461: <==closure== 33754 (pos)
                    (Pc_Pb_secret)

                    ; #60490: <==closure== 46084 (pos)
                    (Pb_Pa_Pb_secret)

                    ; #61873: <==closure== 75258 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #62864: <==commonly_known== 82868 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #63681: <==closure== 76973 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #66407: <==commonly_known== 40714 (pos)
                    (Ba_Bc_secret)

                    ; #67448: <==commonly_known== 56669 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #67500: <==commonly_known== 91715 (pos)
                    (Ba_Bc_Pb_secret)

                    ; #68513: <==commonly_known== 67320 (neg)
                    (Pb_Bc_secret)

                    ; #69623: <==closure== 46084 (pos)
                    (Pb_Ba_Pb_secret)

                    ; #70792: <==closure== 66407 (pos)
                    (Pa_Pc_secret)

                    ; #72935: <==commonly_known== 35202 (pos)
                    (Ba_Pc_secret)

                    ; #74721: <==commonly_known== 24814 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #75258: <==commonly_known== 66407 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #75326: <==closure== 41949 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #76973: <==commonly_known== 66407 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #77274: <==commonly_known== 43686 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #81636: <==commonly_known== 33754 (pos)
                    (Bb_Bc_Bb_secret)

                    ; #82868: <==commonly_known== 40714 (pos)
                    (Bb_Bc_secret)

                    ; #84269: <==commonly_known== 39857 (pos)
                    (Bc_Pa_Bb_secret)

                    ; #84758: <==commonly_known== 22519 (neg)
                    (Pa_Bc_Bb_secret)

                    ; #84798: <==commonly_known== 40584 (pos)
                    (Bc_Pa_Pb_secret)

                    ; #84892: <==commonly_known== 60461 (pos)
                    (Ba_Pc_Pb_secret)

                    ; #85611: <==commonly_known== 68513 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #88641: <==commonly_known== 43686 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #89677: <==closure== 35190 (pos)
                    (Pb_secret)

                    ; #90975: <==commonly_known== 33754 (pos)
                    (Ba_Bc_Bb_secret)

                    ; #91715: <==commonly_known== 89677 (pos)
                    (Bc_Pb_secret)

                    ; #96152: <==commonly_known== 40460 (pos)
                    (Bc_Ba_Bb_secret)

                    ; #12140: <==negation-removal== 72935 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #14180: <==negation-removal== 39857 (pos)
                    (not (Ba_Pb_not_secret))

                    ; #18213: <==negation-removal== 76973 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #18228: <==negation-removal== 26355 (pos)
                    (not (Bc_Ba_Pb_not_secret))

                    ; #18957: <==negation-removal== 84758 (pos)
                    (not (Ba_Pc_Pb_not_secret))

                    ; #19244: <==negation-removal== 90975 (pos)
                    (not (Pa_Pc_Pb_not_secret))

                    ; #19703: <==negation-removal== 60490 (pos)
                    (not (Bb_Ba_Bb_not_secret))

                    ; #19867: <==negation-removal== 69623 (pos)
                    (not (Bb_Pa_Bb_not_secret))

                    ; #20521: <==negation-removal== 43774 (pos)
                    (not (Bb_Ba_Pb_not_secret))

                    ; #22519: <==negation-removal== 33754 (pos)
                    (not (Pc_Pb_not_secret))

                    ; #22799: <==negation-removal== 43111 (pos)
                    (not (Bc_Ba_Bb_not_secret))

                    ; #23438: <==negation-removal== 39444 (pos)
                    (not (Bc_Pa_Pb_not_secret))

                    ; #24814: <==negation-removal== 82868 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #24945: <==negation-removal== 24203 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #25381: <==negation-removal== 81636 (pos)
                    (not (Pb_Pc_Pb_not_secret))

                    ; #25733: <==negation-removal== 32256 (pos)
                    (not (Pa_Bb_not_secret))

                    ; #26036: <==negation-removal== 49794 (pos)
                    (not (Bb_Pc_Bb_not_secret))

                    ; #26590: <==negation-removal== 67500 (pos)
                    (not (Pa_Pc_Bb_not_secret))

                    ; #26695: <==negation-removal== 57632 (pos)
                    (not (Pa_Bc_Pb_not_secret))

                    ; #26764: <==negation-removal== 37645 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #28892: <==negation-removal== 17939 (pos)
                    (not (Pb_Pc_Bb_not_secret))

                    ; #28996: <==negation-removal== 46670 (pos)
                    (not (Bc_Pa_Bb_not_secret))

                    ; #30372: <==negation-removal== 85611 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #30915: <==negation-removal== 70792 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #33719: <==negation-removal== 11295 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #35085: <==negation-removal== 28880 (pos)
                    (not (Ba_Pc_Bb_not_secret))

                    ; #36921: <==negation-removal== 15399 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #37659: <==negation-removal== 88641 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #38180: <==negation-removal== 18686 (pos)
                    (not (Ba_Bc_Bb_not_secret))

                    ; #38474: <==negation-removal== 96152 (pos)
                    (not (Pc_Pa_Pb_not_secret))

                    ; #38986: <==negation-removal== 52994 (pos)
                    (not (Bb_Pc_Pb_not_secret))

                    ; #39304: <==negation-removal== 16255 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #40492: <==negation-removal== 20738 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #40695: <==negation-removal== 41949 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #41201: <==negation-removal== 56669 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #41964: <==negation-removal== 31373 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #42064: <==negation-removal== 54893 (pos)
                    (not (Bb_Bc_Pb_not_secret))

                    ; #43686: <==negation-removal== 66407 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #44013: <==negation-removal== 40460 (pos)
                    (not (Pa_Pb_not_secret))

                    ; #44383: <==negation-removal== 24021 (pos)
                    (not (Bb_Bc_Bb_not_secret))

                    ; #44839: <==negation-removal== 48807 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #46928: <==negation-removal== 21161 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #47405: <==negation-removal== 60461 (pos)
                    (not (Bc_Bb_not_secret))

                    ; #47516: <==negation-removal== 77274 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #51234: <==negation-removal== 50943 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #52826: <==negation-removal== 75258 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #53624: <==negation-removal== 84798 (pos)
                    (not (Pc_Ba_Bb_not_secret))

                    ; #54478: <==negation-removal== 58527 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #54969: <==negation-removal== 91715 (pos)
                    (not (Pc_Bb_not_secret))

                    ; #54978: <==negation-removal== 26881 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #55763: <==negation-removal== 75326 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #57927: <==negation-removal== 74721 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #59941: <==negation-removal== 13534 (pos)
                    (not (Pb_Bc_Bb_not_secret))

                    ; #60419: <==negation-removal== 35190 (pos)
                    (not (Pb_not_secret))

                    ; #61846: <==negation-removal== 17067 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #63387: <==negation-removal== 58432 (pos)
                    (not (Pb_Ba_Bb_not_secret))

                    ; #63684: <==negation-removal== 14737 (pos)
                    (not (Pb_Bc_Pb_not_secret))

                    ; #63916: <==negation-removal== 58376 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #65062: <==negation-removal== 25695 (pos)
                    (not (Pb_Pa_Bb_not_secret))

                    ; #65405: <==negation-removal== 67448 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #66233: <==negation-removal== 23233 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #67107: <==negation-removal== 62864 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #67320: <==negation-removal== 40714 (pos)
                    (not (Pc_not_secret))

                    ; #69967: <==negation-removal== 38344 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #71976: <==negation-removal== 44987 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #74700: <==negation-removal== 20161 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #74946: <==negation-removal== 68513 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #75070: <==negation-removal== 51058 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #75081: <==negation-removal== 84269 (pos)
                    (not (Pc_Ba_Pb_not_secret))

                    ; #76126: <==negation-removal== 63681 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #76368: <==negation-removal== 34515 (pos)
                    (not (Ba_Bc_Pb_not_secret))

                    ; #77521: <==negation-removal== 28134 (pos)
                    (not (Pb_Ba_Pb_not_secret))

                    ; #79479: <==negation-removal== 61873 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #80846: <==negation-removal== 52777 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #82399: <==negation-removal== 35202 (pos)
                    (not (Bc_not_secret))

                    ; #83494: <==negation-removal== 56734 (pos)
                    (not (Pc_Pa_Bb_not_secret))

                    ; #84641: <==negation-removal== 40584 (pos)
                    (not (Ba_Bb_not_secret))

                    ; #85403: <==negation-removal== 33474 (pos)
                    (not (Bc_Pb_not_secret))

                    ; #85920: <==negation-removal== 46084 (pos)
                    (not (Pb_Pa_Pb_not_secret))

                    ; #90771: <==negation-removal== 58044 (pos)
                    (not (Bb_Pa_Pb_not_secret))

                    ; #91022: <==negation-removal== 59030 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #91413: <==negation-removal== 57789 (pos)
                    (not (Pb_Ba_Pc_not_secret))

                    ; #91416: <==negation-removal== 89677 (pos)
                    (not (Bb_not_secret))

                    ; #92093: <==negation-removal== 84892 (pos)
                    (not (Pa_Bc_Bb_not_secret))))

    (:action shout-4
        :precondition (and (at_l4)
                           (Ba_secret)
                           (Pa_secret))
        :effect (and
                    ; #11295: <==closure== 76973 (pos)
                    (Pc_Pa_Bc_secret)

                    ; #15399: <==commonly_known== 72935 (pos)
                    (Bb_Ba_Pc_secret)

                    ; #16255: <==closure== 75258 (pos)
                    (Pb_Ba_Pc_secret)

                    ; #17067: <==commonly_known== 24814 (neg)
                    (Pc_Bb_Bc_secret)

                    ; #20161: <==commonly_known== 72935 (pos)
                    (Bc_Ba_Pc_secret)

                    ; #20738: <==commonly_known== 58527 (pos)
                    (Ba_Pb_Pc_secret)

                    ; #21161: <==commonly_known== 68513 (pos)
                    (Ba_Pb_Bc_secret)

                    ; #23233: <==commonly_known== 50943 (pos)
                    (Bc_Bb_Pc_secret)

                    ; #24203: <==closure== 62864 (pos)
                    (Pa_Pb_Bc_secret)

                    ; #26881: <==closure== 41949 (pos)
                    (Pc_Pb_Bc_secret)

                    ; #31373: <==commonly_known== 70792 (pos)
                    (Bb_Pa_Pc_secret)

                    ; #35202: <==closure== 40714 (pos)
                    (Pc_secret)

                    ; #37645: <==closure== 76973 (pos)
                    (Pc_Ba_Pc_secret)

                    ; #38344: <==closure== 41949 (pos)
                    (Pc_Bb_Pc_secret)

                    ; #40714: origin
                    (Bc_secret)

                    ; #41949: <==commonly_known== 82868 (pos)
                    (Bc_Bb_Bc_secret)

                    ; #44987: <==closure== 62864 (pos)
                    (Pa_Pb_Pc_secret)

                    ; #48807: <==commonly_known== 70792 (pos)
                    (Bc_Pa_Pc_secret)

                    ; #50943: <==commonly_known== 35202 (pos)
                    (Bb_Pc_secret)

                    ; #51058: <==closure== 62864 (pos)
                    (Pa_Bb_Pc_secret)

                    ; #52777: <==commonly_known== 50943 (pos)
                    (Ba_Bb_Pc_secret)

                    ; #56669: <==commonly_known== 67320 (neg)
                    (Pa_Bc_secret)

                    ; #57789: <==commonly_known== 56669 (pos)
                    (Bb_Pa_Bc_secret)

                    ; #58376: <==commonly_known== 58527 (pos)
                    (Bc_Pb_Pc_secret)

                    ; #58527: <==closure== 82868 (pos)
                    (Pb_Pc_secret)

                    ; #59030: <==closure== 75258 (pos)
                    (Pb_Pa_Bc_secret)

                    ; #61873: <==closure== 75258 (pos)
                    (Pb_Pa_Pc_secret)

                    ; #62864: <==commonly_known== 82868 (pos)
                    (Ba_Bb_Bc_secret)

                    ; #63681: <==closure== 76973 (pos)
                    (Pc_Pa_Pc_secret)

                    ; #66407: <==commonly_known== 40714 (pos)
                    (Ba_Bc_secret)

                    ; #67448: <==commonly_known== 56669 (pos)
                    (Bc_Pa_Bc_secret)

                    ; #68513: <==commonly_known== 67320 (neg)
                    (Pb_Bc_secret)

                    ; #70792: <==closure== 66407 (pos)
                    (Pa_Pc_secret)

                    ; #72935: <==commonly_known== 35202 (pos)
                    (Ba_Pc_secret)

                    ; #74721: <==commonly_known== 24814 (neg)
                    (Pa_Bb_Bc_secret)

                    ; #75258: <==commonly_known== 66407 (pos)
                    (Bb_Ba_Bc_secret)

                    ; #75326: <==closure== 41949 (pos)
                    (Pc_Pb_Pc_secret)

                    ; #76973: <==commonly_known== 66407 (pos)
                    (Bc_Ba_Bc_secret)

                    ; #77274: <==commonly_known== 43686 (neg)
                    (Pc_Ba_Bc_secret)

                    ; #82868: <==commonly_known== 40714 (pos)
                    (Bb_Bc_secret)

                    ; #85611: <==commonly_known== 68513 (pos)
                    (Bc_Pb_Bc_secret)

                    ; #88641: <==commonly_known== 43686 (neg)
                    (Pb_Ba_Bc_secret)

                    ; #12140: <==negation-removal== 72935 (pos)
                    (not (Pa_Bc_not_secret))

                    ; #18213: <==negation-removal== 76973 (pos)
                    (not (Pc_Pa_Pc_not_secret))

                    ; #24814: <==negation-removal== 82868 (pos)
                    (not (Pb_Pc_not_secret))

                    ; #24945: <==negation-removal== 24203 (pos)
                    (not (Ba_Bb_Pc_not_secret))

                    ; #26764: <==negation-removal== 37645 (pos)
                    (not (Bc_Pa_Bc_not_secret))

                    ; #30372: <==negation-removal== 85611 (pos)
                    (not (Pc_Bb_Pc_not_secret))

                    ; #30915: <==negation-removal== 70792 (pos)
                    (not (Ba_Bc_not_secret))

                    ; #33719: <==negation-removal== 11295 (pos)
                    (not (Bc_Ba_Pc_not_secret))

                    ; #36921: <==negation-removal== 15399 (pos)
                    (not (Pb_Pa_Bc_not_secret))

                    ; #37659: <==negation-removal== 88641 (pos)
                    (not (Bb_Pa_Pc_not_secret))

                    ; #39304: <==negation-removal== 16255 (pos)
                    (not (Bb_Pa_Bc_not_secret))

                    ; #40492: <==negation-removal== 20738 (pos)
                    (not (Pa_Bb_Bc_not_secret))

                    ; #40695: <==negation-removal== 41949 (pos)
                    (not (Pc_Pb_Pc_not_secret))

                    ; #41201: <==negation-removal== 56669 (pos)
                    (not (Ba_Pc_not_secret))

                    ; #41964: <==negation-removal== 31373 (pos)
                    (not (Pb_Ba_Bc_not_secret))

                    ; #43686: <==negation-removal== 66407 (pos)
                    (not (Pa_Pc_not_secret))

                    ; #44839: <==negation-removal== 48807 (pos)
                    (not (Pc_Ba_Bc_not_secret))

                    ; #46928: <==negation-removal== 21161 (pos)
                    (not (Pa_Bb_Pc_not_secret))

                    ; #47516: <==negation-removal== 77274 (pos)
                    (not (Bc_Pa_Pc_not_secret))

                    ; #51234: <==negation-removal== 50943 (pos)
                    (not (Pb_Bc_not_secret))

                    ; #52826: <==negation-removal== 75258 (pos)
                    (not (Pb_Pa_Pc_not_secret))

                    ; #54478: <==negation-removal== 58527 (pos)
                    (not (Bb_Bc_not_secret))

                    ; #54978: <==negation-removal== 26881 (pos)
                    (not (Bc_Bb_Pc_not_secret))

                    ; #55763: <==negation-removal== 75326 (pos)
                    (not (Bc_Bb_Bc_not_secret))

                    ; #57927: <==negation-removal== 74721 (pos)
                    (not (Ba_Pb_Pc_not_secret))

                    ; #61846: <==negation-removal== 17067 (pos)
                    (not (Bc_Pb_Pc_not_secret))

                    ; #63916: <==negation-removal== 58376 (pos)
                    (not (Pc_Bb_Bc_not_secret))

                    ; #65405: <==negation-removal== 67448 (pos)
                    (not (Pc_Ba_Pc_not_secret))

                    ; #66233: <==negation-removal== 23233 (pos)
                    (not (Pc_Pb_Bc_not_secret))

                    ; #67107: <==negation-removal== 62864 (pos)
                    (not (Pa_Pb_Pc_not_secret))

                    ; #67320: <==negation-removal== 40714 (pos)
                    (not (Pc_not_secret))

                    ; #69967: <==negation-removal== 38344 (pos)
                    (not (Bc_Pb_Bc_not_secret))

                    ; #71976: <==negation-removal== 44987 (pos)
                    (not (Ba_Bb_Bc_not_secret))

                    ; #74700: <==negation-removal== 20161 (pos)
                    (not (Pc_Pa_Bc_not_secret))

                    ; #74946: <==negation-removal== 68513 (pos)
                    (not (Bb_Pc_not_secret))

                    ; #75070: <==negation-removal== 51058 (pos)
                    (not (Ba_Pb_Bc_not_secret))

                    ; #76126: <==negation-removal== 63681 (pos)
                    (not (Bc_Ba_Bc_not_secret))

                    ; #79479: <==negation-removal== 61873 (pos)
                    (not (Bb_Ba_Bc_not_secret))

                    ; #80846: <==negation-removal== 52777 (pos)
                    (not (Pa_Pb_Bc_not_secret))

                    ; #82399: <==negation-removal== 35202 (pos)
                    (not (Bc_not_secret))

                    ; #91022: <==negation-removal== 59030 (pos)
                    (not (Bb_Ba_Pc_not_secret))

                    ; #91413: <==negation-removal== 57789 (pos)
                    (not (Pb_Ba_Pc_not_secret))))

)