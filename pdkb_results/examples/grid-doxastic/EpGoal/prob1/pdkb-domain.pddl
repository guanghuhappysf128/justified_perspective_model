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

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #13474: <==closure== 72459 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14037: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19675: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #39856: <==closure== 19675 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72459: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #77645: <==closure== 14037 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #15720: <==negation-removal== 14037 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24433: <==negation-removal== 19675 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #30596: <==negation-removal== 39856 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #53340: <==negation-removal== 72459 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #57085: <==uncertain_firing== 39856 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #58365: <==uncertain_firing== 13474 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #58612: <==negation-removal== 13474 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #62023: <==uncertain_firing== 14037 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #65805: <==negation-removal== 77645 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67943: <==uncertain_firing== 72459 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83272: <==uncertain_firing== 77645 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #89801: <==uncertain_firing== 19675 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #13474: <==closure== 72459 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14037: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19675: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #39856: <==closure== 19675 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72459: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #77645: <==closure== 14037 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #15720: <==negation-removal== 14037 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24433: <==negation-removal== 19675 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #30596: <==negation-removal== 39856 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #53340: <==negation-removal== 72459 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #57085: <==uncertain_firing== 39856 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #58365: <==uncertain_firing== 13474 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #58612: <==negation-removal== 13474 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #62023: <==uncertain_firing== 14037 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #65805: <==negation-removal== 77645 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67943: <==uncertain_firing== 72459 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83272: <==uncertain_firing== 77645 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #89801: <==uncertain_firing== 19675 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #13474: <==closure== 72459 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14037: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #19675: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #39856: <==closure== 19675 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72459: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #77645: <==closure== 14037 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #15720: <==negation-removal== 14037 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24433: <==negation-removal== 19675 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #30596: <==negation-removal== 39856 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #53340: <==negation-removal== 72459 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #57085: <==uncertain_firing== 39856 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #58365: <==uncertain_firing== 13474 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #58612: <==negation-removal== 13474 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #62023: <==uncertain_firing== 14037 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #65805: <==negation-removal== 77645 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67943: <==uncertain_firing== 72459 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83272: <==uncertain_firing== 77645 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #89801: <==uncertain_firing== 19675 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #19999: <==closure== 54282 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #44187: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #46029: <==closure== 83840 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #54282: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #67577: <==closure== 44187 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #83840: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #10371: <==negation-removal== 44187 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #14721: <==negation-removal== 83840 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #20414: <==uncertain_firing== 67577 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #51790: <==negation-removal== 67577 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #52252: <==negation-removal== 19999 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #54239: <==uncertain_firing== 46029 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #58665: <==uncertain_firing== 83840 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #61538: <==uncertain_firing== 44187 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #85276: <==negation-removal== 54282 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #85927: <==negation-removal== 46029 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #89270: <==uncertain_firing== 54282 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #90681: <==uncertain_firing== 19999 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #19999: <==closure== 54282 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #44187: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #46029: <==closure== 83840 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #54282: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #67577: <==closure== 44187 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #83840: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #10371: <==negation-removal== 44187 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #14721: <==negation-removal== 83840 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #20414: <==uncertain_firing== 67577 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #51790: <==negation-removal== 67577 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #52252: <==negation-removal== 19999 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #54239: <==uncertain_firing== 46029 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #58665: <==uncertain_firing== 83840 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #61538: <==uncertain_firing== 44187 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #85276: <==negation-removal== 54282 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #85927: <==negation-removal== 46029 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #89270: <==uncertain_firing== 54282 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #90681: <==uncertain_firing== 19999 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #19999: <==closure== 54282 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #44187: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #46029: <==closure== 83840 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #54282: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #67577: <==closure== 44187 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #83840: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #10371: <==negation-removal== 44187 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #14721: <==negation-removal== 83840 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #20414: <==uncertain_firing== 67577 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #51790: <==negation-removal== 67577 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #52252: <==negation-removal== 19999 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #54239: <==uncertain_firing== 46029 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #58665: <==uncertain_firing== 83840 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #61538: <==uncertain_firing== 44187 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #85276: <==negation-removal== 54282 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #85927: <==negation-removal== 46029 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #89270: <==uncertain_firing== 54282 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #90681: <==uncertain_firing== 19999 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #61446: <==closure== 96183 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69835: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #70890: <==closure== 74959 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #74959: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #75311: <==closure== 69835 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #96183: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #10235: <==uncertain_firing== 96183 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #11132: <==negation-removal== 74959 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #15874: <==uncertain_firing== 69835 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #17437: <==negation-removal== 96183 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #28674: <==uncertain_firing== 74959 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #39582: <==uncertain_firing== 70890 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #43965: <==negation-removal== 61446 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #59276: <==uncertain_firing== 75311 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #72252: <==negation-removal== 70890 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #78025: <==negation-removal== 75311 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81771: <==negation-removal== 69835 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #89700: <==uncertain_firing== 61446 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #61446: <==closure== 96183 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69835: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #70890: <==closure== 74959 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #74959: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #75311: <==closure== 69835 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #96183: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #10235: <==uncertain_firing== 96183 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #11132: <==negation-removal== 74959 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #15874: <==uncertain_firing== 69835 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #17437: <==negation-removal== 96183 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #28674: <==uncertain_firing== 74959 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #39582: <==uncertain_firing== 70890 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #43965: <==negation-removal== 61446 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #59276: <==uncertain_firing== 75311 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #72252: <==negation-removal== 70890 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #78025: <==negation-removal== 75311 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81771: <==negation-removal== 69835 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #89700: <==uncertain_firing== 61446 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #61446: <==closure== 96183 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #69835: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #70890: <==closure== 74959 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #74959: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #75311: <==closure== 69835 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #96183: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #10235: <==uncertain_firing== 96183 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #11132: <==negation-removal== 74959 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #15874: <==uncertain_firing== 69835 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #17437: <==negation-removal== 96183 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #28674: <==uncertain_firing== 74959 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #39582: <==uncertain_firing== 70890 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #43965: <==negation-removal== 61446 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #59276: <==uncertain_firing== 75311 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #72252: <==negation-removal== 70890 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #78025: <==negation-removal== 75311 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81771: <==negation-removal== 69835 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #89700: <==uncertain_firing== 61446 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #12767: <==closure== 22617 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #22617: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #28054: <==closure== 69935 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #43364: <==closure== 60877 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #60877: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #69935: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #14855: <==uncertain_firing== 12767 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15588: <==negation-removal== 43364 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21964: <==uncertain_firing== 69935 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #26038: <==negation-removal== 12767 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #32148: <==negation-removal== 28054 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37808: <==uncertain_firing== 60877 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #48759: <==negation-removal== 60877 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57512: <==uncertain_firing== 28054 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67094: <==uncertain_firing== 43364 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #73787: <==uncertain_firing== 22617 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #77078: <==negation-removal== 22617 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #77619: <==negation-removal== 69935 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #12767: <==closure== 22617 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #22617: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #28054: <==closure== 69935 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #43364: <==closure== 60877 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #60877: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #69935: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #14855: <==uncertain_firing== 12767 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15588: <==negation-removal== 43364 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21964: <==uncertain_firing== 69935 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #26038: <==negation-removal== 12767 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #32148: <==negation-removal== 28054 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37808: <==uncertain_firing== 60877 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #48759: <==negation-removal== 60877 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57512: <==uncertain_firing== 28054 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67094: <==uncertain_firing== 43364 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #73787: <==uncertain_firing== 22617 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #77078: <==negation-removal== 22617 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #77619: <==negation-removal== 69935 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #12767: <==closure== 22617 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #22617: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #28054: <==closure== 69935 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #43364: <==closure== 60877 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #60877: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #69935: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #14855: <==uncertain_firing== 12767 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #15588: <==negation-removal== 43364 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21964: <==uncertain_firing== 69935 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #26038: <==negation-removal== 12767 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #32148: <==negation-removal== 28054 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #37808: <==uncertain_firing== 60877 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #48759: <==negation-removal== 60877 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57512: <==uncertain_firing== 28054 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #67094: <==uncertain_firing== 43364 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #73787: <==uncertain_firing== 22617 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #77078: <==negation-removal== 22617 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #77619: <==negation-removal== 69935 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #20201: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #26628: <==closure== 76071 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #29713: <==closure== 20201 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76071: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82972: <==closure== 88701 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #88701: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11091: <==uncertain_firing== 29713 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #13270: <==uncertain_firing== 76071 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39766: <==negation-removal== 26628 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #40273: <==uncertain_firing== 20201 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #45734: <==negation-removal== 82972 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #47442: <==uncertain_firing== 82972 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62170: <==uncertain_firing== 26628 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #71187: <==uncertain_firing== 88701 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #76264: <==negation-removal== 88701 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77023: <==negation-removal== 20201 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #77360: <==negation-removal== 29713 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #78357: <==negation-removal== 76071 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #20201: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #26628: <==closure== 76071 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #29713: <==closure== 20201 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76071: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82972: <==closure== 88701 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #88701: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11091: <==uncertain_firing== 29713 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #13270: <==uncertain_firing== 76071 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39766: <==negation-removal== 26628 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #40273: <==uncertain_firing== 20201 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #45734: <==negation-removal== 82972 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #47442: <==uncertain_firing== 82972 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62170: <==uncertain_firing== 26628 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #71187: <==uncertain_firing== 88701 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #76264: <==negation-removal== 88701 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77023: <==negation-removal== 20201 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #77360: <==negation-removal== 29713 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #78357: <==negation-removal== 76071 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #20201: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #26628: <==closure== 76071 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #29713: <==closure== 20201 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #76071: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82972: <==closure== 88701 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #88701: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #11091: <==uncertain_firing== 29713 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #13270: <==uncertain_firing== 76071 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #39766: <==negation-removal== 26628 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #40273: <==uncertain_firing== 20201 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #45734: <==negation-removal== 82972 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #47442: <==uncertain_firing== 82972 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62170: <==uncertain_firing== 26628 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #71187: <==uncertain_firing== 88701 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #76264: <==negation-removal== 88701 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #77023: <==negation-removal== 20201 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #77360: <==negation-removal== 29713 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #78357: <==negation-removal== 76071 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #15002: <==closure== 46592 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #46592: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #58705: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #61368: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #75070: <==closure== 61368 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88774: <==closure== 58705 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #11084: <==uncertain_firing== 15002 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #20444: <==uncertain_firing== 58705 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #20857: <==negation-removal== 15002 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23184: <==negation-removal== 61368 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #30244: <==uncertain_firing== 75070 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #35703: <==uncertain_firing== 61368 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42252: <==negation-removal== 58705 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #44474: <==negation-removal== 75070 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #49381: <==negation-removal== 46592 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64422: <==uncertain_firing== 88774 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72040: <==uncertain_firing== 46592 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73812: <==negation-removal== 88774 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #15002: <==closure== 46592 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #46592: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #58705: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #61368: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #75070: <==closure== 61368 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88774: <==closure== 58705 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #11084: <==uncertain_firing== 15002 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #20444: <==uncertain_firing== 58705 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #20857: <==negation-removal== 15002 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23184: <==negation-removal== 61368 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #30244: <==uncertain_firing== 75070 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #35703: <==uncertain_firing== 61368 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42252: <==negation-removal== 58705 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #44474: <==negation-removal== 75070 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #49381: <==negation-removal== 46592 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64422: <==uncertain_firing== 88774 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72040: <==uncertain_firing== 46592 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73812: <==negation-removal== 88774 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #15002: <==closure== 46592 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #46592: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #58705: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #61368: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #75070: <==closure== 61368 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88774: <==closure== 58705 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #11084: <==uncertain_firing== 15002 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #20444: <==uncertain_firing== 58705 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #20857: <==negation-removal== 15002 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23184: <==negation-removal== 61368 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #30244: <==uncertain_firing== 75070 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #35703: <==uncertain_firing== 61368 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #42252: <==negation-removal== 58705 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #44474: <==negation-removal== 75070 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #49381: <==negation-removal== 46592 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #64422: <==uncertain_firing== 88774 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #72040: <==uncertain_firing== 46592 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #73812: <==negation-removal== 88774 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #10470: <==closure== 35588 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #35588: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #51854: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #60707: <==closure== 51854 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73043: <==closure== 79546 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #79546: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #10244: <==negation-removal== 60707 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #25367: <==uncertain_firing== 79546 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #34480: <==negation-removal== 79546 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #41279: <==uncertain_firing== 60707 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #47529: <==uncertain_firing== 51854 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #67164: <==negation-removal== 51854 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #69497: <==negation-removal== 73043 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #74915: <==uncertain_firing== 10470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #86187: <==uncertain_firing== 73043 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #87149: <==negation-removal== 10470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #89214: <==uncertain_firing== 35588 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91397: <==negation-removal== 35588 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #10470: <==closure== 35588 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #35588: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #51854: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #60707: <==closure== 51854 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73043: <==closure== 79546 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #79546: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #10244: <==negation-removal== 60707 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #25367: <==uncertain_firing== 79546 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #34480: <==negation-removal== 79546 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #41279: <==uncertain_firing== 60707 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #47529: <==uncertain_firing== 51854 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #67164: <==negation-removal== 51854 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #69497: <==negation-removal== 73043 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #74915: <==uncertain_firing== 10470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #86187: <==uncertain_firing== 73043 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #87149: <==negation-removal== 10470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #89214: <==uncertain_firing== 35588 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91397: <==negation-removal== 35588 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #10470: <==closure== 35588 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #35588: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #51854: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #60707: <==closure== 51854 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73043: <==closure== 79546 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #79546: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #10244: <==negation-removal== 60707 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #25367: <==uncertain_firing== 79546 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #34480: <==negation-removal== 79546 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #41279: <==uncertain_firing== 60707 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #47529: <==uncertain_firing== 51854 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #67164: <==negation-removal== 51854 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #69497: <==negation-removal== 73043 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #74915: <==uncertain_firing== 10470 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #86187: <==uncertain_firing== 73043 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #87149: <==negation-removal== 10470 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #89214: <==uncertain_firing== 35588 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91397: <==negation-removal== 35588 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #54006: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #64882: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #71295: <==closure== 85764 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80745: <==closure== 54006 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85764: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #88440: <==closure== 64882 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #15086: <==uncertain_firing== 54006 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #22512: <==negation-removal== 64882 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #25530: <==negation-removal== 88440 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #28161: <==negation-removal== 71295 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #34549: <==uncertain_firing== 88440 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #36679: <==uncertain_firing== 80745 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59258: <==uncertain_firing== 71295 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #65914: <==negation-removal== 80745 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #73877: <==negation-removal== 85764 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #81253: <==negation-removal== 54006 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #82508: <==uncertain_firing== 85764 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #90070: <==uncertain_firing== 64882 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #54006: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #64882: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #71295: <==closure== 85764 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80745: <==closure== 54006 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85764: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #88440: <==closure== 64882 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #15086: <==uncertain_firing== 54006 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #22512: <==negation-removal== 64882 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #25530: <==negation-removal== 88440 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #28161: <==negation-removal== 71295 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #34549: <==uncertain_firing== 88440 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #36679: <==uncertain_firing== 80745 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59258: <==uncertain_firing== 71295 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #65914: <==negation-removal== 80745 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #73877: <==negation-removal== 85764 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #81253: <==negation-removal== 54006 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #82508: <==uncertain_firing== 85764 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #90070: <==uncertain_firing== 64882 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #54006: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #64882: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #71295: <==closure== 85764 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80745: <==closure== 54006 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #85764: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #88440: <==closure== 64882 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #15086: <==uncertain_firing== 54006 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #22512: <==negation-removal== 64882 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #25530: <==negation-removal== 88440 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #28161: <==negation-removal== 71295 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #34549: <==uncertain_firing== 88440 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #36679: <==uncertain_firing== 80745 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59258: <==uncertain_firing== 71295 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #65914: <==negation-removal== 80745 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #73877: <==negation-removal== 85764 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #81253: <==negation-removal== 54006 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #82508: <==uncertain_firing== 85764 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #90070: <==uncertain_firing== 64882 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #14720: <==closure== 66701 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #20140: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #22299: <==closure== 99458 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46271: <==closure== 20140 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #66701: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #99458: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31539: <==negation-removal== 66701 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #36906: <==uncertain_firing== 22299 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #44115: <==uncertain_firing== 46271 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #47765: <==negation-removal== 22299 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #63261: <==negation-removal== 46271 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #64316: <==negation-removal== 20140 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #64620: <==negation-removal== 14720 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #68286: <==uncertain_firing== 20140 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #76479: <==uncertain_firing== 99458 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #83649: <==uncertain_firing== 66701 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #85392: <==negation-removal== 99458 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88664: <==uncertain_firing== 14720 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #14720: <==closure== 66701 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #20140: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #22299: <==closure== 99458 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46271: <==closure== 20140 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #66701: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #99458: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31539: <==negation-removal== 66701 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #36906: <==uncertain_firing== 22299 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #44115: <==uncertain_firing== 46271 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #47765: <==negation-removal== 22299 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #63261: <==negation-removal== 46271 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #64316: <==negation-removal== 20140 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #64620: <==negation-removal== 14720 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #68286: <==uncertain_firing== 20140 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #76479: <==uncertain_firing== 99458 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #83649: <==uncertain_firing== 66701 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #85392: <==negation-removal== 99458 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88664: <==uncertain_firing== 14720 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #14720: <==closure== 66701 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #20140: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #22299: <==closure== 99458 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #46271: <==closure== 20140 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #66701: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #99458: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31539: <==negation-removal== 66701 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #36906: <==uncertain_firing== 22299 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #44115: <==uncertain_firing== 46271 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #47765: <==negation-removal== 22299 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #63261: <==negation-removal== 46271 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #64316: <==negation-removal== 20140 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #64620: <==negation-removal== 14720 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #68286: <==uncertain_firing== 20140 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #76479: <==uncertain_firing== 99458 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #83649: <==uncertain_firing== 66701 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #85392: <==negation-removal== 99458 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88664: <==uncertain_firing== 14720 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #12781: origin
                    (Bb_survivorat_s_p1)

                    ; #42916: origin
                    (Ba_survivorat_s_p1)

                    ; #65125: <==closure== 12781 (pos)
                    (Pb_survivorat_s_p1)

                    ; #67732: origin
                    (Bc_survivorat_s_p1)

                    ; #81510: <==closure== 67732 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85360: <==closure== 42916 (pos)
                    (Pa_survivorat_s_p1)

                    ; #20054: <==negation-removal== 65125 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #32590: <==negation-removal== 67732 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #47569: <==negation-removal== 12781 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #49271: <==negation-removal== 42916 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #66090: <==negation-removal== 85360 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #82824: <==negation-removal== 81510 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #12781: origin
                    (Bb_survivorat_s_p1)

                    ; #42916: origin
                    (Ba_survivorat_s_p1)

                    ; #65125: <==closure== 12781 (pos)
                    (Pb_survivorat_s_p1)

                    ; #67732: origin
                    (Bc_survivorat_s_p1)

                    ; #81510: <==closure== 67732 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85360: <==closure== 42916 (pos)
                    (Pa_survivorat_s_p1)

                    ; #20054: <==negation-removal== 65125 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #32590: <==negation-removal== 67732 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #47569: <==negation-removal== 12781 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #49271: <==negation-removal== 42916 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #66090: <==negation-removal== 85360 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #82824: <==negation-removal== 81510 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #12781: origin
                    (Bb_survivorat_s_p1)

                    ; #42916: origin
                    (Ba_survivorat_s_p1)

                    ; #65125: <==closure== 12781 (pos)
                    (Pb_survivorat_s_p1)

                    ; #67732: origin
                    (Bc_survivorat_s_p1)

                    ; #81510: <==closure== 67732 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85360: <==closure== 42916 (pos)
                    (Pa_survivorat_s_p1)

                    ; #20054: <==negation-removal== 65125 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #32590: <==negation-removal== 67732 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #47569: <==negation-removal== 12781 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #49271: <==negation-removal== 42916 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #66090: <==negation-removal== 85360 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #82824: <==negation-removal== 81510 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #50450: origin
                    (Ba_survivorat_s_p2)

                    ; #51499: <==closure== 50450 (pos)
                    (Pa_survivorat_s_p2)

                    ; #57289: origin
                    (Bc_survivorat_s_p2)

                    ; #60194: <==closure== 96525 (pos)
                    (Pb_survivorat_s_p2)

                    ; #87941: <==closure== 57289 (pos)
                    (Pc_survivorat_s_p2)

                    ; #96525: origin
                    (Bb_survivorat_s_p2)

                    ; #16760: <==negation-removal== 57289 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35273: <==negation-removal== 50450 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52557: <==negation-removal== 96525 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #69330: <==negation-removal== 87941 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #80668: <==negation-removal== 51499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #84942: <==negation-removal== 60194 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #50450: origin
                    (Ba_survivorat_s_p2)

                    ; #51499: <==closure== 50450 (pos)
                    (Pa_survivorat_s_p2)

                    ; #57289: origin
                    (Bc_survivorat_s_p2)

                    ; #60194: <==closure== 96525 (pos)
                    (Pb_survivorat_s_p2)

                    ; #87941: <==closure== 57289 (pos)
                    (Pc_survivorat_s_p2)

                    ; #96525: origin
                    (Bb_survivorat_s_p2)

                    ; #16760: <==negation-removal== 57289 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35273: <==negation-removal== 50450 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52557: <==negation-removal== 96525 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #69330: <==negation-removal== 87941 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #80668: <==negation-removal== 51499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #84942: <==negation-removal== 60194 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #50450: origin
                    (Ba_survivorat_s_p2)

                    ; #51499: <==closure== 50450 (pos)
                    (Pa_survivorat_s_p2)

                    ; #57289: origin
                    (Bc_survivorat_s_p2)

                    ; #60194: <==closure== 96525 (pos)
                    (Pb_survivorat_s_p2)

                    ; #87941: <==closure== 57289 (pos)
                    (Pc_survivorat_s_p2)

                    ; #96525: origin
                    (Bb_survivorat_s_p2)

                    ; #16760: <==negation-removal== 57289 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #35273: <==negation-removal== 50450 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #52557: <==negation-removal== 96525 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #69330: <==negation-removal== 87941 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #80668: <==negation-removal== 51499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #84942: <==negation-removal== 60194 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #17457: <==closure== 70877 (pos)
                    (Pa_survivorat_s_p3)

                    ; #45831: <==closure== 70595 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69167: <==closure== 71469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70595: origin
                    (Bb_survivorat_s_p3)

                    ; #70877: origin
                    (Ba_survivorat_s_p3)

                    ; #71469: origin
                    (Bc_survivorat_s_p3)

                    ; #17361: <==negation-removal== 45831 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #23398: <==negation-removal== 70595 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #36550: <==negation-removal== 69167 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #67904: <==negation-removal== 71469 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #71296: <==negation-removal== 17457 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90858: <==negation-removal== 70877 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #17457: <==closure== 70877 (pos)
                    (Pa_survivorat_s_p3)

                    ; #45831: <==closure== 70595 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69167: <==closure== 71469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70595: origin
                    (Bb_survivorat_s_p3)

                    ; #70877: origin
                    (Ba_survivorat_s_p3)

                    ; #71469: origin
                    (Bc_survivorat_s_p3)

                    ; #17361: <==negation-removal== 45831 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #23398: <==negation-removal== 70595 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #36550: <==negation-removal== 69167 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #67904: <==negation-removal== 71469 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #71296: <==negation-removal== 17457 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90858: <==negation-removal== 70877 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #17457: <==closure== 70877 (pos)
                    (Pa_survivorat_s_p3)

                    ; #45831: <==closure== 70595 (pos)
                    (Pb_survivorat_s_p3)

                    ; #69167: <==closure== 71469 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70595: origin
                    (Bb_survivorat_s_p3)

                    ; #70877: origin
                    (Ba_survivorat_s_p3)

                    ; #71469: origin
                    (Bc_survivorat_s_p3)

                    ; #17361: <==negation-removal== 45831 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #23398: <==negation-removal== 70595 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #36550: <==negation-removal== 69167 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #67904: <==negation-removal== 71469 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #71296: <==negation-removal== 17457 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #90858: <==negation-removal== 70877 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #10484: origin
                    (Bb_survivorat_s_p4)

                    ; #11572: <==closure== 87474 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18551: <==closure== 85927 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58052: <==closure== 10484 (pos)
                    (Pb_survivorat_s_p4)

                    ; #85927: origin
                    (Bc_survivorat_s_p4)

                    ; #87474: origin
                    (Ba_survivorat_s_p4)

                    ; #25696: <==negation-removal== 11572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #40283: <==negation-removal== 85927 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57374: <==negation-removal== 87474 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66164: <==negation-removal== 10484 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69951: <==negation-removal== 18551 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #93825: <==negation-removal== 58052 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #10484: origin
                    (Bb_survivorat_s_p4)

                    ; #11572: <==closure== 87474 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18551: <==closure== 85927 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58052: <==closure== 10484 (pos)
                    (Pb_survivorat_s_p4)

                    ; #85927: origin
                    (Bc_survivorat_s_p4)

                    ; #87474: origin
                    (Ba_survivorat_s_p4)

                    ; #25696: <==negation-removal== 11572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #40283: <==negation-removal== 85927 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57374: <==negation-removal== 87474 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66164: <==negation-removal== 10484 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69951: <==negation-removal== 18551 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #93825: <==negation-removal== 58052 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #10484: origin
                    (Bb_survivorat_s_p4)

                    ; #11572: <==closure== 87474 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18551: <==closure== 85927 (pos)
                    (Pc_survivorat_s_p4)

                    ; #58052: <==closure== 10484 (pos)
                    (Pb_survivorat_s_p4)

                    ; #85927: origin
                    (Bc_survivorat_s_p4)

                    ; #87474: origin
                    (Ba_survivorat_s_p4)

                    ; #25696: <==negation-removal== 11572 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #40283: <==negation-removal== 85927 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #57374: <==negation-removal== 87474 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #66164: <==negation-removal== 10484 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #69951: <==negation-removal== 18551 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #93825: <==negation-removal== 58052 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #38143: origin
                    (Bb_survivorat_s_p5)

                    ; #39931: <==closure== 38143 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55963: <==closure== 66228 (pos)
                    (Pc_survivorat_s_p5)

                    ; #66228: origin
                    (Bc_survivorat_s_p5)

                    ; #71387: <==closure== 83381 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83381: origin
                    (Ba_survivorat_s_p5)

                    ; #22117: <==negation-removal== 66228 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #31783: <==negation-removal== 55963 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46782: <==negation-removal== 38143 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #63196: <==negation-removal== 83381 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #78837: <==negation-removal== 71387 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #80507: <==negation-removal== 39931 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #38143: origin
                    (Bb_survivorat_s_p5)

                    ; #39931: <==closure== 38143 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55963: <==closure== 66228 (pos)
                    (Pc_survivorat_s_p5)

                    ; #66228: origin
                    (Bc_survivorat_s_p5)

                    ; #71387: <==closure== 83381 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83381: origin
                    (Ba_survivorat_s_p5)

                    ; #22117: <==negation-removal== 66228 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #31783: <==negation-removal== 55963 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46782: <==negation-removal== 38143 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #63196: <==negation-removal== 83381 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #78837: <==negation-removal== 71387 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #80507: <==negation-removal== 39931 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #38143: origin
                    (Bb_survivorat_s_p5)

                    ; #39931: <==closure== 38143 (pos)
                    (Pb_survivorat_s_p5)

                    ; #55963: <==closure== 66228 (pos)
                    (Pc_survivorat_s_p5)

                    ; #66228: origin
                    (Bc_survivorat_s_p5)

                    ; #71387: <==closure== 83381 (pos)
                    (Pa_survivorat_s_p5)

                    ; #83381: origin
                    (Ba_survivorat_s_p5)

                    ; #22117: <==negation-removal== 66228 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #31783: <==negation-removal== 55963 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #46782: <==negation-removal== 38143 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #63196: <==negation-removal== 83381 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #78837: <==negation-removal== 71387 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #80507: <==negation-removal== 39931 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #30770: origin
                    (Bb_survivorat_s_p6)

                    ; #33439: <==closure== 30770 (pos)
                    (Pb_survivorat_s_p6)

                    ; #42125: <==closure== 95681 (pos)
                    (Pc_survivorat_s_p6)

                    ; #64027: <==closure== 88032 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88032: origin
                    (Ba_survivorat_s_p6)

                    ; #95681: origin
                    (Bc_survivorat_s_p6)

                    ; #17746: <==negation-removal== 33439 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31294: <==negation-removal== 30770 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51645: <==negation-removal== 64027 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #58108: <==negation-removal== 88032 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83762: <==negation-removal== 95681 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #88525: <==negation-removal== 42125 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #30770: origin
                    (Bb_survivorat_s_p6)

                    ; #33439: <==closure== 30770 (pos)
                    (Pb_survivorat_s_p6)

                    ; #42125: <==closure== 95681 (pos)
                    (Pc_survivorat_s_p6)

                    ; #64027: <==closure== 88032 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88032: origin
                    (Ba_survivorat_s_p6)

                    ; #95681: origin
                    (Bc_survivorat_s_p6)

                    ; #17746: <==negation-removal== 33439 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31294: <==negation-removal== 30770 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51645: <==negation-removal== 64027 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #58108: <==negation-removal== 88032 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83762: <==negation-removal== 95681 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #88525: <==negation-removal== 42125 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #30770: origin
                    (Bb_survivorat_s_p6)

                    ; #33439: <==closure== 30770 (pos)
                    (Pb_survivorat_s_p6)

                    ; #42125: <==closure== 95681 (pos)
                    (Pc_survivorat_s_p6)

                    ; #64027: <==closure== 88032 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88032: origin
                    (Ba_survivorat_s_p6)

                    ; #95681: origin
                    (Bc_survivorat_s_p6)

                    ; #17746: <==negation-removal== 33439 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #31294: <==negation-removal== 30770 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #51645: <==negation-removal== 64027 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #58108: <==negation-removal== 88032 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83762: <==negation-removal== 95681 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #88525: <==negation-removal== 42125 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #18335: <==closure== 79832 (pos)
                    (Pa_survivorat_s_p7)

                    ; #31902: <==closure== 67876 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43717: origin
                    (Bb_survivorat_s_p7)

                    ; #67876: origin
                    (Bc_survivorat_s_p7)

                    ; #79832: origin
                    (Ba_survivorat_s_p7)

                    ; #86375: <==closure== 43717 (pos)
                    (Pb_survivorat_s_p7)

                    ; #36633: <==negation-removal== 86375 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42644: <==negation-removal== 31902 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65781: <==negation-removal== 67876 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #84081: <==negation-removal== 79832 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84644: <==negation-removal== 18335 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91445: <==negation-removal== 43717 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #18335: <==closure== 79832 (pos)
                    (Pa_survivorat_s_p7)

                    ; #31902: <==closure== 67876 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43717: origin
                    (Bb_survivorat_s_p7)

                    ; #67876: origin
                    (Bc_survivorat_s_p7)

                    ; #79832: origin
                    (Ba_survivorat_s_p7)

                    ; #86375: <==closure== 43717 (pos)
                    (Pb_survivorat_s_p7)

                    ; #36633: <==negation-removal== 86375 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42644: <==negation-removal== 31902 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65781: <==negation-removal== 67876 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #84081: <==negation-removal== 79832 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84644: <==negation-removal== 18335 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91445: <==negation-removal== 43717 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #18335: <==closure== 79832 (pos)
                    (Pa_survivorat_s_p7)

                    ; #31902: <==closure== 67876 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43717: origin
                    (Bb_survivorat_s_p7)

                    ; #67876: origin
                    (Bc_survivorat_s_p7)

                    ; #79832: origin
                    (Ba_survivorat_s_p7)

                    ; #86375: <==closure== 43717 (pos)
                    (Pb_survivorat_s_p7)

                    ; #36633: <==negation-removal== 86375 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42644: <==negation-removal== 31902 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65781: <==negation-removal== 67876 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #84081: <==negation-removal== 79832 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84644: <==negation-removal== 18335 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91445: <==negation-removal== 43717 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #11553: origin
                    (Bc_survivorat_s_p8)

                    ; #46264: <==closure== 49760 (pos)
                    (Pb_survivorat_s_p8)

                    ; #49760: origin
                    (Bb_survivorat_s_p8)

                    ; #72398: <==closure== 74728 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74728: origin
                    (Ba_survivorat_s_p8)

                    ; #80535: <==closure== 11553 (pos)
                    (Pc_survivorat_s_p8)

                    ; #25359: <==negation-removal== 74728 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30798: <==negation-removal== 46264 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43452: <==negation-removal== 11553 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #60727: <==negation-removal== 80535 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #64050: <==negation-removal== 49760 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #91961: <==negation-removal== 72398 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #11553: origin
                    (Bc_survivorat_s_p8)

                    ; #46264: <==closure== 49760 (pos)
                    (Pb_survivorat_s_p8)

                    ; #49760: origin
                    (Bb_survivorat_s_p8)

                    ; #72398: <==closure== 74728 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74728: origin
                    (Ba_survivorat_s_p8)

                    ; #80535: <==closure== 11553 (pos)
                    (Pc_survivorat_s_p8)

                    ; #25359: <==negation-removal== 74728 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30798: <==negation-removal== 46264 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43452: <==negation-removal== 11553 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #60727: <==negation-removal== 80535 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #64050: <==negation-removal== 49760 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #91961: <==negation-removal== 72398 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #11553: origin
                    (Bc_survivorat_s_p8)

                    ; #46264: <==closure== 49760 (pos)
                    (Pb_survivorat_s_p8)

                    ; #49760: origin
                    (Bb_survivorat_s_p8)

                    ; #72398: <==closure== 74728 (pos)
                    (Pa_survivorat_s_p8)

                    ; #74728: origin
                    (Ba_survivorat_s_p8)

                    ; #80535: <==closure== 11553 (pos)
                    (Pc_survivorat_s_p8)

                    ; #25359: <==negation-removal== 74728 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #30798: <==negation-removal== 46264 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43452: <==negation-removal== 11553 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #60727: <==negation-removal== 80535 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #64050: <==negation-removal== 49760 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #91961: <==negation-removal== 72398 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #17956: origin
                    (Ba_survivorat_s_p9)

                    ; #39289: <==closure== 17956 (pos)
                    (Pa_survivorat_s_p9)

                    ; #54512: <==closure== 68841 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68841: origin
                    (Bc_survivorat_s_p9)

                    ; #77129: <==closure== 89313 (pos)
                    (Pb_survivorat_s_p9)

                    ; #89313: origin
                    (Bb_survivorat_s_p9)

                    ; #19275: <==negation-removal== 77129 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #49953: <==negation-removal== 17956 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63998: <==negation-removal== 89313 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #81428: <==negation-removal== 39289 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83166: <==negation-removal== 68841 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #86296: <==negation-removal== 54512 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #17956: origin
                    (Ba_survivorat_s_p9)

                    ; #39289: <==closure== 17956 (pos)
                    (Pa_survivorat_s_p9)

                    ; #54512: <==closure== 68841 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68841: origin
                    (Bc_survivorat_s_p9)

                    ; #77129: <==closure== 89313 (pos)
                    (Pb_survivorat_s_p9)

                    ; #89313: origin
                    (Bb_survivorat_s_p9)

                    ; #19275: <==negation-removal== 77129 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #49953: <==negation-removal== 17956 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63998: <==negation-removal== 89313 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #81428: <==negation-removal== 39289 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83166: <==negation-removal== 68841 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #86296: <==negation-removal== 54512 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #17956: origin
                    (Ba_survivorat_s_p9)

                    ; #39289: <==closure== 17956 (pos)
                    (Pa_survivorat_s_p9)

                    ; #54512: <==closure== 68841 (pos)
                    (Pc_survivorat_s_p9)

                    ; #68841: origin
                    (Bc_survivorat_s_p9)

                    ; #77129: <==closure== 89313 (pos)
                    (Pb_survivorat_s_p9)

                    ; #89313: origin
                    (Bb_survivorat_s_p9)

                    ; #19275: <==negation-removal== 77129 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #49953: <==negation-removal== 17956 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63998: <==negation-removal== 89313 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #81428: <==negation-removal== 39289 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #83166: <==negation-removal== 68841 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #86296: <==negation-removal== 54512 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #40589: origin
                    (not_at_a_p1)

                    ; #52987: origin
                    (at_a_p1)

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #40589: origin
                    (not_at_a_p1)

                    ; #55950: origin
                    (at_a_p2)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #40589: origin
                    (not_at_a_p1)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #40589: origin
                    (not_at_a_p1)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #40589: origin
                    (not_at_a_p1)

                    ; #78270: origin
                    (at_a_p5)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #40589: origin
                    (not_at_a_p1)

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #40589: origin
                    (not_at_a_p1)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #40589: origin
                    (not_at_a_p1)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #40589: origin
                    (not_at_a_p1)

                    ; #71622: origin
                    (at_a_p9)

                    ; #52987: <==negation-removal== 40589 (pos)
                    (not (at_a_p1))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #78270: origin
                    (at_a_p5)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #71622: origin
                    (at_a_p9)

                    ; #80626: origin
                    (not_at_a_p2)

                    ; #55950: <==negation-removal== 80626 (pos)
                    (not (at_a_p2))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #64794: origin
                    (not_at_a_p3)

                    ; #78270: origin
                    (at_a_p5)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #64794: origin
                    (not_at_a_p3)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #64794: origin
                    (not_at_a_p3)

                    ; #71622: origin
                    (at_a_p9)

                    ; #17244: <==negation-removal== 64794 (pos)
                    (not (at_a_p3))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #78270: origin
                    (at_a_p5)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #71622: origin
                    (at_a_p9)

                    ; #83056: origin
                    (not_at_a_p4)

                    ; #40454: <==negation-removal== 83056 (pos)
                    (not (at_a_p4))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #67484: origin
                    (not_at_a_p5)

                    ; #78270: origin
                    (at_a_p5)

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #67484: origin
                    (not_at_a_p5)

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #67484: origin
                    (not_at_a_p5)

                    ; #71622: origin
                    (at_a_p9)

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))

                    ; #78270: <==negation-removal== 67484 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #35222: origin
                    (not_at_a_p6)

                    ; #52987: origin
                    (at_a_p1)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #35222: origin
                    (not_at_a_p6)

                    ; #55950: origin
                    (at_a_p2)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #35222: origin
                    (not_at_a_p6)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #35222: origin
                    (not_at_a_p6)

                    ; #40454: origin
                    (at_a_p4)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #35222: origin
                    (not_at_a_p6)

                    ; #78270: origin
                    (at_a_p5)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #35222: origin
                    (not_at_a_p6)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #35222: origin
                    (not_at_a_p6)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #35222: origin
                    (not_at_a_p6)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #35222: origin
                    (not_at_a_p6)

                    ; #71622: origin
                    (at_a_p9)

                    ; #28834: <==negation-removal== 35222 (pos)
                    (not (at_a_p6))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #73280: origin
                    (not_at_a_p7)

                    ; #78270: origin
                    (at_a_p5)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #71622: origin
                    (at_a_p9)

                    ; #73280: origin
                    (not_at_a_p7)

                    ; #19199: <==negation-removal== 73280 (pos)
                    (not (at_a_p7))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #65242: origin
                    (not_at_a_p8)

                    ; #78270: origin
                    (at_a_p5)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #65242: origin
                    (not_at_a_p8)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #65242: origin
                    (not_at_a_p8)

                    ; #71622: origin
                    (at_a_p9)

                    ; #17881: <==negation-removal== 65242 (pos)
                    (not (at_a_p8))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #52987: origin
                    (at_a_p1)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #40589: <==negation-removal== 52987 (pos)
                    (not (not_at_a_p1))

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #55950: origin
                    (at_a_p2)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))

                    ; #80626: <==negation-removal== 55950 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #17244: origin
                    (at_a_p3)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #64794: <==negation-removal== 17244 (pos)
                    (not (not_at_a_p3))

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #40454: origin
                    (at_a_p4)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))

                    ; #83056: <==negation-removal== 40454 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #77723: origin
                    (not_at_a_p9)

                    ; #78270: origin
                    (at_a_p5)

                    ; #67484: <==negation-removal== 78270 (pos)
                    (not (not_at_a_p5))

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #28834: origin
                    (at_a_p6)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #35222: <==negation-removal== 28834 (pos)
                    (not (not_at_a_p6))

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #19199: origin
                    (at_a_p7)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))

                    ; #73280: <==negation-removal== 19199 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #17881: origin
                    (at_a_p8)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #65242: <==negation-removal== 17881 (pos)
                    (not (not_at_a_p8))

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #71622: origin
                    (at_a_p9)

                    ; #77723: origin
                    (not_at_a_p9)

                    ; #71622: <==negation-removal== 77723 (pos)
                    (not (at_a_p9))

                    ; #77723: <==negation-removal== 71622 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #49541: origin
                    (at_b_p3)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #41102: origin
                    (at_b_p4)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #39889: origin
                    (at_b_p5)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #44302: origin
                    (at_b_p6)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #60768: origin
                    (not_at_b_p1)

                    ; #61265: origin
                    (at_b_p7)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #60768: origin
                    (not_at_b_p1)

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #60768: origin
                    (not_at_b_p1)

                    ; #75990: origin
                    (at_b_p9)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #24513: <==negation-removal== 60768 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #30258: origin
                    (not_at_b_p2)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #30258: origin
                    (not_at_b_p2)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #30258: origin
                    (not_at_b_p2)

                    ; #49541: origin
                    (at_b_p3)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #30258: origin
                    (not_at_b_p2)

                    ; #41102: origin
                    (at_b_p4)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #30258: origin
                    (not_at_b_p2)

                    ; #39889: origin
                    (at_b_p5)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #30258: origin
                    (not_at_b_p2)

                    ; #44302: origin
                    (at_b_p6)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #30258: origin
                    (not_at_b_p2)

                    ; #61265: origin
                    (at_b_p7)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #30258: origin
                    (not_at_b_p2)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #30258: origin
                    (not_at_b_p2)

                    ; #75990: origin
                    (at_b_p9)

                    ; #13290: <==negation-removal== 30258 (pos)
                    (not (at_b_p2))

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #49541: origin
                    (at_b_p3)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #41102: origin
                    (at_b_p4)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #39889: origin
                    (at_b_p5)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #44302: origin
                    (at_b_p6)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #61265: origin
                    (at_b_p7)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #75990: origin
                    (at_b_p9)

                    ; #76834: origin
                    (not_at_b_p3)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #49541: <==negation-removal== 76834 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #49541: origin
                    (at_b_p3)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #41102: origin
                    (at_b_p4)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #39889: origin
                    (at_b_p5)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #44302: origin
                    (at_b_p6)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #61265: origin
                    (at_b_p7)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #75990: origin
                    (at_b_p9)

                    ; #97458: origin
                    (not_at_b_p4)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #41102: <==negation-removal== 97458 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #49541: origin
                    (at_b_p3)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #41102: origin
                    (at_b_p4)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #39889: origin
                    (at_b_p5)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #44302: origin
                    (at_b_p6)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #54463: origin
                    (not_at_b_p5)

                    ; #61265: origin
                    (at_b_p7)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #54463: origin
                    (not_at_b_p5)

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #54463: origin
                    (not_at_b_p5)

                    ; #75990: origin
                    (at_b_p9)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #39889: <==negation-removal== 54463 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #44899: origin
                    (not_at_b_p6)

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #44899: origin
                    (not_at_b_p6)

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #44899: origin
                    (not_at_b_p6)

                    ; #49541: origin
                    (at_b_p3)

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #41102: origin
                    (at_b_p4)

                    ; #44899: origin
                    (not_at_b_p6)

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #39889: origin
                    (at_b_p5)

                    ; #44899: origin
                    (not_at_b_p6)

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #44302: origin
                    (at_b_p6)

                    ; #44899: origin
                    (not_at_b_p6)

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #44899: origin
                    (not_at_b_p6)

                    ; #61265: origin
                    (at_b_p7)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #44899: origin
                    (not_at_b_p6)

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #44899: origin
                    (not_at_b_p6)

                    ; #75990: origin
                    (at_b_p9)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #44302: <==negation-removal== 44899 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #26758: origin
                    (not_at_b_p7)

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #26758: origin
                    (not_at_b_p7)

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #49541: origin
                    (at_b_p3)

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #41102: origin
                    (at_b_p4)

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #39889: origin
                    (at_b_p5)

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #44302: origin
                    (at_b_p6)

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #61265: origin
                    (at_b_p7)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #27549: origin
                    (at_b_p8)

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #26758: origin
                    (not_at_b_p7)

                    ; #75990: origin
                    (at_b_p9)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #61265: <==negation-removal== 26758 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #24513: origin
                    (at_b_p1)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #49541: origin
                    (at_b_p3)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #41102: origin
                    (at_b_p4)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #39889: origin
                    (at_b_p5)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #44302: origin
                    (at_b_p6)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #50077: origin
                    (not_at_b_p8)

                    ; #61265: origin
                    (at_b_p7)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #27549: origin
                    (at_b_p8)

                    ; #50077: origin
                    (not_at_b_p8)

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #50077: origin
                    (not_at_b_p8)

                    ; #75990: origin
                    (at_b_p9)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #27549: <==negation-removal== 50077 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #24513: origin
                    (at_b_p1)

                    ; #60768: <==negation-removal== 24513 (pos)
                    (not (not_at_b_p1))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #13290: origin
                    (at_b_p2)

                    ; #14905: origin
                    (not_at_b_p9)

                    ; #30258: <==negation-removal== 13290 (pos)
                    (not (not_at_b_p2))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #49541: origin
                    (at_b_p3)

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))

                    ; #76834: <==negation-removal== 49541 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #41102: origin
                    (at_b_p4)

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))

                    ; #97458: <==negation-removal== 41102 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #39889: origin
                    (at_b_p5)

                    ; #54463: <==negation-removal== 39889 (pos)
                    (not (not_at_b_p5))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #44302: origin
                    (at_b_p6)

                    ; #44899: <==negation-removal== 44302 (pos)
                    (not (not_at_b_p6))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #61265: origin
                    (at_b_p7)

                    ; #26758: <==negation-removal== 61265 (pos)
                    (not (not_at_b_p7))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #27549: origin
                    (at_b_p8)

                    ; #50077: <==negation-removal== 27549 (pos)
                    (not (not_at_b_p8))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #14905: origin
                    (not_at_b_p9)

                    ; #75990: origin
                    (at_b_p9)

                    ; #14905: <==negation-removal== 75990 (pos)
                    (not (not_at_b_p9))

                    ; #75990: <==negation-removal== 14905 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #61121: origin
                    (not_at_c_p1)

                    ; #73222: origin
                    (at_c_p1)

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #14612: origin
                    (at_c_p2)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #29191: origin
                    (at_c_p3)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #56005: origin
                    (at_c_p4)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #48118: origin
                    (at_c_p5)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #23494: origin
                    (at_c_p6)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #40896: origin
                    (at_c_p7)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #61121: origin
                    (not_at_c_p1)

                    ; #67641: origin
                    (at_c_p8)

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #52849: origin
                    (at_c_p9)

                    ; #61121: origin
                    (not_at_c_p1)

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))

                    ; #73222: <==negation-removal== 61121 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #46590: origin
                    (not_at_c_p2)

                    ; #73222: origin
                    (at_c_p1)

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #14612: origin
                    (at_c_p2)

                    ; #46590: origin
                    (not_at_c_p2)

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #29191: origin
                    (at_c_p3)

                    ; #46590: origin
                    (not_at_c_p2)

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #46590: origin
                    (not_at_c_p2)

                    ; #56005: origin
                    (at_c_p4)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #46590: origin
                    (not_at_c_p2)

                    ; #48118: origin
                    (at_c_p5)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #23494: origin
                    (at_c_p6)

                    ; #46590: origin
                    (not_at_c_p2)

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #40896: origin
                    (at_c_p7)

                    ; #46590: origin
                    (not_at_c_p2)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #46590: origin
                    (not_at_c_p2)

                    ; #67641: origin
                    (at_c_p8)

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #46590: origin
                    (not_at_c_p2)

                    ; #52849: origin
                    (at_c_p9)

                    ; #14612: <==negation-removal== 46590 (pos)
                    (not (at_c_p2))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #73222: origin
                    (at_c_p1)

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #14612: origin
                    (at_c_p2)

                    ; #20613: origin
                    (not_at_c_p3)

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #29191: origin
                    (at_c_p3)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #56005: origin
                    (at_c_p4)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #48118: origin
                    (at_c_p5)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #23494: origin
                    (at_c_p6)

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #40896: origin
                    (at_c_p7)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #67641: origin
                    (at_c_p8)

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #20613: origin
                    (not_at_c_p3)

                    ; #52849: origin
                    (at_c_p9)

                    ; #29191: <==negation-removal== 20613 (pos)
                    (not (at_c_p3))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #73222: origin
                    (at_c_p1)

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #14612: origin
                    (at_c_p2)

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #29191: origin
                    (at_c_p3)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #56005: origin
                    (at_c_p4)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #48118: origin
                    (at_c_p5)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #23494: origin
                    (at_c_p6)

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #40896: origin
                    (at_c_p7)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #67641: origin
                    (at_c_p8)

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #12682: origin
                    (not_at_c_p4)

                    ; #52849: origin
                    (at_c_p9)

                    ; #56005: <==negation-removal== 12682 (pos)
                    (not (at_c_p4))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #73222: origin
                    (at_c_p1)

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #14612: origin
                    (at_c_p2)

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #29191: origin
                    (at_c_p3)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #56005: origin
                    (at_c_p4)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #48118: origin
                    (at_c_p5)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #23494: origin
                    (at_c_p6)

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #40896: origin
                    (at_c_p7)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #67641: origin
                    (at_c_p8)

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #14093: origin
                    (not_at_c_p5)

                    ; #52849: origin
                    (at_c_p9)

                    ; #48118: <==negation-removal== 14093 (pos)
                    (not (at_c_p5))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #73222: origin
                    (at_c_p1)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #14612: origin
                    (at_c_p2)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #29191: origin
                    (at_c_p3)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #56005: origin
                    (at_c_p4)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #48118: origin
                    (at_c_p5)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #23494: origin
                    (at_c_p6)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #40896: origin
                    (at_c_p7)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #67641: origin
                    (at_c_p8)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #52849: origin
                    (at_c_p9)

                    ; #78342: origin
                    (not_at_c_p6)

                    ; #23494: <==negation-removal== 78342 (pos)
                    (not (at_c_p6))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #73222: origin
                    (at_c_p1)

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #14612: origin
                    (at_c_p2)

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #29191: origin
                    (at_c_p3)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #56005: origin
                    (at_c_p4)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #48118: origin
                    (at_c_p5)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #23494: origin
                    (at_c_p6)

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #40896: origin
                    (at_c_p7)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #67641: origin
                    (at_c_p8)

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #12021: origin
                    (not_at_c_p7)

                    ; #52849: origin
                    (at_c_p9)

                    ; #40896: <==negation-removal== 12021 (pos)
                    (not (at_c_p7))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #73222: origin
                    (at_c_p1)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #14612: origin
                    (at_c_p2)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #29191: origin
                    (at_c_p3)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #56005: origin
                    (at_c_p4)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #48118: origin
                    (at_c_p5)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #23494: origin
                    (at_c_p6)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #40896: origin
                    (at_c_p7)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #67641: origin
                    (at_c_p8)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #52849: origin
                    (at_c_p9)

                    ; #79413: origin
                    (not_at_c_p8)

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))

                    ; #67641: <==negation-removal== 79413 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #59961: origin
                    (not_at_c_p9)

                    ; #73222: origin
                    (at_c_p1)

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))

                    ; #61121: <==negation-removal== 73222 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #14612: origin
                    (at_c_p2)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #46590: <==negation-removal== 14612 (pos)
                    (not (not_at_c_p2))

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #29191: origin
                    (at_c_p3)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #20613: <==negation-removal== 29191 (pos)
                    (not (not_at_c_p3))

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #56005: origin
                    (at_c_p4)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #12682: <==negation-removal== 56005 (pos)
                    (not (not_at_c_p4))

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #48118: origin
                    (at_c_p5)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #14093: <==negation-removal== 48118 (pos)
                    (not (not_at_c_p5))

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #23494: origin
                    (at_c_p6)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))

                    ; #78342: <==negation-removal== 23494 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #40896: origin
                    (at_c_p7)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #12021: <==negation-removal== 40896 (pos)
                    (not (not_at_c_p7))

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #59961: origin
                    (not_at_c_p9)

                    ; #67641: origin
                    (at_c_p8)

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))

                    ; #79413: <==negation-removal== 67641 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #52849: origin
                    (at_c_p9)

                    ; #59961: origin
                    (not_at_c_p9)

                    ; #52849: <==negation-removal== 59961 (pos)
                    (not (at_c_p9))

                    ; #59961: <==negation-removal== 52849 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13018: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #13650: origin
                    (checked_p1)

                    ; #14441: <==commonly_known== 13650 (pos)
                    (Bc_checked_p1)

                    ; #15124: <==commonly_known== 13650 (pos)
                    (Ba_checked_p1)

                    ; #22119: <==commonly_known== 43211 (neg)
                    (Pc_checked_p1)

                    ; #27271: <==commonly_known== 13650 (pos)
                    (Bb_checked_p1)

                    ; #35219: <==commonly_known== 43211 (neg)
                    (Pb_checked_p1)

                    ; #55810: <==closure== 80179 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #79966: <==commonly_known== 43211 (neg)
                    (Pa_checked_p1)

                    ; #80179: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #84654: <==closure== 13018 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #18333: <==uncertain_firing== 55810 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #23345: <==negation-removal== 80179 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #25013: <==negation-removal== 22119 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26877: <==negation-removal== 13018 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #38570: <==negation-removal== 14441 (pos)
                    (not (Pc_not_checked_p1))

                    ; #40867: <==uncertain_firing== 84654 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #43211: <==negation-removal== 13650 (pos)
                    (not (not_checked_p1))

                    ; #43647: <==negation-removal== 15124 (pos)
                    (not (Pa_not_checked_p1))

                    ; #51470: <==negation-removal== 55810 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #54563: <==negation-removal== 35219 (pos)
                    (not (Bb_not_checked_p1))

                    ; #56666: <==negation-removal== 84654 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #64437: <==negation-removal== 79966 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66211: <==uncertain_firing== 13018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #82667: <==negation-removal== 27271 (pos)
                    (not (Pb_not_checked_p1))

                    ; #84952: <==uncertain_firing== 80179 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13591: <==closure== 18435 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #18435: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #25871: <==commonly_known== 88398 (pos)
                    (Bc_checked_p2)

                    ; #34944: <==commonly_known== 38050 (neg)
                    (Pa_checked_p2)

                    ; #41907: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #58813: <==commonly_known== 88398 (pos)
                    (Ba_checked_p2)

                    ; #68322: <==closure== 41907 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #77833: <==commonly_known== 38050 (neg)
                    (Pc_checked_p2)

                    ; #80021: <==commonly_known== 88398 (pos)
                    (Bb_checked_p2)

                    ; #88398: origin
                    (checked_p2)

                    ; #92722: <==commonly_known== 38050 (neg)
                    (Pb_checked_p2)

                    ; #16038: <==negation-removal== 18435 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #24094: <==negation-removal== 92722 (pos)
                    (not (Bb_not_checked_p2))

                    ; #32396: <==negation-removal== 80021 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38050: <==negation-removal== 88398 (pos)
                    (not (not_checked_p2))

                    ; #44225: <==uncertain_firing== 41907 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #52630: <==uncertain_firing== 68322 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #57737: <==negation-removal== 68322 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #58086: <==negation-removal== 13591 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #58533: <==negation-removal== 25871 (pos)
                    (not (Pc_not_checked_p2))

                    ; #65385: <==negation-removal== 41907 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #68293: <==negation-removal== 77833 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69991: <==negation-removal== 34944 (pos)
                    (not (Ba_not_checked_p2))

                    ; #74192: <==uncertain_firing== 18435 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #88242: <==uncertain_firing== 13591 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #90045: <==negation-removal== 58813 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22350: <==commonly_known== 77850 (pos)
                    (Ba_checked_p3)

                    ; #24313: <==commonly_known== 89311 (neg)
                    (Pb_checked_p3)

                    ; #43864: <==commonly_known== 77850 (pos)
                    (Bc_checked_p3)

                    ; #52514: <==commonly_known== 77850 (pos)
                    (Bb_checked_p3)

                    ; #54297: <==commonly_known== 89311 (neg)
                    (Pc_checked_p3)

                    ; #66853: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #67932: <==closure== 88129 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #70396: <==commonly_known== 89311 (neg)
                    (Pa_checked_p3)

                    ; #77850: origin
                    (checked_p3)

                    ; #79131: <==closure== 66853 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #88129: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #23643: <==negation-removal== 22350 (pos)
                    (not (Pa_not_checked_p3))

                    ; #31729: <==negation-removal== 66853 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34162: <==negation-removal== 79131 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #36213: <==negation-removal== 24313 (pos)
                    (not (Bb_not_checked_p3))

                    ; #41287: <==uncertain_firing== 67932 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #46161: <==uncertain_firing== 79131 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #49590: <==uncertain_firing== 88129 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #49920: <==negation-removal== 67932 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #64870: <==negation-removal== 54297 (pos)
                    (not (Bc_not_checked_p3))

                    ; #65244: <==negation-removal== 88129 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #74096: <==negation-removal== 52514 (pos)
                    (not (Pb_not_checked_p3))

                    ; #77922: <==negation-removal== 70396 (pos)
                    (not (Ba_not_checked_p3))

                    ; #82722: <==uncertain_firing== 66853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #89311: <==negation-removal== 77850 (pos)
                    (not (not_checked_p3))

                    ; #91467: <==negation-removal== 43864 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11745: <==closure== 48722 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #20322: <==commonly_known== 90645 (pos)
                    (Bc_checked_p4)

                    ; #25018: <==commonly_known== 90645 (pos)
                    (Bb_checked_p4)

                    ; #25617: <==commonly_known== 82204 (neg)
                    (Pc_checked_p4)

                    ; #31141: <==commonly_known== 90645 (pos)
                    (Ba_checked_p4)

                    ; #48722: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #55379: <==closure== 64819 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #64819: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #64977: <==commonly_known== 82204 (neg)
                    (Pb_checked_p4)

                    ; #86489: <==commonly_known== 82204 (neg)
                    (Pa_checked_p4)

                    ; #90645: origin
                    (checked_p4)

                    ; #14957: <==uncertain_firing== 64819 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21794: <==negation-removal== 25018 (pos)
                    (not (Pb_not_checked_p4))

                    ; #40556: <==uncertain_firing== 55379 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #46068: <==negation-removal== 20322 (pos)
                    (not (Pc_not_checked_p4))

                    ; #52006: <==negation-removal== 48722 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #52607: <==negation-removal== 86489 (pos)
                    (not (Ba_not_checked_p4))

                    ; #55900: <==negation-removal== 25617 (pos)
                    (not (Bc_not_checked_p4))

                    ; #64454: <==uncertain_firing== 48722 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #66632: <==negation-removal== 11745 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #67630: <==negation-removal== 55379 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #79729: <==negation-removal== 64819 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #82204: <==negation-removal== 90645 (pos)
                    (not (not_checked_p4))

                    ; #83424: <==negation-removal== 64977 (pos)
                    (not (Bb_not_checked_p4))

                    ; #87647: <==negation-removal== 31141 (pos)
                    (not (Pa_not_checked_p4))

                    ; #91253: <==uncertain_firing== 11745 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11249: <==closure== 28299 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #12981: <==commonly_known== 30264 (neg)
                    (Pa_checked_p5)

                    ; #17034: <==commonly_known== 30264 (neg)
                    (Pb_checked_p5)

                    ; #28299: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #32132: <==commonly_known== 35614 (pos)
                    (Bb_checked_p5)

                    ; #35614: origin
                    (checked_p5)

                    ; #51998: <==commonly_known== 30264 (neg)
                    (Pc_checked_p5)

                    ; #83442: <==commonly_known== 35614 (pos)
                    (Bc_checked_p5)

                    ; #86001: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #91416: <==closure== 86001 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #92277: <==commonly_known== 35614 (pos)
                    (Ba_checked_p5)

                    ; #13436: <==negation-removal== 51998 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14567: <==negation-removal== 11249 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #19877: <==negation-removal== 12981 (pos)
                    (not (Ba_not_checked_p5))

                    ; #23162: <==negation-removal== 92277 (pos)
                    (not (Pa_not_checked_p5))

                    ; #30264: <==negation-removal== 35614 (pos)
                    (not (not_checked_p5))

                    ; #32563: <==negation-removal== 28299 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #38189: <==negation-removal== 86001 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #38995: <==negation-removal== 17034 (pos)
                    (not (Bb_not_checked_p5))

                    ; #57263: <==uncertain_firing== 28299 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #66134: <==negation-removal== 83442 (pos)
                    (not (Pc_not_checked_p5))

                    ; #71920: <==negation-removal== 91416 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #79336: <==negation-removal== 32132 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81446: <==uncertain_firing== 11249 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #84667: <==uncertain_firing== 86001 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #90594: <==uncertain_firing== 91416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13253: origin
                    (checked_p6)

                    ; #22321: <==closure== 51262 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #24898: <==commonly_known== 13253 (pos)
                    (Ba_checked_p6)

                    ; #24966: <==commonly_known== 13253 (pos)
                    (Bb_checked_p6)

                    ; #48589: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #51262: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #51886: <==commonly_known== 10638 (neg)
                    (Pb_checked_p6)

                    ; #61377: <==commonly_known== 10638 (neg)
                    (Pc_checked_p6)

                    ; #72804: <==closure== 48589 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #81784: <==commonly_known== 13253 (pos)
                    (Bc_checked_p6)

                    ; #83870: <==commonly_known== 10638 (neg)
                    (Pa_checked_p6)

                    ; #10638: <==negation-removal== 13253 (pos)
                    (not (not_checked_p6))

                    ; #14365: <==negation-removal== 72804 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #15738: <==negation-removal== 48589 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #20514: <==negation-removal== 61377 (pos)
                    (not (Bc_not_checked_p6))

                    ; #26200: <==negation-removal== 51262 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #29632: <==uncertain_firing== 51262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #29751: <==negation-removal== 51886 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38636: <==negation-removal== 81784 (pos)
                    (not (Pc_not_checked_p6))

                    ; #42367: <==uncertain_firing== 22321 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #55329: <==uncertain_firing== 72804 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #55704: <==negation-removal== 22321 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #65380: <==uncertain_firing== 48589 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #68348: <==negation-removal== 83870 (pos)
                    (not (Ba_not_checked_p6))

                    ; #86722: <==negation-removal== 24966 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88366: <==negation-removal== 24898 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14374: <==commonly_known== 49686 (pos)
                    (Ba_checked_p7)

                    ; #16016: <==commonly_known== 59546 (neg)
                    (Pb_checked_p7)

                    ; #29354: <==closure== 30341 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #30341: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #31557: <==commonly_known== 49686 (pos)
                    (Bb_checked_p7)

                    ; #37123: <==commonly_known== 59546 (neg)
                    (Pa_checked_p7)

                    ; #47078: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #49686: origin
                    (checked_p7)

                    ; #66357: <==commonly_known== 49686 (pos)
                    (Bc_checked_p7)

                    ; #73853: <==commonly_known== 59546 (neg)
                    (Pc_checked_p7)

                    ; #83161: <==closure== 47078 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #14857: <==negation-removal== 14374 (pos)
                    (not (Pa_not_checked_p7))

                    ; #17136: <==negation-removal== 29354 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #22343: <==uncertain_firing== 29354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #33645: <==negation-removal== 31557 (pos)
                    (not (Pb_not_checked_p7))

                    ; #38615: <==negation-removal== 83161 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #48672: <==negation-removal== 16016 (pos)
                    (not (Bb_not_checked_p7))

                    ; #54617: <==negation-removal== 37123 (pos)
                    (not (Ba_not_checked_p7))

                    ; #59546: <==negation-removal== 49686 (pos)
                    (not (not_checked_p7))

                    ; #60681: <==negation-removal== 66357 (pos)
                    (not (Pc_not_checked_p7))

                    ; #66552: <==uncertain_firing== 83161 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #71950: <==negation-removal== 47078 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #78367: <==negation-removal== 73853 (pos)
                    (not (Bc_not_checked_p7))

                    ; #80797: <==uncertain_firing== 30341 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #80933: <==uncertain_firing== 47078 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #90117: <==negation-removal== 30341 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11532: <==commonly_known== 59043 (pos)
                    (Ba_checked_p8)

                    ; #14996: <==commonly_known== 71999 (neg)
                    (Pc_checked_p8)

                    ; #18544: <==closure== 59758 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #35504: <==commonly_known== 59043 (pos)
                    (Bb_checked_p8)

                    ; #47224: <==commonly_known== 71999 (neg)
                    (Pa_checked_p8)

                    ; #48364: <==commonly_known== 71999 (neg)
                    (Pb_checked_p8)

                    ; #52254: <==closure== 60688 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #59043: origin
                    (checked_p8)

                    ; #59758: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #60688: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #77983: <==commonly_known== 59043 (pos)
                    (Bc_checked_p8)

                    ; #17293: <==negation-removal== 77983 (pos)
                    (not (Pc_not_checked_p8))

                    ; #21331: <==uncertain_firing== 18544 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #28482: <==negation-removal== 14996 (pos)
                    (not (Bc_not_checked_p8))

                    ; #31524: <==negation-removal== 47224 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35586: <==negation-removal== 59758 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #43569: <==uncertain_firing== 60688 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #53817: <==negation-removal== 18544 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60922: <==negation-removal== 11532 (pos)
                    (not (Pa_not_checked_p8))

                    ; #71999: <==negation-removal== 59043 (pos)
                    (not (not_checked_p8))

                    ; #72093: <==uncertain_firing== 52254 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #73294: <==negation-removal== 48364 (pos)
                    (not (Bb_not_checked_p8))

                    ; #77515: <==uncertain_firing== 59758 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #78944: <==negation-removal== 60688 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #80498: <==negation-removal== 52254 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #88961: <==negation-removal== 35504 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11111: <==commonly_known== 76531 (neg)
                    (Pc_checked_p9)

                    ; #13594: origin
                    (checked_p9)

                    ; #30348: <==closure== 80931 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #30514: <==commonly_known== 76531 (neg)
                    (Pa_checked_p9)

                    ; #35045: <==commonly_known== 13594 (pos)
                    (Bb_checked_p9)

                    ; #39680: <==commonly_known== 13594 (pos)
                    (Bc_checked_p9)

                    ; #60386: <==commonly_known== 76531 (neg)
                    (Pb_checked_p9)

                    ; #70142: <==commonly_known== 13594 (pos)
                    (Ba_checked_p9)

                    ; #80931: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #85224: <==closure== 86151 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #86151: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #10790: <==uncertain_firing== 86151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #11164: <==uncertain_firing== 80931 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #11333: <==uncertain_firing== 85224 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #20110: <==negation-removal== 35045 (pos)
                    (not (Pb_not_checked_p9))

                    ; #34594: <==negation-removal== 30514 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44155: <==negation-removal== 11111 (pos)
                    (not (Bc_not_checked_p9))

                    ; #54426: <==negation-removal== 86151 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #55120: <==negation-removal== 85224 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57362: <==negation-removal== 80931 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #58346: <==negation-removal== 70142 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73688: <==uncertain_firing== 30348 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #76531: <==negation-removal== 13594 (pos)
                    (not (not_checked_p9))

                    ; #76863: <==negation-removal== 60386 (pos)
                    (not (Bb_not_checked_p9))

                    ; #84181: <==negation-removal== 39680 (pos)
                    (not (Pc_not_checked_p9))

                    ; #93400: <==negation-removal== 30348 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13650: origin
                    (checked_p1)

                    ; #14441: <==commonly_known== 13650 (pos)
                    (Bc_checked_p1)

                    ; #15124: <==commonly_known== 13650 (pos)
                    (Ba_checked_p1)

                    ; #22119: <==commonly_known== 43211 (neg)
                    (Pc_checked_p1)

                    ; #25497: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #27271: <==commonly_known== 13650 (pos)
                    (Bb_checked_p1)

                    ; #35219: <==commonly_known== 43211 (neg)
                    (Pb_checked_p1)

                    ; #42444: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #53800: <==closure== 25497 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #68497: <==closure== 42444 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #79966: <==commonly_known== 43211 (neg)
                    (Pa_checked_p1)

                    ; #11413: <==uncertain_firing== 53800 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #15947: <==uncertain_firing== 68497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #18386: <==negation-removal== 25497 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #25013: <==negation-removal== 22119 (pos)
                    (not (Bc_not_checked_p1))

                    ; #27363: <==uncertain_firing== 42444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #38570: <==negation-removal== 14441 (pos)
                    (not (Pc_not_checked_p1))

                    ; #43211: <==negation-removal== 13650 (pos)
                    (not (not_checked_p1))

                    ; #43647: <==negation-removal== 15124 (pos)
                    (not (Pa_not_checked_p1))

                    ; #50970: <==uncertain_firing== 25497 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #52948: <==negation-removal== 68497 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #54563: <==negation-removal== 35219 (pos)
                    (not (Bb_not_checked_p1))

                    ; #64437: <==negation-removal== 79966 (pos)
                    (not (Ba_not_checked_p1))

                    ; #82151: <==negation-removal== 53800 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #82667: <==negation-removal== 27271 (pos)
                    (not (Pb_not_checked_p1))

                    ; #89603: <==negation-removal== 42444 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #25871: <==commonly_known== 88398 (pos)
                    (Bc_checked_p2)

                    ; #34944: <==commonly_known== 38050 (neg)
                    (Pa_checked_p2)

                    ; #36662: <==closure== 72283 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #55010: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #58813: <==commonly_known== 88398 (pos)
                    (Ba_checked_p2)

                    ; #72283: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #77833: <==commonly_known== 38050 (neg)
                    (Pc_checked_p2)

                    ; #80021: <==commonly_known== 88398 (pos)
                    (Bb_checked_p2)

                    ; #88398: origin
                    (checked_p2)

                    ; #90675: <==closure== 55010 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #92722: <==commonly_known== 38050 (neg)
                    (Pb_checked_p2)

                    ; #24094: <==negation-removal== 92722 (pos)
                    (not (Bb_not_checked_p2))

                    ; #28215: <==negation-removal== 36662 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #29332: <==uncertain_firing== 72283 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #32396: <==negation-removal== 80021 (pos)
                    (not (Pb_not_checked_p2))

                    ; #33915: <==uncertain_firing== 90675 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34424: <==negation-removal== 90675 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #35457: <==negation-removal== 55010 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #38050: <==negation-removal== 88398 (pos)
                    (not (not_checked_p2))

                    ; #39481: <==uncertain_firing== 55010 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #40135: <==uncertain_firing== 36662 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #58533: <==negation-removal== 25871 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64665: <==negation-removal== 72283 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #68293: <==negation-removal== 77833 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69991: <==negation-removal== 34944 (pos)
                    (not (Ba_not_checked_p2))

                    ; #90045: <==negation-removal== 58813 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22350: <==commonly_known== 77850 (pos)
                    (Ba_checked_p3)

                    ; #24313: <==commonly_known== 89311 (neg)
                    (Pb_checked_p3)

                    ; #32857: <==closure== 38293 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #37524: <==closure== 84963 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #38293: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #43864: <==commonly_known== 77850 (pos)
                    (Bc_checked_p3)

                    ; #52514: <==commonly_known== 77850 (pos)
                    (Bb_checked_p3)

                    ; #54297: <==commonly_known== 89311 (neg)
                    (Pc_checked_p3)

                    ; #70396: <==commonly_known== 89311 (neg)
                    (Pa_checked_p3)

                    ; #77850: origin
                    (checked_p3)

                    ; #84963: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12938: <==negation-removal== 32857 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #16679: <==uncertain_firing== 38293 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #23643: <==negation-removal== 22350 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23924: <==uncertain_firing== 37524 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #26295: <==uncertain_firing== 32857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #27850: <==negation-removal== 38293 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #36213: <==negation-removal== 24313 (pos)
                    (not (Bb_not_checked_p3))

                    ; #38479: <==uncertain_firing== 84963 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #44222: <==negation-removal== 37524 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #64870: <==negation-removal== 54297 (pos)
                    (not (Bc_not_checked_p3))

                    ; #74096: <==negation-removal== 52514 (pos)
                    (not (Pb_not_checked_p3))

                    ; #77922: <==negation-removal== 70396 (pos)
                    (not (Ba_not_checked_p3))

                    ; #81298: <==negation-removal== 84963 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #89311: <==negation-removal== 77850 (pos)
                    (not (not_checked_p3))

                    ; #91467: <==negation-removal== 43864 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13774: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #20322: <==commonly_known== 90645 (pos)
                    (Bc_checked_p4)

                    ; #25018: <==commonly_known== 90645 (pos)
                    (Bb_checked_p4)

                    ; #25617: <==commonly_known== 82204 (neg)
                    (Pc_checked_p4)

                    ; #31141: <==commonly_known== 90645 (pos)
                    (Ba_checked_p4)

                    ; #38486: <==closure== 79513 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #64977: <==commonly_known== 82204 (neg)
                    (Pb_checked_p4)

                    ; #79513: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #79983: <==closure== 13774 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #86489: <==commonly_known== 82204 (neg)
                    (Pa_checked_p4)

                    ; #90645: origin
                    (checked_p4)

                    ; #18411: <==negation-removal== 38486 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #21794: <==negation-removal== 25018 (pos)
                    (not (Pb_not_checked_p4))

                    ; #23682: <==uncertain_firing== 79983 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #43743: <==negation-removal== 13774 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #46068: <==negation-removal== 20322 (pos)
                    (not (Pc_not_checked_p4))

                    ; #52607: <==negation-removal== 86489 (pos)
                    (not (Ba_not_checked_p4))

                    ; #55900: <==negation-removal== 25617 (pos)
                    (not (Bc_not_checked_p4))

                    ; #68529: <==negation-removal== 79983 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #79708: <==negation-removal== 79513 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #82204: <==negation-removal== 90645 (pos)
                    (not (not_checked_p4))

                    ; #83424: <==negation-removal== 64977 (pos)
                    (not (Bb_not_checked_p4))

                    ; #87647: <==negation-removal== 31141 (pos)
                    (not (Pa_not_checked_p4))

                    ; #87685: <==uncertain_firing== 38486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #90219: <==uncertain_firing== 13774 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #91402: <==uncertain_firing== 79513 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12981: <==commonly_known== 30264 (neg)
                    (Pa_checked_p5)

                    ; #17034: <==commonly_known== 30264 (neg)
                    (Pb_checked_p5)

                    ; #21843: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #32132: <==commonly_known== 35614 (pos)
                    (Bb_checked_p5)

                    ; #35614: origin
                    (checked_p5)

                    ; #37424: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #51998: <==commonly_known== 30264 (neg)
                    (Pc_checked_p5)

                    ; #59292: <==closure== 21843 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #64738: <==closure== 37424 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #83442: <==commonly_known== 35614 (pos)
                    (Bc_checked_p5)

                    ; #92277: <==commonly_known== 35614 (pos)
                    (Ba_checked_p5)

                    ; #13436: <==negation-removal== 51998 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14326: <==negation-removal== 59292 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #16862: <==uncertain_firing== 59292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #17955: <==uncertain_firing== 64738 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #19877: <==negation-removal== 12981 (pos)
                    (not (Ba_not_checked_p5))

                    ; #21711: <==negation-removal== 21843 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #23162: <==negation-removal== 92277 (pos)
                    (not (Pa_not_checked_p5))

                    ; #30264: <==negation-removal== 35614 (pos)
                    (not (not_checked_p5))

                    ; #38995: <==negation-removal== 17034 (pos)
                    (not (Bb_not_checked_p5))

                    ; #40395: <==negation-removal== 64738 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #49374: <==uncertain_firing== 37424 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #66134: <==negation-removal== 83442 (pos)
                    (not (Pc_not_checked_p5))

                    ; #67147: <==negation-removal== 37424 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #79336: <==negation-removal== 32132 (pos)
                    (not (Pb_not_checked_p5))

                    ; #83561: <==uncertain_firing== 21843 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13253: origin
                    (checked_p6)

                    ; #24898: <==commonly_known== 13253 (pos)
                    (Ba_checked_p6)

                    ; #24966: <==commonly_known== 13253 (pos)
                    (Bb_checked_p6)

                    ; #39459: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #45959: <==closure== 39459 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #51886: <==commonly_known== 10638 (neg)
                    (Pb_checked_p6)

                    ; #61377: <==commonly_known== 10638 (neg)
                    (Pc_checked_p6)

                    ; #64019: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #79285: <==closure== 64019 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #81784: <==commonly_known== 13253 (pos)
                    (Bc_checked_p6)

                    ; #83870: <==commonly_known== 10638 (neg)
                    (Pa_checked_p6)

                    ; #10638: <==negation-removal== 13253 (pos)
                    (not (not_checked_p6))

                    ; #12976: <==uncertain_firing== 39459 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20514: <==negation-removal== 61377 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29631: <==negation-removal== 39459 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #29751: <==negation-removal== 51886 (pos)
                    (not (Bb_not_checked_p6))

                    ; #29929: <==uncertain_firing== 45959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #34960: <==uncertain_firing== 64019 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #38636: <==negation-removal== 81784 (pos)
                    (not (Pc_not_checked_p6))

                    ; #68348: <==negation-removal== 83870 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76818: <==negation-removal== 64019 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78254: <==negation-removal== 45959 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #84516: <==negation-removal== 79285 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #86722: <==negation-removal== 24966 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88366: <==negation-removal== 24898 (pos)
                    (not (Pa_not_checked_p6))

                    ; #89316: <==uncertain_firing== 79285 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14374: <==commonly_known== 49686 (pos)
                    (Ba_checked_p7)

                    ; #16016: <==commonly_known== 59546 (neg)
                    (Pb_checked_p7)

                    ; #18823: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #28091: <==closure== 18823 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #31557: <==commonly_known== 49686 (pos)
                    (Bb_checked_p7)

                    ; #37123: <==commonly_known== 59546 (neg)
                    (Pa_checked_p7)

                    ; #49686: origin
                    (checked_p7)

                    ; #62499: <==closure== 82209 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #66357: <==commonly_known== 49686 (pos)
                    (Bc_checked_p7)

                    ; #73853: <==commonly_known== 59546 (neg)
                    (Pc_checked_p7)

                    ; #82209: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #14857: <==negation-removal== 14374 (pos)
                    (not (Pa_not_checked_p7))

                    ; #15887: <==negation-removal== 18823 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #17620: <==uncertain_firing== 82209 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #26381: <==negation-removal== 28091 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #29186: <==negation-removal== 82209 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #33645: <==negation-removal== 31557 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41904: <==uncertain_firing== 28091 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #46831: <==uncertain_firing== 62499 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #48672: <==negation-removal== 16016 (pos)
                    (not (Bb_not_checked_p7))

                    ; #54617: <==negation-removal== 37123 (pos)
                    (not (Ba_not_checked_p7))

                    ; #59546: <==negation-removal== 49686 (pos)
                    (not (not_checked_p7))

                    ; #60681: <==negation-removal== 66357 (pos)
                    (not (Pc_not_checked_p7))

                    ; #75940: <==negation-removal== 62499 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #78367: <==negation-removal== 73853 (pos)
                    (not (Bc_not_checked_p7))

                    ; #81177: <==uncertain_firing== 18823 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11532: <==commonly_known== 59043 (pos)
                    (Ba_checked_p8)

                    ; #12162: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #14996: <==commonly_known== 71999 (neg)
                    (Pc_checked_p8)

                    ; #18417: <==closure== 79956 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #34720: <==closure== 12162 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #35504: <==commonly_known== 59043 (pos)
                    (Bb_checked_p8)

                    ; #47224: <==commonly_known== 71999 (neg)
                    (Pa_checked_p8)

                    ; #48364: <==commonly_known== 71999 (neg)
                    (Pb_checked_p8)

                    ; #59043: origin
                    (checked_p8)

                    ; #77983: <==commonly_known== 59043 (pos)
                    (Bc_checked_p8)

                    ; #79956: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #17293: <==negation-removal== 77983 (pos)
                    (not (Pc_not_checked_p8))

                    ; #18154: <==negation-removal== 12162 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #28482: <==negation-removal== 14996 (pos)
                    (not (Bc_not_checked_p8))

                    ; #31524: <==negation-removal== 47224 (pos)
                    (not (Ba_not_checked_p8))

                    ; #36239: <==uncertain_firing== 12162 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #42395: <==uncertain_firing== 34720 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #47104: <==uncertain_firing== 18417 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #47217: <==negation-removal== 79956 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #55740: <==uncertain_firing== 79956 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #60922: <==negation-removal== 11532 (pos)
                    (not (Pa_not_checked_p8))

                    ; #68292: <==negation-removal== 34720 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #71999: <==negation-removal== 59043 (pos)
                    (not (not_checked_p8))

                    ; #73294: <==negation-removal== 48364 (pos)
                    (not (Bb_not_checked_p8))

                    ; #88961: <==negation-removal== 35504 (pos)
                    (not (Pb_not_checked_p8))

                    ; #91634: <==negation-removal== 18417 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11111: <==commonly_known== 76531 (neg)
                    (Pc_checked_p9)

                    ; #13594: origin
                    (checked_p9)

                    ; #29455: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #30514: <==commonly_known== 76531 (neg)
                    (Pa_checked_p9)

                    ; #35045: <==commonly_known== 13594 (pos)
                    (Bb_checked_p9)

                    ; #39680: <==commonly_known== 13594 (pos)
                    (Bc_checked_p9)

                    ; #60386: <==commonly_known== 76531 (neg)
                    (Pb_checked_p9)

                    ; #70142: <==commonly_known== 13594 (pos)
                    (Ba_checked_p9)

                    ; #77107: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #78245: <==closure== 29455 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #84583: <==closure== 77107 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #20110: <==negation-removal== 35045 (pos)
                    (not (Pb_not_checked_p9))

                    ; #27571: <==uncertain_firing== 29455 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #28853: <==uncertain_firing== 84583 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #34594: <==negation-removal== 30514 (pos)
                    (not (Ba_not_checked_p9))

                    ; #35484: <==negation-removal== 77107 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42734: <==uncertain_firing== 78245 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #43107: <==negation-removal== 78245 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #44155: <==negation-removal== 11111 (pos)
                    (not (Bc_not_checked_p9))

                    ; #58346: <==negation-removal== 70142 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72037: <==negation-removal== 29455 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #75737: <==uncertain_firing== 77107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #76531: <==negation-removal== 13594 (pos)
                    (not (not_checked_p9))

                    ; #76863: <==negation-removal== 60386 (pos)
                    (not (Bb_not_checked_p9))

                    ; #81582: <==negation-removal== 84583 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #84181: <==negation-removal== 39680 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13650: origin
                    (checked_p1)

                    ; #14441: <==commonly_known== 13650 (pos)
                    (Bc_checked_p1)

                    ; #15124: <==commonly_known== 13650 (pos)
                    (Ba_checked_p1)

                    ; #22119: <==commonly_known== 43211 (neg)
                    (Pc_checked_p1)

                    ; #27271: <==commonly_known== 13650 (pos)
                    (Bb_checked_p1)

                    ; #35219: <==commonly_known== 43211 (neg)
                    (Pb_checked_p1)

                    ; #39446: <==closure== 63643 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #63643: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #70172: <==closure== 90356 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #79966: <==commonly_known== 43211 (neg)
                    (Pa_checked_p1)

                    ; #90356: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #19870: <==negation-removal== 70172 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25013: <==negation-removal== 22119 (pos)
                    (not (Bc_not_checked_p1))

                    ; #38570: <==negation-removal== 14441 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39360: <==negation-removal== 63643 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #39960: <==uncertain_firing== 70172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #43211: <==negation-removal== 13650 (pos)
                    (not (not_checked_p1))

                    ; #43647: <==negation-removal== 15124 (pos)
                    (not (Pa_not_checked_p1))

                    ; #54563: <==negation-removal== 35219 (pos)
                    (not (Bb_not_checked_p1))

                    ; #56325: <==negation-removal== 90356 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #62573: <==uncertain_firing== 39446 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #64437: <==negation-removal== 79966 (pos)
                    (not (Ba_not_checked_p1))

                    ; #67768: <==negation-removal== 39446 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #76209: <==uncertain_firing== 63643 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #82667: <==negation-removal== 27271 (pos)
                    (not (Pb_not_checked_p1))

                    ; #87955: <==uncertain_firing== 90356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #25871: <==commonly_known== 88398 (pos)
                    (Bc_checked_p2)

                    ; #34944: <==commonly_known== 38050 (neg)
                    (Pa_checked_p2)

                    ; #42358: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #58813: <==commonly_known== 88398 (pos)
                    (Ba_checked_p2)

                    ; #65437: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #77833: <==commonly_known== 38050 (neg)
                    (Pc_checked_p2)

                    ; #80021: <==commonly_known== 88398 (pos)
                    (Bb_checked_p2)

                    ; #85178: <==closure== 42358 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #85253: <==closure== 65437 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #88398: origin
                    (checked_p2)

                    ; #92722: <==commonly_known== 38050 (neg)
                    (Pb_checked_p2)

                    ; #13623: <==negation-removal== 65437 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24094: <==negation-removal== 92722 (pos)
                    (not (Bb_not_checked_p2))

                    ; #25135: <==negation-removal== 85178 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #32396: <==negation-removal== 80021 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38050: <==negation-removal== 88398 (pos)
                    (not (not_checked_p2))

                    ; #43633: <==negation-removal== 42358 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #52252: <==uncertain_firing== 42358 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #53381: <==negation-removal== 85253 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58533: <==negation-removal== 25871 (pos)
                    (not (Pc_not_checked_p2))

                    ; #68293: <==negation-removal== 77833 (pos)
                    (not (Bc_not_checked_p2))

                    ; #69991: <==negation-removal== 34944 (pos)
                    (not (Ba_not_checked_p2))

                    ; #85684: <==uncertain_firing== 85253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #85789: <==uncertain_firing== 65437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #87170: <==uncertain_firing== 85178 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #90045: <==negation-removal== 58813 (pos)
                    (not (Pa_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18282: <==closure== 81346 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #22350: <==commonly_known== 77850 (pos)
                    (Ba_checked_p3)

                    ; #24313: <==commonly_known== 89311 (neg)
                    (Pb_checked_p3)

                    ; #43864: <==commonly_known== 77850 (pos)
                    (Bc_checked_p3)

                    ; #52514: <==commonly_known== 77850 (pos)
                    (Bb_checked_p3)

                    ; #54297: <==commonly_known== 89311 (neg)
                    (Pc_checked_p3)

                    ; #70396: <==commonly_known== 89311 (neg)
                    (Pa_checked_p3)

                    ; #77850: origin
                    (checked_p3)

                    ; #78380: <==closure== 90400 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #81346: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #90400: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #20134: <==uncertain_firing== 78380 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #20973: <==uncertain_firing== 90400 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #23643: <==negation-removal== 22350 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36213: <==negation-removal== 24313 (pos)
                    (not (Bb_not_checked_p3))

                    ; #39244: <==uncertain_firing== 81346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49788: <==uncertain_firing== 18282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56772: <==negation-removal== 18282 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #64870: <==negation-removal== 54297 (pos)
                    (not (Bc_not_checked_p3))

                    ; #69479: <==negation-removal== 90400 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #74096: <==negation-removal== 52514 (pos)
                    (not (Pb_not_checked_p3))

                    ; #77922: <==negation-removal== 70396 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78108: <==negation-removal== 78380 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #84256: <==negation-removal== 81346 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #89311: <==negation-removal== 77850 (pos)
                    (not (not_checked_p3))

                    ; #91467: <==negation-removal== 43864 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15178: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #20322: <==commonly_known== 90645 (pos)
                    (Bc_checked_p4)

                    ; #20982: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #25018: <==commonly_known== 90645 (pos)
                    (Bb_checked_p4)

                    ; #25617: <==commonly_known== 82204 (neg)
                    (Pc_checked_p4)

                    ; #28294: <==closure== 15178 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #31141: <==commonly_known== 90645 (pos)
                    (Ba_checked_p4)

                    ; #46636: <==closure== 20982 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #64977: <==commonly_known== 82204 (neg)
                    (Pb_checked_p4)

                    ; #86489: <==commonly_known== 82204 (neg)
                    (Pa_checked_p4)

                    ; #90645: origin
                    (checked_p4)

                    ; #21794: <==negation-removal== 25018 (pos)
                    (not (Pb_not_checked_p4))

                    ; #35254: <==negation-removal== 15178 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #39650: <==negation-removal== 28294 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #46068: <==negation-removal== 20322 (pos)
                    (not (Pc_not_checked_p4))

                    ; #52607: <==negation-removal== 86489 (pos)
                    (not (Ba_not_checked_p4))

                    ; #53195: <==uncertain_firing== 15178 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #55900: <==negation-removal== 25617 (pos)
                    (not (Bc_not_checked_p4))

                    ; #57483: <==uncertain_firing== 20982 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71977: <==uncertain_firing== 28294 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #72579: <==negation-removal== 46636 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #73069: <==negation-removal== 20982 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #82204: <==negation-removal== 90645 (pos)
                    (not (not_checked_p4))

                    ; #83424: <==negation-removal== 64977 (pos)
                    (not (Bb_not_checked_p4))

                    ; #84864: <==uncertain_firing== 46636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #87647: <==negation-removal== 31141 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12981: <==commonly_known== 30264 (neg)
                    (Pa_checked_p5)

                    ; #17034: <==commonly_known== 30264 (neg)
                    (Pb_checked_p5)

                    ; #32132: <==commonly_known== 35614 (pos)
                    (Bb_checked_p5)

                    ; #35614: origin
                    (checked_p5)

                    ; #40784: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #51998: <==commonly_known== 30264 (neg)
                    (Pc_checked_p5)

                    ; #53657: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #58676: <==closure== 53657 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #83442: <==commonly_known== 35614 (pos)
                    (Bc_checked_p5)

                    ; #90554: <==closure== 40784 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #92277: <==commonly_known== 35614 (pos)
                    (Ba_checked_p5)

                    ; #11903: <==uncertain_firing== 53657 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #12404: <==uncertain_firing== 40784 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #13436: <==negation-removal== 51998 (pos)
                    (not (Bc_not_checked_p5))

                    ; #19877: <==negation-removal== 12981 (pos)
                    (not (Ba_not_checked_p5))

                    ; #21275: <==uncertain_firing== 58676 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #23162: <==negation-removal== 92277 (pos)
                    (not (Pa_not_checked_p5))

                    ; #30264: <==negation-removal== 35614 (pos)
                    (not (not_checked_p5))

                    ; #32656: <==uncertain_firing== 90554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #38995: <==negation-removal== 17034 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44559: <==negation-removal== 53657 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #54935: <==negation-removal== 58676 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #57915: <==negation-removal== 40784 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #63822: <==negation-removal== 90554 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #66134: <==negation-removal== 83442 (pos)
                    (not (Pc_not_checked_p5))

                    ; #79336: <==negation-removal== 32132 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13253: origin
                    (checked_p6)

                    ; #19511: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #24898: <==commonly_known== 13253 (pos)
                    (Ba_checked_p6)

                    ; #24966: <==commonly_known== 13253 (pos)
                    (Bb_checked_p6)

                    ; #30708: <==closure== 33660 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #33660: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #51886: <==commonly_known== 10638 (neg)
                    (Pb_checked_p6)

                    ; #52259: <==closure== 19511 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #61377: <==commonly_known== 10638 (neg)
                    (Pc_checked_p6)

                    ; #81784: <==commonly_known== 13253 (pos)
                    (Bc_checked_p6)

                    ; #83870: <==commonly_known== 10638 (neg)
                    (Pa_checked_p6)

                    ; #10638: <==negation-removal== 13253 (pos)
                    (not (not_checked_p6))

                    ; #14490: <==uncertain_firing== 33660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #20514: <==negation-removal== 61377 (pos)
                    (not (Bc_not_checked_p6))

                    ; #22842: <==uncertain_firing== 19511 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #25807: <==negation-removal== 19511 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #25903: <==uncertain_firing== 52259 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #29751: <==negation-removal== 51886 (pos)
                    (not (Bb_not_checked_p6))

                    ; #38636: <==negation-removal== 81784 (pos)
                    (not (Pc_not_checked_p6))

                    ; #39372: <==uncertain_firing== 30708 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #63765: <==negation-removal== 30708 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #68348: <==negation-removal== 83870 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76355: <==negation-removal== 33660 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86196: <==negation-removal== 52259 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #86722: <==negation-removal== 24966 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88366: <==negation-removal== 24898 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12642: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #14374: <==commonly_known== 49686 (pos)
                    (Ba_checked_p7)

                    ; #16016: <==commonly_known== 59546 (neg)
                    (Pb_checked_p7)

                    ; #25429: <==closure== 12642 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #26713: <==closure== 58456 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #31557: <==commonly_known== 49686 (pos)
                    (Bb_checked_p7)

                    ; #37123: <==commonly_known== 59546 (neg)
                    (Pa_checked_p7)

                    ; #49686: origin
                    (checked_p7)

                    ; #58456: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #66357: <==commonly_known== 49686 (pos)
                    (Bc_checked_p7)

                    ; #73853: <==commonly_known== 59546 (neg)
                    (Pc_checked_p7)

                    ; #14857: <==negation-removal== 14374 (pos)
                    (not (Pa_not_checked_p7))

                    ; #25914: <==negation-removal== 58456 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #33645: <==negation-removal== 31557 (pos)
                    (not (Pb_not_checked_p7))

                    ; #36736: <==uncertain_firing== 58456 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #43520: <==uncertain_firing== 26713 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #48672: <==negation-removal== 16016 (pos)
                    (not (Bb_not_checked_p7))

                    ; #51659: <==negation-removal== 12642 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #54617: <==negation-removal== 37123 (pos)
                    (not (Ba_not_checked_p7))

                    ; #57039: <==uncertain_firing== 25429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #59546: <==negation-removal== 49686 (pos)
                    (not (not_checked_p7))

                    ; #60681: <==negation-removal== 66357 (pos)
                    (not (Pc_not_checked_p7))

                    ; #74142: <==negation-removal== 25429 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #75387: <==uncertain_firing== 12642 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #78367: <==negation-removal== 73853 (pos)
                    (not (Bc_not_checked_p7))

                    ; #88940: <==negation-removal== 26713 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11532: <==commonly_known== 59043 (pos)
                    (Ba_checked_p8)

                    ; #14996: <==commonly_known== 71999 (neg)
                    (Pc_checked_p8)

                    ; #16983: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #28967: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #32282: <==closure== 16983 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #35504: <==commonly_known== 59043 (pos)
                    (Bb_checked_p8)

                    ; #47224: <==commonly_known== 71999 (neg)
                    (Pa_checked_p8)

                    ; #48364: <==commonly_known== 71999 (neg)
                    (Pb_checked_p8)

                    ; #59043: origin
                    (checked_p8)

                    ; #77983: <==commonly_known== 59043 (pos)
                    (Bc_checked_p8)

                    ; #79660: <==closure== 28967 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #14890: <==negation-removal== 16983 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #17293: <==negation-removal== 77983 (pos)
                    (not (Pc_not_checked_p8))

                    ; #23349: <==negation-removal== 28967 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #28482: <==negation-removal== 14996 (pos)
                    (not (Bc_not_checked_p8))

                    ; #31524: <==negation-removal== 47224 (pos)
                    (not (Ba_not_checked_p8))

                    ; #45999: <==uncertain_firing== 79660 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #48543: <==negation-removal== 79660 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #60922: <==negation-removal== 11532 (pos)
                    (not (Pa_not_checked_p8))

                    ; #62022: <==uncertain_firing== 28967 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #63373: <==negation-removal== 32282 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #71999: <==negation-removal== 59043 (pos)
                    (not (not_checked_p8))

                    ; #73294: <==negation-removal== 48364 (pos)
                    (not (Bb_not_checked_p8))

                    ; #78998: <==uncertain_firing== 32282 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #85712: <==uncertain_firing== 16983 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #88961: <==negation-removal== 35504 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11111: <==commonly_known== 76531 (neg)
                    (Pc_checked_p9)

                    ; #13239: <==closure== 72841 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #13594: origin
                    (checked_p9)

                    ; #30514: <==commonly_known== 76531 (neg)
                    (Pa_checked_p9)

                    ; #33094: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #35045: <==commonly_known== 13594 (pos)
                    (Bb_checked_p9)

                    ; #38339: <==closure== 33094 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #39680: <==commonly_known== 13594 (pos)
                    (Bc_checked_p9)

                    ; #60386: <==commonly_known== 76531 (neg)
                    (Pb_checked_p9)

                    ; #70142: <==commonly_known== 13594 (pos)
                    (Ba_checked_p9)

                    ; #72841: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #13200: <==uncertain_firing== 72841 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #20110: <==negation-removal== 35045 (pos)
                    (not (Pb_not_checked_p9))

                    ; #26412: <==uncertain_firing== 13239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34594: <==negation-removal== 30514 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42364: <==negation-removal== 72841 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #44155: <==negation-removal== 11111 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57947: <==uncertain_firing== 38339 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #58025: <==negation-removal== 33094 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #58346: <==negation-removal== 70142 (pos)
                    (not (Pa_not_checked_p9))

                    ; #61702: <==negation-removal== 38339 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #76531: <==negation-removal== 13594 (pos)
                    (not (not_checked_p9))

                    ; #76863: <==negation-removal== 60386 (pos)
                    (not (Bb_not_checked_p9))

                    ; #84181: <==negation-removal== 39680 (pos)
                    (not (Pc_not_checked_p9))

                    ; #85233: <==negation-removal== 13239 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #89288: <==uncertain_firing== 33094 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))))

)