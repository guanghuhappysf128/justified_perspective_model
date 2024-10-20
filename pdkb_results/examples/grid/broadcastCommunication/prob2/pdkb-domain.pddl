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

    (:action comm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #20797: origin
                    (Ba_survivorat_s_p1)

                    ; #44582: <==closure== 20797 (pos)
                    (Pa_survivorat_s_p1)

                    ; #20382: <==negation-removal== 44582 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30740: <==negation-removal== 20797 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (leader_b)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #60177: origin
                    (Bb_survivorat_s_p1)

                    ; #82783: <==closure== 60177 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77065: <==negation-removal== 60177 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87682: <==negation-removal== 82783 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #28573: <==closure== 45803 (pos)
                    (Pc_survivorat_s_p1)

                    ; #45803: origin
                    (Bc_survivorat_s_p1)

                    ; #47937: <==negation-removal== 45803 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63359: <==negation-removal== 28573 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #20797: origin
                    (Ba_survivorat_s_p1)

                    ; #44582: <==closure== 20797 (pos)
                    (Pa_survivorat_s_p1)

                    ; #20382: <==negation-removal== 44582 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30740: <==negation-removal== 20797 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #60177: origin
                    (Bb_survivorat_s_p1)

                    ; #82783: <==closure== 60177 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77065: <==negation-removal== 60177 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87682: <==negation-removal== 82783 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #28573: <==closure== 45803 (pos)
                    (Pc_survivorat_s_p1)

                    ; #45803: origin
                    (Bc_survivorat_s_p1)

                    ; #47937: <==negation-removal== 45803 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63359: <==negation-removal== 28573 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (leader_a))
        :effect (and
                    ; #20797: origin
                    (Ba_survivorat_s_p1)

                    ; #44582: <==closure== 20797 (pos)
                    (Pa_survivorat_s_p1)

                    ; #20382: <==negation-removal== 44582 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30740: <==negation-removal== 20797 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #60177: origin
                    (Bb_survivorat_s_p1)

                    ; #82783: <==closure== 60177 (pos)
                    (Pb_survivorat_s_p1)

                    ; #77065: <==negation-removal== 60177 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #87682: <==negation-removal== 82783 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #28573: <==closure== 45803 (pos)
                    (Pc_survivorat_s_p1)

                    ; #45803: origin
                    (Bc_survivorat_s_p1)

                    ; #47937: <==negation-removal== 45803 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #63359: <==negation-removal== 28573 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #80245: <==closure== 97595 (pos)
                    (Pa_survivorat_s_p2)

                    ; #97595: origin
                    (Ba_survivorat_s_p2)

                    ; #78638: <==negation-removal== 80245 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #85719: <==negation-removal== 97595 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #55882: <==closure== 75219 (pos)
                    (Pb_survivorat_s_p2)

                    ; #75219: origin
                    (Bb_survivorat_s_p2)

                    ; #16798: <==negation-removal== 75219 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #85075: <==negation-removal== 55882 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #14763: origin
                    (Bc_survivorat_s_p2)

                    ; #35618: <==closure== 14763 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17421: <==negation-removal== 14763 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87490: <==negation-removal== 35618 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #80245: <==closure== 97595 (pos)
                    (Pa_survivorat_s_p2)

                    ; #97595: origin
                    (Ba_survivorat_s_p2)

                    ; #78638: <==negation-removal== 80245 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #85719: <==negation-removal== 97595 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #55882: <==closure== 75219 (pos)
                    (Pb_survivorat_s_p2)

                    ; #75219: origin
                    (Bb_survivorat_s_p2)

                    ; #16798: <==negation-removal== 75219 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #85075: <==negation-removal== 55882 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #14763: origin
                    (Bc_survivorat_s_p2)

                    ; #35618: <==closure== 14763 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17421: <==negation-removal== 14763 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87490: <==negation-removal== 35618 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #80245: <==closure== 97595 (pos)
                    (Pa_survivorat_s_p2)

                    ; #97595: origin
                    (Ba_survivorat_s_p2)

                    ; #78638: <==negation-removal== 80245 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #85719: <==negation-removal== 97595 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #55882: <==closure== 75219 (pos)
                    (Pb_survivorat_s_p2)

                    ; #75219: origin
                    (Bb_survivorat_s_p2)

                    ; #16798: <==negation-removal== 75219 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #85075: <==negation-removal== 55882 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (leader_c)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #14763: origin
                    (Bc_survivorat_s_p2)

                    ; #35618: <==closure== 14763 (pos)
                    (Pc_survivorat_s_p2)

                    ; #17421: <==negation-removal== 14763 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87490: <==negation-removal== 35618 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #14687: <==closure== 70444 (pos)
                    (Pa_survivorat_s_p3)

                    ; #70444: origin
                    (Ba_survivorat_s_p3)

                    ; #32487: <==negation-removal== 14687 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78827: <==negation-removal== 70444 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b)
                           (at_a_p3))
        :effect (and
                    ; #27254: <==closure== 90849 (pos)
                    (Pb_survivorat_s_p3)

                    ; #90849: origin
                    (Bb_survivorat_s_p3)

                    ; #38985: <==negation-removal== 27254 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57396: <==negation-removal== 90849 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #19010: <==closure== 79499 (pos)
                    (Pc_survivorat_s_p3)

                    ; #79499: origin
                    (Bc_survivorat_s_p3)

                    ; #39064: <==negation-removal== 19010 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #78851: <==negation-removal== 79499 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_a))
        :effect (and
                    ; #14687: <==closure== 70444 (pos)
                    (Pa_survivorat_s_p3)

                    ; #70444: origin
                    (Ba_survivorat_s_p3)

                    ; #32487: <==negation-removal== 14687 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78827: <==negation-removal== 70444 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_b))
        :effect (and
                    ; #27254: <==closure== 90849 (pos)
                    (Pb_survivorat_s_p3)

                    ; #90849: origin
                    (Bb_survivorat_s_p3)

                    ; #38985: <==negation-removal== 27254 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57396: <==negation-removal== 90849 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (leader_c))
        :effect (and
                    ; #19010: <==closure== 79499 (pos)
                    (Pc_survivorat_s_p3)

                    ; #79499: origin
                    (Bc_survivorat_s_p3)

                    ; #39064: <==negation-removal== 19010 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #78851: <==negation-removal== 79499 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #14687: <==closure== 70444 (pos)
                    (Pa_survivorat_s_p3)

                    ; #70444: origin
                    (Ba_survivorat_s_p3)

                    ; #32487: <==negation-removal== 14687 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78827: <==negation-removal== 70444 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #27254: <==closure== 90849 (pos)
                    (Pb_survivorat_s_p3)

                    ; #90849: origin
                    (Bb_survivorat_s_p3)

                    ; #38985: <==negation-removal== 27254 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #57396: <==negation-removal== 90849 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #19010: <==closure== 79499 (pos)
                    (Pc_survivorat_s_p3)

                    ; #79499: origin
                    (Bc_survivorat_s_p3)

                    ; #39064: <==negation-removal== 19010 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #78851: <==negation-removal== 79499 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #26688: <==closure== 40750 (pos)
                    (Pa_survivorat_s_p4)

                    ; #40750: origin
                    (Ba_survivorat_s_p4)

                    ; #70601: <==negation-removal== 40750 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #90829: <==negation-removal== 26688 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #53990: <==closure== 65332 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65332: origin
                    (Bb_survivorat_s_p4)

                    ; #35979: <==negation-removal== 65332 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #84476: <==negation-removal== 53990 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #21302: <==closure== 54920 (pos)
                    (Pc_survivorat_s_p4)

                    ; #54920: origin
                    (Bc_survivorat_s_p4)

                    ; #53632: <==negation-removal== 54920 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #91248: <==negation-removal== 21302 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #26688: <==closure== 40750 (pos)
                    (Pa_survivorat_s_p4)

                    ; #40750: origin
                    (Ba_survivorat_s_p4)

                    ; #70601: <==negation-removal== 40750 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #90829: <==negation-removal== 26688 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (leader_b)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #53990: <==closure== 65332 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65332: origin
                    (Bb_survivorat_s_p4)

                    ; #35979: <==negation-removal== 65332 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #84476: <==negation-removal== 53990 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (leader_c)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #21302: <==closure== 54920 (pos)
                    (Pc_survivorat_s_p4)

                    ; #54920: origin
                    (Bc_survivorat_s_p4)

                    ; #53632: <==negation-removal== 54920 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #91248: <==negation-removal== 21302 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (leader_a))
        :effect (and
                    ; #26688: <==closure== 40750 (pos)
                    (Pa_survivorat_s_p4)

                    ; #40750: origin
                    (Ba_survivorat_s_p4)

                    ; #70601: <==negation-removal== 40750 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #90829: <==negation-removal== 26688 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #53990: <==closure== 65332 (pos)
                    (Pb_survivorat_s_p4)

                    ; #65332: origin
                    (Bb_survivorat_s_p4)

                    ; #35979: <==negation-removal== 65332 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #84476: <==negation-removal== 53990 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #21302: <==closure== 54920 (pos)
                    (Pc_survivorat_s_p4)

                    ; #54920: origin
                    (Bc_survivorat_s_p4)

                    ; #53632: <==negation-removal== 54920 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #91248: <==negation-removal== 21302 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_a)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #36972: <==closure== 82673 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82673: origin
                    (Ba_survivorat_s_p5)

                    ; #12490: <==negation-removal== 82673 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #73116: <==negation-removal== 36972 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #18754: origin
                    (Bb_survivorat_s_p5)

                    ; #37884: <==closure== 18754 (pos)
                    (Pb_survivorat_s_p5)

                    ; #23631: <==negation-removal== 37884 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #56635: <==negation-removal== 18754 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #33177: <==closure== 80014 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80014: origin
                    (Bc_survivorat_s_p5)

                    ; #59329: <==negation-removal== 80014 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #64516: <==negation-removal== 33177 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #36972: <==closure== 82673 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82673: origin
                    (Ba_survivorat_s_p5)

                    ; #12490: <==negation-removal== 82673 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #73116: <==negation-removal== 36972 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #18754: origin
                    (Bb_survivorat_s_p5)

                    ; #37884: <==closure== 18754 (pos)
                    (Pb_survivorat_s_p5)

                    ; #23631: <==negation-removal== 37884 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #56635: <==negation-removal== 18754 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (leader_c)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #33177: <==closure== 80014 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80014: origin
                    (Bc_survivorat_s_p5)

                    ; #59329: <==negation-removal== 80014 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #64516: <==negation-removal== 33177 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #36972: <==closure== 82673 (pos)
                    (Pa_survivorat_s_p5)

                    ; #82673: origin
                    (Ba_survivorat_s_p5)

                    ; #12490: <==negation-removal== 82673 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #73116: <==negation-removal== 36972 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #18754: origin
                    (Bb_survivorat_s_p5)

                    ; #37884: <==closure== 18754 (pos)
                    (Pb_survivorat_s_p5)

                    ; #23631: <==negation-removal== 37884 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #56635: <==negation-removal== 18754 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #33177: <==closure== 80014 (pos)
                    (Pc_survivorat_s_p5)

                    ; #80014: origin
                    (Bc_survivorat_s_p5)

                    ; #59329: <==negation-removal== 80014 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #64516: <==negation-removal== 33177 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #30815: <==closure== 82260 (pos)
                    (Pa_survivorat_s_p6)

                    ; #82260: origin
                    (Ba_survivorat_s_p6)

                    ; #15888: <==negation-removal== 82260 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #82474: <==negation-removal== 30815 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #35590: origin
                    (Bb_survivorat_s_p6)

                    ; #53796: <==closure== 35590 (pos)
                    (Pb_survivorat_s_p6)

                    ; #57304: <==negation-removal== 53796 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #76690: <==negation-removal== 35590 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #30976: <==closure== 91135 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91135: origin
                    (Bc_survivorat_s_p6)

                    ; #21219: <==negation-removal== 91135 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #52827: <==negation-removal== 30976 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #30815: <==closure== 82260 (pos)
                    (Pa_survivorat_s_p6)

                    ; #82260: origin
                    (Ba_survivorat_s_p6)

                    ; #15888: <==negation-removal== 82260 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #82474: <==negation-removal== 30815 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #35590: origin
                    (Bb_survivorat_s_p6)

                    ; #53796: <==closure== 35590 (pos)
                    (Pb_survivorat_s_p6)

                    ; #57304: <==negation-removal== 53796 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #76690: <==negation-removal== 35590 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #30976: <==closure== 91135 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91135: origin
                    (Bc_survivorat_s_p6)

                    ; #21219: <==negation-removal== 91135 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #52827: <==negation-removal== 30976 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #30815: <==closure== 82260 (pos)
                    (Pa_survivorat_s_p6)

                    ; #82260: origin
                    (Ba_survivorat_s_p6)

                    ; #15888: <==negation-removal== 82260 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #82474: <==negation-removal== 30815 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #35590: origin
                    (Bb_survivorat_s_p6)

                    ; #53796: <==closure== 35590 (pos)
                    (Pb_survivorat_s_p6)

                    ; #57304: <==negation-removal== 53796 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #76690: <==negation-removal== 35590 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #30976: <==closure== 91135 (pos)
                    (Pc_survivorat_s_p6)

                    ; #91135: origin
                    (Bc_survivorat_s_p6)

                    ; #21219: <==negation-removal== 91135 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #52827: <==negation-removal== 30976 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #15231: <==closure== 20963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20963: origin
                    (Ba_survivorat_s_p7)

                    ; #61528: <==negation-removal== 20963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #98872: <==negation-removal== 15231 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #15074: origin
                    (Bb_survivorat_s_p7)

                    ; #56786: <==closure== 15074 (pos)
                    (Pb_survivorat_s_p7)

                    ; #49220: <==negation-removal== 15074 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #98662: <==negation-removal== 56786 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #39302: <==closure== 65365 (pos)
                    (Pc_survivorat_s_p7)

                    ; #65365: origin
                    (Bc_survivorat_s_p7)

                    ; #31866: <==negation-removal== 39302 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #80793: <==negation-removal== 65365 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_a))
        :effect (and
                    ; #15231: <==closure== 20963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20963: origin
                    (Ba_survivorat_s_p7)

                    ; #61528: <==negation-removal== 20963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #98872: <==negation-removal== 15231 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (leader_b)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #15074: origin
                    (Bb_survivorat_s_p7)

                    ; #56786: <==closure== 15074 (pos)
                    (Pb_survivorat_s_p7)

                    ; #49220: <==negation-removal== 15074 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #98662: <==negation-removal== 56786 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #39302: <==closure== 65365 (pos)
                    (Pc_survivorat_s_p7)

                    ; #65365: origin
                    (Bc_survivorat_s_p7)

                    ; #31866: <==negation-removal== 39302 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #80793: <==negation-removal== 65365 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #15231: <==closure== 20963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20963: origin
                    (Ba_survivorat_s_p7)

                    ; #61528: <==negation-removal== 20963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #98872: <==negation-removal== 15231 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #15074: origin
                    (Bb_survivorat_s_p7)

                    ; #56786: <==closure== 15074 (pos)
                    (Pb_survivorat_s_p7)

                    ; #49220: <==negation-removal== 15074 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #98662: <==negation-removal== 56786 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #39302: <==closure== 65365 (pos)
                    (Pc_survivorat_s_p7)

                    ; #65365: origin
                    (Bc_survivorat_s_p7)

                    ; #31866: <==negation-removal== 39302 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #80793: <==negation-removal== 65365 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_a))
        :effect (and
                    ; #13653: <==closure== 48729 (pos)
                    (Pa_survivorat_s_p8)

                    ; #48729: origin
                    (Ba_survivorat_s_p8)

                    ; #16528: <==negation-removal== 13653 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #40814: <==negation-removal== 48729 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_b)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #73058: <==closure== 89943 (pos)
                    (Pb_survivorat_s_p8)

                    ; #89943: origin
                    (Bb_survivorat_s_p8)

                    ; #11921: <==negation-removal== 89943 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #46913: <==negation-removal== 73058 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (leader_c))
        :effect (and
                    ; #80256: <==closure== 90795 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90795: origin
                    (Bc_survivorat_s_p8)

                    ; #32739: <==negation-removal== 80256 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #64414: <==negation-removal== 90795 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (leader_a))
        :effect (and
                    ; #13653: <==closure== 48729 (pos)
                    (Pa_survivorat_s_p8)

                    ; #48729: origin
                    (Ba_survivorat_s_p8)

                    ; #16528: <==negation-removal== 13653 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #40814: <==negation-removal== 48729 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #73058: <==closure== 89943 (pos)
                    (Pb_survivorat_s_p8)

                    ; #89943: origin
                    (Bb_survivorat_s_p8)

                    ; #11921: <==negation-removal== 89943 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #46913: <==negation-removal== 73058 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #80256: <==closure== 90795 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90795: origin
                    (Bc_survivorat_s_p8)

                    ; #32739: <==negation-removal== 80256 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #64414: <==negation-removal== 90795 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #13653: <==closure== 48729 (pos)
                    (Pa_survivorat_s_p8)

                    ; #48729: origin
                    (Ba_survivorat_s_p8)

                    ; #16528: <==negation-removal== 13653 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #40814: <==negation-removal== 48729 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #73058: <==closure== 89943 (pos)
                    (Pb_survivorat_s_p8)

                    ; #89943: origin
                    (Bb_survivorat_s_p8)

                    ; #11921: <==negation-removal== 89943 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #46913: <==negation-removal== 73058 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #80256: <==closure== 90795 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90795: origin
                    (Bc_survivorat_s_p8)

                    ; #32739: <==negation-removal== 80256 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #64414: <==negation-removal== 90795 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (leader_a))
        :effect (and
                    ; #60113: <==closure== 67598 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67598: origin
                    (Ba_survivorat_s_p9)

                    ; #60033: <==negation-removal== 60113 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #86682: <==negation-removal== 67598 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #17860: <==closure== 64518 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64518: origin
                    (Bb_survivorat_s_p9)

                    ; #22951: <==negation-removal== 17860 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91995: <==negation-removal== 64518 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #38382: origin
                    (Bc_survivorat_s_p9)

                    ; #44283: <==closure== 38382 (pos)
                    (Pc_survivorat_s_p9)

                    ; #25547: <==negation-removal== 44283 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60062: <==negation-removal== 38382 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #60113: <==closure== 67598 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67598: origin
                    (Ba_survivorat_s_p9)

                    ; #60033: <==negation-removal== 60113 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #86682: <==negation-removal== 67598 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #17860: <==closure== 64518 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64518: origin
                    (Bb_survivorat_s_p9)

                    ; #22951: <==negation-removal== 17860 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91995: <==negation-removal== 64518 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #38382: origin
                    (Bc_survivorat_s_p9)

                    ; #44283: <==closure== 38382 (pos)
                    (Pc_survivorat_s_p9)

                    ; #25547: <==negation-removal== 44283 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60062: <==negation-removal== 38382 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #60113: <==closure== 67598 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67598: origin
                    (Ba_survivorat_s_p9)

                    ; #60033: <==negation-removal== 60113 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #86682: <==negation-removal== 67598 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #17860: <==closure== 64518 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64518: origin
                    (Bb_survivorat_s_p9)

                    ; #22951: <==negation-removal== 17860 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #91995: <==negation-removal== 64518 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #38382: origin
                    (Bc_survivorat_s_p9)

                    ; #44283: <==closure== 38382 (pos)
                    (Pc_survivorat_s_p9)

                    ; #25547: <==negation-removal== 44283 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60062: <==negation-removal== 38382 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #43111: origin
                    (at_a_p1)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #75233: origin
                    (at_a_p2)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #63229: origin
                    (at_a_p3)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #76330: origin
                    (at_a_p4)

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #64520: origin
                    (at_a_p5)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #42246: origin
                    (not_at_a_p1)

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #42246: origin
                    (not_at_a_p1)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #42372: origin
                    (at_a_p8)

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #42246: origin
                    (not_at_a_p1)

                    ; #64921: origin
                    (at_a_p9)

                    ; #43111: <==negation-removal== 42246 (pos)
                    (not (at_a_p1))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #43111: origin
                    (at_a_p1)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #75233: origin
                    (at_a_p2)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #63229: origin
                    (at_a_p3)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #76330: origin
                    (at_a_p4)

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #64520: origin
                    (at_a_p5)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #26119: origin
                    (at_a_p6)

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #18999: origin
                    (not_at_a_p2)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #42372: origin
                    (at_a_p8)

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #18999: origin
                    (not_at_a_p2)

                    ; #64921: origin
                    (at_a_p9)

                    ; #75233: <==negation-removal== 18999 (pos)
                    (not (at_a_p2))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #43111: origin
                    (at_a_p1)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #75233: origin
                    (at_a_p2)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #63229: origin
                    (at_a_p3)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #76330: origin
                    (at_a_p4)

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #64520: origin
                    (at_a_p5)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #34090: origin
                    (not_at_a_p3)

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #34090: origin
                    (not_at_a_p3)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #42372: origin
                    (at_a_p8)

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34090: origin
                    (not_at_a_p3)

                    ; #64921: origin
                    (at_a_p9)

                    ; #63229: <==negation-removal== 34090 (pos)
                    (not (at_a_p3))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #43111: origin
                    (at_a_p1)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #75233: origin
                    (at_a_p2)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #63229: origin
                    (at_a_p3)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #76330: origin
                    (at_a_p4)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #64520: origin
                    (at_a_p5)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #42372: origin
                    (at_a_p8)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #64921: origin
                    (at_a_p9)

                    ; #79727: origin
                    (not_at_a_p4)

                    ; #76330: <==negation-removal== 79727 (pos)
                    (not (at_a_p4))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #43111: origin
                    (at_a_p1)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #75233: origin
                    (at_a_p2)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #63229: origin
                    (at_a_p3)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #76330: origin
                    (at_a_p4)

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #64520: origin
                    (at_a_p5)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #27363: origin
                    (not_at_a_p5)

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #27363: origin
                    (not_at_a_p5)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #42372: origin
                    (at_a_p8)

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #27363: origin
                    (not_at_a_p5)

                    ; #64921: origin
                    (at_a_p9)

                    ; #64520: <==negation-removal== 27363 (pos)
                    (not (at_a_p5))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #43111: origin
                    (at_a_p1)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #75233: origin
                    (at_a_p2)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #63229: origin
                    (at_a_p3)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #76330: origin
                    (at_a_p4)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #64520: origin
                    (at_a_p5)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #42372: origin
                    (at_a_p8)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #64921: origin
                    (at_a_p9)

                    ; #92010: origin
                    (not_at_a_p6)

                    ; #26119: <==negation-removal== 92010 (pos)
                    (not (at_a_p6))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #43111: origin
                    (at_a_p1)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #75233: origin
                    (at_a_p2)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #63229: origin
                    (at_a_p3)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #76330: origin
                    (at_a_p4)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #64520: origin
                    (at_a_p5)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #34273: origin
                    (not_at_a_p7)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #34273: origin
                    (not_at_a_p7)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #42372: origin
                    (at_a_p8)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #34273: origin
                    (not_at_a_p7)

                    ; #64921: origin
                    (at_a_p9)

                    ; #11817: <==negation-removal== 34273 (pos)
                    (not (at_a_p7))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #43111: origin
                    (at_a_p1)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75233: origin
                    (at_a_p2)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #63229: origin
                    (at_a_p3)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #76330: origin
                    (at_a_p4)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #64520: origin
                    (at_a_p5)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #42372: origin
                    (at_a_p8)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #64921: origin
                    (at_a_p9)

                    ; #84165: origin
                    (not_at_a_p8)

                    ; #42372: <==negation-removal== 84165 (pos)
                    (not (at_a_p8))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #43111: origin
                    (at_a_p1)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #42246: <==negation-removal== 43111 (pos)
                    (not (not_at_a_p1))

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #75233: origin
                    (at_a_p2)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #18999: <==negation-removal== 75233 (pos)
                    (not (not_at_a_p2))

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #63229: origin
                    (at_a_p3)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #34090: <==negation-removal== 63229 (pos)
                    (not (not_at_a_p3))

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #76330: origin
                    (at_a_p4)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))

                    ; #79727: <==negation-removal== 76330 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #64520: origin
                    (at_a_p5)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #27363: <==negation-removal== 64520 (pos)
                    (not (not_at_a_p5))

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #26119: origin
                    (at_a_p6)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))

                    ; #92010: <==negation-removal== 26119 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11817: origin
                    (at_a_p7)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #34273: <==negation-removal== 11817 (pos)
                    (not (not_at_a_p7))

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #42372: origin
                    (at_a_p8)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))

                    ; #84165: <==negation-removal== 42372 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #64921: origin
                    (at_a_p9)

                    ; #84966: origin
                    (not_at_a_p9)

                    ; #64921: <==negation-removal== 84966 (pos)
                    (not (at_a_p9))

                    ; #84966: <==negation-removal== 64921 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21877: origin
                    (at_b_p1)

                    ; #55346: origin
                    (not_at_b_p1)

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #55346: origin
                    (not_at_b_p1)

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #55346: origin
                    (not_at_b_p1)

                    ; #81276: origin
                    (at_b_p3)

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #30843: origin
                    (at_b_p4)

                    ; #55346: origin
                    (not_at_b_p1)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #55346: origin
                    (not_at_b_p1)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50601: origin
                    (at_b_p6)

                    ; #55346: origin
                    (not_at_b_p1)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #55346: origin
                    (not_at_b_p1)

                    ; #56535: origin
                    (at_b_p7)

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55346: origin
                    (not_at_b_p1)

                    ; #82632: origin
                    (at_b_p8)

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #55346: origin
                    (not_at_b_p1)

                    ; #59581: origin
                    (at_b_p9)

                    ; #21877: <==negation-removal== 55346 (pos)
                    (not (at_b_p1))

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21877: origin
                    (at_b_p1)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #81276: origin
                    (at_b_p3)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #30843: origin
                    (at_b_p4)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68435: origin
                    (at_b_p5)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50601: origin
                    (at_b_p6)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56535: origin
                    (at_b_p7)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #82632: origin
                    (at_b_p8)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59581: origin
                    (at_b_p9)

                    ; #87315: origin
                    (not_at_b_p2)

                    ; #18563: <==negation-removal== 87315 (pos)
                    (not (at_b_p2))

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #21877: origin
                    (at_b_p1)

                    ; #29970: origin
                    (not_at_b_p3)

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #29970: origin
                    (not_at_b_p3)

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #81276: origin
                    (at_b_p3)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #30843: origin
                    (at_b_p4)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #50601: origin
                    (at_b_p6)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #56535: origin
                    (at_b_p7)

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #82632: origin
                    (at_b_p8)

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #29970: origin
                    (not_at_b_p3)

                    ; #59581: origin
                    (at_b_p9)

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))

                    ; #81276: <==negation-removal== 29970 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #21877: origin
                    (at_b_p1)

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #18563: origin
                    (at_b_p2)

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #81276: origin
                    (at_b_p3)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #30843: origin
                    (at_b_p4)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #50601: origin
                    (at_b_p6)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #56535: origin
                    (at_b_p7)

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #82632: origin
                    (at_b_p8)

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12398: origin
                    (not_at_b_p4)

                    ; #59581: origin
                    (at_b_p9)

                    ; #30843: <==negation-removal== 12398 (pos)
                    (not (at_b_p4))

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #21877: origin
                    (at_b_p1)

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #18711: origin
                    (not_at_b_p5)

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #81276: origin
                    (at_b_p3)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #30843: origin
                    (at_b_p4)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #50601: origin
                    (at_b_p6)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #56535: origin
                    (at_b_p7)

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #82632: origin
                    (at_b_p8)

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #18711: origin
                    (not_at_b_p5)

                    ; #59581: origin
                    (at_b_p9)

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))

                    ; #68435: <==negation-removal== 18711 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #21877: origin
                    (at_b_p1)

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #18563: origin
                    (at_b_p2)

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #81276: origin
                    (at_b_p3)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #30843: origin
                    (at_b_p4)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #50601: origin
                    (at_b_p6)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #56535: origin
                    (at_b_p7)

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #82632: origin
                    (at_b_p8)

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12985: origin
                    (not_at_b_p6)

                    ; #59581: origin
                    (at_b_p9)

                    ; #50601: <==negation-removal== 12985 (pos)
                    (not (at_b_p6))

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #21877: origin
                    (at_b_p1)

                    ; #59955: origin
                    (not_at_b_p7)

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #59955: origin
                    (not_at_b_p7)

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #59955: origin
                    (not_at_b_p7)

                    ; #81276: origin
                    (at_b_p3)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30843: origin
                    (at_b_p4)

                    ; #59955: origin
                    (not_at_b_p7)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #59955: origin
                    (not_at_b_p7)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50601: origin
                    (at_b_p6)

                    ; #59955: origin
                    (not_at_b_p7)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56535: origin
                    (at_b_p7)

                    ; #59955: origin
                    (not_at_b_p7)

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #59955: origin
                    (not_at_b_p7)

                    ; #82632: origin
                    (at_b_p8)

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #59581: origin
                    (at_b_p9)

                    ; #59955: origin
                    (not_at_b_p7)

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))

                    ; #56535: <==negation-removal== 59955 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #21877: origin
                    (at_b_p1)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #81276: origin
                    (at_b_p3)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #30843: origin
                    (at_b_p4)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #68435: origin
                    (at_b_p5)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #50601: origin
                    (at_b_p6)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56535: origin
                    (at_b_p7)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #82632: origin
                    (at_b_p8)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #59581: origin
                    (at_b_p9)

                    ; #85192: origin
                    (not_at_b_p8)

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))

                    ; #82632: <==negation-removal== 85192 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #21877: origin
                    (at_b_p1)

                    ; #53211: origin
                    (not_at_b_p9)

                    ; #55346: <==negation-removal== 21877 (pos)
                    (not (not_at_b_p1))

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #18563: origin
                    (at_b_p2)

                    ; #53211: origin
                    (not_at_b_p9)

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))

                    ; #87315: <==negation-removal== 18563 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #53211: origin
                    (not_at_b_p9)

                    ; #81276: origin
                    (at_b_p3)

                    ; #29970: <==negation-removal== 81276 (pos)
                    (not (not_at_b_p3))

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #30843: origin
                    (at_b_p4)

                    ; #53211: origin
                    (not_at_b_p9)

                    ; #12398: <==negation-removal== 30843 (pos)
                    (not (not_at_b_p4))

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #53211: origin
                    (not_at_b_p9)

                    ; #68435: origin
                    (at_b_p5)

                    ; #18711: <==negation-removal== 68435 (pos)
                    (not (not_at_b_p5))

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #50601: origin
                    (at_b_p6)

                    ; #53211: origin
                    (not_at_b_p9)

                    ; #12985: <==negation-removal== 50601 (pos)
                    (not (not_at_b_p6))

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #53211: origin
                    (not_at_b_p9)

                    ; #56535: origin
                    (at_b_p7)

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))

                    ; #59955: <==negation-removal== 56535 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #53211: origin
                    (not_at_b_p9)

                    ; #82632: origin
                    (at_b_p8)

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))

                    ; #85192: <==negation-removal== 82632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #53211: origin
                    (not_at_b_p9)

                    ; #59581: origin
                    (at_b_p9)

                    ; #53211: <==negation-removal== 59581 (pos)
                    (not (not_at_b_p9))

                    ; #59581: <==negation-removal== 53211 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #20228: origin
                    (at_c_p1)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #19804: origin
                    (at_c_p2)

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #30589: origin
                    (at_c_p3)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #52155: origin
                    (at_c_p4)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #16390: origin
                    (not_at_c_p1)

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #30466: origin
                    (at_c_p6)

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #68975: origin
                    (at_c_p7)

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #83068: origin
                    (at_c_p8)

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #16390: origin
                    (not_at_c_p1)

                    ; #47974: origin
                    (at_c_p9)

                    ; #20228: <==negation-removal== 16390 (pos)
                    (not (at_c_p1))

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #20228: origin
                    (at_c_p1)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #19804: origin
                    (at_c_p2)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #30589: origin
                    (at_c_p3)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #52155: origin
                    (at_c_p4)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #30466: origin
                    (at_c_p6)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #52519: origin
                    (not_at_c_p2)

                    ; #68975: origin
                    (at_c_p7)

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #52519: origin
                    (not_at_c_p2)

                    ; #83068: origin
                    (at_c_p8)

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #47974: origin
                    (at_c_p9)

                    ; #52519: origin
                    (not_at_c_p2)

                    ; #19804: <==negation-removal== 52519 (pos)
                    (not (at_c_p2))

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #20228: origin
                    (at_c_p1)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #19804: origin
                    (at_c_p2)

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #30589: origin
                    (at_c_p3)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #52155: origin
                    (at_c_p4)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #14920: origin
                    (not_at_c_p3)

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #30466: origin
                    (at_c_p6)

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #68975: origin
                    (at_c_p7)

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #83068: origin
                    (at_c_p8)

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14920: origin
                    (not_at_c_p3)

                    ; #47974: origin
                    (at_c_p9)

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))

                    ; #30589: <==negation-removal== 14920 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #20228: origin
                    (at_c_p1)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #19804: origin
                    (at_c_p2)

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #30589: origin
                    (at_c_p3)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #52155: origin
                    (at_c_p4)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #12896: origin
                    (not_at_c_p4)

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #30466: origin
                    (at_c_p6)

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #68975: origin
                    (at_c_p7)

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #83068: origin
                    (at_c_p8)

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #12896: origin
                    (not_at_c_p4)

                    ; #47974: origin
                    (at_c_p9)

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))

                    ; #52155: <==negation-removal== 12896 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #20228: origin
                    (at_c_p1)

                    ; #34897: origin
                    (not_at_c_p5)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #19804: origin
                    (at_c_p2)

                    ; #34897: origin
                    (not_at_c_p5)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #30589: origin
                    (at_c_p3)

                    ; #34897: origin
                    (not_at_c_p5)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34897: origin
                    (not_at_c_p5)

                    ; #52155: origin
                    (at_c_p4)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #34897: origin
                    (not_at_c_p5)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #30466: origin
                    (at_c_p6)

                    ; #34897: origin
                    (not_at_c_p5)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34897: origin
                    (not_at_c_p5)

                    ; #68975: origin
                    (at_c_p7)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34897: origin
                    (not_at_c_p5)

                    ; #83068: origin
                    (at_c_p8)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34897: origin
                    (not_at_c_p5)

                    ; #47974: origin
                    (at_c_p9)

                    ; #10563: <==negation-removal== 34897 (pos)
                    (not (at_c_p5))

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #20228: origin
                    (at_c_p1)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #19804: origin
                    (at_c_p2)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #30589: origin
                    (at_c_p3)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #52155: origin
                    (at_c_p4)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #30466: origin
                    (at_c_p6)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #68975: origin
                    (at_c_p7)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #83068: origin
                    (at_c_p8)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #47974: origin
                    (at_c_p9)

                    ; #87611: origin
                    (not_at_c_p6)

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))

                    ; #30466: <==negation-removal== 87611 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #20228: origin
                    (at_c_p1)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #19804: origin
                    (at_c_p2)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #30589: origin
                    (at_c_p3)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #52155: origin
                    (at_c_p4)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #30466: origin
                    (at_c_p6)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #57796: origin
                    (not_at_c_p7)

                    ; #68975: origin
                    (at_c_p7)

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57796: origin
                    (not_at_c_p7)

                    ; #83068: origin
                    (at_c_p8)

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #47974: origin
                    (at_c_p9)

                    ; #57796: origin
                    (not_at_c_p7)

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))

                    ; #68975: <==negation-removal== 57796 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #20228: origin
                    (at_c_p1)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #19804: origin
                    (at_c_p2)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #30589: origin
                    (at_c_p3)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #52155: origin
                    (at_c_p4)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #30466: origin
                    (at_c_p6)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #67197: origin
                    (not_at_c_p8)

                    ; #68975: origin
                    (at_c_p7)

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #67197: origin
                    (not_at_c_p8)

                    ; #83068: origin
                    (at_c_p8)

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #47974: origin
                    (at_c_p9)

                    ; #67197: origin
                    (not_at_c_p8)

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))

                    ; #83068: <==negation-removal== 67197 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #20228: origin
                    (at_c_p1)

                    ; #26349: origin
                    (not_at_c_p9)

                    ; #16390: <==negation-removal== 20228 (pos)
                    (not (not_at_c_p1))

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #19804: origin
                    (at_c_p2)

                    ; #26349: origin
                    (not_at_c_p9)

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))

                    ; #52519: <==negation-removal== 19804 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #26349: origin
                    (not_at_c_p9)

                    ; #30589: origin
                    (at_c_p3)

                    ; #14920: <==negation-removal== 30589 (pos)
                    (not (not_at_c_p3))

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26349: origin
                    (not_at_c_p9)

                    ; #52155: origin
                    (at_c_p4)

                    ; #12896: <==negation-removal== 52155 (pos)
                    (not (not_at_c_p4))

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #10563: origin
                    (at_c_p5)

                    ; #26349: origin
                    (not_at_c_p9)

                    ; #34897: <==negation-removal== 10563 (pos)
                    (not (not_at_c_p5))

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26349: origin
                    (not_at_c_p9)

                    ; #30466: origin
                    (at_c_p6)

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))

                    ; #87611: <==negation-removal== 30466 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #26349: origin
                    (not_at_c_p9)

                    ; #68975: origin
                    (at_c_p7)

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))

                    ; #57796: <==negation-removal== 68975 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26349: origin
                    (not_at_c_p9)

                    ; #83068: origin
                    (at_c_p8)

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))

                    ; #67197: <==negation-removal== 83068 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #26349: origin
                    (not_at_c_p9)

                    ; #47974: origin
                    (at_c_p9)

                    ; #26349: <==negation-removal== 47974 (pos)
                    (not (not_at_c_p9))

                    ; #47974: <==negation-removal== 26349 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12243: <==commonly_known== 33197 (neg)
                    (Pb_checked_p1)

                    ; #25662: <==commonly_known== 55187 (pos)
                    (Ba_checked_p1)

                    ; #34226: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #55187: origin
                    (checked_p1)

                    ; #56590: <==closure== 34226 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #59003: <==commonly_known== 55187 (pos)
                    (Bb_checked_p1)

                    ; #72617: <==closure== 77097 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #76406: <==commonly_known== 55187 (pos)
                    (Bc_checked_p1)

                    ; #77097: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #81166: <==commonly_known== 33197 (neg)
                    (Pc_checked_p1)

                    ; #88892: <==commonly_known== 33197 (neg)
                    (Pa_checked_p1)

                    ; #11582: <==negation-removal== 56590 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #13637: <==negation-removal== 12243 (pos)
                    (not (Bb_not_checked_p1))

                    ; #19086: <==negation-removal== 72617 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25735: <==negation-removal== 81166 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30353: <==negation-removal== 76406 (pos)
                    (not (Pc_not_checked_p1))

                    ; #33197: <==negation-removal== 55187 (pos)
                    (not (not_checked_p1))

                    ; #37127: <==uncertain_firing== 72617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #57477: <==negation-removal== 25662 (pos)
                    (not (Pa_not_checked_p1))

                    ; #61801: <==negation-removal== 34226 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #61837: <==uncertain_firing== 56590 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63235: <==negation-removal== 59003 (pos)
                    (not (Pb_not_checked_p1))

                    ; #64832: <==uncertain_firing== 77097 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #78405: <==negation-removal== 88892 (pos)
                    (not (Ba_not_checked_p1))

                    ; #79065: <==uncertain_firing== 34226 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #88657: <==negation-removal== 77097 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #16961: <==commonly_known== 27379 (neg)
                    (Pa_checked_p2)

                    ; #27757: <==closure== 50637 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #50637: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #55310: <==commonly_known== 90954 (pos)
                    (Bc_checked_p2)

                    ; #62240: <==commonly_known== 90954 (pos)
                    (Bb_checked_p2)

                    ; #65591: <==commonly_known== 27379 (neg)
                    (Pb_checked_p2)

                    ; #71485: <==closure== 91489 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #87844: <==commonly_known== 27379 (neg)
                    (Pc_checked_p2)

                    ; #89731: <==commonly_known== 90954 (pos)
                    (Ba_checked_p2)

                    ; #90954: origin
                    (checked_p2)

                    ; #91489: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #15883: <==uncertain_firing== 91489 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #20271: <==negation-removal== 55310 (pos)
                    (not (Pc_not_checked_p2))

                    ; #27379: <==negation-removal== 90954 (pos)
                    (not (not_checked_p2))

                    ; #33060: <==negation-removal== 62240 (pos)
                    (not (Pb_not_checked_p2))

                    ; #33671: <==negation-removal== 91489 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34256: <==negation-removal== 89731 (pos)
                    (not (Pa_not_checked_p2))

                    ; #41826: <==uncertain_firing== 71485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #44465: <==negation-removal== 71485 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #45508: <==negation-removal== 27757 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #58793: <==negation-removal== 65591 (pos)
                    (not (Bb_not_checked_p2))

                    ; #61372: <==negation-removal== 50637 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #62395: <==negation-removal== 87844 (pos)
                    (not (Bc_not_checked_p2))

                    ; #84130: <==uncertain_firing== 27757 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #86716: <==uncertain_firing== 50637 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #97649: <==negation-removal== 16961 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #13601: <==closure== 20548 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #20548: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22548: <==commonly_known== 52361 (pos)
                    (Bc_checked_p3)

                    ; #26847: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #27755: <==commonly_known== 52361 (pos)
                    (Bb_checked_p3)

                    ; #34374: <==commonly_known== 39311 (neg)
                    (Pb_checked_p3)

                    ; #35661: <==commonly_known== 39311 (neg)
                    (Pa_checked_p3)

                    ; #50140: <==commonly_known== 52361 (pos)
                    (Ba_checked_p3)

                    ; #52361: origin
                    (checked_p3)

                    ; #57121: <==commonly_known== 39311 (neg)
                    (Pc_checked_p3)

                    ; #69926: <==closure== 26847 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #12067: <==uncertain_firing== 26847 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #15961: <==negation-removal== 13601 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #18114: <==negation-removal== 69926 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #30581: <==negation-removal== 50140 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30902: <==negation-removal== 27755 (pos)
                    (not (Pb_not_checked_p3))

                    ; #39311: <==negation-removal== 52361 (pos)
                    (not (not_checked_p3))

                    ; #52944: <==negation-removal== 57121 (pos)
                    (not (Bc_not_checked_p3))

                    ; #54227: <==negation-removal== 26847 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #56204: <==negation-removal== 20548 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #57674: <==uncertain_firing== 20548 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #64325: <==uncertain_firing== 13601 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #70062: <==uncertain_firing== 69926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #71130: <==negation-removal== 35661 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78589: <==negation-removal== 34374 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79917: <==negation-removal== 22548 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #20506: <==closure== 37425 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #21195: <==commonly_known== 10820 (neg)
                    (Pb_checked_p4)

                    ; #24093: <==commonly_known== 10820 (neg)
                    (Pa_checked_p4)

                    ; #30873: <==commonly_known== 32179 (pos)
                    (Ba_checked_p4)

                    ; #32179: origin
                    (checked_p4)

                    ; #36061: <==commonly_known== 32179 (pos)
                    (Bb_checked_p4)

                    ; #37425: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #48231: <==commonly_known== 32179 (pos)
                    (Bc_checked_p4)

                    ; #59040: <==commonly_known== 10820 (neg)
                    (Pc_checked_p4)

                    ; #72039: <==closure== 90531 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #90531: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #10820: <==negation-removal== 32179 (pos)
                    (not (not_checked_p4))

                    ; #12513: <==uncertain_firing== 72039 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #13851: <==uncertain_firing== 20506 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #14117: <==negation-removal== 21195 (pos)
                    (not (Bb_not_checked_p4))

                    ; #19475: <==negation-removal== 24093 (pos)
                    (not (Ba_not_checked_p4))

                    ; #23858: <==uncertain_firing== 37425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #30392: <==negation-removal== 59040 (pos)
                    (not (Bc_not_checked_p4))

                    ; #41330: <==negation-removal== 30873 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48849: <==negation-removal== 20506 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #48877: <==uncertain_firing== 90531 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #64930: <==negation-removal== 72039 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #66998: <==negation-removal== 90531 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #68261: <==negation-removal== 37425 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #71328: <==negation-removal== 48231 (pos)
                    (not (Pc_not_checked_p4))

                    ; #73950: <==negation-removal== 36061 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #25769: <==commonly_known== 47413 (pos)
                    (Bc_checked_p5)

                    ; #47413: origin
                    (checked_p5)

                    ; #52485: <==closure== 69441 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #55488: <==commonly_known== 81757 (neg)
                    (Pb_checked_p5)

                    ; #69441: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #74969: <==commonly_known== 47413 (pos)
                    (Bb_checked_p5)

                    ; #78482: <==commonly_known== 47413 (pos)
                    (Ba_checked_p5)

                    ; #78842: <==closure== 90073 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #86054: <==commonly_known== 81757 (neg)
                    (Pa_checked_p5)

                    ; #90073: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #93067: <==commonly_known== 81757 (neg)
                    (Pc_checked_p5)

                    ; #10844: <==uncertain_firing== 78842 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #27545: <==negation-removal== 93067 (pos)
                    (not (Bc_not_checked_p5))

                    ; #42210: <==negation-removal== 55488 (pos)
                    (not (Bb_not_checked_p5))

                    ; #45956: <==negation-removal== 78842 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #48149: <==negation-removal== 78482 (pos)
                    (not (Pa_not_checked_p5))

                    ; #49133: <==uncertain_firing== 52485 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #50258: <==negation-removal== 90073 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #59702: <==uncertain_firing== 69441 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #74183: <==negation-removal== 25769 (pos)
                    (not (Pc_not_checked_p5))

                    ; #76289: <==negation-removal== 69441 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #76312: <==uncertain_firing== 90073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #81341: <==negation-removal== 86054 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81757: <==negation-removal== 47413 (pos)
                    (not (not_checked_p5))

                    ; #84171: <==negation-removal== 52485 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #88784: <==negation-removal== 74969 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #17280: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #23694: <==commonly_known== 23350 (neg)
                    (Pa_checked_p6)

                    ; #31256: <==commonly_known== 72407 (pos)
                    (Bc_checked_p6)

                    ; #42201: <==commonly_known== 23350 (neg)
                    (Pc_checked_p6)

                    ; #45361: <==commonly_known== 23350 (neg)
                    (Pb_checked_p6)

                    ; #65665: <==commonly_known== 72407 (pos)
                    (Ba_checked_p6)

                    ; #67856: <==closure== 17280 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #72407: origin
                    (checked_p6)

                    ; #72446: <==commonly_known== 72407 (pos)
                    (Bb_checked_p6)

                    ; #85314: <==closure== 88886 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #88886: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #12375: <==negation-removal== 17280 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21681: <==negation-removal== 85314 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23350: <==negation-removal== 72407 (pos)
                    (not (not_checked_p6))

                    ; #26885: <==negation-removal== 31256 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27589: <==negation-removal== 72446 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35362: <==negation-removal== 45361 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37190: <==uncertain_firing== 17280 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40105: <==negation-removal== 67856 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43460: <==negation-removal== 65665 (pos)
                    (not (Pa_not_checked_p6))

                    ; #53773: <==uncertain_firing== 85314 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #68074: <==uncertain_firing== 67856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #70069: <==negation-removal== 88886 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #74993: <==negation-removal== 42201 (pos)
                    (not (Bc_not_checked_p6))

                    ; #77669: <==negation-removal== 23694 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90789: <==uncertain_firing== 88886 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #16154: <==commonly_known== 49474 (neg)
                    (Pc_checked_p7)

                    ; #17219: <==commonly_known== 49474 (neg)
                    (Pb_checked_p7)

                    ; #22553: <==closure== 37490 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #23120: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #37490: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #53793: <==commonly_known== 68555 (pos)
                    (Ba_checked_p7)

                    ; #55037: <==commonly_known== 68555 (pos)
                    (Bc_checked_p7)

                    ; #60060: <==closure== 23120 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #68555: origin
                    (checked_p7)

                    ; #75944: <==commonly_known== 49474 (neg)
                    (Pa_checked_p7)

                    ; #77787: <==commonly_known== 68555 (pos)
                    (Bb_checked_p7)

                    ; #30674: <==negation-removal== 55037 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32146: <==negation-removal== 16154 (pos)
                    (not (Bc_not_checked_p7))

                    ; #42246: <==negation-removal== 37490 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #42357: <==negation-removal== 22553 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #42954: <==uncertain_firing== 23120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #45339: <==negation-removal== 23120 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49474: <==negation-removal== 68555 (pos)
                    (not (not_checked_p7))

                    ; #52463: <==uncertain_firing== 60060 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #55176: <==negation-removal== 53793 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60529: <==negation-removal== 77787 (pos)
                    (not (Pb_not_checked_p7))

                    ; #65362: <==uncertain_firing== 37490 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #82925: <==negation-removal== 75944 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86410: <==negation-removal== 60060 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #86949: <==negation-removal== 17219 (pos)
                    (not (Bb_not_checked_p7))

                    ; #89532: <==uncertain_firing== 22553 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #10223: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #26900: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #38323: <==closure== 10223 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #38567: <==commonly_known== 56874 (pos)
                    (Bb_checked_p8)

                    ; #42476: <==commonly_known== 56874 (pos)
                    (Bc_checked_p8)

                    ; #56874: origin
                    (checked_p8)

                    ; #64906: <==commonly_known== 56874 (pos)
                    (Ba_checked_p8)

                    ; #83118: <==commonly_known== 64493 (neg)
                    (Pb_checked_p8)

                    ; #85304: <==commonly_known== 64493 (neg)
                    (Pa_checked_p8)

                    ; #85569: <==commonly_known== 64493 (neg)
                    (Pc_checked_p8)

                    ; #89206: <==closure== 26900 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #11436: <==negation-removal== 26900 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #18685: <==negation-removal== 83118 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23623: <==negation-removal== 64906 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26004: <==negation-removal== 42476 (pos)
                    (not (Pc_not_checked_p8))

                    ; #29629: <==uncertain_firing== 10223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #37785: <==uncertain_firing== 89206 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #43303: <==negation-removal== 85569 (pos)
                    (not (Bc_not_checked_p8))

                    ; #44182: <==negation-removal== 85304 (pos)
                    (not (Ba_not_checked_p8))

                    ; #44234: <==negation-removal== 38323 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63993: <==uncertain_firing== 26900 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #64493: <==negation-removal== 56874 (pos)
                    (not (not_checked_p8))

                    ; #67840: <==uncertain_firing== 38323 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #70278: <==negation-removal== 38567 (pos)
                    (not (Pb_not_checked_p8))

                    ; #71472: <==negation-removal== 10223 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73288: <==negation-removal== 89206 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #27996: <==closure== 70373 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #46269: <==commonly_known== 55494 (pos)
                    (Bc_checked_p9)

                    ; #47607: <==closure== 73696 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #47921: <==commonly_known== 43926 (neg)
                    (Pc_checked_p9)

                    ; #51612: <==commonly_known== 55494 (pos)
                    (Ba_checked_p9)

                    ; #55494: origin
                    (checked_p9)

                    ; #61072: <==commonly_known== 43926 (neg)
                    (Pa_checked_p9)

                    ; #67280: <==commonly_known== 43926 (neg)
                    (Pb_checked_p9)

                    ; #70373: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #73696: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #85849: <==commonly_known== 55494 (pos)
                    (Bb_checked_p9)

                    ; #10609: <==uncertain_firing== 27996 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #12963: <==negation-removal== 51612 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26185: <==negation-removal== 46269 (pos)
                    (not (Pc_not_checked_p9))

                    ; #32062: <==negation-removal== 73696 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #41224: <==negation-removal== 47921 (pos)
                    (not (Bc_not_checked_p9))

                    ; #43926: <==negation-removal== 55494 (pos)
                    (not (not_checked_p9))

                    ; #46889: <==uncertain_firing== 70373 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #46944: <==negation-removal== 70373 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #50719: <==negation-removal== 85849 (pos)
                    (not (Pb_not_checked_p9))

                    ; #51362: <==uncertain_firing== 73696 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54408: <==negation-removal== 47607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #64327: <==negation-removal== 67280 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66464: <==negation-removal== 61072 (pos)
                    (not (Ba_not_checked_p9))

                    ; #69049: <==uncertain_firing== 47607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #86806: <==negation-removal== 27996 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #12243: <==commonly_known== 33197 (neg)
                    (Pb_checked_p1)

                    ; #25662: <==commonly_known== 55187 (pos)
                    (Ba_checked_p1)

                    ; #45309: <==closure== 60170 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #55187: origin
                    (checked_p1)

                    ; #59003: <==commonly_known== 55187 (pos)
                    (Bb_checked_p1)

                    ; #60170: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #72352: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #76406: <==commonly_known== 55187 (pos)
                    (Bc_checked_p1)

                    ; #81166: <==commonly_known== 33197 (neg)
                    (Pc_checked_p1)

                    ; #88391: <==closure== 72352 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #88892: <==commonly_known== 33197 (neg)
                    (Pa_checked_p1)

                    ; #11251: <==uncertain_firing== 45309 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #13637: <==negation-removal== 12243 (pos)
                    (not (Bb_not_checked_p1))

                    ; #16997: <==uncertain_firing== 72352 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #25735: <==negation-removal== 81166 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30353: <==negation-removal== 76406 (pos)
                    (not (Pc_not_checked_p1))

                    ; #33197: <==negation-removal== 55187 (pos)
                    (not (not_checked_p1))

                    ; #57477: <==negation-removal== 25662 (pos)
                    (not (Pa_not_checked_p1))

                    ; #59646: <==negation-removal== 72352 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #63235: <==negation-removal== 59003 (pos)
                    (not (Pb_not_checked_p1))

                    ; #66561: <==negation-removal== 88391 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #71525: <==negation-removal== 60170 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #74508: <==negation-removal== 45309 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #78405: <==negation-removal== 88892 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80717: <==uncertain_firing== 88391 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #83934: <==uncertain_firing== 60170 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #16961: <==commonly_known== 27379 (neg)
                    (Pa_checked_p2)

                    ; #20981: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #36350: <==closure== 20981 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #47849: <==closure== 71619 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #55310: <==commonly_known== 90954 (pos)
                    (Bc_checked_p2)

                    ; #62240: <==commonly_known== 90954 (pos)
                    (Bb_checked_p2)

                    ; #65591: <==commonly_known== 27379 (neg)
                    (Pb_checked_p2)

                    ; #71619: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #87844: <==commonly_known== 27379 (neg)
                    (Pc_checked_p2)

                    ; #89731: <==commonly_known== 90954 (pos)
                    (Ba_checked_p2)

                    ; #90954: origin
                    (checked_p2)

                    ; #10348: <==negation-removal== 20981 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #20271: <==negation-removal== 55310 (pos)
                    (not (Pc_not_checked_p2))

                    ; #27379: <==negation-removal== 90954 (pos)
                    (not (not_checked_p2))

                    ; #30385: <==uncertain_firing== 20981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #31015: <==negation-removal== 47849 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #33060: <==negation-removal== 62240 (pos)
                    (not (Pb_not_checked_p2))

                    ; #34256: <==negation-removal== 89731 (pos)
                    (not (Pa_not_checked_p2))

                    ; #49912: <==negation-removal== 36350 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #52621: <==negation-removal== 71619 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58793: <==negation-removal== 65591 (pos)
                    (not (Bb_not_checked_p2))

                    ; #59978: <==uncertain_firing== 71619 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #62395: <==negation-removal== 87844 (pos)
                    (not (Bc_not_checked_p2))

                    ; #63222: <==uncertain_firing== 36350 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #91855: <==uncertain_firing== 47849 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #97649: <==negation-removal== 16961 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #22548: <==commonly_known== 52361 (pos)
                    (Bc_checked_p3)

                    ; #27755: <==commonly_known== 52361 (pos)
                    (Bb_checked_p3)

                    ; #34374: <==commonly_known== 39311 (neg)
                    (Pb_checked_p3)

                    ; #35661: <==commonly_known== 39311 (neg)
                    (Pa_checked_p3)

                    ; #39840: <==closure== 60190 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #50140: <==commonly_known== 52361 (pos)
                    (Ba_checked_p3)

                    ; #52361: origin
                    (checked_p3)

                    ; #57121: <==commonly_known== 39311 (neg)
                    (Pc_checked_p3)

                    ; #60190: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #63821: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #91456: <==closure== 63821 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #13949: <==uncertain_firing== 39840 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #15146: <==uncertain_firing== 91456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #24266: <==negation-removal== 39840 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #25319: <==negation-removal== 60190 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #30524: <==negation-removal== 91456 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #30581: <==negation-removal== 50140 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30902: <==negation-removal== 27755 (pos)
                    (not (Pb_not_checked_p3))

                    ; #39311: <==negation-removal== 52361 (pos)
                    (not (not_checked_p3))

                    ; #52944: <==negation-removal== 57121 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60582: <==uncertain_firing== 63821 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71130: <==negation-removal== 35661 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74407: <==negation-removal== 63821 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #74869: <==uncertain_firing== 60190 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #78589: <==negation-removal== 34374 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79917: <==negation-removal== 22548 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #21195: <==commonly_known== 10820 (neg)
                    (Pb_checked_p4)

                    ; #24093: <==commonly_known== 10820 (neg)
                    (Pa_checked_p4)

                    ; #30873: <==commonly_known== 32179 (pos)
                    (Ba_checked_p4)

                    ; #32179: origin
                    (checked_p4)

                    ; #36061: <==commonly_known== 32179 (pos)
                    (Bb_checked_p4)

                    ; #48231: <==commonly_known== 32179 (pos)
                    (Bc_checked_p4)

                    ; #51129: <==closure== 63204 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #59040: <==commonly_known== 10820 (neg)
                    (Pc_checked_p4)

                    ; #62679: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #63204: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81042: <==closure== 62679 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #10820: <==negation-removal== 32179 (pos)
                    (not (not_checked_p4))

                    ; #14117: <==negation-removal== 21195 (pos)
                    (not (Bb_not_checked_p4))

                    ; #14732: <==uncertain_firing== 62679 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #15262: <==uncertain_firing== 81042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19475: <==negation-removal== 24093 (pos)
                    (not (Ba_not_checked_p4))

                    ; #30392: <==negation-removal== 59040 (pos)
                    (not (Bc_not_checked_p4))

                    ; #41330: <==negation-removal== 30873 (pos)
                    (not (Pa_not_checked_p4))

                    ; #53993: <==uncertain_firing== 51129 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #70936: <==negation-removal== 63204 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #71328: <==negation-removal== 48231 (pos)
                    (not (Pc_not_checked_p4))

                    ; #73950: <==negation-removal== 36061 (pos)
                    (not (Pb_not_checked_p4))

                    ; #77728: <==negation-removal== 51129 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #82656: <==negation-removal== 62679 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #85737: <==negation-removal== 81042 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #92763: <==uncertain_firing== 63204 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #19059: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #25769: <==commonly_known== 47413 (pos)
                    (Bc_checked_p5)

                    ; #44332: <==closure== 85629 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #47182: <==closure== 19059 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #47413: origin
                    (checked_p5)

                    ; #55488: <==commonly_known== 81757 (neg)
                    (Pb_checked_p5)

                    ; #74969: <==commonly_known== 47413 (pos)
                    (Bb_checked_p5)

                    ; #78482: <==commonly_known== 47413 (pos)
                    (Ba_checked_p5)

                    ; #85629: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #86054: <==commonly_known== 81757 (neg)
                    (Pa_checked_p5)

                    ; #93067: <==commonly_known== 81757 (neg)
                    (Pc_checked_p5)

                    ; #19661: <==uncertain_firing== 19059 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #27545: <==negation-removal== 93067 (pos)
                    (not (Bc_not_checked_p5))

                    ; #35810: <==negation-removal== 19059 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #36108: <==uncertain_firing== 47182 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #42210: <==negation-removal== 55488 (pos)
                    (not (Bb_not_checked_p5))

                    ; #42510: <==negation-removal== 44332 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47180: <==uncertain_firing== 44332 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #48149: <==negation-removal== 78482 (pos)
                    (not (Pa_not_checked_p5))

                    ; #69117: <==negation-removal== 85629 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #74183: <==negation-removal== 25769 (pos)
                    (not (Pc_not_checked_p5))

                    ; #76522: <==uncertain_firing== 85629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #81341: <==negation-removal== 86054 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81757: <==negation-removal== 47413 (pos)
                    (not (not_checked_p5))

                    ; #88784: <==negation-removal== 74969 (pos)
                    (not (Pb_not_checked_p5))

                    ; #96188: <==negation-removal== 47182 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23694: <==commonly_known== 23350 (neg)
                    (Pa_checked_p6)

                    ; #31256: <==commonly_known== 72407 (pos)
                    (Bc_checked_p6)

                    ; #42201: <==commonly_known== 23350 (neg)
                    (Pc_checked_p6)

                    ; #45361: <==commonly_known== 23350 (neg)
                    (Pb_checked_p6)

                    ; #60868: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #63126: <==closure== 80264 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #65665: <==commonly_known== 72407 (pos)
                    (Ba_checked_p6)

                    ; #68991: <==closure== 60868 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #72407: origin
                    (checked_p6)

                    ; #72446: <==commonly_known== 72407 (pos)
                    (Bb_checked_p6)

                    ; #80264: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17105: <==uncertain_firing== 68991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23350: <==negation-removal== 72407 (pos)
                    (not (not_checked_p6))

                    ; #26885: <==negation-removal== 31256 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27589: <==negation-removal== 72446 (pos)
                    (not (Pb_not_checked_p6))

                    ; #35362: <==negation-removal== 45361 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38902: <==negation-removal== 63126 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #43460: <==negation-removal== 65665 (pos)
                    (not (Pa_not_checked_p6))

                    ; #44434: <==negation-removal== 68991 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #53162: <==uncertain_firing== 80264 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #60365: <==uncertain_firing== 63126 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #73590: <==negation-removal== 60868 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #74993: <==negation-removal== 42201 (pos)
                    (not (Bc_not_checked_p6))

                    ; #77669: <==negation-removal== 23694 (pos)
                    (not (Ba_not_checked_p6))

                    ; #83461: <==uncertain_firing== 60868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #85098: <==negation-removal== 80264 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #16154: <==commonly_known== 49474 (neg)
                    (Pc_checked_p7)

                    ; #17219: <==commonly_known== 49474 (neg)
                    (Pb_checked_p7)

                    ; #36513: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #53793: <==commonly_known== 68555 (pos)
                    (Ba_checked_p7)

                    ; #54701: <==closure== 75506 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #55037: <==commonly_known== 68555 (pos)
                    (Bc_checked_p7)

                    ; #66732: <==closure== 36513 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #68555: origin
                    (checked_p7)

                    ; #75506: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #75944: <==commonly_known== 49474 (neg)
                    (Pa_checked_p7)

                    ; #77787: <==commonly_known== 68555 (pos)
                    (Bb_checked_p7)

                    ; #10875: <==negation-removal== 54701 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #15050: <==negation-removal== 75506 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #27563: <==uncertain_firing== 66732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #30674: <==negation-removal== 55037 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32146: <==negation-removal== 16154 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49474: <==negation-removal== 68555 (pos)
                    (not (not_checked_p7))

                    ; #55176: <==negation-removal== 53793 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60529: <==negation-removal== 77787 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64897: <==negation-removal== 36513 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #71099: <==negation-removal== 66732 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #77631: <==uncertain_firing== 54701 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #82925: <==negation-removal== 75944 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86556: <==uncertain_firing== 36513 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #86949: <==negation-removal== 17219 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87412: <==uncertain_firing== 75506 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23880: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #38567: <==commonly_known== 56874 (pos)
                    (Bb_checked_p8)

                    ; #42476: <==commonly_known== 56874 (pos)
                    (Bc_checked_p8)

                    ; #56874: origin
                    (checked_p8)

                    ; #61082: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #64906: <==commonly_known== 56874 (pos)
                    (Ba_checked_p8)

                    ; #70488: <==closure== 23880 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #82823: <==closure== 61082 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #83118: <==commonly_known== 64493 (neg)
                    (Pb_checked_p8)

                    ; #85304: <==commonly_known== 64493 (neg)
                    (Pa_checked_p8)

                    ; #85569: <==commonly_known== 64493 (neg)
                    (Pc_checked_p8)

                    ; #13392: <==uncertain_firing== 23880 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #14684: <==uncertain_firing== 82823 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #18685: <==negation-removal== 83118 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23623: <==negation-removal== 64906 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26004: <==negation-removal== 42476 (pos)
                    (not (Pc_not_checked_p8))

                    ; #40075: <==negation-removal== 70488 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #43303: <==negation-removal== 85569 (pos)
                    (not (Bc_not_checked_p8))

                    ; #44182: <==negation-removal== 85304 (pos)
                    (not (Ba_not_checked_p8))

                    ; #56509: <==negation-removal== 61082 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #57640: <==negation-removal== 23880 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61898: <==negation-removal== 82823 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #62960: <==uncertain_firing== 70488 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #64493: <==negation-removal== 56874 (pos)
                    (not (not_checked_p8))

                    ; #70278: <==negation-removal== 38567 (pos)
                    (not (Pb_not_checked_p8))

                    ; #82778: <==uncertain_firing== 61082 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #24546: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #46269: <==commonly_known== 55494 (pos)
                    (Bc_checked_p9)

                    ; #47921: <==commonly_known== 43926 (neg)
                    (Pc_checked_p9)

                    ; #51612: <==commonly_known== 55494 (pos)
                    (Ba_checked_p9)

                    ; #52367: <==closure== 86424 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #55494: origin
                    (checked_p9)

                    ; #61072: <==commonly_known== 43926 (neg)
                    (Pa_checked_p9)

                    ; #67280: <==commonly_known== 43926 (neg)
                    (Pb_checked_p9)

                    ; #82590: <==closure== 24546 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #85849: <==commonly_known== 55494 (pos)
                    (Bb_checked_p9)

                    ; #86424: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #12953: <==negation-removal== 52367 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #12963: <==negation-removal== 51612 (pos)
                    (not (Pa_not_checked_p9))

                    ; #21923: <==negation-removal== 82590 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #26185: <==negation-removal== 46269 (pos)
                    (not (Pc_not_checked_p9))

                    ; #28831: <==uncertain_firing== 86424 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #41224: <==negation-removal== 47921 (pos)
                    (not (Bc_not_checked_p9))

                    ; #43926: <==negation-removal== 55494 (pos)
                    (not (not_checked_p9))

                    ; #46865: <==negation-removal== 86424 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #50719: <==negation-removal== 85849 (pos)
                    (not (Pb_not_checked_p9))

                    ; #54890: <==negation-removal== 24546 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #64327: <==negation-removal== 67280 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66464: <==negation-removal== 61072 (pos)
                    (not (Ba_not_checked_p9))

                    ; #69773: <==uncertain_firing== 52367 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #82670: <==uncertain_firing== 24546 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #98952: <==uncertain_firing== 82590 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #12243: <==commonly_known== 33197 (neg)
                    (Pb_checked_p1)

                    ; #16836: <==closure== 23871 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #23871: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #25662: <==commonly_known== 55187 (pos)
                    (Ba_checked_p1)

                    ; #43920: <==closure== 52308 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #52308: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #55187: origin
                    (checked_p1)

                    ; #59003: <==commonly_known== 55187 (pos)
                    (Bb_checked_p1)

                    ; #76406: <==commonly_known== 55187 (pos)
                    (Bc_checked_p1)

                    ; #81166: <==commonly_known== 33197 (neg)
                    (Pc_checked_p1)

                    ; #88892: <==commonly_known== 33197 (neg)
                    (Pa_checked_p1)

                    ; #11055: <==uncertain_firing== 52308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #13637: <==negation-removal== 12243 (pos)
                    (not (Bb_not_checked_p1))

                    ; #21452: <==negation-removal== 16836 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #25721: <==uncertain_firing== 43920 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25735: <==negation-removal== 81166 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26761: <==uncertain_firing== 23871 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #30353: <==negation-removal== 76406 (pos)
                    (not (Pc_not_checked_p1))

                    ; #31670: <==negation-removal== 43920 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #33197: <==negation-removal== 55187 (pos)
                    (not (not_checked_p1))

                    ; #44167: <==uncertain_firing== 16836 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #57477: <==negation-removal== 25662 (pos)
                    (not (Pa_not_checked_p1))

                    ; #63235: <==negation-removal== 59003 (pos)
                    (not (Pb_not_checked_p1))

                    ; #75864: <==negation-removal== 23871 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #78405: <==negation-removal== 88892 (pos)
                    (not (Ba_not_checked_p1))

                    ; #89364: <==negation-removal== 52308 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #14217: <==closure== 91611 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #16961: <==commonly_known== 27379 (neg)
                    (Pa_checked_p2)

                    ; #45435: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #55310: <==commonly_known== 90954 (pos)
                    (Bc_checked_p2)

                    ; #62240: <==commonly_known== 90954 (pos)
                    (Bb_checked_p2)

                    ; #65591: <==commonly_known== 27379 (neg)
                    (Pb_checked_p2)

                    ; #87844: <==commonly_known== 27379 (neg)
                    (Pc_checked_p2)

                    ; #89731: <==commonly_known== 90954 (pos)
                    (Ba_checked_p2)

                    ; #90159: <==closure== 45435 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #90954: origin
                    (checked_p2)

                    ; #91611: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #20271: <==negation-removal== 55310 (pos)
                    (not (Pc_not_checked_p2))

                    ; #20571: <==uncertain_firing== 14217 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #24393: <==uncertain_firing== 91611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #27379: <==negation-removal== 90954 (pos)
                    (not (not_checked_p2))

                    ; #33060: <==negation-removal== 62240 (pos)
                    (not (Pb_not_checked_p2))

                    ; #34256: <==negation-removal== 89731 (pos)
                    (not (Pa_not_checked_p2))

                    ; #50510: <==negation-removal== 14217 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58793: <==negation-removal== 65591 (pos)
                    (not (Bb_not_checked_p2))

                    ; #59017: <==uncertain_firing== 90159 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #61787: <==negation-removal== 45435 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #62395: <==negation-removal== 87844 (pos)
                    (not (Bc_not_checked_p2))

                    ; #64225: <==negation-removal== 91611 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #68299: <==negation-removal== 90159 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #88378: <==uncertain_firing== 45435 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #97649: <==negation-removal== 16961 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #22548: <==commonly_known== 52361 (pos)
                    (Bc_checked_p3)

                    ; #25334: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #27755: <==commonly_known== 52361 (pos)
                    (Bb_checked_p3)

                    ; #31302: <==closure== 81758 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #34374: <==commonly_known== 39311 (neg)
                    (Pb_checked_p3)

                    ; #35661: <==commonly_known== 39311 (neg)
                    (Pa_checked_p3)

                    ; #47234: <==closure== 25334 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #50140: <==commonly_known== 52361 (pos)
                    (Ba_checked_p3)

                    ; #52361: origin
                    (checked_p3)

                    ; #57121: <==commonly_known== 39311 (neg)
                    (Pc_checked_p3)

                    ; #81758: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #11108: <==uncertain_firing== 81758 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #30581: <==negation-removal== 50140 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30902: <==negation-removal== 27755 (pos)
                    (not (Pb_not_checked_p3))

                    ; #39311: <==negation-removal== 52361 (pos)
                    (not (not_checked_p3))

                    ; #44757: <==uncertain_firing== 47234 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #49372: <==negation-removal== 25334 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #52944: <==negation-removal== 57121 (pos)
                    (not (Bc_not_checked_p3))

                    ; #54633: <==uncertain_firing== 25334 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #57561: <==negation-removal== 81758 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #67725: <==negation-removal== 47234 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #68621: <==uncertain_firing== 31302 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #71130: <==negation-removal== 35661 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78589: <==negation-removal== 34374 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79917: <==negation-removal== 22548 (pos)
                    (not (Pc_not_checked_p3))

                    ; #87947: <==negation-removal== 31302 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10969: <==closure== 24851 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #21195: <==commonly_known== 10820 (neg)
                    (Pb_checked_p4)

                    ; #24093: <==commonly_known== 10820 (neg)
                    (Pa_checked_p4)

                    ; #24851: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #30873: <==commonly_known== 32179 (pos)
                    (Ba_checked_p4)

                    ; #32179: origin
                    (checked_p4)

                    ; #36061: <==commonly_known== 32179 (pos)
                    (Bb_checked_p4)

                    ; #48231: <==commonly_known== 32179 (pos)
                    (Bc_checked_p4)

                    ; #49779: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #59040: <==commonly_known== 10820 (neg)
                    (Pc_checked_p4)

                    ; #84676: <==closure== 49779 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #10820: <==negation-removal== 32179 (pos)
                    (not (not_checked_p4))

                    ; #14117: <==negation-removal== 21195 (pos)
                    (not (Bb_not_checked_p4))

                    ; #19475: <==negation-removal== 24093 (pos)
                    (not (Ba_not_checked_p4))

                    ; #22994: <==negation-removal== 24851 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29681: <==uncertain_firing== 24851 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #30392: <==negation-removal== 59040 (pos)
                    (not (Bc_not_checked_p4))

                    ; #41330: <==negation-removal== 30873 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48530: <==negation-removal== 10969 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #49106: <==negation-removal== 84676 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #67040: <==uncertain_firing== 49779 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #71328: <==negation-removal== 48231 (pos)
                    (not (Pc_not_checked_p4))

                    ; #73950: <==negation-removal== 36061 (pos)
                    (not (Pb_not_checked_p4))

                    ; #82547: <==uncertain_firing== 10969 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #83271: <==negation-removal== 49779 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #89075: <==uncertain_firing== 84676 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21338: <==closure== 79194 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #25769: <==commonly_known== 47413 (pos)
                    (Bc_checked_p5)

                    ; #47413: origin
                    (checked_p5)

                    ; #55488: <==commonly_known== 81757 (neg)
                    (Pb_checked_p5)

                    ; #57214: <==closure== 58233 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #58233: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #74969: <==commonly_known== 47413 (pos)
                    (Bb_checked_p5)

                    ; #78482: <==commonly_known== 47413 (pos)
                    (Ba_checked_p5)

                    ; #79194: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #86054: <==commonly_known== 81757 (neg)
                    (Pa_checked_p5)

                    ; #93067: <==commonly_known== 81757 (neg)
                    (Pc_checked_p5)

                    ; #11912: <==negation-removal== 21338 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16783: <==uncertain_firing== 58233 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18264: <==uncertain_firing== 21338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #24621: <==uncertain_firing== 79194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #27545: <==negation-removal== 93067 (pos)
                    (not (Bc_not_checked_p5))

                    ; #42210: <==negation-removal== 55488 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48149: <==negation-removal== 78482 (pos)
                    (not (Pa_not_checked_p5))

                    ; #51879: <==negation-removal== 58233 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #52092: <==negation-removal== 57214 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #53991: <==uncertain_firing== 57214 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #54503: <==negation-removal== 79194 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74183: <==negation-removal== 25769 (pos)
                    (not (Pc_not_checked_p5))

                    ; #81341: <==negation-removal== 86054 (pos)
                    (not (Ba_not_checked_p5))

                    ; #81757: <==negation-removal== 47413 (pos)
                    (not (not_checked_p5))

                    ; #88784: <==negation-removal== 74969 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #23694: <==commonly_known== 23350 (neg)
                    (Pa_checked_p6)

                    ; #31256: <==commonly_known== 72407 (pos)
                    (Bc_checked_p6)

                    ; #41116: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #42201: <==commonly_known== 23350 (neg)
                    (Pc_checked_p6)

                    ; #45361: <==commonly_known== 23350 (neg)
                    (Pb_checked_p6)

                    ; #52487: <==closure== 88770 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #55184: <==closure== 41116 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #65665: <==commonly_known== 72407 (pos)
                    (Ba_checked_p6)

                    ; #72407: origin
                    (checked_p6)

                    ; #72446: <==commonly_known== 72407 (pos)
                    (Bb_checked_p6)

                    ; #88770: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #11369: <==uncertain_firing== 41116 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #11724: <==uncertain_firing== 88770 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #23350: <==negation-removal== 72407 (pos)
                    (not (not_checked_p6))

                    ; #26885: <==negation-removal== 31256 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27589: <==negation-removal== 72446 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31577: <==uncertain_firing== 52487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #35362: <==negation-removal== 45361 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37442: <==negation-removal== 55184 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #43460: <==negation-removal== 65665 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55977: <==uncertain_firing== 55184 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #61507: <==negation-removal== 52487 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #64202: <==negation-removal== 41116 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #65994: <==negation-removal== 88770 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #74993: <==negation-removal== 42201 (pos)
                    (not (Bc_not_checked_p6))

                    ; #77669: <==negation-removal== 23694 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #15866: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #16154: <==commonly_known== 49474 (neg)
                    (Pc_checked_p7)

                    ; #17219: <==commonly_known== 49474 (neg)
                    (Pb_checked_p7)

                    ; #26857: <==closure== 39946 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #39946: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #53793: <==commonly_known== 68555 (pos)
                    (Ba_checked_p7)

                    ; #55037: <==commonly_known== 68555 (pos)
                    (Bc_checked_p7)

                    ; #68555: origin
                    (checked_p7)

                    ; #75944: <==commonly_known== 49474 (neg)
                    (Pa_checked_p7)

                    ; #77073: <==closure== 15866 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #77787: <==commonly_known== 68555 (pos)
                    (Bb_checked_p7)

                    ; #17781: <==uncertain_firing== 26857 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #30135: <==uncertain_firing== 77073 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #30674: <==negation-removal== 55037 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32146: <==negation-removal== 16154 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48318: <==uncertain_firing== 39946 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #49474: <==negation-removal== 68555 (pos)
                    (not (not_checked_p7))

                    ; #50723: <==negation-removal== 15866 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #55176: <==negation-removal== 53793 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60529: <==negation-removal== 77787 (pos)
                    (not (Pb_not_checked_p7))

                    ; #65018: <==negation-removal== 77073 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #82925: <==negation-removal== 75944 (pos)
                    (not (Ba_not_checked_p7))

                    ; #85775: <==negation-removal== 26857 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #86949: <==negation-removal== 17219 (pos)
                    (not (Bb_not_checked_p7))

                    ; #88888: <==negation-removal== 39946 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #90617: <==uncertain_firing== 15866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10936: <==closure== 12268 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #12268: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #15964: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #38567: <==commonly_known== 56874 (pos)
                    (Bb_checked_p8)

                    ; #42476: <==commonly_known== 56874 (pos)
                    (Bc_checked_p8)

                    ; #56874: origin
                    (checked_p8)

                    ; #64906: <==commonly_known== 56874 (pos)
                    (Ba_checked_p8)

                    ; #73816: <==closure== 15964 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #83118: <==commonly_known== 64493 (neg)
                    (Pb_checked_p8)

                    ; #85304: <==commonly_known== 64493 (neg)
                    (Pa_checked_p8)

                    ; #85569: <==commonly_known== 64493 (neg)
                    (Pc_checked_p8)

                    ; #11035: <==uncertain_firing== 73816 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #15820: <==uncertain_firing== 12268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #17680: <==negation-removal== 73816 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #18685: <==negation-removal== 83118 (pos)
                    (not (Bb_not_checked_p8))

                    ; #23623: <==negation-removal== 64906 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26004: <==negation-removal== 42476 (pos)
                    (not (Pc_not_checked_p8))

                    ; #29515: <==negation-removal== 12268 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #35260: <==negation-removal== 10936 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #41924: <==uncertain_firing== 15964 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #43303: <==negation-removal== 85569 (pos)
                    (not (Bc_not_checked_p8))

                    ; #44182: <==negation-removal== 85304 (pos)
                    (not (Ba_not_checked_p8))

                    ; #58535: <==uncertain_firing== 10936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #64493: <==negation-removal== 56874 (pos)
                    (not (not_checked_p8))

                    ; #70278: <==negation-removal== 38567 (pos)
                    (not (Pb_not_checked_p8))

                    ; #81323: <==negation-removal== 15964 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #12288: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #41334: <==closure== 12288 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #46269: <==commonly_known== 55494 (pos)
                    (Bc_checked_p9)

                    ; #47921: <==commonly_known== 43926 (neg)
                    (Pc_checked_p9)

                    ; #51612: <==commonly_known== 55494 (pos)
                    (Ba_checked_p9)

                    ; #55494: origin
                    (checked_p9)

                    ; #61072: <==commonly_known== 43926 (neg)
                    (Pa_checked_p9)

                    ; #63341: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #67280: <==commonly_known== 43926 (neg)
                    (Pb_checked_p9)

                    ; #74545: <==closure== 63341 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #85849: <==commonly_known== 55494 (pos)
                    (Bb_checked_p9)

                    ; #12963: <==negation-removal== 51612 (pos)
                    (not (Pa_not_checked_p9))

                    ; #18445: <==negation-removal== 12288 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #22884: <==uncertain_firing== 63341 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #24326: <==uncertain_firing== 74545 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #26185: <==negation-removal== 46269 (pos)
                    (not (Pc_not_checked_p9))

                    ; #41224: <==negation-removal== 47921 (pos)
                    (not (Bc_not_checked_p9))

                    ; #43926: <==negation-removal== 55494 (pos)
                    (not (not_checked_p9))

                    ; #45814: <==uncertain_firing== 41334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #50719: <==negation-removal== 85849 (pos)
                    (not (Pb_not_checked_p9))

                    ; #58682: <==uncertain_firing== 12288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #64327: <==negation-removal== 67280 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66464: <==negation-removal== 61072 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76716: <==negation-removal== 63341 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #82265: <==negation-removal== 41334 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #83047: <==negation-removal== 74545 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)