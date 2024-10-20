(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_checked_p1)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
        (not_succ_p1_p1)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (at_a_p1)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (checked_p1)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (leader_a)
        (leader_b)
        (leader_c)
        (succ_p1_p1)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #12021: <==closure== 27929 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #27929: origin
                    (Ba_not_survivorat_s_p1)

                    ; #31519: <==negation-removal== 12021 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #59580: <==negation-removal== 27929 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_b)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #38942: <==closure== 60097 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #60097: origin
                    (Bb_not_survivorat_s_p1)

                    ; #15452: <==negation-removal== 60097 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #28887: <==negation-removal== 38942 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_c)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #60209: origin
                    (Bc_not_survivorat_s_p1)

                    ; #85200: <==closure== 60209 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #34856: <==negation-removal== 85200 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #75758: <==negation-removal== 60209 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a)
                           (at_b_p1))
        :effect (and
                    ; #12021: <==closure== 27929 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #27929: origin
                    (Ba_not_survivorat_s_p1)

                    ; #31519: <==negation-removal== 12021 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #59580: <==negation-removal== 27929 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #38942: <==closure== 60097 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #60097: origin
                    (Bb_not_survivorat_s_p1)

                    ; #15452: <==negation-removal== 60097 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #28887: <==negation-removal== 38942 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #60209: origin
                    (Bc_not_survivorat_s_p1)

                    ; #85200: <==closure== 60209 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #34856: <==negation-removal== 85200 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #75758: <==negation-removal== 60209 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #12021: <==closure== 27929 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #27929: origin
                    (Ba_not_survivorat_s_p1)

                    ; #31519: <==negation-removal== 12021 (pos)
                    (not (Ba_survivorat_s_p1))

                    ; #59580: <==negation-removal== 27929 (pos)
                    (not (Pa_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_b)
                           (at_c_p1))
        :effect (and
                    ; #38942: <==closure== 60097 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #60097: origin
                    (Bb_not_survivorat_s_p1)

                    ; #15452: <==negation-removal== 60097 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #28887: <==negation-removal== 38942 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #60209: origin
                    (Bc_not_survivorat_s_p1)

                    ; #85200: <==closure== 60209 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #34856: <==negation-removal== 85200 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #75758: <==negation-removal== 60209 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #28113: <==closure== 84257 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #84257: origin
                    (Ba_not_survivorat_s_p2)

                    ; #57430: <==negation-removal== 84257 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #72195: <==negation-removal== 28113 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #33296: <==closure== 40296 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #40296: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40068: <==negation-removal== 33296 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84731: <==negation-removal== 40296 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #81301: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81653: <==closure== 81301 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #14368: <==negation-removal== 81301 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #79761: <==negation-removal== 81653 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #28113: <==closure== 84257 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #84257: origin
                    (Ba_not_survivorat_s_p2)

                    ; #57430: <==negation-removal== 84257 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #72195: <==negation-removal== 28113 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #33296: <==closure== 40296 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #40296: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40068: <==negation-removal== 33296 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84731: <==negation-removal== 40296 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #81301: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81653: <==closure== 81301 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #14368: <==negation-removal== 81301 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #79761: <==negation-removal== 81653 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (leader_a)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #28113: <==closure== 84257 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #84257: origin
                    (Ba_not_survivorat_s_p2)

                    ; #57430: <==negation-removal== 84257 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #72195: <==negation-removal== 28113 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #33296: <==closure== 40296 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #40296: origin
                    (Bb_not_survivorat_s_p2)

                    ; #40068: <==negation-removal== 33296 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84731: <==negation-removal== 40296 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #81301: origin
                    (Bc_not_survivorat_s_p2)

                    ; #81653: <==closure== 81301 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #14368: <==negation-removal== 81301 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #79761: <==negation-removal== 81653 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_a)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #18728: <==closure== 48211 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #48211: origin
                    (Ba_not_survivorat_s_p3)

                    ; #39331: <==negation-removal== 18728 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #42775: <==negation-removal== 48211 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_b)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #12521: origin
                    (Bb_not_survivorat_s_p3)

                    ; #61251: <==closure== 12521 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #16534: <==negation-removal== 12521 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #38001: <==negation-removal== 61251 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_c)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #31198: <==closure== 74735 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #74735: origin
                    (Bc_not_survivorat_s_p3)

                    ; #20205: <==negation-removal== 74735 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #81180: <==negation-removal== 31198 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_a))
        :effect (and
                    ; #18728: <==closure== 48211 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #48211: origin
                    (Ba_not_survivorat_s_p3)

                    ; #39331: <==negation-removal== 18728 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #42775: <==negation-removal== 48211 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (at_b_p3))
        :effect (and
                    ; #12521: origin
                    (Bb_not_survivorat_s_p3)

                    ; #61251: <==closure== 12521 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #16534: <==negation-removal== 12521 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #38001: <==negation-removal== 61251 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3))
        :effect (and
                    ; #31198: <==closure== 74735 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #74735: origin
                    (Bc_not_survivorat_s_p3)

                    ; #20205: <==negation-removal== 74735 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #81180: <==negation-removal== 31198 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #18728: <==closure== 48211 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #48211: origin
                    (Ba_not_survivorat_s_p3)

                    ; #39331: <==negation-removal== 18728 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #42775: <==negation-removal== 48211 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #12521: origin
                    (Bb_not_survivorat_s_p3)

                    ; #61251: <==closure== 12521 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #16534: <==negation-removal== 12521 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #38001: <==negation-removal== 61251 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #31198: <==closure== 74735 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #74735: origin
                    (Bc_not_survivorat_s_p3)

                    ; #20205: <==negation-removal== 74735 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #81180: <==negation-removal== 31198 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #27518: <==closure== 93156 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #93156: origin
                    (Ba_not_survivorat_s_p4)

                    ; #12508: <==negation-removal== 93156 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #84231: <==negation-removal== 27518 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #14984: <==closure== 61137 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #61137: origin
                    (Bb_not_survivorat_s_p4)

                    ; #61920: <==negation-removal== 61137 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #84811: <==negation-removal== 14984 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #11432: <==closure== 19463 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #19463: origin
                    (Bc_not_survivorat_s_p4)

                    ; #37369: <==negation-removal== 11432 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #91420: <==negation-removal== 19463 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #27518: <==closure== 93156 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #93156: origin
                    (Ba_not_survivorat_s_p4)

                    ; #12508: <==negation-removal== 93156 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #84231: <==negation-removal== 27518 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #14984: <==closure== 61137 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #61137: origin
                    (Bb_not_survivorat_s_p4)

                    ; #61920: <==negation-removal== 61137 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #84811: <==negation-removal== 14984 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (leader_c)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #11432: <==closure== 19463 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #19463: origin
                    (Bc_not_survivorat_s_p4)

                    ; #37369: <==negation-removal== 11432 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #91420: <==negation-removal== 19463 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #27518: <==closure== 93156 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #93156: origin
                    (Ba_not_survivorat_s_p4)

                    ; #12508: <==negation-removal== 93156 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #84231: <==negation-removal== 27518 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #14984: <==closure== 61137 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #61137: origin
                    (Bb_not_survivorat_s_p4)

                    ; #61920: <==negation-removal== 61137 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #84811: <==negation-removal== 14984 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #11432: <==closure== 19463 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #19463: origin
                    (Bc_not_survivorat_s_p4)

                    ; #37369: <==negation-removal== 11432 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #91420: <==negation-removal== 19463 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_a))
        :effect (and
                    ; #31784: <==closure== 44243 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #44243: origin
                    (Ba_not_survivorat_s_p5)

                    ; #38657: <==negation-removal== 31784 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #72208: <==negation-removal== 44243 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #42467: origin
                    (Bb_not_survivorat_s_p5)

                    ; #64190: <==closure== 42467 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #76687: <==negation-removal== 64190 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #80135: <==negation-removal== 42467 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #25566: origin
                    (Bc_not_survivorat_s_p5)

                    ; #65436: <==closure== 25566 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #23090: <==negation-removal== 65436 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #46749: <==negation-removal== 25566 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #31784: <==closure== 44243 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #44243: origin
                    (Ba_not_survivorat_s_p5)

                    ; #38657: <==negation-removal== 31784 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #72208: <==negation-removal== 44243 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #42467: origin
                    (Bb_not_survivorat_s_p5)

                    ; #64190: <==closure== 42467 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #76687: <==negation-removal== 64190 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #80135: <==negation-removal== 42467 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #25566: origin
                    (Bc_not_survivorat_s_p5)

                    ; #65436: <==closure== 25566 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #23090: <==negation-removal== 65436 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #46749: <==negation-removal== 25566 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #31784: <==closure== 44243 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #44243: origin
                    (Ba_not_survivorat_s_p5)

                    ; #38657: <==negation-removal== 31784 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #72208: <==negation-removal== 44243 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #42467: origin
                    (Bb_not_survivorat_s_p5)

                    ; #64190: <==closure== 42467 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #76687: <==negation-removal== 64190 (pos)
                    (not (Bb_survivorat_s_p5))

                    ; #80135: <==negation-removal== 42467 (pos)
                    (not (Pb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #25566: origin
                    (Bc_not_survivorat_s_p5)

                    ; #65436: <==closure== 25566 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #23090: <==negation-removal== 65436 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #46749: <==negation-removal== 25566 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_a)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #75238: <==closure== 90352 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #90352: origin
                    (Ba_not_survivorat_s_p6)

                    ; #53903: <==negation-removal== 90352 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87177: <==negation-removal== 75238 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_b)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #47885: origin
                    (Bb_not_survivorat_s_p6)

                    ; #77491: <==closure== 47885 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #12818: <==negation-removal== 77491 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #80888: <==negation-removal== 47885 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_c)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #64985: <==closure== 89938 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #89938: origin
                    (Bc_not_survivorat_s_p6)

                    ; #13739: <==negation-removal== 64985 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #39312: <==negation-removal== 89938 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #75238: <==closure== 90352 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #90352: origin
                    (Ba_not_survivorat_s_p6)

                    ; #53903: <==negation-removal== 90352 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87177: <==negation-removal== 75238 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (leader_b)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #47885: origin
                    (Bb_not_survivorat_s_p6)

                    ; #77491: <==closure== 47885 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #12818: <==negation-removal== 77491 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #80888: <==negation-removal== 47885 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (leader_c)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #64985: <==closure== 89938 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #89938: origin
                    (Bc_not_survivorat_s_p6)

                    ; #13739: <==negation-removal== 64985 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #39312: <==negation-removal== 89938 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_a)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #75238: <==closure== 90352 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #90352: origin
                    (Ba_not_survivorat_s_p6)

                    ; #53903: <==negation-removal== 90352 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87177: <==negation-removal== 75238 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #47885: origin
                    (Bb_not_survivorat_s_p6)

                    ; #77491: <==closure== 47885 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #12818: <==negation-removal== 77491 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #80888: <==negation-removal== 47885 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_c)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #64985: <==closure== 89938 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #89938: origin
                    (Bc_not_survivorat_s_p6)

                    ; #13739: <==negation-removal== 64985 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #39312: <==negation-removal== 89938 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #29767: origin
                    (Ba_not_survivorat_s_p7)

                    ; #81788: <==closure== 29767 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #42079: <==negation-removal== 29767 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #62235: <==negation-removal== 81788 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #32382: <==closure== 56881 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #56881: origin
                    (Bb_not_survivorat_s_p7)

                    ; #57565: <==negation-removal== 56881 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #72001: <==negation-removal== 32382 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #65253: origin
                    (Bc_not_survivorat_s_p7)

                    ; #82660: <==closure== 65253 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #18528: <==negation-removal== 65253 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #78453: <==negation-removal== 82660 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #29767: origin
                    (Ba_not_survivorat_s_p7)

                    ; #81788: <==closure== 29767 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #42079: <==negation-removal== 29767 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #62235: <==negation-removal== 81788 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #32382: <==closure== 56881 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #56881: origin
                    (Bb_not_survivorat_s_p7)

                    ; #57565: <==negation-removal== 56881 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #72001: <==negation-removal== 32382 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #65253: origin
                    (Bc_not_survivorat_s_p7)

                    ; #82660: <==closure== 65253 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #18528: <==negation-removal== 65253 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #78453: <==negation-removal== 82660 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (at_c_p7)
                           (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #29767: origin
                    (Ba_not_survivorat_s_p7)

                    ; #81788: <==closure== 29767 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #42079: <==negation-removal== 29767 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #62235: <==negation-removal== 81788 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #32382: <==closure== 56881 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #56881: origin
                    (Bb_not_survivorat_s_p7)

                    ; #57565: <==negation-removal== 56881 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #72001: <==negation-removal== 32382 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (at_c_p7)
                           (leader_c)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #65253: origin
                    (Bc_not_survivorat_s_p7)

                    ; #82660: <==closure== 65253 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #18528: <==negation-removal== 65253 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #78453: <==negation-removal== 82660 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #32854: <==closure== 83183 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #83183: origin
                    (Ba_not_survivorat_s_p8)

                    ; #13715: <==negation-removal== 83183 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #20208: <==negation-removal== 32854 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #64340: origin
                    (Bb_not_survivorat_s_p8)

                    ; #80318: <==closure== 64340 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 80318 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #88441: <==negation-removal== 64340 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_c)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #31155: <==closure== 69145 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69145: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15986: <==negation-removal== 69145 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #50674: <==negation-removal== 31155 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #32854: <==closure== 83183 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #83183: origin
                    (Ba_not_survivorat_s_p8)

                    ; #13715: <==negation-removal== 83183 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #20208: <==negation-removal== 32854 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #64340: origin
                    (Bb_not_survivorat_s_p8)

                    ; #80318: <==closure== 64340 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 80318 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #88441: <==negation-removal== 64340 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (at_b_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #31155: <==closure== 69145 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69145: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15986: <==negation-removal== 69145 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #50674: <==negation-removal== 31155 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #32854: <==closure== 83183 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #83183: origin
                    (Ba_not_survivorat_s_p8)

                    ; #13715: <==negation-removal== 83183 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #20208: <==negation-removal== 32854 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #64340: origin
                    (Bb_not_survivorat_s_p8)

                    ; #80318: <==closure== 64340 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 80318 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #88441: <==negation-removal== 64340 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #31155: <==closure== 69145 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #69145: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15986: <==negation-removal== 69145 (pos)
                    (not (Pc_survivorat_s_p8))

                    ; #50674: <==negation-removal== 31155 (pos)
                    (not (Bc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #61088: <==closure== 68523 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #68523: origin
                    (Ba_not_survivorat_s_p9)

                    ; #21233: <==negation-removal== 61088 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #54675: <==negation-removal== 68523 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #67387: <==closure== 74009 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #74009: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44617: <==negation-removal== 74009 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #91645: <==negation-removal== 67387 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #59374: <==closure== 60353 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #60353: origin
                    (Bc_not_survivorat_s_p9)

                    ; #14455: <==negation-removal== 60353 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #62461: <==negation-removal== 59374 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #61088: <==closure== 68523 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #68523: origin
                    (Ba_not_survivorat_s_p9)

                    ; #21233: <==negation-removal== 61088 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #54675: <==negation-removal== 68523 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #67387: <==closure== 74009 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #74009: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44617: <==negation-removal== 74009 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #91645: <==negation-removal== 67387 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #59374: <==closure== 60353 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #60353: origin
                    (Bc_not_survivorat_s_p9)

                    ; #14455: <==negation-removal== 60353 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #62461: <==negation-removal== 59374 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_a)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #61088: <==closure== 68523 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #68523: origin
                    (Ba_not_survivorat_s_p9)

                    ; #21233: <==negation-removal== 61088 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #54675: <==negation-removal== 68523 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #67387: <==closure== 74009 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #74009: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44617: <==negation-removal== 74009 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #91645: <==negation-removal== 67387 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_c)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #59374: <==closure== 60353 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #60353: origin
                    (Bc_not_survivorat_s_p9)

                    ; #14455: <==negation-removal== 60353 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #62461: <==negation-removal== 59374 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #31519: origin
                    (Ba_survivorat_s_p1)

                    ; #59580: <==closure== 31519 (pos)
                    (Pa_survivorat_s_p1)

                    ; #12021: <==negation-removal== 31519 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #27929: <==negation-removal== 59580 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_b)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #15452: <==closure== 28887 (pos)
                    (Pb_survivorat_s_p1)

                    ; #28887: origin
                    (Bb_survivorat_s_p1)

                    ; #38942: <==negation-removal== 28887 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60097: <==negation-removal== 15452 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_c)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #34856: origin
                    (Bc_survivorat_s_p1)

                    ; #75758: <==closure== 34856 (pos)
                    (Pc_survivorat_s_p1)

                    ; #60209: <==negation-removal== 75758 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85200: <==negation-removal== 34856 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a)
                           (at_b_p1))
        :effect (and
                    ; #31519: origin
                    (Ba_survivorat_s_p1)

                    ; #59580: <==closure== 31519 (pos)
                    (Pa_survivorat_s_p1)

                    ; #12021: <==negation-removal== 31519 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #27929: <==negation-removal== 59580 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #15452: <==closure== 28887 (pos)
                    (Pb_survivorat_s_p1)

                    ; #28887: origin
                    (Bb_survivorat_s_p1)

                    ; #38942: <==negation-removal== 28887 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60097: <==negation-removal== 15452 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #34856: origin
                    (Bc_survivorat_s_p1)

                    ; #75758: <==closure== 34856 (pos)
                    (Pc_survivorat_s_p1)

                    ; #60209: <==negation-removal== 75758 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85200: <==negation-removal== 34856 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #31519: origin
                    (Ba_survivorat_s_p1)

                    ; #59580: <==closure== 31519 (pos)
                    (Pa_survivorat_s_p1)

                    ; #12021: <==negation-removal== 31519 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #27929: <==negation-removal== 59580 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (leader_b)
                           (at_c_p1))
        :effect (and
                    ; #15452: <==closure== 28887 (pos)
                    (Pb_survivorat_s_p1)

                    ; #28887: origin
                    (Bb_survivorat_s_p1)

                    ; #38942: <==negation-removal== 28887 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60097: <==negation-removal== 15452 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #34856: origin
                    (Bc_survivorat_s_p1)

                    ; #75758: <==closure== 34856 (pos)
                    (Pc_survivorat_s_p1)

                    ; #60209: <==negation-removal== 75758 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #85200: <==negation-removal== 34856 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #57430: <==closure== 72195 (pos)
                    (Pa_survivorat_s_p2)

                    ; #72195: origin
                    (Ba_survivorat_s_p2)

                    ; #28113: <==negation-removal== 72195 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84257: <==negation-removal== 57430 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #40068: origin
                    (Bb_survivorat_s_p2)

                    ; #84731: <==closure== 40068 (pos)
                    (Pb_survivorat_s_p2)

                    ; #33296: <==negation-removal== 40068 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40296: <==negation-removal== 84731 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #14368: <==closure== 79761 (pos)
                    (Pc_survivorat_s_p2)

                    ; #79761: origin
                    (Bc_survivorat_s_p2)

                    ; #81301: <==negation-removal== 14368 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81653: <==negation-removal== 79761 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #57430: <==closure== 72195 (pos)
                    (Pa_survivorat_s_p2)

                    ; #72195: origin
                    (Ba_survivorat_s_p2)

                    ; #28113: <==negation-removal== 72195 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84257: <==negation-removal== 57430 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #40068: origin
                    (Bb_survivorat_s_p2)

                    ; #84731: <==closure== 40068 (pos)
                    (Pb_survivorat_s_p2)

                    ; #33296: <==negation-removal== 40068 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40296: <==negation-removal== 84731 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #14368: <==closure== 79761 (pos)
                    (Pc_survivorat_s_p2)

                    ; #79761: origin
                    (Bc_survivorat_s_p2)

                    ; #81301: <==negation-removal== 14368 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81653: <==negation-removal== 79761 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (leader_a)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #57430: <==closure== 72195 (pos)
                    (Pa_survivorat_s_p2)

                    ; #72195: origin
                    (Ba_survivorat_s_p2)

                    ; #28113: <==negation-removal== 72195 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84257: <==negation-removal== 57430 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #40068: origin
                    (Bb_survivorat_s_p2)

                    ; #84731: <==closure== 40068 (pos)
                    (Pb_survivorat_s_p2)

                    ; #33296: <==negation-removal== 40068 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #40296: <==negation-removal== 84731 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #14368: <==closure== 79761 (pos)
                    (Pc_survivorat_s_p2)

                    ; #79761: origin
                    (Bc_survivorat_s_p2)

                    ; #81301: <==negation-removal== 14368 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81653: <==negation-removal== 79761 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_a)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #39331: origin
                    (Ba_survivorat_s_p3)

                    ; #42775: <==closure== 39331 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18728: <==negation-removal== 39331 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #48211: <==negation-removal== 42775 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_b)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #16534: <==closure== 38001 (pos)
                    (Pb_survivorat_s_p3)

                    ; #38001: origin
                    (Bb_survivorat_s_p3)

                    ; #12521: <==negation-removal== 16534 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61251: <==negation-removal== 38001 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_c)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #20205: <==closure== 81180 (pos)
                    (Pc_survivorat_s_p3)

                    ; #81180: origin
                    (Bc_survivorat_s_p3)

                    ; #31198: <==negation-removal== 81180 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74735: <==negation-removal== 20205 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_a))
        :effect (and
                    ; #39331: origin
                    (Ba_survivorat_s_p3)

                    ; #42775: <==closure== 39331 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18728: <==negation-removal== 39331 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #48211: <==negation-removal== 42775 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (at_b_p3))
        :effect (and
                    ; #16534: <==closure== 38001 (pos)
                    (Pb_survivorat_s_p3)

                    ; #38001: origin
                    (Bb_survivorat_s_p3)

                    ; #12521: <==negation-removal== 16534 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61251: <==negation-removal== 38001 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3))
        :effect (and
                    ; #20205: <==closure== 81180 (pos)
                    (Pc_survivorat_s_p3)

                    ; #81180: origin
                    (Bc_survivorat_s_p3)

                    ; #31198: <==negation-removal== 81180 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74735: <==negation-removal== 20205 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #39331: origin
                    (Ba_survivorat_s_p3)

                    ; #42775: <==closure== 39331 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18728: <==negation-removal== 39331 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #48211: <==negation-removal== 42775 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #16534: <==closure== 38001 (pos)
                    (Pb_survivorat_s_p3)

                    ; #38001: origin
                    (Bb_survivorat_s_p3)

                    ; #12521: <==negation-removal== 16534 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #61251: <==negation-removal== 38001 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #20205: <==closure== 81180 (pos)
                    (Pc_survivorat_s_p3)

                    ; #81180: origin
                    (Bc_survivorat_s_p3)

                    ; #31198: <==negation-removal== 81180 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74735: <==negation-removal== 20205 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #12508: <==closure== 84231 (pos)
                    (Pa_survivorat_s_p4)

                    ; #84231: origin
                    (Ba_survivorat_s_p4)

                    ; #27518: <==negation-removal== 84231 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #93156: <==negation-removal== 12508 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #61920: <==closure== 84811 (pos)
                    (Pb_survivorat_s_p4)

                    ; #84811: origin
                    (Bb_survivorat_s_p4)

                    ; #14984: <==negation-removal== 84811 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61137: <==negation-removal== 61920 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_c)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #37369: origin
                    (Bc_survivorat_s_p4)

                    ; #91420: <==closure== 37369 (pos)
                    (Pc_survivorat_s_p4)

                    ; #11432: <==negation-removal== 37369 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #19463: <==negation-removal== 91420 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #12508: <==closure== 84231 (pos)
                    (Pa_survivorat_s_p4)

                    ; #84231: origin
                    (Ba_survivorat_s_p4)

                    ; #27518: <==negation-removal== 84231 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #93156: <==negation-removal== 12508 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #61920: <==closure== 84811 (pos)
                    (Pb_survivorat_s_p4)

                    ; #84811: origin
                    (Bb_survivorat_s_p4)

                    ; #14984: <==negation-removal== 84811 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61137: <==negation-removal== 61920 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (leader_c)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #37369: origin
                    (Bc_survivorat_s_p4)

                    ; #91420: <==closure== 37369 (pos)
                    (Pc_survivorat_s_p4)

                    ; #11432: <==negation-removal== 37369 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #19463: <==negation-removal== 91420 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_a)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #12508: <==closure== 84231 (pos)
                    (Pa_survivorat_s_p4)

                    ; #84231: origin
                    (Ba_survivorat_s_p4)

                    ; #27518: <==negation-removal== 84231 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #93156: <==negation-removal== 12508 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #61920: <==closure== 84811 (pos)
                    (Pb_survivorat_s_p4)

                    ; #84811: origin
                    (Bb_survivorat_s_p4)

                    ; #14984: <==negation-removal== 84811 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61137: <==negation-removal== 61920 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #37369: origin
                    (Bc_survivorat_s_p4)

                    ; #91420: <==closure== 37369 (pos)
                    (Pc_survivorat_s_p4)

                    ; #11432: <==negation-removal== 37369 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #19463: <==negation-removal== 91420 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_a))
        :effect (and
                    ; #38657: origin
                    (Ba_survivorat_s_p5)

                    ; #72208: <==closure== 38657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31784: <==negation-removal== 38657 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #44243: <==negation-removal== 72208 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #76687: origin
                    (Bb_survivorat_s_p5)

                    ; #80135: <==closure== 76687 (pos)
                    (Pb_survivorat_s_p5)

                    ; #42467: <==negation-removal== 80135 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64190: <==negation-removal== 76687 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #23090: origin
                    (Bc_survivorat_s_p5)

                    ; #46749: <==closure== 23090 (pos)
                    (Pc_survivorat_s_p5)

                    ; #25566: <==negation-removal== 46749 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #65436: <==negation-removal== 23090 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #38657: origin
                    (Ba_survivorat_s_p5)

                    ; #72208: <==closure== 38657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31784: <==negation-removal== 38657 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #44243: <==negation-removal== 72208 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_b)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #76687: origin
                    (Bb_survivorat_s_p5)

                    ; #80135: <==closure== 76687 (pos)
                    (Pb_survivorat_s_p5)

                    ; #42467: <==negation-removal== 80135 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64190: <==negation-removal== 76687 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #23090: origin
                    (Bc_survivorat_s_p5)

                    ; #46749: <==closure== 23090 (pos)
                    (Pc_survivorat_s_p5)

                    ; #25566: <==negation-removal== 46749 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #65436: <==negation-removal== 23090 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #38657: origin
                    (Ba_survivorat_s_p5)

                    ; #72208: <==closure== 38657 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31784: <==negation-removal== 38657 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #44243: <==negation-removal== 72208 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #76687: origin
                    (Bb_survivorat_s_p5)

                    ; #80135: <==closure== 76687 (pos)
                    (Pb_survivorat_s_p5)

                    ; #42467: <==negation-removal== 80135 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #64190: <==negation-removal== 76687 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_c)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #23090: origin
                    (Bc_survivorat_s_p5)

                    ; #46749: <==closure== 23090 (pos)
                    (Pc_survivorat_s_p5)

                    ; #25566: <==negation-removal== 46749 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #65436: <==negation-removal== 23090 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_a)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #53903: <==closure== 87177 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87177: origin
                    (Ba_survivorat_s_p6)

                    ; #75238: <==negation-removal== 87177 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #90352: <==negation-removal== 53903 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_b)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #12818: origin
                    (Bb_survivorat_s_p6)

                    ; #80888: <==closure== 12818 (pos)
                    (Pb_survivorat_s_p6)

                    ; #47885: <==negation-removal== 80888 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77491: <==negation-removal== 12818 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (leader_c)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #13739: origin
                    (Bc_survivorat_s_p6)

                    ; #39312: <==closure== 13739 (pos)
                    (Pc_survivorat_s_p6)

                    ; #64985: <==negation-removal== 13739 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89938: <==negation-removal== 39312 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #53903: <==closure== 87177 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87177: origin
                    (Ba_survivorat_s_p6)

                    ; #75238: <==negation-removal== 87177 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #90352: <==negation-removal== 53903 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (leader_b)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12818: origin
                    (Bb_survivorat_s_p6)

                    ; #80888: <==closure== 12818 (pos)
                    (Pb_survivorat_s_p6)

                    ; #47885: <==negation-removal== 80888 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77491: <==negation-removal== 12818 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (leader_c)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #13739: origin
                    (Bc_survivorat_s_p6)

                    ; #39312: <==closure== 13739 (pos)
                    (Pc_survivorat_s_p6)

                    ; #64985: <==negation-removal== 13739 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89938: <==negation-removal== 39312 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_a)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #53903: <==closure== 87177 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87177: origin
                    (Ba_survivorat_s_p6)

                    ; #75238: <==negation-removal== 87177 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #90352: <==negation-removal== 53903 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #12818: origin
                    (Bb_survivorat_s_p6)

                    ; #80888: <==closure== 12818 (pos)
                    (Pb_survivorat_s_p6)

                    ; #47885: <==negation-removal== 80888 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77491: <==negation-removal== 12818 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (leader_c)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #13739: origin
                    (Bc_survivorat_s_p6)

                    ; #39312: <==closure== 13739 (pos)
                    (Pc_survivorat_s_p6)

                    ; #64985: <==negation-removal== 13739 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89938: <==negation-removal== 39312 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #42079: <==closure== 62235 (pos)
                    (Pa_survivorat_s_p7)

                    ; #62235: origin
                    (Ba_survivorat_s_p7)

                    ; #29767: <==negation-removal== 42079 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #81788: <==negation-removal== 62235 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #57565: <==closure== 72001 (pos)
                    (Pb_survivorat_s_p7)

                    ; #72001: origin
                    (Bb_survivorat_s_p7)

                    ; #32382: <==negation-removal== 72001 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #56881: <==negation-removal== 57565 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #18528: <==closure== 78453 (pos)
                    (Pc_survivorat_s_p7)

                    ; #78453: origin
                    (Bc_survivorat_s_p7)

                    ; #65253: <==negation-removal== 18528 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #82660: <==negation-removal== 78453 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #42079: <==closure== 62235 (pos)
                    (Pa_survivorat_s_p7)

                    ; #62235: origin
                    (Ba_survivorat_s_p7)

                    ; #29767: <==negation-removal== 42079 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #81788: <==negation-removal== 62235 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #57565: <==closure== 72001 (pos)
                    (Pb_survivorat_s_p7)

                    ; #72001: origin
                    (Bb_survivorat_s_p7)

                    ; #32382: <==negation-removal== 72001 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #56881: <==negation-removal== 57565 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #18528: <==closure== 78453 (pos)
                    (Pc_survivorat_s_p7)

                    ; #78453: origin
                    (Bc_survivorat_s_p7)

                    ; #65253: <==negation-removal== 18528 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #82660: <==negation-removal== 78453 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (at_c_p7)
                           (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #42079: <==closure== 62235 (pos)
                    (Pa_survivorat_s_p7)

                    ; #62235: origin
                    (Ba_survivorat_s_p7)

                    ; #29767: <==negation-removal== 42079 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #81788: <==negation-removal== 62235 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (at_c_p7)
                           (leader_b)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #57565: <==closure== 72001 (pos)
                    (Pb_survivorat_s_p7)

                    ; #72001: origin
                    (Bb_survivorat_s_p7)

                    ; #32382: <==negation-removal== 72001 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #56881: <==negation-removal== 57565 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (at_c_p7)
                           (leader_c)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #18528: <==closure== 78453 (pos)
                    (Pc_survivorat_s_p7)

                    ; #78453: origin
                    (Bc_survivorat_s_p7)

                    ; #65253: <==negation-removal== 18528 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #82660: <==negation-removal== 78453 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_a)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #13715: <==closure== 20208 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20208: origin
                    (Ba_survivorat_s_p8)

                    ; #32854: <==negation-removal== 20208 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #83183: <==negation-removal== 13715 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #17378: origin
                    (Bb_survivorat_s_p8)

                    ; #88441: <==closure== 17378 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64340: <==negation-removal== 88441 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #80318: <==negation-removal== 17378 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_c)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #15986: <==closure== 50674 (pos)
                    (Pc_survivorat_s_p8)

                    ; #50674: origin
                    (Bc_survivorat_s_p8)

                    ; #31155: <==negation-removal== 50674 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69145: <==negation-removal== 15986 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_a)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #13715: <==closure== 20208 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20208: origin
                    (Ba_survivorat_s_p8)

                    ; #32854: <==negation-removal== 20208 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #83183: <==negation-removal== 13715 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (leader_b)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #17378: origin
                    (Bb_survivorat_s_p8)

                    ; #88441: <==closure== 17378 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64340: <==negation-removal== 88441 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #80318: <==negation-removal== 17378 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (at_b_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #15986: <==closure== 50674 (pos)
                    (Pc_survivorat_s_p8)

                    ; #50674: origin
                    (Bc_survivorat_s_p8)

                    ; #31155: <==negation-removal== 50674 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69145: <==negation-removal== 15986 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #13715: <==closure== 20208 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20208: origin
                    (Ba_survivorat_s_p8)

                    ; #32854: <==negation-removal== 20208 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #83183: <==negation-removal== 13715 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #17378: origin
                    (Bb_survivorat_s_p8)

                    ; #88441: <==closure== 17378 (pos)
                    (Pb_survivorat_s_p8)

                    ; #64340: <==negation-removal== 88441 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #80318: <==negation-removal== 17378 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #15986: <==closure== 50674 (pos)
                    (Pc_survivorat_s_p8)

                    ; #50674: origin
                    (Bc_survivorat_s_p8)

                    ; #31155: <==negation-removal== 50674 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #69145: <==negation-removal== 15986 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #21233: origin
                    (Ba_survivorat_s_p9)

                    ; #54675: <==closure== 21233 (pos)
                    (Pa_survivorat_s_p9)

                    ; #61088: <==negation-removal== 21233 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68523: <==negation-removal== 54675 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #44617: <==closure== 91645 (pos)
                    (Pb_survivorat_s_p9)

                    ; #91645: origin
                    (Bb_survivorat_s_p9)

                    ; #67387: <==negation-removal== 91645 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #74009: <==negation-removal== 44617 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #14455: <==closure== 62461 (pos)
                    (Pc_survivorat_s_p9)

                    ; #62461: origin
                    (Bc_survivorat_s_p9)

                    ; #59374: <==negation-removal== 62461 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #60353: <==negation-removal== 14455 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #21233: origin
                    (Ba_survivorat_s_p9)

                    ; #54675: <==closure== 21233 (pos)
                    (Pa_survivorat_s_p9)

                    ; #61088: <==negation-removal== 21233 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68523: <==negation-removal== 54675 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #44617: <==closure== 91645 (pos)
                    (Pb_survivorat_s_p9)

                    ; #91645: origin
                    (Bb_survivorat_s_p9)

                    ; #67387: <==negation-removal== 91645 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #74009: <==negation-removal== 44617 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #14455: <==closure== 62461 (pos)
                    (Pc_survivorat_s_p9)

                    ; #62461: origin
                    (Bc_survivorat_s_p9)

                    ; #59374: <==negation-removal== 62461 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #60353: <==negation-removal== 14455 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_a)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #21233: origin
                    (Ba_survivorat_s_p9)

                    ; #54675: <==closure== 21233 (pos)
                    (Pa_survivorat_s_p9)

                    ; #61088: <==negation-removal== 21233 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #68523: <==negation-removal== 54675 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #44617: <==closure== 91645 (pos)
                    (Pb_survivorat_s_p9)

                    ; #91645: origin
                    (Bb_survivorat_s_p9)

                    ; #67387: <==negation-removal== 91645 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #74009: <==negation-removal== 44617 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (leader_c)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #14455: <==closure== 62461 (pos)
                    (Pc_survivorat_s_p9)

                    ; #62461: origin
                    (Bc_survivorat_s_p9)

                    ; #59374: <==negation-removal== 62461 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #60353: <==negation-removal== 14455 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #71643: origin
                    (not_at_a_p1)

                    ; #80492: origin
                    (at_a_p1)

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #53516: origin
                    (at_a_p2)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #52877: origin
                    (at_a_p3)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #35441: origin
                    (at_a_p4)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #47988: origin
                    (at_a_p5)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #55655: origin
                    (at_a_p7)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #61186: origin
                    (at_a_p9)

                    ; #71643: origin
                    (not_at_a_p1)

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))

                    ; #80492: <==negation-removal== 71643 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #80492: origin
                    (at_a_p1)

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #53516: origin
                    (at_a_p2)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #52877: origin
                    (at_a_p3)

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #35441: origin
                    (at_a_p4)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #47988: origin
                    (at_a_p5)

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #35415: origin
                    (not_at_a_p2)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #55655: origin
                    (at_a_p7)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #35415: origin
                    (not_at_a_p2)

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #35415: origin
                    (not_at_a_p2)

                    ; #61186: origin
                    (at_a_p9)

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))

                    ; #53516: <==negation-removal== 35415 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #67200: origin
                    (not_at_a_p3)

                    ; #80492: origin
                    (at_a_p1)

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #53516: origin
                    (at_a_p2)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52877: origin
                    (at_a_p3)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #35441: origin
                    (at_a_p4)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #47988: origin
                    (at_a_p5)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #55655: origin
                    (at_a_p7)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #61186: origin
                    (at_a_p9)

                    ; #67200: origin
                    (not_at_a_p3)

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))

                    ; #52877: <==negation-removal== 67200 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #80492: origin
                    (at_a_p1)

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #53516: origin
                    (at_a_p2)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #52877: origin
                    (at_a_p3)

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #35441: origin
                    (at_a_p4)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #47988: origin
                    (at_a_p5)

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #26293: origin
                    (not_at_a_p4)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #55655: origin
                    (at_a_p7)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #26293: origin
                    (not_at_a_p4)

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #26293: origin
                    (not_at_a_p4)

                    ; #61186: origin
                    (at_a_p9)

                    ; #35441: <==negation-removal== 26293 (pos)
                    (not (at_a_p4))

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #56629: origin
                    (not_at_a_p5)

                    ; #80492: origin
                    (at_a_p1)

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #53516: origin
                    (at_a_p2)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52877: origin
                    (at_a_p3)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #35441: origin
                    (at_a_p4)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #47988: origin
                    (at_a_p5)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #55655: origin
                    (at_a_p7)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #56629: origin
                    (not_at_a_p5)

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #56629: origin
                    (not_at_a_p5)

                    ; #61186: origin
                    (at_a_p9)

                    ; #47988: <==negation-removal== 56629 (pos)
                    (not (at_a_p5))

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #80492: origin
                    (at_a_p1)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #53516: origin
                    (at_a_p2)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #52877: origin
                    (at_a_p3)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #35441: origin
                    (at_a_p4)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #47988: origin
                    (at_a_p5)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #19789: origin
                    (at_a_p6)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #55655: origin
                    (at_a_p7)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #19294: origin
                    (at_a_p8)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11052: origin
                    (not_at_a_p6)

                    ; #61186: origin
                    (at_a_p9)

                    ; #19789: <==negation-removal== 11052 (pos)
                    (not (at_a_p6))

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #80492: origin
                    (at_a_p1)

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #53516: origin
                    (at_a_p2)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #52877: origin
                    (at_a_p3)

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #35441: origin
                    (at_a_p4)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #47988: origin
                    (at_a_p5)

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #28071: origin
                    (not_at_a_p7)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #55655: origin
                    (at_a_p7)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #28071: origin
                    (not_at_a_p7)

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #28071: origin
                    (not_at_a_p7)

                    ; #61186: origin
                    (at_a_p9)

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))

                    ; #55655: <==negation-removal== 28071 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #56217: origin
                    (not_at_a_p8)

                    ; #80492: origin
                    (at_a_p1)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53516: origin
                    (at_a_p2)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #52877: origin
                    (at_a_p3)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #35441: origin
                    (at_a_p4)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #47988: origin
                    (at_a_p5)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #55655: origin
                    (at_a_p7)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #56217: origin
                    (not_at_a_p8)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #56217: origin
                    (not_at_a_p8)

                    ; #61186: origin
                    (at_a_p9)

                    ; #19294: <==negation-removal== 56217 (pos)
                    (not (at_a_p8))

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #51868: origin
                    (not_at_a_p9)

                    ; #80492: origin
                    (at_a_p1)

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))

                    ; #71643: <==negation-removal== 80492 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51868: origin
                    (not_at_a_p9)

                    ; #53516: origin
                    (at_a_p2)

                    ; #35415: <==negation-removal== 53516 (pos)
                    (not (not_at_a_p2))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #51868: origin
                    (not_at_a_p9)

                    ; #52877: origin
                    (at_a_p3)

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))

                    ; #67200: <==negation-removal== 52877 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #35441: origin
                    (at_a_p4)

                    ; #51868: origin
                    (not_at_a_p9)

                    ; #26293: <==negation-removal== 35441 (pos)
                    (not (not_at_a_p4))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #47988: origin
                    (at_a_p5)

                    ; #51868: origin
                    (not_at_a_p9)

                    ; #56629: <==negation-removal== 47988 (pos)
                    (not (not_at_a_p5))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #19789: origin
                    (at_a_p6)

                    ; #51868: origin
                    (not_at_a_p9)

                    ; #11052: <==negation-removal== 19789 (pos)
                    (not (not_at_a_p6))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51868: origin
                    (not_at_a_p9)

                    ; #55655: origin
                    (at_a_p7)

                    ; #28071: <==negation-removal== 55655 (pos)
                    (not (not_at_a_p7))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #19294: origin
                    (at_a_p8)

                    ; #51868: origin
                    (not_at_a_p9)

                    ; #56217: <==negation-removal== 19294 (pos)
                    (not (not_at_a_p8))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51868: origin
                    (not_at_a_p9)

                    ; #61186: origin
                    (at_a_p9)

                    ; #51868: <==negation-removal== 61186 (pos)
                    (not (not_at_a_p9))

                    ; #61186: <==negation-removal== 51868 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #56564: origin
                    (at_b_p1)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #67301: origin
                    (at_b_p2)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #59135: origin
                    (at_b_p3)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #80893: origin
                    (at_b_p4)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #70136: origin
                    (at_b_p5)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #87415: origin
                    (not_at_b_p1)

                    ; #90929: origin
                    (at_b_p6)

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #87315: origin
                    (at_b_p7)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #62872: origin
                    (at_b_p8)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #73620: origin
                    (at_b_p9)

                    ; #87415: origin
                    (not_at_b_p1)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #56564: <==negation-removal== 87415 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #56564: origin
                    (at_b_p1)

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #67301: origin
                    (at_b_p2)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #59135: origin
                    (at_b_p3)

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #70136: origin
                    (at_b_p5)

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #90929: origin
                    (at_b_p6)

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #62872: origin
                    (at_b_p8)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38670: origin
                    (not_at_b_p2)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #67301: <==negation-removal== 38670 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #56564: origin
                    (at_b_p1)

                    ; #66853: origin
                    (not_at_b_p3)

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #66853: origin
                    (not_at_b_p3)

                    ; #67301: origin
                    (at_b_p2)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #59135: origin
                    (at_b_p3)

                    ; #66853: origin
                    (not_at_b_p3)

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #66853: origin
                    (not_at_b_p3)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #66853: origin
                    (not_at_b_p3)

                    ; #70136: origin
                    (at_b_p5)

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #66853: origin
                    (not_at_b_p3)

                    ; #90929: origin
                    (at_b_p6)

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #66853: origin
                    (not_at_b_p3)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #62872: origin
                    (at_b_p8)

                    ; #66853: origin
                    (not_at_b_p3)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #66853: origin
                    (not_at_b_p3)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #59135: <==negation-removal== 66853 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #56564: origin
                    (at_b_p1)

                    ; #57529: origin
                    (not_at_b_p4)

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #67301: origin
                    (at_b_p2)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #59135: origin
                    (at_b_p3)

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #70136: origin
                    (at_b_p5)

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #90929: origin
                    (at_b_p6)

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #62872: origin
                    (at_b_p8)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #57529: origin
                    (not_at_b_p4)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #80893: <==negation-removal== 57529 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #56564: origin
                    (at_b_p1)

                    ; #68325: origin
                    (not_at_b_p5)

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #67301: origin
                    (at_b_p2)

                    ; #68325: origin
                    (not_at_b_p5)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #59135: origin
                    (at_b_p3)

                    ; #68325: origin
                    (not_at_b_p5)

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68325: origin
                    (not_at_b_p5)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68325: origin
                    (not_at_b_p5)

                    ; #70136: origin
                    (at_b_p5)

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68325: origin
                    (not_at_b_p5)

                    ; #90929: origin
                    (at_b_p6)

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68325: origin
                    (not_at_b_p5)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #62872: origin
                    (at_b_p8)

                    ; #68325: origin
                    (not_at_b_p5)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68325: origin
                    (not_at_b_p5)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #70136: <==negation-removal== 68325 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #56564: origin
                    (at_b_p1)

                    ; #69765: origin
                    (not_at_b_p6)

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #67301: origin
                    (at_b_p2)

                    ; #69765: origin
                    (not_at_b_p6)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #59135: origin
                    (at_b_p3)

                    ; #69765: origin
                    (not_at_b_p6)

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #69765: origin
                    (not_at_b_p6)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #69765: origin
                    (not_at_b_p6)

                    ; #70136: origin
                    (at_b_p5)

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #69765: origin
                    (not_at_b_p6)

                    ; #90929: origin
                    (at_b_p6)

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #69765: origin
                    (not_at_b_p6)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #62872: origin
                    (at_b_p8)

                    ; #69765: origin
                    (not_at_b_p6)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #69765: origin
                    (not_at_b_p6)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #90929: <==negation-removal== 69765 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #56564: origin
                    (at_b_p1)

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #67301: origin
                    (at_b_p2)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #59135: origin
                    (at_b_p3)

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #70136: origin
                    (at_b_p5)

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #90929: origin
                    (at_b_p6)

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #62872: origin
                    (at_b_p8)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #48500: origin
                    (not_at_b_p7)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #87315: <==negation-removal== 48500 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #56564: origin
                    (at_b_p1)

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #67301: origin
                    (at_b_p2)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #59135: origin
                    (at_b_p3)

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #70136: origin
                    (at_b_p5)

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #90929: origin
                    (at_b_p6)

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #62872: origin
                    (at_b_p8)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #30143: origin
                    (not_at_b_p8)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #62872: <==negation-removal== 30143 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #56564: origin
                    (at_b_p1)

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))

                    ; #87415: <==negation-removal== 56564 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #67301: origin
                    (at_b_p2)

                    ; #38670: <==negation-removal== 67301 (pos)
                    (not (not_at_b_p2))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #59135: origin
                    (at_b_p3)

                    ; #66853: <==negation-removal== 59135 (pos)
                    (not (not_at_b_p3))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #80893: origin
                    (at_b_p4)

                    ; #57529: <==negation-removal== 80893 (pos)
                    (not (not_at_b_p4))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #70136: origin
                    (at_b_p5)

                    ; #68325: <==negation-removal== 70136 (pos)
                    (not (not_at_b_p5))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #90929: origin
                    (at_b_p6)

                    ; #69765: <==negation-removal== 90929 (pos)
                    (not (not_at_b_p6))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #87315: origin
                    (at_b_p7)

                    ; #48500: <==negation-removal== 87315 (pos)
                    (not (not_at_b_p7))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #62872: origin
                    (at_b_p8)

                    ; #30143: <==negation-removal== 62872 (pos)
                    (not (not_at_b_p8))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #38265: origin
                    (not_at_b_p9)

                    ; #73620: origin
                    (at_b_p9)

                    ; #38265: <==negation-removal== 73620 (pos)
                    (not (not_at_b_p9))

                    ; #73620: <==negation-removal== 38265 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #40373: origin
                    (at_c_p1)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41088: origin
                    (at_c_p3)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #53660: origin
                    (not_at_c_p1)

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #53660: origin
                    (not_at_c_p1)

                    ; #62461: origin
                    (at_c_p8)

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #53660: origin
                    (not_at_c_p1)

                    ; #74762: origin
                    (at_c_p9)

                    ; #40373: <==negation-removal== 53660 (pos)
                    (not (at_c_p1))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #40373: origin
                    (at_c_p1)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41088: origin
                    (at_c_p3)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #62461: origin
                    (at_c_p8)

                    ; #62923: origin
                    (not_at_c_p2)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #62923: origin
                    (not_at_c_p2)

                    ; #74762: origin
                    (at_c_p9)

                    ; #39170: <==negation-removal== 62923 (pos)
                    (not (at_c_p2))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #40373: origin
                    (at_c_p1)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41088: origin
                    (at_c_p3)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #50470: origin
                    (not_at_c_p3)

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50470: origin
                    (not_at_c_p3)

                    ; #62461: origin
                    (at_c_p8)

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50470: origin
                    (not_at_c_p3)

                    ; #74762: origin
                    (at_c_p9)

                    ; #41088: <==negation-removal== 50470 (pos)
                    (not (at_c_p3))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #39497: origin
                    (not_at_c_p4)

                    ; #40373: origin
                    (at_c_p1)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #39497: origin
                    (not_at_c_p4)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #39497: origin
                    (not_at_c_p4)

                    ; #41088: origin
                    (at_c_p3)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #39497: origin
                    (not_at_c_p4)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #39497: origin
                    (not_at_c_p4)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #39497: origin
                    (not_at_c_p4)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #39497: origin
                    (not_at_c_p4)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #39497: origin
                    (not_at_c_p4)

                    ; #62461: origin
                    (at_c_p8)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #39497: origin
                    (not_at_c_p4)

                    ; #74762: origin
                    (at_c_p9)

                    ; #32318: <==negation-removal== 39497 (pos)
                    (not (at_c_p4))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #40373: origin
                    (at_c_p1)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #39170: origin
                    (at_c_p2)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #41088: origin
                    (at_c_p3)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #32318: origin
                    (at_c_p4)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #31844: origin
                    (at_c_p5)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #26984: origin
                    (not_at_c_p5)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #26984: origin
                    (not_at_c_p5)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #62461: origin
                    (at_c_p8)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #26984: origin
                    (not_at_c_p5)

                    ; #74762: origin
                    (at_c_p9)

                    ; #31844: <==negation-removal== 26984 (pos)
                    (not (at_c_p5))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #40373: origin
                    (at_c_p1)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41088: origin
                    (at_c_p3)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #44983: origin
                    (not_at_c_p6)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #44983: origin
                    (not_at_c_p6)

                    ; #62461: origin
                    (at_c_p8)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #44983: origin
                    (not_at_c_p6)

                    ; #74762: origin
                    (at_c_p9)

                    ; #21850: <==negation-removal== 44983 (pos)
                    (not (at_c_p6))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #40373: origin
                    (at_c_p1)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41088: origin
                    (at_c_p3)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #54977: origin
                    (not_at_c_p7)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #54977: origin
                    (not_at_c_p7)

                    ; #62461: origin
                    (at_c_p8)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #54977: origin
                    (not_at_c_p7)

                    ; #74762: origin
                    (at_c_p9)

                    ; #21164: <==negation-removal== 54977 (pos)
                    (not (at_c_p7))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #39652: origin
                    (not_at_c_p8)

                    ; #40373: origin
                    (at_c_p1)

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #39652: origin
                    (not_at_c_p8)

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #39652: origin
                    (not_at_c_p8)

                    ; #41088: origin
                    (at_c_p3)

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #39652: origin
                    (not_at_c_p8)

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #39652: origin
                    (not_at_c_p8)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #39652: origin
                    (not_at_c_p8)

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #39652: origin
                    (not_at_c_p8)

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #39652: origin
                    (not_at_c_p8)

                    ; #62461: origin
                    (at_c_p8)

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #39652: origin
                    (not_at_c_p8)

                    ; #74762: origin
                    (at_c_p9)

                    ; #62461: <==negation-removal== 39652 (pos)
                    (not (at_c_p8))

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #40373: origin
                    (at_c_p1)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #53660: <==negation-removal== 40373 (pos)
                    (not (not_at_c_p1))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #39170: origin
                    (at_c_p2)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #62923: <==negation-removal== 39170 (pos)
                    (not (not_at_c_p2))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41088: origin
                    (at_c_p3)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #50470: <==negation-removal== 41088 (pos)
                    (not (not_at_c_p3))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #32318: origin
                    (at_c_p4)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #39497: <==negation-removal== 32318 (pos)
                    (not (not_at_c_p4))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #31844: origin
                    (at_c_p5)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #26984: <==negation-removal== 31844 (pos)
                    (not (not_at_c_p5))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #21850: origin
                    (at_c_p6)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #44983: <==negation-removal== 21850 (pos)
                    (not (not_at_c_p6))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #21164: origin
                    (at_c_p7)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #54977: <==negation-removal== 21164 (pos)
                    (not (not_at_c_p7))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #62461: origin
                    (at_c_p8)

                    ; #64302: origin
                    (not_at_c_p9)

                    ; #39652: <==negation-removal== 62461 (pos)
                    (not (not_at_c_p8))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #64302: origin
                    (not_at_c_p9)

                    ; #74762: origin
                    (at_c_p9)

                    ; #64302: <==negation-removal== 74762 (pos)
                    (not (not_at_c_p9))

                    ; #74762: <==negation-removal== 64302 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #16638: <==commonly_known== 61052 (pos)
                    (Bb_checked_p1)

                    ; #37887: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #44574: <==commonly_known== 49097 (neg)
                    (Pc_checked_p1)

                    ; #44683: <==closure== 37887 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #61052: origin
                    (checked_p1)

                    ; #61559: <==closure== 81875 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #63008: <==commonly_known== 61052 (pos)
                    (Bc_checked_p1)

                    ; #64998: <==commonly_known== 49097 (neg)
                    (Pa_checked_p1)

                    ; #76010: <==commonly_known== 61052 (pos)
                    (Ba_checked_p1)

                    ; #81875: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #87246: <==commonly_known== 49097 (neg)
                    (Pb_checked_p1)

                    ; #18937: <==uncertain_firing== 61559 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #21135: <==uncertain_firing== 81875 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #21686: <==negation-removal== 87246 (pos)
                    (not (Bb_not_checked_p1))

                    ; #23605: <==negation-removal== 16638 (pos)
                    (not (Pb_not_checked_p1))

                    ; #25745: <==negation-removal== 37887 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #28088: <==negation-removal== 61559 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47871: <==negation-removal== 44574 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49097: <==negation-removal== 61052 (pos)
                    (not (not_checked_p1))

                    ; #49798: <==negation-removal== 76010 (pos)
                    (not (Pa_not_checked_p1))

                    ; #55527: <==negation-removal== 63008 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62252: <==negation-removal== 81875 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #74131: <==negation-removal== 64998 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80550: <==uncertain_firing== 44683 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #90579: <==negation-removal== 44683 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #93909: <==uncertain_firing== 37887 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #15948: <==commonly_known== 83169 (neg)
                    (Pa_checked_p2)

                    ; #19917: <==commonly_known== 83169 (neg)
                    (Pb_checked_p2)

                    ; #27805: origin
                    (checked_p2)

                    ; #29786: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #29826: <==commonly_known== 27805 (pos)
                    (Ba_checked_p2)

                    ; #37301: <==commonly_known== 27805 (pos)
                    (Bb_checked_p2)

                    ; #44282: <==commonly_known== 83169 (neg)
                    (Pc_checked_p2)

                    ; #61275: <==closure== 29786 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #72504: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #75911: <==commonly_known== 27805 (pos)
                    (Bc_checked_p2)

                    ; #80529: <==closure== 72504 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #18199: <==uncertain_firing== 61275 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #19300: <==negation-removal== 44282 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25836: <==negation-removal== 37301 (pos)
                    (not (Pb_not_checked_p2))

                    ; #36746: <==negation-removal== 80529 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #42821: <==negation-removal== 72504 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46618: <==negation-removal== 15948 (pos)
                    (not (Ba_not_checked_p2))

                    ; #51339: <==uncertain_firing== 29786 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #52315: <==negation-removal== 29826 (pos)
                    (not (Pa_not_checked_p2))

                    ; #54017: <==uncertain_firing== 72504 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60565: <==negation-removal== 29786 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #70623: <==negation-removal== 19917 (pos)
                    (not (Bb_not_checked_p2))

                    ; #83157: <==negation-removal== 75911 (pos)
                    (not (Pc_not_checked_p2))

                    ; #83169: <==negation-removal== 27805 (pos)
                    (not (not_checked_p2))

                    ; #85304: <==uncertain_firing== 80529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #91300: <==negation-removal== 61275 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #12754: <==commonly_known== 71216 (pos)
                    (Bb_checked_p3)

                    ; #15644: <==commonly_known== 91784 (neg)
                    (Pb_checked_p3)

                    ; #42532: <==commonly_known== 91784 (neg)
                    (Pa_checked_p3)

                    ; #51389: <==closure== 65450 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #54702: <==commonly_known== 91784 (neg)
                    (Pc_checked_p3)

                    ; #59858: <==closure== 78647 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #65450: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #65811: <==commonly_known== 71216 (pos)
                    (Ba_checked_p3)

                    ; #69980: <==commonly_known== 71216 (pos)
                    (Bc_checked_p3)

                    ; #71216: origin
                    (checked_p3)

                    ; #78647: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #12218: <==uncertain_firing== 59858 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #15648: <==negation-removal== 65811 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30026: <==uncertain_firing== 65450 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #37594: <==uncertain_firing== 78647 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #48241: <==negation-removal== 59858 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #48257: <==negation-removal== 42532 (pos)
                    (not (Ba_not_checked_p3))

                    ; #51222: <==negation-removal== 51389 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58754: <==negation-removal== 78647 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #66931: <==uncertain_firing== 51389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #67652: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p3))

                    ; #69230: <==negation-removal== 12754 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72732: <==negation-removal== 54702 (pos)
                    (not (Bc_not_checked_p3))

                    ; #82912: <==negation-removal== 65450 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #91037: <==negation-removal== 69980 (pos)
                    (not (Pc_not_checked_p3))

                    ; #91784: <==negation-removal== 71216 (pos)
                    (not (not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #13634: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #15051: <==commonly_known== 81977 (pos)
                    (Ba_checked_p4)

                    ; #31177: <==commonly_known== 81977 (pos)
                    (Bc_checked_p4)

                    ; #45456: <==closure== 13634 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #47232: <==commonly_known== 89641 (neg)
                    (Pc_checked_p4)

                    ; #58622: <==commonly_known== 89641 (neg)
                    (Pa_checked_p4)

                    ; #67127: <==closure== 77205 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #67990: <==commonly_known== 81977 (pos)
                    (Bb_checked_p4)

                    ; #77205: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #81167: <==commonly_known== 89641 (neg)
                    (Pb_checked_p4)

                    ; #81977: origin
                    (checked_p4)

                    ; #18000: <==uncertain_firing== 13634 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #28558: <==negation-removal== 77205 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #28592: <==negation-removal== 81167 (pos)
                    (not (Bb_not_checked_p4))

                    ; #29438: <==uncertain_firing== 67127 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #33443: <==negation-removal== 67127 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #34036: <==negation-removal== 58622 (pos)
                    (not (Ba_not_checked_p4))

                    ; #38918: <==negation-removal== 45456 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #55140: <==negation-removal== 15051 (pos)
                    (not (Pa_not_checked_p4))

                    ; #65936: <==negation-removal== 13634 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #70847: <==negation-removal== 31177 (pos)
                    (not (Pc_not_checked_p4))

                    ; #77812: <==uncertain_firing== 45456 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #79830: <==uncertain_firing== 77205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #84423: <==negation-removal== 67990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88179: <==negation-removal== 47232 (pos)
                    (not (Bc_not_checked_p4))

                    ; #89641: <==negation-removal== 81977 (pos)
                    (not (not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23028: <==closure== 81335 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #37651: <==commonly_known== 71650 (neg)
                    (Pc_checked_p5)

                    ; #44101: <==commonly_known== 71650 (neg)
                    (Pa_checked_p5)

                    ; #46608: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #50829: <==closure== 46608 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #52171: origin
                    (checked_p5)

                    ; #69177: <==commonly_known== 52171 (pos)
                    (Bb_checked_p5)

                    ; #72332: <==commonly_known== 71650 (neg)
                    (Pb_checked_p5)

                    ; #75486: <==commonly_known== 52171 (pos)
                    (Bc_checked_p5)

                    ; #80435: <==commonly_known== 52171 (pos)
                    (Ba_checked_p5)

                    ; #81335: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #15911: <==uncertain_firing== 50829 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #16863: <==uncertain_firing== 81335 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #25009: <==negation-removal== 37651 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25831: <==negation-removal== 80435 (pos)
                    (not (Pa_not_checked_p5))

                    ; #28997: <==negation-removal== 46608 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #35714: <==uncertain_firing== 23028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #36270: <==negation-removal== 23028 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #38577: <==negation-removal== 69177 (pos)
                    (not (Pb_not_checked_p5))

                    ; #48801: <==negation-removal== 81335 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #52023: <==negation-removal== 75486 (pos)
                    (not (Pc_not_checked_p5))

                    ; #56085: <==negation-removal== 44101 (pos)
                    (not (Ba_not_checked_p5))

                    ; #67064: <==negation-removal== 50829 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #71309: <==uncertain_firing== 46608 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #71650: <==negation-removal== 52171 (pos)
                    (not (not_checked_p5))

                    ; #92220: <==negation-removal== 72332 (pos)
                    (not (Bb_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #23334: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #24127: <==commonly_known== 85076 (pos)
                    (Ba_checked_p6)

                    ; #39050: <==commonly_known== 22094 (neg)
                    (Pc_checked_p6)

                    ; #45370: <==commonly_known== 85076 (pos)
                    (Bc_checked_p6)

                    ; #49851: <==commonly_known== 22094 (neg)
                    (Pa_checked_p6)

                    ; #63472: <==commonly_known== 22094 (neg)
                    (Pb_checked_p6)

                    ; #67237: <==closure== 23334 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #77545: <==commonly_known== 85076 (pos)
                    (Bb_checked_p6)

                    ; #81301: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #85076: origin
                    (checked_p6)

                    ; #89934: <==closure== 81301 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #11121: <==negation-removal== 63472 (pos)
                    (not (Bb_not_checked_p6))

                    ; #12439: <==uncertain_firing== 23334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14364: <==negation-removal== 49851 (pos)
                    (not (Ba_not_checked_p6))

                    ; #16718: <==negation-removal== 89934 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #18334: <==negation-removal== 67237 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #22094: <==negation-removal== 85076 (pos)
                    (not (not_checked_p6))

                    ; #26044: <==uncertain_firing== 81301 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #46871: <==negation-removal== 23334 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #50761: <==negation-removal== 45370 (pos)
                    (not (Pc_not_checked_p6))

                    ; #54690: <==negation-removal== 24127 (pos)
                    (not (Pa_not_checked_p6))

                    ; #58737: <==negation-removal== 39050 (pos)
                    (not (Bc_not_checked_p6))

                    ; #66571: <==uncertain_firing== 67237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #75315: <==uncertain_firing== 89934 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #77140: <==negation-removal== 77545 (pos)
                    (not (Pb_not_checked_p6))

                    ; #81409: <==negation-removal== 81301 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10975: <==commonly_known== 59020 (neg)
                    (Pa_checked_p7)

                    ; #21056: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #24264: origin
                    (checked_p7)

                    ; #27011: <==closure== 21056 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #39391: <==commonly_known== 59020 (neg)
                    (Pc_checked_p7)

                    ; #49705: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #58273: <==commonly_known== 24264 (pos)
                    (Bc_checked_p7)

                    ; #71096: <==commonly_known== 24264 (pos)
                    (Ba_checked_p7)

                    ; #74878: <==commonly_known== 24264 (pos)
                    (Bb_checked_p7)

                    ; #79403: <==commonly_known== 59020 (neg)
                    (Pb_checked_p7)

                    ; #87654: <==closure== 49705 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #10582: <==negation-removal== 79403 (pos)
                    (not (Bb_not_checked_p7))

                    ; #13486: <==negation-removal== 49705 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #17938: <==negation-removal== 39391 (pos)
                    (not (Bc_not_checked_p7))

                    ; #22871: <==negation-removal== 74878 (pos)
                    (not (Pb_not_checked_p7))

                    ; #30781: <==negation-removal== 21056 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #49013: <==negation-removal== 71096 (pos)
                    (not (Pa_not_checked_p7))

                    ; #59020: <==negation-removal== 24264 (pos)
                    (not (not_checked_p7))

                    ; #61519: <==negation-removal== 58273 (pos)
                    (not (Pc_not_checked_p7))

                    ; #62123: <==negation-removal== 27011 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #81574: <==negation-removal== 87654 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #86781: <==uncertain_firing== 87654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #88879: <==negation-removal== 10975 (pos)
                    (not (Ba_not_checked_p7))

                    ; #90981: <==uncertain_firing== 49705 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91803: <==uncertain_firing== 27011 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #92196: <==uncertain_firing== 21056 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #21317: <==commonly_known== 51861 (neg)
                    (Pc_checked_p8)

                    ; #25712: <==commonly_known== 73807 (pos)
                    (Ba_checked_p8)

                    ; #26894: <==commonly_known== 51861 (neg)
                    (Pa_checked_p8)

                    ; #28656: <==closure== 55881 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #40249: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #53168: <==closure== 40249 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #55881: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #63847: <==commonly_known== 51861 (neg)
                    (Pb_checked_p8)

                    ; #72848: <==commonly_known== 73807 (pos)
                    (Bc_checked_p8)

                    ; #73583: <==commonly_known== 73807 (pos)
                    (Bb_checked_p8)

                    ; #73807: origin
                    (checked_p8)

                    ; #14024: <==uncertain_firing== 55881 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #21575: <==uncertain_firing== 28656 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #26120: <==negation-removal== 26894 (pos)
                    (not (Ba_not_checked_p8))

                    ; #28694: <==negation-removal== 53168 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #33962: <==negation-removal== 25712 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35551: <==negation-removal== 55881 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #38498: <==negation-removal== 63847 (pos)
                    (not (Bb_not_checked_p8))

                    ; #51861: <==negation-removal== 73807 (pos)
                    (not (not_checked_p8))

                    ; #55487: <==negation-removal== 40249 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73726: <==negation-removal== 72848 (pos)
                    (not (Pc_not_checked_p8))

                    ; #74883: <==uncertain_firing== 53168 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74915: <==negation-removal== 21317 (pos)
                    (not (Bc_not_checked_p8))

                    ; #75139: <==negation-removal== 28656 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #80524: <==uncertain_firing== 40249 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #80976: <==negation-removal== 73583 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37178: origin
                    (checked_p9)

                    ; #49835: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #53207: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #59855: <==closure== 49835 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #67569: <==commonly_known== 37178 (pos)
                    (Bc_checked_p9)

                    ; #77149: <==commonly_known== 78025 (neg)
                    (Pb_checked_p9)

                    ; #79780: <==closure== 53207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #86534: <==commonly_known== 78025 (neg)
                    (Pc_checked_p9)

                    ; #88192: <==commonly_known== 78025 (neg)
                    (Pa_checked_p9)

                    ; #89854: <==commonly_known== 37178 (pos)
                    (Ba_checked_p9)

                    ; #91813: <==commonly_known== 37178 (pos)
                    (Bb_checked_p9)

                    ; #15947: <==uncertain_firing== 79780 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #23211: <==negation-removal== 67569 (pos)
                    (not (Pc_not_checked_p9))

                    ; #24793: <==negation-removal== 88192 (pos)
                    (not (Ba_not_checked_p9))

                    ; #41649: <==uncertain_firing== 49835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #41884: <==negation-removal== 91813 (pos)
                    (not (Pb_not_checked_p9))

                    ; #51067: <==negation-removal== 86534 (pos)
                    (not (Bc_not_checked_p9))

                    ; #58364: <==negation-removal== 53207 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #67761: <==negation-removal== 59855 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69868: <==negation-removal== 79780 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #72111: <==uncertain_firing== 59855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #74040: <==uncertain_firing== 53207 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #78025: <==negation-removal== 37178 (pos)
                    (not (not_checked_p9))

                    ; #78859: <==negation-removal== 49835 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #90290: <==negation-removal== 89854 (pos)
                    (not (Pa_not_checked_p9))

                    ; #94269: <==negation-removal== 77149 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13869: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #16638: <==commonly_known== 61052 (pos)
                    (Bb_checked_p1)

                    ; #44574: <==commonly_known== 49097 (neg)
                    (Pc_checked_p1)

                    ; #52717: <==closure== 13869 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #61052: origin
                    (checked_p1)

                    ; #63008: <==commonly_known== 61052 (pos)
                    (Bc_checked_p1)

                    ; #64998: <==commonly_known== 49097 (neg)
                    (Pa_checked_p1)

                    ; #68314: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #76010: <==commonly_known== 61052 (pos)
                    (Ba_checked_p1)

                    ; #77038: <==closure== 68314 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #87246: <==commonly_known== 49097 (neg)
                    (Pb_checked_p1)

                    ; #21686: <==negation-removal== 87246 (pos)
                    (not (Bb_not_checked_p1))

                    ; #23605: <==negation-removal== 16638 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29086: <==uncertain_firing== 68314 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47871: <==negation-removal== 44574 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49097: <==negation-removal== 61052 (pos)
                    (not (not_checked_p1))

                    ; #49798: <==negation-removal== 76010 (pos)
                    (not (Pa_not_checked_p1))

                    ; #50439: <==uncertain_firing== 13869 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #53832: <==negation-removal== 13869 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #54179: <==uncertain_firing== 77038 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #55527: <==negation-removal== 63008 (pos)
                    (not (Pc_not_checked_p1))

                    ; #63421: <==negation-removal== 77038 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #74131: <==negation-removal== 64998 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75260: <==negation-removal== 68314 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #76344: <==uncertain_firing== 52717 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #80272: <==negation-removal== 52717 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #15948: <==commonly_known== 83169 (neg)
                    (Pa_checked_p2)

                    ; #19917: <==commonly_known== 83169 (neg)
                    (Pb_checked_p2)

                    ; #27805: origin
                    (checked_p2)

                    ; #29826: <==commonly_known== 27805 (pos)
                    (Ba_checked_p2)

                    ; #37301: <==commonly_known== 27805 (pos)
                    (Bb_checked_p2)

                    ; #44282: <==commonly_known== 83169 (neg)
                    (Pc_checked_p2)

                    ; #65250: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #70247: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #72887: <==closure== 65250 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #75911: <==commonly_known== 27805 (pos)
                    (Bc_checked_p2)

                    ; #84040: <==closure== 70247 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #13768: <==negation-removal== 70247 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #14591: <==negation-removal== 72887 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #19300: <==negation-removal== 44282 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25836: <==negation-removal== 37301 (pos)
                    (not (Pb_not_checked_p2))

                    ; #34520: <==negation-removal== 84040 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #35492: <==uncertain_firing== 84040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46618: <==negation-removal== 15948 (pos)
                    (not (Ba_not_checked_p2))

                    ; #52315: <==negation-removal== 29826 (pos)
                    (not (Pa_not_checked_p2))

                    ; #62813: <==uncertain_firing== 65250 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #70623: <==negation-removal== 19917 (pos)
                    (not (Bb_not_checked_p2))

                    ; #71795: <==negation-removal== 65250 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #81453: <==uncertain_firing== 72887 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #83157: <==negation-removal== 75911 (pos)
                    (not (Pc_not_checked_p2))

                    ; #83169: <==negation-removal== 27805 (pos)
                    (not (not_checked_p2))

                    ; #87722: <==uncertain_firing== 70247 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12754: <==commonly_known== 71216 (pos)
                    (Bb_checked_p3)

                    ; #15644: <==commonly_known== 91784 (neg)
                    (Pb_checked_p3)

                    ; #18707: <==closure== 37734 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #24012: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #37734: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #42532: <==commonly_known== 91784 (neg)
                    (Pa_checked_p3)

                    ; #47456: <==closure== 24012 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #54702: <==commonly_known== 91784 (neg)
                    (Pc_checked_p3)

                    ; #65811: <==commonly_known== 71216 (pos)
                    (Ba_checked_p3)

                    ; #69980: <==commonly_known== 71216 (pos)
                    (Bc_checked_p3)

                    ; #71216: origin
                    (checked_p3)

                    ; #15648: <==negation-removal== 65811 (pos)
                    (not (Pa_not_checked_p3))

                    ; #26687: <==negation-removal== 37734 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #30731: <==negation-removal== 24012 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #38933: <==uncertain_firing== 47456 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #45938: <==negation-removal== 47456 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #48257: <==negation-removal== 42532 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57907: <==uncertain_firing== 37734 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67652: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p3))

                    ; #68508: <==uncertain_firing== 18707 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #69230: <==negation-removal== 12754 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72732: <==negation-removal== 54702 (pos)
                    (not (Bc_not_checked_p3))

                    ; #73811: <==negation-removal== 18707 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #84071: <==uncertain_firing== 24012 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91037: <==negation-removal== 69980 (pos)
                    (not (Pc_not_checked_p3))

                    ; #91784: <==negation-removal== 71216 (pos)
                    (not (not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #11413: <==closure== 44509 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #15051: <==commonly_known== 81977 (pos)
                    (Ba_checked_p4)

                    ; #18254: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #31177: <==commonly_known== 81977 (pos)
                    (Bc_checked_p4)

                    ; #42321: <==closure== 18254 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #44509: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #47232: <==commonly_known== 89641 (neg)
                    (Pc_checked_p4)

                    ; #58622: <==commonly_known== 89641 (neg)
                    (Pa_checked_p4)

                    ; #67990: <==commonly_known== 81977 (pos)
                    (Bb_checked_p4)

                    ; #81167: <==commonly_known== 89641 (neg)
                    (Pb_checked_p4)

                    ; #81977: origin
                    (checked_p4)

                    ; #11470: <==uncertain_firing== 11413 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #25382: <==uncertain_firing== 42321 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #28089: <==negation-removal== 44509 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #28592: <==negation-removal== 81167 (pos)
                    (not (Bb_not_checked_p4))

                    ; #34036: <==negation-removal== 58622 (pos)
                    (not (Ba_not_checked_p4))

                    ; #39571: <==negation-removal== 42321 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #45452: <==uncertain_firing== 44509 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #47043: <==negation-removal== 11413 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #55140: <==negation-removal== 15051 (pos)
                    (not (Pa_not_checked_p4))

                    ; #70847: <==negation-removal== 31177 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80139: <==negation-removal== 18254 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #80550: <==uncertain_firing== 18254 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84423: <==negation-removal== 67990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88179: <==negation-removal== 47232 (pos)
                    (not (Bc_not_checked_p4))

                    ; #89641: <==negation-removal== 81977 (pos)
                    (not (not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #27167: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #37651: <==commonly_known== 71650 (neg)
                    (Pc_checked_p5)

                    ; #43070: <==closure== 91226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #44101: <==commonly_known== 71650 (neg)
                    (Pa_checked_p5)

                    ; #52171: origin
                    (checked_p5)

                    ; #69177: <==commonly_known== 52171 (pos)
                    (Bb_checked_p5)

                    ; #72332: <==commonly_known== 71650 (neg)
                    (Pb_checked_p5)

                    ; #75486: <==commonly_known== 52171 (pos)
                    (Bc_checked_p5)

                    ; #80435: <==commonly_known== 52171 (pos)
                    (Ba_checked_p5)

                    ; #83917: <==closure== 27167 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #91226: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #18523: <==negation-removal== 91226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #21398: <==uncertain_firing== 43070 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23691: <==negation-removal== 83917 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #25009: <==negation-removal== 37651 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25831: <==negation-removal== 80435 (pos)
                    (not (Pa_not_checked_p5))

                    ; #26223: <==negation-removal== 43070 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #38577: <==negation-removal== 69177 (pos)
                    (not (Pb_not_checked_p5))

                    ; #43920: <==uncertain_firing== 83917 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #52023: <==negation-removal== 75486 (pos)
                    (not (Pc_not_checked_p5))

                    ; #56085: <==negation-removal== 44101 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58047: <==uncertain_firing== 91226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67387: <==negation-removal== 27167 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #71650: <==negation-removal== 52171 (pos)
                    (not (not_checked_p5))

                    ; #92220: <==negation-removal== 72332 (pos)
                    (not (Bb_not_checked_p5))

                    ; #92705: <==uncertain_firing== 27167 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #24127: <==commonly_known== 85076 (pos)
                    (Ba_checked_p6)

                    ; #30454: <==closure== 70425 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #39050: <==commonly_known== 22094 (neg)
                    (Pc_checked_p6)

                    ; #45370: <==commonly_known== 85076 (pos)
                    (Bc_checked_p6)

                    ; #47864: <==closure== 53956 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #49851: <==commonly_known== 22094 (neg)
                    (Pa_checked_p6)

                    ; #53956: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #63472: <==commonly_known== 22094 (neg)
                    (Pb_checked_p6)

                    ; #70425: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #77545: <==commonly_known== 85076 (pos)
                    (Bb_checked_p6)

                    ; #85076: origin
                    (checked_p6)

                    ; #11121: <==negation-removal== 63472 (pos)
                    (not (Bb_not_checked_p6))

                    ; #14364: <==negation-removal== 49851 (pos)
                    (not (Ba_not_checked_p6))

                    ; #15481: <==uncertain_firing== 47864 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #22094: <==negation-removal== 85076 (pos)
                    (not (not_checked_p6))

                    ; #24752: <==uncertain_firing== 53956 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #45596: <==negation-removal== 47864 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #47067: <==negation-removal== 30454 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #50761: <==negation-removal== 45370 (pos)
                    (not (Pc_not_checked_p6))

                    ; #54690: <==negation-removal== 24127 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57620: <==uncertain_firing== 30454 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58737: <==negation-removal== 39050 (pos)
                    (not (Bc_not_checked_p6))

                    ; #60623: <==uncertain_firing== 70425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #63113: <==negation-removal== 70425 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #73508: <==negation-removal== 53956 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #77140: <==negation-removal== 77545 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10975: <==commonly_known== 59020 (neg)
                    (Pa_checked_p7)

                    ; #24264: origin
                    (checked_p7)

                    ; #38234: <==closure== 71326 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #39391: <==commonly_known== 59020 (neg)
                    (Pc_checked_p7)

                    ; #48520: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #58273: <==commonly_known== 24264 (pos)
                    (Bc_checked_p7)

                    ; #65156: <==closure== 48520 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #71096: <==commonly_known== 24264 (pos)
                    (Ba_checked_p7)

                    ; #71326: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #74878: <==commonly_known== 24264 (pos)
                    (Bb_checked_p7)

                    ; #79403: <==commonly_known== 59020 (neg)
                    (Pb_checked_p7)

                    ; #10582: <==negation-removal== 79403 (pos)
                    (not (Bb_not_checked_p7))

                    ; #13449: <==uncertain_firing== 38234 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #17938: <==negation-removal== 39391 (pos)
                    (not (Bc_not_checked_p7))

                    ; #18743: <==negation-removal== 38234 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #19106: <==uncertain_firing== 71326 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #22871: <==negation-removal== 74878 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41517: <==negation-removal== 71326 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #42463: <==uncertain_firing== 65156 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49013: <==negation-removal== 71096 (pos)
                    (not (Pa_not_checked_p7))

                    ; #59020: <==negation-removal== 24264 (pos)
                    (not (not_checked_p7))

                    ; #61519: <==negation-removal== 58273 (pos)
                    (not (Pc_not_checked_p7))

                    ; #63192: <==negation-removal== 65156 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #69973: <==uncertain_firing== 48520 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88879: <==negation-removal== 10975 (pos)
                    (not (Ba_not_checked_p7))

                    ; #98902: <==negation-removal== 48520 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #21317: <==commonly_known== 51861 (neg)
                    (Pc_checked_p8)

                    ; #25712: <==commonly_known== 73807 (pos)
                    (Ba_checked_p8)

                    ; #26894: <==commonly_known== 51861 (neg)
                    (Pa_checked_p8)

                    ; #30097: <==closure== 82705 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #51420: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #63847: <==commonly_known== 51861 (neg)
                    (Pb_checked_p8)

                    ; #72848: <==commonly_known== 73807 (pos)
                    (Bc_checked_p8)

                    ; #73583: <==commonly_known== 73807 (pos)
                    (Bb_checked_p8)

                    ; #73807: origin
                    (checked_p8)

                    ; #75573: <==closure== 51420 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #82705: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #10186: <==uncertain_firing== 82705 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #22044: <==negation-removal== 75573 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #26120: <==negation-removal== 26894 (pos)
                    (not (Ba_not_checked_p8))

                    ; #26380: <==negation-removal== 82705 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #33665: <==uncertain_firing== 75573 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33902: <==negation-removal== 51420 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #33962: <==negation-removal== 25712 (pos)
                    (not (Pa_not_checked_p8))

                    ; #38498: <==negation-removal== 63847 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43505: <==uncertain_firing== 51420 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #51861: <==negation-removal== 73807 (pos)
                    (not (not_checked_p8))

                    ; #73726: <==negation-removal== 72848 (pos)
                    (not (Pc_not_checked_p8))

                    ; #74915: <==negation-removal== 21317 (pos)
                    (not (Bc_not_checked_p8))

                    ; #76144: <==negation-removal== 30097 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #80976: <==negation-removal== 73583 (pos)
                    (not (Pb_not_checked_p8))

                    ; #84390: <==uncertain_firing== 30097 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #37178: origin
                    (checked_p9)

                    ; #45096: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #55449: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #67569: <==commonly_known== 37178 (pos)
                    (Bc_checked_p9)

                    ; #73073: <==closure== 55449 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #77149: <==commonly_known== 78025 (neg)
                    (Pb_checked_p9)

                    ; #80398: <==closure== 45096 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #86534: <==commonly_known== 78025 (neg)
                    (Pc_checked_p9)

                    ; #88192: <==commonly_known== 78025 (neg)
                    (Pa_checked_p9)

                    ; #89854: <==commonly_known== 37178 (pos)
                    (Ba_checked_p9)

                    ; #91813: <==commonly_known== 37178 (pos)
                    (Bb_checked_p9)

                    ; #14795: <==uncertain_firing== 80398 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #23211: <==negation-removal== 67569 (pos)
                    (not (Pc_not_checked_p9))

                    ; #24793: <==negation-removal== 88192 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39203: <==negation-removal== 45096 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #41884: <==negation-removal== 91813 (pos)
                    (not (Pb_not_checked_p9))

                    ; #43441: <==uncertain_firing== 45096 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #51067: <==negation-removal== 86534 (pos)
                    (not (Bc_not_checked_p9))

                    ; #67536: <==uncertain_firing== 73073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73007: <==negation-removal== 80398 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #75585: <==negation-removal== 55449 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #78025: <==negation-removal== 37178 (pos)
                    (not (not_checked_p9))

                    ; #83244: <==uncertain_firing== 55449 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #90290: <==negation-removal== 89854 (pos)
                    (not (Pa_not_checked_p9))

                    ; #91503: <==negation-removal== 73073 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #94269: <==negation-removal== 77149 (pos)
                    (not (Bb_not_checked_p9))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10398: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #16638: <==commonly_known== 61052 (pos)
                    (Bb_checked_p1)

                    ; #32268: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #44574: <==commonly_known== 49097 (neg)
                    (Pc_checked_p1)

                    ; #50468: <==closure== 10398 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #55902: <==closure== 32268 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #61052: origin
                    (checked_p1)

                    ; #63008: <==commonly_known== 61052 (pos)
                    (Bc_checked_p1)

                    ; #64998: <==commonly_known== 49097 (neg)
                    (Pa_checked_p1)

                    ; #76010: <==commonly_known== 61052 (pos)
                    (Ba_checked_p1)

                    ; #87246: <==commonly_known== 49097 (neg)
                    (Pb_checked_p1)

                    ; #11245: <==negation-removal== 55902 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #21686: <==negation-removal== 87246 (pos)
                    (not (Bb_not_checked_p1))

                    ; #23605: <==negation-removal== 16638 (pos)
                    (not (Pb_not_checked_p1))

                    ; #25014: <==uncertain_firing== 10398 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #33234: <==negation-removal== 50468 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #39368: <==uncertain_firing== 32268 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #47871: <==negation-removal== 44574 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49097: <==negation-removal== 61052 (pos)
                    (not (not_checked_p1))

                    ; #49798: <==negation-removal== 76010 (pos)
                    (not (Pa_not_checked_p1))

                    ; #50433: <==negation-removal== 32268 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #55527: <==negation-removal== 63008 (pos)
                    (not (Pc_not_checked_p1))

                    ; #68861: <==uncertain_firing== 50468 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73956: <==negation-removal== 10398 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #74131: <==negation-removal== 64998 (pos)
                    (not (Ba_not_checked_p1))

                    ; #79322: <==uncertain_firing== 55902 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #12562: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #15948: <==commonly_known== 83169 (neg)
                    (Pa_checked_p2)

                    ; #19917: <==commonly_known== 83169 (neg)
                    (Pb_checked_p2)

                    ; #27805: origin
                    (checked_p2)

                    ; #29826: <==commonly_known== 27805 (pos)
                    (Ba_checked_p2)

                    ; #37301: <==commonly_known== 27805 (pos)
                    (Bb_checked_p2)

                    ; #43015: <==closure== 60595 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #44282: <==commonly_known== 83169 (neg)
                    (Pc_checked_p2)

                    ; #60595: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #75911: <==commonly_known== 27805 (pos)
                    (Bc_checked_p2)

                    ; #85165: <==closure== 12562 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #12396: <==uncertain_firing== 12562 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #12806: <==negation-removal== 12562 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #13006: <==uncertain_firing== 85165 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #14645: <==uncertain_firing== 60595 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #19300: <==negation-removal== 44282 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25836: <==negation-removal== 37301 (pos)
                    (not (Pb_not_checked_p2))

                    ; #35589: <==uncertain_firing== 43015 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #46618: <==negation-removal== 15948 (pos)
                    (not (Ba_not_checked_p2))

                    ; #52315: <==negation-removal== 29826 (pos)
                    (not (Pa_not_checked_p2))

                    ; #69340: <==negation-removal== 85165 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #70623: <==negation-removal== 19917 (pos)
                    (not (Bb_not_checked_p2))

                    ; #75962: <==negation-removal== 43015 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #77582: <==negation-removal== 60595 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #83157: <==negation-removal== 75911 (pos)
                    (not (Pc_not_checked_p2))

                    ; #83169: <==negation-removal== 27805 (pos)
                    (not (not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12754: <==commonly_known== 71216 (pos)
                    (Bb_checked_p3)

                    ; #15644: <==commonly_known== 91784 (neg)
                    (Pb_checked_p3)

                    ; #23776: <==closure== 47989 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #30199: <==closure== 86196 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #42532: <==commonly_known== 91784 (neg)
                    (Pa_checked_p3)

                    ; #47989: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #54702: <==commonly_known== 91784 (neg)
                    (Pc_checked_p3)

                    ; #65811: <==commonly_known== 71216 (pos)
                    (Ba_checked_p3)

                    ; #69980: <==commonly_known== 71216 (pos)
                    (Bc_checked_p3)

                    ; #71216: origin
                    (checked_p3)

                    ; #86196: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #12394: <==negation-removal== 23776 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #15648: <==negation-removal== 65811 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23383: <==uncertain_firing== 30199 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #28661: <==uncertain_firing== 23776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44983: <==uncertain_firing== 47989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #48257: <==negation-removal== 42532 (pos)
                    (not (Ba_not_checked_p3))

                    ; #51014: <==negation-removal== 47989 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #59481: <==negation-removal== 30199 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #67652: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p3))

                    ; #69230: <==negation-removal== 12754 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72732: <==negation-removal== 54702 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78611: <==negation-removal== 86196 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #87658: <==uncertain_firing== 86196 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #91037: <==negation-removal== 69980 (pos)
                    (not (Pc_not_checked_p3))

                    ; #91784: <==negation-removal== 71216 (pos)
                    (not (not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15051: <==commonly_known== 81977 (pos)
                    (Ba_checked_p4)

                    ; #31177: <==commonly_known== 81977 (pos)
                    (Bc_checked_p4)

                    ; #37018: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #41033: <==closure== 49189 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #47232: <==commonly_known== 89641 (neg)
                    (Pc_checked_p4)

                    ; #49189: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #58622: <==commonly_known== 89641 (neg)
                    (Pa_checked_p4)

                    ; #67990: <==commonly_known== 81977 (pos)
                    (Bb_checked_p4)

                    ; #70016: <==closure== 37018 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #81167: <==commonly_known== 89641 (neg)
                    (Pb_checked_p4)

                    ; #81977: origin
                    (checked_p4)

                    ; #10189: <==uncertain_firing== 41033 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #12284: <==negation-removal== 49189 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #23102: <==uncertain_firing== 70016 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26917: <==negation-removal== 37018 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28592: <==negation-removal== 81167 (pos)
                    (not (Bb_not_checked_p4))

                    ; #30109: <==negation-removal== 41033 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #34036: <==negation-removal== 58622 (pos)
                    (not (Ba_not_checked_p4))

                    ; #52788: <==uncertain_firing== 37018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #55140: <==negation-removal== 15051 (pos)
                    (not (Pa_not_checked_p4))

                    ; #70847: <==negation-removal== 31177 (pos)
                    (not (Pc_not_checked_p4))

                    ; #73407: <==negation-removal== 70016 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #75966: <==uncertain_firing== 49189 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #84423: <==negation-removal== 67990 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88179: <==negation-removal== 47232 (pos)
                    (not (Bc_not_checked_p4))

                    ; #89641: <==negation-removal== 81977 (pos)
                    (not (not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22749: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #37651: <==commonly_known== 71650 (neg)
                    (Pc_checked_p5)

                    ; #40701: <==closure== 62621 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #41892: <==closure== 22749 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #44101: <==commonly_known== 71650 (neg)
                    (Pa_checked_p5)

                    ; #52171: origin
                    (checked_p5)

                    ; #62621: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #69177: <==commonly_known== 52171 (pos)
                    (Bb_checked_p5)

                    ; #72332: <==commonly_known== 71650 (neg)
                    (Pb_checked_p5)

                    ; #75486: <==commonly_known== 52171 (pos)
                    (Bc_checked_p5)

                    ; #80435: <==commonly_known== 52171 (pos)
                    (Ba_checked_p5)

                    ; #18177: <==negation-removal== 22749 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #25009: <==negation-removal== 37651 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25831: <==negation-removal== 80435 (pos)
                    (not (Pa_not_checked_p5))

                    ; #38577: <==negation-removal== 69177 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42285: <==negation-removal== 41892 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #52023: <==negation-removal== 75486 (pos)
                    (not (Pc_not_checked_p5))

                    ; #56085: <==negation-removal== 44101 (pos)
                    (not (Ba_not_checked_p5))

                    ; #60253: <==negation-removal== 62621 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #64172: <==uncertain_firing== 41892 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #67493: <==uncertain_firing== 22749 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #70214: <==uncertain_firing== 40701 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #71650: <==negation-removal== 52171 (pos)
                    (not (not_checked_p5))

                    ; #81824: <==negation-removal== 40701 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #84220: <==uncertain_firing== 62621 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #92220: <==negation-removal== 72332 (pos)
                    (not (Bb_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #15198: <==closure== 80216 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #24127: <==commonly_known== 85076 (pos)
                    (Ba_checked_p6)

                    ; #39050: <==commonly_known== 22094 (neg)
                    (Pc_checked_p6)

                    ; #45370: <==commonly_known== 85076 (pos)
                    (Bc_checked_p6)

                    ; #49851: <==commonly_known== 22094 (neg)
                    (Pa_checked_p6)

                    ; #63472: <==commonly_known== 22094 (neg)
                    (Pb_checked_p6)

                    ; #64673: <==closure== 73567 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #73567: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #77545: <==commonly_known== 85076 (pos)
                    (Bb_checked_p6)

                    ; #80216: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #85076: origin
                    (checked_p6)

                    ; #11121: <==negation-removal== 63472 (pos)
                    (not (Bb_not_checked_p6))

                    ; #14338: <==negation-removal== 64673 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #14364: <==negation-removal== 49851 (pos)
                    (not (Ba_not_checked_p6))

                    ; #22094: <==negation-removal== 85076 (pos)
                    (not (not_checked_p6))

                    ; #23662: <==uncertain_firing== 15198 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #26660: <==uncertain_firing== 73567 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #33727: <==uncertain_firing== 64673 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #50761: <==negation-removal== 45370 (pos)
                    (not (Pc_not_checked_p6))

                    ; #51577: <==negation-removal== 15198 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #54690: <==negation-removal== 24127 (pos)
                    (not (Pa_not_checked_p6))

                    ; #56441: <==negation-removal== 80216 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #58737: <==negation-removal== 39050 (pos)
                    (not (Bc_not_checked_p6))

                    ; #73793: <==uncertain_firing== 80216 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #77140: <==negation-removal== 77545 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89871: <==negation-removal== 73567 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10975: <==commonly_known== 59020 (neg)
                    (Pa_checked_p7)

                    ; #22242: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #24264: origin
                    (checked_p7)

                    ; #39391: <==commonly_known== 59020 (neg)
                    (Pc_checked_p7)

                    ; #40400: <==closure== 65084 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #58273: <==commonly_known== 24264 (pos)
                    (Bc_checked_p7)

                    ; #65084: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #71096: <==commonly_known== 24264 (pos)
                    (Ba_checked_p7)

                    ; #72930: <==closure== 22242 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #74878: <==commonly_known== 24264 (pos)
                    (Bb_checked_p7)

                    ; #79403: <==commonly_known== 59020 (neg)
                    (Pb_checked_p7)

                    ; #10582: <==negation-removal== 79403 (pos)
                    (not (Bb_not_checked_p7))

                    ; #15950: <==negation-removal== 22242 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #17938: <==negation-removal== 39391 (pos)
                    (not (Bc_not_checked_p7))

                    ; #22871: <==negation-removal== 74878 (pos)
                    (not (Pb_not_checked_p7))

                    ; #24124: <==uncertain_firing== 40400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #47082: <==negation-removal== 72930 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #49013: <==negation-removal== 71096 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51826: <==uncertain_firing== 72930 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #56594: <==uncertain_firing== 65084 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #59020: <==negation-removal== 24264 (pos)
                    (not (not_checked_p7))

                    ; #61519: <==negation-removal== 58273 (pos)
                    (not (Pc_not_checked_p7))

                    ; #61638: <==negation-removal== 40400 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #68442: <==uncertain_firing== 22242 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #69140: <==negation-removal== 65084 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #88879: <==negation-removal== 10975 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #21317: <==commonly_known== 51861 (neg)
                    (Pc_checked_p8)

                    ; #25712: <==commonly_known== 73807 (pos)
                    (Ba_checked_p8)

                    ; #26894: <==commonly_known== 51861 (neg)
                    (Pa_checked_p8)

                    ; #31989: <==closure== 78896 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #49979: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #63847: <==commonly_known== 51861 (neg)
                    (Pb_checked_p8)

                    ; #72848: <==commonly_known== 73807 (pos)
                    (Bc_checked_p8)

                    ; #73583: <==commonly_known== 73807 (pos)
                    (Bb_checked_p8)

                    ; #73807: origin
                    (checked_p8)

                    ; #78896: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #81277: <==closure== 49979 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #18193: <==negation-removal== 78896 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #26120: <==negation-removal== 26894 (pos)
                    (not (Ba_not_checked_p8))

                    ; #33962: <==negation-removal== 25712 (pos)
                    (not (Pa_not_checked_p8))

                    ; #38498: <==negation-removal== 63847 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43145: <==negation-removal== 31989 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #45047: <==uncertain_firing== 31989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #49696: <==uncertain_firing== 81277 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #51861: <==negation-removal== 73807 (pos)
                    (not (not_checked_p8))

                    ; #52666: <==negation-removal== 81277 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #54009: <==negation-removal== 49979 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #61379: <==uncertain_firing== 49979 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #73726: <==negation-removal== 72848 (pos)
                    (not (Pc_not_checked_p8))

                    ; #74915: <==negation-removal== 21317 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77774: <==uncertain_firing== 78896 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #80976: <==negation-removal== 73583 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #24848: <==closure== 44575 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #27008: <==closure== 35665 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #35665: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #37178: origin
                    (checked_p9)

                    ; #44575: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #67569: <==commonly_known== 37178 (pos)
                    (Bc_checked_p9)

                    ; #77149: <==commonly_known== 78025 (neg)
                    (Pb_checked_p9)

                    ; #86534: <==commonly_known== 78025 (neg)
                    (Pc_checked_p9)

                    ; #88192: <==commonly_known== 78025 (neg)
                    (Pa_checked_p9)

                    ; #89854: <==commonly_known== 37178 (pos)
                    (Ba_checked_p9)

                    ; #91813: <==commonly_known== 37178 (pos)
                    (Bb_checked_p9)

                    ; #10036: <==uncertain_firing== 24848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #23211: <==negation-removal== 67569 (pos)
                    (not (Pc_not_checked_p9))

                    ; #24793: <==negation-removal== 88192 (pos)
                    (not (Ba_not_checked_p9))

                    ; #26671: <==negation-removal== 35665 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #29685: <==uncertain_firing== 35665 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #41884: <==negation-removal== 91813 (pos)
                    (not (Pb_not_checked_p9))

                    ; #48723: <==uncertain_firing== 27008 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #51067: <==negation-removal== 86534 (pos)
                    (not (Bc_not_checked_p9))

                    ; #58157: <==uncertain_firing== 44575 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #68397: <==negation-removal== 27008 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #75579: <==negation-removal== 24848 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #78025: <==negation-removal== 37178 (pos)
                    (not (not_checked_p9))

                    ; #80954: <==negation-removal== 44575 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #90290: <==negation-removal== 89854 (pos)
                    (not (Pa_not_checked_p9))

                    ; #94269: <==negation-removal== 77149 (pos)
                    (not (Bb_not_checked_p9))))

)