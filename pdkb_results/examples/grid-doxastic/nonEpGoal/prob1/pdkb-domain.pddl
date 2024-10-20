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
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #21224: <==closure== 30828 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #30799: <==closure== 67999 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #30828: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #55447: <==closure== 64436 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #64436: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #67999: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #22506: <==uncertain_firing== 55447 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29394: <==negation-removal== 30799 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #33393: <==negation-removal== 64436 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #35413: <==negation-removal== 30828 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #38053: <==negation-removal== 55447 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48339: <==negation-removal== 21224 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #49573: <==uncertain_firing== 67999 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60431: <==uncertain_firing== 21224 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72810: <==uncertain_firing== 30828 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78604: <==uncertain_firing== 64436 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #79687: <==uncertain_firing== 30799 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79980: <==negation-removal== 67999 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #21224: <==closure== 30828 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #30799: <==closure== 67999 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #30828: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #55447: <==closure== 64436 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #64436: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #67999: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #22506: <==uncertain_firing== 55447 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29394: <==negation-removal== 30799 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #33393: <==negation-removal== 64436 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #35413: <==negation-removal== 30828 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #38053: <==negation-removal== 55447 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48339: <==negation-removal== 21224 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #49573: <==uncertain_firing== 67999 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60431: <==uncertain_firing== 21224 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72810: <==uncertain_firing== 30828 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78604: <==uncertain_firing== 64436 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #79687: <==uncertain_firing== 30799 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79980: <==negation-removal== 67999 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #21224: <==closure== 30828 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #30799: <==closure== 67999 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #30828: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #55447: <==closure== 64436 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #64436: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #67999: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #22506: <==uncertain_firing== 55447 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29394: <==negation-removal== 30799 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #33393: <==negation-removal== 64436 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #35413: <==negation-removal== 30828 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #38053: <==negation-removal== 55447 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48339: <==negation-removal== 21224 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #49573: <==uncertain_firing== 67999 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60431: <==uncertain_firing== 21224 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72810: <==uncertain_firing== 30828 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #78604: <==uncertain_firing== 64436 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #79687: <==uncertain_firing== 30799 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79980: <==negation-removal== 67999 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #32650: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #41782: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #44501: <==closure== 89995 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #67925: <==closure== 41782 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #73304: <==closure== 32650 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #89995: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #15606: <==uncertain_firing== 41782 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25568: <==uncertain_firing== 67925 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27370: <==negation-removal== 32650 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29155: <==negation-removal== 67925 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31664: <==negation-removal== 41782 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55519: <==negation-removal== 44501 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #55567: <==negation-removal== 73304 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57914: <==uncertain_firing== 44501 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #69027: <==uncertain_firing== 89995 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69910: <==uncertain_firing== 73304 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #70451: <==negation-removal== 89995 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #87873: <==uncertain_firing== 32650 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #32650: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #41782: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #44501: <==closure== 89995 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #67925: <==closure== 41782 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #73304: <==closure== 32650 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #89995: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #15606: <==uncertain_firing== 41782 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25568: <==uncertain_firing== 67925 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27370: <==negation-removal== 32650 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29155: <==negation-removal== 67925 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31664: <==negation-removal== 41782 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55519: <==negation-removal== 44501 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #55567: <==negation-removal== 73304 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57914: <==uncertain_firing== 44501 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #69027: <==uncertain_firing== 89995 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69910: <==uncertain_firing== 73304 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #70451: <==negation-removal== 89995 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #87873: <==uncertain_firing== 32650 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #32650: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #41782: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #44501: <==closure== 89995 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #67925: <==closure== 41782 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #73304: <==closure== 32650 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #89995: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #15606: <==uncertain_firing== 41782 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25568: <==uncertain_firing== 67925 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #27370: <==negation-removal== 32650 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29155: <==negation-removal== 67925 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31664: <==negation-removal== 41782 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55519: <==negation-removal== 44501 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #55567: <==negation-removal== 73304 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57914: <==uncertain_firing== 44501 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #69027: <==uncertain_firing== 89995 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #69910: <==uncertain_firing== 73304 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #70451: <==negation-removal== 89995 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #87873: <==uncertain_firing== 32650 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #18430: <==closure== 57065 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #21880: <==closure== 85794 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #38587: <==closure== 74722 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #57065: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #74722: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #85794: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14333: <==uncertain_firing== 85794 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #15147: <==negation-removal== 85794 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #19841: <==uncertain_firing== 18430 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25198: <==negation-removal== 38587 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29344: <==negation-removal== 18430 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #36108: <==negation-removal== 74722 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38758: <==uncertain_firing== 74722 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39081: <==uncertain_firing== 38587 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #70655: <==negation-removal== 21880 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82365: <==uncertain_firing== 21880 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #90983: <==negation-removal== 57065 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #92109: <==uncertain_firing== 57065 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #18430: <==closure== 57065 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #21880: <==closure== 85794 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #38587: <==closure== 74722 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #57065: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #74722: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #85794: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14333: <==uncertain_firing== 85794 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #15147: <==negation-removal== 85794 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #19841: <==uncertain_firing== 18430 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25198: <==negation-removal== 38587 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29344: <==negation-removal== 18430 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #36108: <==negation-removal== 74722 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38758: <==uncertain_firing== 74722 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39081: <==uncertain_firing== 38587 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #70655: <==negation-removal== 21880 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82365: <==uncertain_firing== 21880 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #90983: <==negation-removal== 57065 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #92109: <==uncertain_firing== 57065 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #18430: <==closure== 57065 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #21880: <==closure== 85794 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #38587: <==closure== 74722 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #57065: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #74722: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #85794: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #14333: <==uncertain_firing== 85794 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #15147: <==negation-removal== 85794 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #19841: <==uncertain_firing== 18430 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #25198: <==negation-removal== 38587 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29344: <==negation-removal== 18430 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #36108: <==negation-removal== 74722 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #38758: <==uncertain_firing== 74722 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #39081: <==uncertain_firing== 38587 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #70655: <==negation-removal== 21880 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82365: <==uncertain_firing== 21880 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #90983: <==negation-removal== 57065 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #92109: <==uncertain_firing== 57065 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #27868: <==closure== 81700 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31801: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52846: <==closure== 84612 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #54814: <==closure== 31801 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #81700: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #84612: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #14372: <==negation-removal== 31801 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #24712: <==uncertain_firing== 52846 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #35813: <==negation-removal== 84612 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48279: <==uncertain_firing== 54814 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #51681: <==negation-removal== 54814 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55499: <==uncertain_firing== 84612 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #65033: <==negation-removal== 52846 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65966: <==uncertain_firing== 81700 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #69514: <==negation-removal== 27868 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76332: <==uncertain_firing== 31801 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84332: <==negation-removal== 81700 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #84914: <==uncertain_firing== 27868 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #27868: <==closure== 81700 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31801: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52846: <==closure== 84612 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #54814: <==closure== 31801 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #81700: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #84612: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #14372: <==negation-removal== 31801 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #24712: <==uncertain_firing== 52846 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #35813: <==negation-removal== 84612 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48279: <==uncertain_firing== 54814 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #51681: <==negation-removal== 54814 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55499: <==uncertain_firing== 84612 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #65033: <==negation-removal== 52846 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65966: <==uncertain_firing== 81700 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #69514: <==negation-removal== 27868 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76332: <==uncertain_firing== 31801 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84332: <==negation-removal== 81700 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #84914: <==uncertain_firing== 27868 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #27868: <==closure== 81700 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31801: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #52846: <==closure== 84612 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #54814: <==closure== 31801 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #81700: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #84612: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #14372: <==negation-removal== 31801 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #24712: <==uncertain_firing== 52846 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #35813: <==negation-removal== 84612 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #48279: <==uncertain_firing== 54814 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #51681: <==negation-removal== 54814 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55499: <==uncertain_firing== 84612 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #65033: <==negation-removal== 52846 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65966: <==uncertain_firing== 81700 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #69514: <==negation-removal== 27868 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #76332: <==uncertain_firing== 31801 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84332: <==negation-removal== 81700 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #84914: <==uncertain_firing== 27868 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #16243: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #28987: <==closure== 83859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #31071: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #36054: <==closure== 16243 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #83859: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #91280: <==closure== 31071 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #12953: <==uncertain_firing== 91280 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #14033: <==negation-removal== 83859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #20914: <==negation-removal== 31071 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #27397: <==uncertain_firing== 16243 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #34937: <==uncertain_firing== 31071 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #47980: <==negation-removal== 36054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53463: <==negation-removal== 91280 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #58117: <==negation-removal== 28987 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #63475: <==uncertain_firing== 83859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72818: <==negation-removal== 16243 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #81955: <==uncertain_firing== 36054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82217: <==uncertain_firing== 28987 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #16243: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #28987: <==closure== 83859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #31071: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #36054: <==closure== 16243 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #83859: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #91280: <==closure== 31071 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #12953: <==uncertain_firing== 91280 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #14033: <==negation-removal== 83859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #20914: <==negation-removal== 31071 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #27397: <==uncertain_firing== 16243 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #34937: <==uncertain_firing== 31071 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #47980: <==negation-removal== 36054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53463: <==negation-removal== 91280 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #58117: <==negation-removal== 28987 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #63475: <==uncertain_firing== 83859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72818: <==negation-removal== 16243 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #81955: <==uncertain_firing== 36054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82217: <==uncertain_firing== 28987 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #16243: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #28987: <==closure== 83859 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #31071: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #36054: <==closure== 16243 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #83859: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #91280: <==closure== 31071 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #12953: <==uncertain_firing== 91280 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #14033: <==negation-removal== 83859 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #20914: <==negation-removal== 31071 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #27397: <==uncertain_firing== 16243 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #34937: <==uncertain_firing== 31071 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #47980: <==negation-removal== 36054 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #53463: <==negation-removal== 91280 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #58117: <==negation-removal== 28987 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #63475: <==uncertain_firing== 83859 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72818: <==negation-removal== 16243 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #81955: <==uncertain_firing== 36054 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82217: <==uncertain_firing== 28987 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #11659: <==closure== 49419 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #49419: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #63975: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #75823: <==closure== 88035 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #86187: <==closure== 63975 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88035: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #13197: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #21832: <==uncertain_firing== 75823 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23153: <==negation-removal== 63975 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #25702: <==negation-removal== 49419 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25895: <==uncertain_firing== 63975 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #28413: <==negation-removal== 11659 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #51965: <==negation-removal== 86187 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53238: <==uncertain_firing== 49419 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62017: <==negation-removal== 75823 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72865: <==uncertain_firing== 88035 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75289: <==uncertain_firing== 86187 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #84898: <==negation-removal== 88035 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #11659: <==closure== 49419 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #49419: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #63975: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #75823: <==closure== 88035 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #86187: <==closure== 63975 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88035: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #13197: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #21832: <==uncertain_firing== 75823 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23153: <==negation-removal== 63975 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #25702: <==negation-removal== 49419 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25895: <==uncertain_firing== 63975 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #28413: <==negation-removal== 11659 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #51965: <==negation-removal== 86187 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53238: <==uncertain_firing== 49419 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62017: <==negation-removal== 75823 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72865: <==uncertain_firing== 88035 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75289: <==uncertain_firing== 86187 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #84898: <==negation-removal== 88035 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #11659: <==closure== 49419 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #49419: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #63975: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #75823: <==closure== 88035 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #86187: <==closure== 63975 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88035: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #13197: <==uncertain_firing== 11659 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #21832: <==uncertain_firing== 75823 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23153: <==negation-removal== 63975 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #25702: <==negation-removal== 49419 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25895: <==uncertain_firing== 63975 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #28413: <==negation-removal== 11659 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #51965: <==negation-removal== 86187 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #53238: <==uncertain_firing== 49419 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62017: <==negation-removal== 75823 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72865: <==uncertain_firing== 88035 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75289: <==uncertain_firing== 86187 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #84898: <==negation-removal== 88035 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #31742: <==closure== 45510 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #39243: <==closure== 74464 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #45510: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #55377: <==closure== 73838 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #73838: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #74464: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #14072: <==negation-removal== 39243 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #20136: <==uncertain_firing== 73838 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #24021: <==uncertain_firing== 45510 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #29384: <==negation-removal== 73838 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41745: <==negation-removal== 74464 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47332: <==negation-removal== 55377 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #54604: <==negation-removal== 31742 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55645: <==negation-removal== 45510 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #71091: <==uncertain_firing== 31742 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75362: <==uncertain_firing== 55377 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76717: <==uncertain_firing== 74464 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #87134: <==uncertain_firing== 39243 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #31742: <==closure== 45510 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #39243: <==closure== 74464 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #45510: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #55377: <==closure== 73838 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #73838: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #74464: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #14072: <==negation-removal== 39243 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #20136: <==uncertain_firing== 73838 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #24021: <==uncertain_firing== 45510 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #29384: <==negation-removal== 73838 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41745: <==negation-removal== 74464 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47332: <==negation-removal== 55377 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #54604: <==negation-removal== 31742 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55645: <==negation-removal== 45510 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #71091: <==uncertain_firing== 31742 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75362: <==uncertain_firing== 55377 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76717: <==uncertain_firing== 74464 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #87134: <==uncertain_firing== 39243 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #31742: <==closure== 45510 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #39243: <==closure== 74464 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #45510: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #55377: <==closure== 73838 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #73838: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #74464: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #14072: <==negation-removal== 39243 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #20136: <==uncertain_firing== 73838 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #24021: <==uncertain_firing== 45510 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #29384: <==negation-removal== 73838 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41745: <==negation-removal== 74464 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47332: <==negation-removal== 55377 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #54604: <==negation-removal== 31742 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55645: <==negation-removal== 45510 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #71091: <==uncertain_firing== 31742 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75362: <==uncertain_firing== 55377 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76717: <==uncertain_firing== 74464 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #87134: <==uncertain_firing== 39243 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #12641: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #44727: <==closure== 12641 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #47771: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #65416: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67463: <==closure== 47771 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #82951: <==closure== 65416 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #10657: <==negation-removal== 47771 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #17772: <==negation-removal== 12641 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #20382: <==uncertain_firing== 82951 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23727: <==uncertain_firing== 47771 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #38717: <==negation-removal== 44727 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #42259: <==uncertain_firing== 65416 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45220: <==uncertain_firing== 67463 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #58377: <==uncertain_firing== 44727 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #64397: <==negation-removal== 65416 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69106: <==uncertain_firing== 12641 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70159: <==negation-removal== 67463 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74050: <==negation-removal== 82951 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #12641: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #44727: <==closure== 12641 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #47771: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #65416: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67463: <==closure== 47771 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #82951: <==closure== 65416 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #10657: <==negation-removal== 47771 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #17772: <==negation-removal== 12641 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #20382: <==uncertain_firing== 82951 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23727: <==uncertain_firing== 47771 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #38717: <==negation-removal== 44727 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #42259: <==uncertain_firing== 65416 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45220: <==uncertain_firing== 67463 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #58377: <==uncertain_firing== 44727 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #64397: <==negation-removal== 65416 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69106: <==uncertain_firing== 12641 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70159: <==negation-removal== 67463 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74050: <==negation-removal== 82951 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #12641: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #44727: <==closure== 12641 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #47771: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #65416: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67463: <==closure== 47771 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #82951: <==closure== 65416 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #10657: <==negation-removal== 47771 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #17772: <==negation-removal== 12641 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #20382: <==uncertain_firing== 82951 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23727: <==uncertain_firing== 47771 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #38717: <==negation-removal== 44727 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #42259: <==uncertain_firing== 65416 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45220: <==uncertain_firing== 67463 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #58377: <==uncertain_firing== 44727 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #64397: <==negation-removal== 65416 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #69106: <==uncertain_firing== 12641 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70159: <==negation-removal== 67463 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74050: <==negation-removal== 82951 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #11252: <==closure== 73728 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #17998: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #46590: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #73728: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77091: <==closure== 46590 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #77239: <==closure== 17998 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #11729: <==uncertain_firing== 73728 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #14603: <==negation-removal== 77239 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30254: <==negation-removal== 17998 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30474: <==uncertain_firing== 17998 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #33733: <==negation-removal== 11252 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36571: <==negation-removal== 46590 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42833: <==uncertain_firing== 77091 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45578: <==uncertain_firing== 11252 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #53521: <==negation-removal== 73728 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #56190: <==uncertain_firing== 46590 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #66601: <==uncertain_firing== 77239 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #80668: <==negation-removal== 77091 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #11252: <==closure== 73728 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #17998: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #46590: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #73728: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77091: <==closure== 46590 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #77239: <==closure== 17998 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #11729: <==uncertain_firing== 73728 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #14603: <==negation-removal== 77239 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30254: <==negation-removal== 17998 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30474: <==uncertain_firing== 17998 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #33733: <==negation-removal== 11252 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36571: <==negation-removal== 46590 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42833: <==uncertain_firing== 77091 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45578: <==uncertain_firing== 11252 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #53521: <==negation-removal== 73728 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #56190: <==uncertain_firing== 46590 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #66601: <==uncertain_firing== 77239 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #80668: <==negation-removal== 77091 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #11252: <==closure== 73728 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #17998: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #46590: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #73728: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77091: <==closure== 46590 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #77239: <==closure== 17998 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #11729: <==uncertain_firing== 73728 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #14603: <==negation-removal== 77239 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #30254: <==negation-removal== 17998 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30474: <==uncertain_firing== 17998 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #33733: <==negation-removal== 11252 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36571: <==negation-removal== 46590 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #42833: <==uncertain_firing== 77091 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45578: <==uncertain_firing== 11252 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #53521: <==negation-removal== 73728 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #56190: <==uncertain_firing== 46590 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #66601: <==uncertain_firing== 77239 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #80668: <==negation-removal== 77091 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #15597: <==closure== 51258 (pos)
                    (Pc_survivorat_s_p1)

                    ; #18764: origin
                    (Bb_survivorat_s_p1)

                    ; #37884: origin
                    (Ba_survivorat_s_p1)

                    ; #39846: <==closure== 18764 (pos)
                    (Pb_survivorat_s_p1)

                    ; #51258: origin
                    (Bc_survivorat_s_p1)

                    ; #57469: <==closure== 37884 (pos)
                    (Pa_survivorat_s_p1)

                    ; #16829: <==negation-removal== 18764 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #31431: <==negation-removal== 37884 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47395: <==negation-removal== 15597 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54035: <==negation-removal== 57469 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #80656: <==negation-removal== 39846 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #85916: <==negation-removal== 51258 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #15597: <==closure== 51258 (pos)
                    (Pc_survivorat_s_p1)

                    ; #18764: origin
                    (Bb_survivorat_s_p1)

                    ; #37884: origin
                    (Ba_survivorat_s_p1)

                    ; #39846: <==closure== 18764 (pos)
                    (Pb_survivorat_s_p1)

                    ; #51258: origin
                    (Bc_survivorat_s_p1)

                    ; #57469: <==closure== 37884 (pos)
                    (Pa_survivorat_s_p1)

                    ; #16829: <==negation-removal== 18764 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #31431: <==negation-removal== 37884 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47395: <==negation-removal== 15597 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54035: <==negation-removal== 57469 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #80656: <==negation-removal== 39846 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #85916: <==negation-removal== 51258 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #15597: <==closure== 51258 (pos)
                    (Pc_survivorat_s_p1)

                    ; #18764: origin
                    (Bb_survivorat_s_p1)

                    ; #37884: origin
                    (Ba_survivorat_s_p1)

                    ; #39846: <==closure== 18764 (pos)
                    (Pb_survivorat_s_p1)

                    ; #51258: origin
                    (Bc_survivorat_s_p1)

                    ; #57469: <==closure== 37884 (pos)
                    (Pa_survivorat_s_p1)

                    ; #16829: <==negation-removal== 18764 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #31431: <==negation-removal== 37884 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47395: <==negation-removal== 15597 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54035: <==negation-removal== 57469 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #80656: <==negation-removal== 39846 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #85916: <==negation-removal== 51258 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #43838: origin
                    (Ba_survivorat_s_p2)

                    ; #55597: <==closure== 81132 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70170: origin
                    (Bc_survivorat_s_p2)

                    ; #78318: <==closure== 70170 (pos)
                    (Pc_survivorat_s_p2)

                    ; #81132: origin
                    (Bb_survivorat_s_p2)

                    ; #82950: <==closure== 43838 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13091: <==negation-removal== 55597 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40729: <==negation-removal== 70170 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #42629: <==negation-removal== 81132 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #78999: <==negation-removal== 43838 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #82214: <==negation-removal== 78318 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #86845: <==negation-removal== 82950 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #43838: origin
                    (Ba_survivorat_s_p2)

                    ; #55597: <==closure== 81132 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70170: origin
                    (Bc_survivorat_s_p2)

                    ; #78318: <==closure== 70170 (pos)
                    (Pc_survivorat_s_p2)

                    ; #81132: origin
                    (Bb_survivorat_s_p2)

                    ; #82950: <==closure== 43838 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13091: <==negation-removal== 55597 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40729: <==negation-removal== 70170 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #42629: <==negation-removal== 81132 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #78999: <==negation-removal== 43838 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #82214: <==negation-removal== 78318 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #86845: <==negation-removal== 82950 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #43838: origin
                    (Ba_survivorat_s_p2)

                    ; #55597: <==closure== 81132 (pos)
                    (Pb_survivorat_s_p2)

                    ; #70170: origin
                    (Bc_survivorat_s_p2)

                    ; #78318: <==closure== 70170 (pos)
                    (Pc_survivorat_s_p2)

                    ; #81132: origin
                    (Bb_survivorat_s_p2)

                    ; #82950: <==closure== 43838 (pos)
                    (Pa_survivorat_s_p2)

                    ; #13091: <==negation-removal== 55597 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #40729: <==negation-removal== 70170 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #42629: <==negation-removal== 81132 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #78999: <==negation-removal== 43838 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #82214: <==negation-removal== 78318 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #86845: <==negation-removal== 82950 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #17063: <==closure== 89832 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30205: <==closure== 51239 (pos)
                    (Pc_survivorat_s_p3)

                    ; #51239: origin
                    (Bc_survivorat_s_p3)

                    ; #54352: <==closure== 62919 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62919: origin
                    (Bb_survivorat_s_p3)

                    ; #89832: origin
                    (Ba_survivorat_s_p3)

                    ; #18066: <==negation-removal== 89832 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #18808: <==negation-removal== 17063 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #21419: <==negation-removal== 51239 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #54363: <==negation-removal== 30205 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71267: <==negation-removal== 54352 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #75511: <==negation-removal== 62919 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #17063: <==closure== 89832 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30205: <==closure== 51239 (pos)
                    (Pc_survivorat_s_p3)

                    ; #51239: origin
                    (Bc_survivorat_s_p3)

                    ; #54352: <==closure== 62919 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62919: origin
                    (Bb_survivorat_s_p3)

                    ; #89832: origin
                    (Ba_survivorat_s_p3)

                    ; #18066: <==negation-removal== 89832 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #18808: <==negation-removal== 17063 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #21419: <==negation-removal== 51239 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #54363: <==negation-removal== 30205 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71267: <==negation-removal== 54352 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #75511: <==negation-removal== 62919 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #17063: <==closure== 89832 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30205: <==closure== 51239 (pos)
                    (Pc_survivorat_s_p3)

                    ; #51239: origin
                    (Bc_survivorat_s_p3)

                    ; #54352: <==closure== 62919 (pos)
                    (Pb_survivorat_s_p3)

                    ; #62919: origin
                    (Bb_survivorat_s_p3)

                    ; #89832: origin
                    (Ba_survivorat_s_p3)

                    ; #18066: <==negation-removal== 89832 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #18808: <==negation-removal== 17063 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #21419: <==negation-removal== 51239 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #54363: <==negation-removal== 30205 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71267: <==negation-removal== 54352 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #75511: <==negation-removal== 62919 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #18228: <==closure== 25420 (pos)
                    (Pb_survivorat_s_p4)

                    ; #25420: origin
                    (Bb_survivorat_s_p4)

                    ; #35907: origin
                    (Bc_survivorat_s_p4)

                    ; #48992: <==closure== 35907 (pos)
                    (Pc_survivorat_s_p4)

                    ; #69595: <==closure== 77968 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77968: origin
                    (Ba_survivorat_s_p4)

                    ; #28814: <==negation-removal== 35907 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38339: <==negation-removal== 77968 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #62688: <==negation-removal== 25420 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81383: <==negation-removal== 18228 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90099: <==negation-removal== 69595 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #92393: <==negation-removal== 48992 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #18228: <==closure== 25420 (pos)
                    (Pb_survivorat_s_p4)

                    ; #25420: origin
                    (Bb_survivorat_s_p4)

                    ; #35907: origin
                    (Bc_survivorat_s_p4)

                    ; #48992: <==closure== 35907 (pos)
                    (Pc_survivorat_s_p4)

                    ; #69595: <==closure== 77968 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77968: origin
                    (Ba_survivorat_s_p4)

                    ; #28814: <==negation-removal== 35907 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38339: <==negation-removal== 77968 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #62688: <==negation-removal== 25420 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81383: <==negation-removal== 18228 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90099: <==negation-removal== 69595 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #92393: <==negation-removal== 48992 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #18228: <==closure== 25420 (pos)
                    (Pb_survivorat_s_p4)

                    ; #25420: origin
                    (Bb_survivorat_s_p4)

                    ; #35907: origin
                    (Bc_survivorat_s_p4)

                    ; #48992: <==closure== 35907 (pos)
                    (Pc_survivorat_s_p4)

                    ; #69595: <==closure== 77968 (pos)
                    (Pa_survivorat_s_p4)

                    ; #77968: origin
                    (Ba_survivorat_s_p4)

                    ; #28814: <==negation-removal== 35907 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #38339: <==negation-removal== 77968 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #62688: <==negation-removal== 25420 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81383: <==negation-removal== 18228 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #90099: <==negation-removal== 69595 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #92393: <==negation-removal== 48992 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #12682: origin
                    (Ba_survivorat_s_p5)

                    ; #21407: <==closure== 60677 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29855: <==closure== 12682 (pos)
                    (Pa_survivorat_s_p5)

                    ; #60677: origin
                    (Bc_survivorat_s_p5)

                    ; #69687: origin
                    (Bb_survivorat_s_p5)

                    ; #82749: <==closure== 69687 (pos)
                    (Pb_survivorat_s_p5)

                    ; #15796: <==negation-removal== 12682 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #19695: <==negation-removal== 21407 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #30045: <==negation-removal== 69687 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #38149: <==negation-removal== 82749 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #50821: <==negation-removal== 29855 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #84617: <==negation-removal== 60677 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #12682: origin
                    (Ba_survivorat_s_p5)

                    ; #21407: <==closure== 60677 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29855: <==closure== 12682 (pos)
                    (Pa_survivorat_s_p5)

                    ; #60677: origin
                    (Bc_survivorat_s_p5)

                    ; #69687: origin
                    (Bb_survivorat_s_p5)

                    ; #82749: <==closure== 69687 (pos)
                    (Pb_survivorat_s_p5)

                    ; #15796: <==negation-removal== 12682 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #19695: <==negation-removal== 21407 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #30045: <==negation-removal== 69687 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #38149: <==negation-removal== 82749 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #50821: <==negation-removal== 29855 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #84617: <==negation-removal== 60677 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #12682: origin
                    (Ba_survivorat_s_p5)

                    ; #21407: <==closure== 60677 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29855: <==closure== 12682 (pos)
                    (Pa_survivorat_s_p5)

                    ; #60677: origin
                    (Bc_survivorat_s_p5)

                    ; #69687: origin
                    (Bb_survivorat_s_p5)

                    ; #82749: <==closure== 69687 (pos)
                    (Pb_survivorat_s_p5)

                    ; #15796: <==negation-removal== 12682 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #19695: <==negation-removal== 21407 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #30045: <==negation-removal== 69687 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #38149: <==negation-removal== 82749 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #50821: <==negation-removal== 29855 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #84617: <==negation-removal== 60677 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #11881: origin
                    (Ba_survivorat_s_p6)

                    ; #19881: <==closure== 58354 (pos)
                    (Pb_survivorat_s_p6)

                    ; #29016: origin
                    (Bc_survivorat_s_p6)

                    ; #36952: <==closure== 29016 (pos)
                    (Pc_survivorat_s_p6)

                    ; #43363: <==closure== 11881 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58354: origin
                    (Bb_survivorat_s_p6)

                    ; #10508: <==negation-removal== 11881 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #17830: <==negation-removal== 19881 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #18096: <==negation-removal== 29016 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35543: <==negation-removal== 36952 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56709: <==negation-removal== 43363 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #89628: <==negation-removal== 58354 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #11881: origin
                    (Ba_survivorat_s_p6)

                    ; #19881: <==closure== 58354 (pos)
                    (Pb_survivorat_s_p6)

                    ; #29016: origin
                    (Bc_survivorat_s_p6)

                    ; #36952: <==closure== 29016 (pos)
                    (Pc_survivorat_s_p6)

                    ; #43363: <==closure== 11881 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58354: origin
                    (Bb_survivorat_s_p6)

                    ; #10508: <==negation-removal== 11881 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #17830: <==negation-removal== 19881 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #18096: <==negation-removal== 29016 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35543: <==negation-removal== 36952 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56709: <==negation-removal== 43363 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #89628: <==negation-removal== 58354 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #11881: origin
                    (Ba_survivorat_s_p6)

                    ; #19881: <==closure== 58354 (pos)
                    (Pb_survivorat_s_p6)

                    ; #29016: origin
                    (Bc_survivorat_s_p6)

                    ; #36952: <==closure== 29016 (pos)
                    (Pc_survivorat_s_p6)

                    ; #43363: <==closure== 11881 (pos)
                    (Pa_survivorat_s_p6)

                    ; #58354: origin
                    (Bb_survivorat_s_p6)

                    ; #10508: <==negation-removal== 11881 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #17830: <==negation-removal== 19881 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #18096: <==negation-removal== 29016 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #35543: <==negation-removal== 36952 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56709: <==negation-removal== 43363 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #89628: <==negation-removal== 58354 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #23646: <==closure== 40564 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27576: origin
                    (Ba_survivorat_s_p7)

                    ; #40460: <==closure== 27576 (pos)
                    (Pa_survivorat_s_p7)

                    ; #40564: origin
                    (Bb_survivorat_s_p7)

                    ; #70165: origin
                    (Bc_survivorat_s_p7)

                    ; #70808: <==closure== 70165 (pos)
                    (Pc_survivorat_s_p7)

                    ; #40593: <==negation-removal== 70808 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55675: <==negation-removal== 23646 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #68061: <==negation-removal== 40460 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69758: <==negation-removal== 70165 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #76779: <==negation-removal== 27576 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #80101: <==negation-removal== 40564 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #23646: <==closure== 40564 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27576: origin
                    (Ba_survivorat_s_p7)

                    ; #40460: <==closure== 27576 (pos)
                    (Pa_survivorat_s_p7)

                    ; #40564: origin
                    (Bb_survivorat_s_p7)

                    ; #70165: origin
                    (Bc_survivorat_s_p7)

                    ; #70808: <==closure== 70165 (pos)
                    (Pc_survivorat_s_p7)

                    ; #40593: <==negation-removal== 70808 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55675: <==negation-removal== 23646 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #68061: <==negation-removal== 40460 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69758: <==negation-removal== 70165 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #76779: <==negation-removal== 27576 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #80101: <==negation-removal== 40564 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #23646: <==closure== 40564 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27576: origin
                    (Ba_survivorat_s_p7)

                    ; #40460: <==closure== 27576 (pos)
                    (Pa_survivorat_s_p7)

                    ; #40564: origin
                    (Bb_survivorat_s_p7)

                    ; #70165: origin
                    (Bc_survivorat_s_p7)

                    ; #70808: <==closure== 70165 (pos)
                    (Pc_survivorat_s_p7)

                    ; #40593: <==negation-removal== 70808 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55675: <==negation-removal== 23646 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #68061: <==negation-removal== 40460 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69758: <==negation-removal== 70165 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #76779: <==negation-removal== 27576 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #80101: <==negation-removal== 40564 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #29302: <==closure== 35350 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35350: origin
                    (Bb_survivorat_s_p8)

                    ; #44651: origin
                    (Bc_survivorat_s_p8)

                    ; #45174: <==closure== 44651 (pos)
                    (Pc_survivorat_s_p8)

                    ; #65777: <==closure== 75552 (pos)
                    (Pa_survivorat_s_p8)

                    ; #75552: origin
                    (Ba_survivorat_s_p8)

                    ; #16054: <==negation-removal== 35350 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #20067: <==negation-removal== 65777 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #21293: <==negation-removal== 75552 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #32277: <==negation-removal== 45174 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65695: <==negation-removal== 44651 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #91449: <==negation-removal== 29302 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #29302: <==closure== 35350 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35350: origin
                    (Bb_survivorat_s_p8)

                    ; #44651: origin
                    (Bc_survivorat_s_p8)

                    ; #45174: <==closure== 44651 (pos)
                    (Pc_survivorat_s_p8)

                    ; #65777: <==closure== 75552 (pos)
                    (Pa_survivorat_s_p8)

                    ; #75552: origin
                    (Ba_survivorat_s_p8)

                    ; #16054: <==negation-removal== 35350 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #20067: <==negation-removal== 65777 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #21293: <==negation-removal== 75552 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #32277: <==negation-removal== 45174 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65695: <==negation-removal== 44651 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #91449: <==negation-removal== 29302 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #29302: <==closure== 35350 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35350: origin
                    (Bb_survivorat_s_p8)

                    ; #44651: origin
                    (Bc_survivorat_s_p8)

                    ; #45174: <==closure== 44651 (pos)
                    (Pc_survivorat_s_p8)

                    ; #65777: <==closure== 75552 (pos)
                    (Pa_survivorat_s_p8)

                    ; #75552: origin
                    (Ba_survivorat_s_p8)

                    ; #16054: <==negation-removal== 35350 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #20067: <==negation-removal== 65777 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #21293: <==negation-removal== 75552 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #32277: <==negation-removal== 45174 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #65695: <==negation-removal== 44651 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #91449: <==negation-removal== 29302 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #21720: <==closure== 50846 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47765: <==closure== 60137 (pos)
                    (Pc_survivorat_s_p9)

                    ; #50846: origin
                    (Bb_survivorat_s_p9)

                    ; #60137: origin
                    (Bc_survivorat_s_p9)

                    ; #65378: origin
                    (Ba_survivorat_s_p9)

                    ; #65924: <==closure== 65378 (pos)
                    (Pa_survivorat_s_p9)

                    ; #24941: <==negation-removal== 65924 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42327: <==negation-removal== 65378 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #53331: <==negation-removal== 47765 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53802: <==negation-removal== 60137 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77319: <==negation-removal== 21720 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #98923: <==negation-removal== 50846 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #21720: <==closure== 50846 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47765: <==closure== 60137 (pos)
                    (Pc_survivorat_s_p9)

                    ; #50846: origin
                    (Bb_survivorat_s_p9)

                    ; #60137: origin
                    (Bc_survivorat_s_p9)

                    ; #65378: origin
                    (Ba_survivorat_s_p9)

                    ; #65924: <==closure== 65378 (pos)
                    (Pa_survivorat_s_p9)

                    ; #24941: <==negation-removal== 65924 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42327: <==negation-removal== 65378 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #53331: <==negation-removal== 47765 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53802: <==negation-removal== 60137 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77319: <==negation-removal== 21720 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #98923: <==negation-removal== 50846 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #21720: <==closure== 50846 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47765: <==closure== 60137 (pos)
                    (Pc_survivorat_s_p9)

                    ; #50846: origin
                    (Bb_survivorat_s_p9)

                    ; #60137: origin
                    (Bc_survivorat_s_p9)

                    ; #65378: origin
                    (Ba_survivorat_s_p9)

                    ; #65924: <==closure== 65378 (pos)
                    (Pa_survivorat_s_p9)

                    ; #24941: <==negation-removal== 65924 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #42327: <==negation-removal== 65378 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #53331: <==negation-removal== 47765 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #53802: <==negation-removal== 60137 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #77319: <==negation-removal== 21720 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #98923: <==negation-removal== 50846 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #50726: origin
                    (not_at_a_p1)

                    ; #71188: origin
                    (at_a_p1)

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #50726: origin
                    (not_at_a_p1)

                    ; #68269: origin
                    (at_a_p2)

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #50726: origin
                    (not_at_a_p1)

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #50726: origin
                    (not_at_a_p1)

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #50726: origin
                    (not_at_a_p1)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #50726: origin
                    (not_at_a_p1)

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #49946: origin
                    (at_a_p7)

                    ; #50726: origin
                    (not_at_a_p1)

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #50726: origin
                    (not_at_a_p1)

                    ; #90667: origin
                    (at_a_p8)

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #45281: origin
                    (at_a_p9)

                    ; #50726: origin
                    (not_at_a_p1)

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))

                    ; #71188: <==negation-removal== 50726 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #39776: origin
                    (not_at_a_p2)

                    ; #71188: origin
                    (at_a_p1)

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #39776: origin
                    (not_at_a_p2)

                    ; #68269: origin
                    (at_a_p2)

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #39776: origin
                    (not_at_a_p2)

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #39776: origin
                    (not_at_a_p2)

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #39776: origin
                    (not_at_a_p2)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #39776: origin
                    (not_at_a_p2)

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #39776: origin
                    (not_at_a_p2)

                    ; #49946: origin
                    (at_a_p7)

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #39776: origin
                    (not_at_a_p2)

                    ; #90667: origin
                    (at_a_p8)

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #39776: origin
                    (not_at_a_p2)

                    ; #45281: origin
                    (at_a_p9)

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))

                    ; #68269: <==negation-removal== 39776 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #71188: origin
                    (at_a_p1)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #68269: origin
                    (at_a_p2)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #75089: origin
                    (not_at_a_p3)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #49946: origin
                    (at_a_p7)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #75089: origin
                    (not_at_a_p3)

                    ; #90667: origin
                    (at_a_p8)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #45281: origin
                    (at_a_p9)

                    ; #75089: origin
                    (not_at_a_p3)

                    ; #12987: <==negation-removal== 75089 (pos)
                    (not (at_a_p3))

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #53808: origin
                    (not_at_a_p4)

                    ; #71188: origin
                    (at_a_p1)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #53808: origin
                    (not_at_a_p4)

                    ; #68269: origin
                    (at_a_p2)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #53808: origin
                    (not_at_a_p4)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #53808: origin
                    (not_at_a_p4)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #53808: origin
                    (not_at_a_p4)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #53808: origin
                    (not_at_a_p4)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #49946: origin
                    (at_a_p7)

                    ; #53808: origin
                    (not_at_a_p4)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #53808: origin
                    (not_at_a_p4)

                    ; #90667: origin
                    (at_a_p8)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #45281: origin
                    (at_a_p9)

                    ; #53808: origin
                    (not_at_a_p4)

                    ; #37397: <==negation-removal== 53808 (pos)
                    (not (at_a_p4))

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #71188: origin
                    (at_a_p1)

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #68269: origin
                    (at_a_p2)

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #12987: origin
                    (at_a_p3)

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #37397: origin
                    (at_a_p4)

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #29754: origin
                    (at_a_p6)

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #49946: origin
                    (at_a_p7)

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #90667: origin
                    (at_a_p8)

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #11346: origin
                    (not_at_a_p5)

                    ; #45281: origin
                    (at_a_p9)

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))

                    ; #79900: <==negation-removal== 11346 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #57230: origin
                    (not_at_a_p6)

                    ; #71188: origin
                    (at_a_p1)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #57230: origin
                    (not_at_a_p6)

                    ; #68269: origin
                    (at_a_p2)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #57230: origin
                    (not_at_a_p6)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #57230: origin
                    (not_at_a_p6)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #57230: origin
                    (not_at_a_p6)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #57230: origin
                    (not_at_a_p6)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #49946: origin
                    (at_a_p7)

                    ; #57230: origin
                    (not_at_a_p6)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #57230: origin
                    (not_at_a_p6)

                    ; #90667: origin
                    (at_a_p8)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #45281: origin
                    (at_a_p9)

                    ; #57230: origin
                    (not_at_a_p6)

                    ; #29754: <==negation-removal== 57230 (pos)
                    (not (at_a_p6))

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #53233: origin
                    (not_at_a_p7)

                    ; #71188: origin
                    (at_a_p1)

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #53233: origin
                    (not_at_a_p7)

                    ; #68269: origin
                    (at_a_p2)

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #53233: origin
                    (not_at_a_p7)

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #53233: origin
                    (not_at_a_p7)

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #53233: origin
                    (not_at_a_p7)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #53233: origin
                    (not_at_a_p7)

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #49946: origin
                    (at_a_p7)

                    ; #53233: origin
                    (not_at_a_p7)

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #53233: origin
                    (not_at_a_p7)

                    ; #90667: origin
                    (at_a_p8)

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #45281: origin
                    (at_a_p9)

                    ; #53233: origin
                    (not_at_a_p7)

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))

                    ; #49946: <==negation-removal== 53233 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #40089: origin
                    (not_at_a_p8)

                    ; #71188: origin
                    (at_a_p1)

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #40089: origin
                    (not_at_a_p8)

                    ; #68269: origin
                    (at_a_p2)

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #40089: origin
                    (not_at_a_p8)

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #40089: origin
                    (not_at_a_p8)

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #40089: origin
                    (not_at_a_p8)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #40089: origin
                    (not_at_a_p8)

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #40089: origin
                    (not_at_a_p8)

                    ; #49946: origin
                    (at_a_p7)

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #40089: origin
                    (not_at_a_p8)

                    ; #90667: origin
                    (at_a_p8)

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #40089: origin
                    (not_at_a_p8)

                    ; #45281: origin
                    (at_a_p9)

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))

                    ; #90667: <==negation-removal== 40089 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #48392: origin
                    (not_at_a_p9)

                    ; #71188: origin
                    (at_a_p1)

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))

                    ; #50726: <==negation-removal== 71188 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #48392: origin
                    (not_at_a_p9)

                    ; #68269: origin
                    (at_a_p2)

                    ; #39776: <==negation-removal== 68269 (pos)
                    (not (not_at_a_p2))

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #12987: origin
                    (at_a_p3)

                    ; #48392: origin
                    (not_at_a_p9)

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))

                    ; #75089: <==negation-removal== 12987 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #37397: origin
                    (at_a_p4)

                    ; #48392: origin
                    (not_at_a_p9)

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))

                    ; #53808: <==negation-removal== 37397 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #48392: origin
                    (not_at_a_p9)

                    ; #79900: origin
                    (at_a_p5)

                    ; #11346: <==negation-removal== 79900 (pos)
                    (not (not_at_a_p5))

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #29754: origin
                    (at_a_p6)

                    ; #48392: origin
                    (not_at_a_p9)

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))

                    ; #57230: <==negation-removal== 29754 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #48392: origin
                    (not_at_a_p9)

                    ; #49946: origin
                    (at_a_p7)

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))

                    ; #53233: <==negation-removal== 49946 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #48392: origin
                    (not_at_a_p9)

                    ; #90667: origin
                    (at_a_p8)

                    ; #40089: <==negation-removal== 90667 (pos)
                    (not (not_at_a_p8))

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #45281: origin
                    (at_a_p9)

                    ; #48392: origin
                    (not_at_a_p9)

                    ; #45281: <==negation-removal== 48392 (pos)
                    (not (at_a_p9))

                    ; #48392: <==negation-removal== 45281 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #52856: origin
                    (at_b_p1)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #78125: origin
                    (at_b_p2)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #29391: origin
                    (at_b_p3)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #74167: origin
                    (at_b_p4)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #55345: origin
                    (at_b_p5)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #48445: origin
                    (at_b_p6)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #36901: origin
                    (at_b_p7)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #26315: origin
                    (at_b_p9)

                    ; #85037: origin
                    (not_at_b_p1)

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))

                    ; #52856: <==negation-removal== 85037 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #52856: origin
                    (at_b_p1)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #71446: origin
                    (not_at_b_p2)

                    ; #78125: origin
                    (at_b_p2)

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #29391: origin
                    (at_b_p3)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #71446: origin
                    (not_at_b_p2)

                    ; #74167: origin
                    (at_b_p4)

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #55345: origin
                    (at_b_p5)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #48445: origin
                    (at_b_p6)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #36901: origin
                    (at_b_p7)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #26315: origin
                    (at_b_p9)

                    ; #71446: origin
                    (not_at_b_p2)

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))

                    ; #78125: <==negation-removal== 71446 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #52856: origin
                    (at_b_p1)

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #78125: origin
                    (at_b_p2)

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #29391: origin
                    (at_b_p3)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #74167: origin
                    (at_b_p4)

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #55345: origin
                    (at_b_p5)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #48445: origin
                    (at_b_p6)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #36901: origin
                    (at_b_p7)

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #19788: origin
                    (not_at_b_p3)

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #19788: origin
                    (not_at_b_p3)

                    ; #26315: origin
                    (at_b_p9)

                    ; #29391: <==negation-removal== 19788 (pos)
                    (not (at_b_p3))

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #52856: origin
                    (at_b_p1)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #67438: origin
                    (not_at_b_p4)

                    ; #78125: origin
                    (at_b_p2)

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #29391: origin
                    (at_b_p3)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #67438: origin
                    (not_at_b_p4)

                    ; #74167: origin
                    (at_b_p4)

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #55345: origin
                    (at_b_p5)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #48445: origin
                    (at_b_p6)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #36901: origin
                    (at_b_p7)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #26315: origin
                    (at_b_p9)

                    ; #67438: origin
                    (not_at_b_p4)

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))

                    ; #74167: <==negation-removal== 67438 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #52856: origin
                    (at_b_p1)

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #78125: origin
                    (at_b_p2)

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #29391: origin
                    (at_b_p3)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #74167: origin
                    (at_b_p4)

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #55345: origin
                    (at_b_p5)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #48445: origin
                    (at_b_p6)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #36901: origin
                    (at_b_p7)

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #22419: origin
                    (not_at_b_p5)

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #22419: origin
                    (not_at_b_p5)

                    ; #26315: origin
                    (at_b_p9)

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))

                    ; #55345: <==negation-removal== 22419 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #52856: origin
                    (at_b_p1)

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #78125: origin
                    (at_b_p2)

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #29391: origin
                    (at_b_p3)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #74167: origin
                    (at_b_p4)

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #55345: origin
                    (at_b_p5)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #48445: origin
                    (at_b_p6)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #36901: origin
                    (at_b_p7)

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #16813: origin
                    (at_b_p8)

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #15984: origin
                    (not_at_b_p6)

                    ; #26315: origin
                    (at_b_p9)

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))

                    ; #48445: <==negation-removal== 15984 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #52856: origin
                    (at_b_p1)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #75775: origin
                    (not_at_b_p7)

                    ; #78125: origin
                    (at_b_p2)

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #29391: origin
                    (at_b_p3)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #74167: origin
                    (at_b_p4)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #55345: origin
                    (at_b_p5)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #48445: origin
                    (at_b_p6)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #36901: origin
                    (at_b_p7)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #26315: origin
                    (at_b_p9)

                    ; #75775: origin
                    (not_at_b_p7)

                    ; #36901: <==negation-removal== 75775 (pos)
                    (not (at_b_p7))

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #52856: origin
                    (at_b_p1)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #77464: origin
                    (not_at_b_p8)

                    ; #78125: origin
                    (at_b_p2)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #29391: origin
                    (at_b_p3)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #74167: origin
                    (at_b_p4)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #55345: origin
                    (at_b_p5)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #48445: origin
                    (at_b_p6)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #36901: origin
                    (at_b_p7)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #26315: origin
                    (at_b_p9)

                    ; #77464: origin
                    (not_at_b_p8)

                    ; #16813: <==negation-removal== 77464 (pos)
                    (not (at_b_p8))

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #40914: origin
                    (not_at_b_p9)

                    ; #52856: origin
                    (at_b_p1)

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))

                    ; #85037: <==negation-removal== 52856 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #40914: origin
                    (not_at_b_p9)

                    ; #78125: origin
                    (at_b_p2)

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))

                    ; #71446: <==negation-removal== 78125 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #29391: origin
                    (at_b_p3)

                    ; #40914: origin
                    (not_at_b_p9)

                    ; #19788: <==negation-removal== 29391 (pos)
                    (not (not_at_b_p3))

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #40914: origin
                    (not_at_b_p9)

                    ; #74167: origin
                    (at_b_p4)

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))

                    ; #67438: <==negation-removal== 74167 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #40914: origin
                    (not_at_b_p9)

                    ; #55345: origin
                    (at_b_p5)

                    ; #22419: <==negation-removal== 55345 (pos)
                    (not (not_at_b_p5))

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #40914: origin
                    (not_at_b_p9)

                    ; #48445: origin
                    (at_b_p6)

                    ; #15984: <==negation-removal== 48445 (pos)
                    (not (not_at_b_p6))

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #36901: origin
                    (at_b_p7)

                    ; #40914: origin
                    (not_at_b_p9)

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))

                    ; #75775: <==negation-removal== 36901 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #16813: origin
                    (at_b_p8)

                    ; #40914: origin
                    (not_at_b_p9)

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))

                    ; #77464: <==negation-removal== 16813 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #26315: origin
                    (at_b_p9)

                    ; #40914: origin
                    (not_at_b_p9)

                    ; #26315: <==negation-removal== 40914 (pos)
                    (not (at_b_p9))

                    ; #40914: <==negation-removal== 26315 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #86759: origin
                    (not_at_c_p1)

                    ; #87236: origin
                    (at_c_p1)

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #74707: origin
                    (at_c_p3)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #86759: origin
                    (not_at_c_p1)

                    ; #92935: origin
                    (at_c_p4)

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #61788: origin
                    (at_c_p5)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #63610: origin
                    (at_c_p8)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #86759: origin
                    (not_at_c_p1)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #87236: <==negation-removal== 86759 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #87236: origin
                    (at_c_p1)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #14855: origin
                    (not_at_c_p2)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #74707: origin
                    (at_c_p3)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #92935: origin
                    (at_c_p4)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #61788: origin
                    (at_c_p5)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #27848: origin
                    (at_c_p6)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #15215: origin
                    (at_c_p7)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #63610: origin
                    (at_c_p8)

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #14855: origin
                    (not_at_c_p2)

                    ; #23665: origin
                    (at_c_p9)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #13962: <==negation-removal== 14855 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #36501: origin
                    (not_at_c_p3)

                    ; #87236: origin
                    (at_c_p1)

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #36501: origin
                    (not_at_c_p3)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #36501: origin
                    (not_at_c_p3)

                    ; #74707: origin
                    (at_c_p3)

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #36501: origin
                    (not_at_c_p3)

                    ; #92935: origin
                    (at_c_p4)

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #36501: origin
                    (not_at_c_p3)

                    ; #61788: origin
                    (at_c_p5)

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #36501: origin
                    (not_at_c_p3)

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #36501: origin
                    (not_at_c_p3)

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #36501: origin
                    (not_at_c_p3)

                    ; #63610: origin
                    (at_c_p8)

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #36501: origin
                    (not_at_c_p3)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #74707: <==negation-removal== 36501 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #80622: origin
                    (not_at_c_p4)

                    ; #87236: origin
                    (at_c_p1)

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #74707: origin
                    (at_c_p3)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #80622: origin
                    (not_at_c_p4)

                    ; #92935: origin
                    (at_c_p4)

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #61788: origin
                    (at_c_p5)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #63610: origin
                    (at_c_p8)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #80622: origin
                    (not_at_c_p4)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #92935: <==negation-removal== 80622 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #87236: origin
                    (at_c_p1)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #74707: origin
                    (at_c_p3)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #88569: origin
                    (not_at_c_p5)

                    ; #92935: origin
                    (at_c_p4)

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #61788: origin
                    (at_c_p5)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #63610: origin
                    (at_c_p8)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #88569: origin
                    (not_at_c_p5)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #61788: <==negation-removal== 88569 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #43956: origin
                    (not_at_c_p6)

                    ; #87236: origin
                    (at_c_p1)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #43956: origin
                    (not_at_c_p6)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #43956: origin
                    (not_at_c_p6)

                    ; #74707: origin
                    (at_c_p3)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #43956: origin
                    (not_at_c_p6)

                    ; #92935: origin
                    (at_c_p4)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #43956: origin
                    (not_at_c_p6)

                    ; #61788: origin
                    (at_c_p5)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #43956: origin
                    (not_at_c_p6)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #43956: origin
                    (not_at_c_p6)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #43956: origin
                    (not_at_c_p6)

                    ; #63610: origin
                    (at_c_p8)

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #43956: origin
                    (not_at_c_p6)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #27848: <==negation-removal== 43956 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #36156: origin
                    (not_at_c_p7)

                    ; #87236: origin
                    (at_c_p1)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #36156: origin
                    (not_at_c_p7)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #36156: origin
                    (not_at_c_p7)

                    ; #74707: origin
                    (at_c_p3)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #36156: origin
                    (not_at_c_p7)

                    ; #92935: origin
                    (at_c_p4)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #36156: origin
                    (not_at_c_p7)

                    ; #61788: origin
                    (at_c_p5)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #36156: origin
                    (not_at_c_p7)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #36156: origin
                    (not_at_c_p7)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #36156: origin
                    (not_at_c_p7)

                    ; #63610: origin
                    (at_c_p8)

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #36156: origin
                    (not_at_c_p7)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #15215: <==negation-removal== 36156 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #87236: origin
                    (at_c_p1)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #13962: origin
                    (at_c_p2)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #74707: origin
                    (at_c_p3)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #90804: origin
                    (not_at_c_p8)

                    ; #92935: origin
                    (at_c_p4)

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #61788: origin
                    (at_c_p5)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #27848: origin
                    (at_c_p6)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #15215: origin
                    (at_c_p7)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #63610: origin
                    (at_c_p8)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #23665: origin
                    (at_c_p9)

                    ; #90804: origin
                    (not_at_c_p8)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #63610: <==negation-removal== 90804 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #87236: origin
                    (at_c_p1)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #86759: <==negation-removal== 87236 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #13962: origin
                    (at_c_p2)

                    ; #14855: <==negation-removal== 13962 (pos)
                    (not (not_at_c_p2))

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #74707: origin
                    (at_c_p3)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #36501: <==negation-removal== 74707 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #92935: origin
                    (at_c_p4)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #80622: <==negation-removal== 92935 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #61788: origin
                    (at_c_p5)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #88569: <==negation-removal== 61788 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #27848: origin
                    (at_c_p6)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #43956: <==negation-removal== 27848 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #15215: origin
                    (at_c_p7)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #36156: <==negation-removal== 15215 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #63610: origin
                    (at_c_p8)

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))

                    ; #90804: <==negation-removal== 63610 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #11238: origin
                    (not_at_c_p9)

                    ; #23665: origin
                    (at_c_p9)

                    ; #11238: <==negation-removal== 23665 (pos)
                    (not (not_at_c_p9))

                    ; #23665: <==negation-removal== 11238 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #26764: <==closure== 97863 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #31240: <==commonly_known== 39743 (neg)
                    (Pc_checked_p1)

                    ; #42092: <==closure== 98926 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #48627: <==commonly_known== 52546 (pos)
                    (Ba_checked_p1)

                    ; #50293: <==commonly_known== 39743 (neg)
                    (Pa_checked_p1)

                    ; #52546: origin
                    (checked_p1)

                    ; #54943: <==commonly_known== 52546 (pos)
                    (Bb_checked_p1)

                    ; #54967: <==commonly_known== 39743 (neg)
                    (Pb_checked_p1)

                    ; #66315: <==commonly_known== 52546 (pos)
                    (Bc_checked_p1)

                    ; #97863: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #98926: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #13597: <==negation-removal== 54967 (pos)
                    (not (Bb_not_checked_p1))

                    ; #14710: <==negation-removal== 97863 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #16568: <==negation-removal== 26764 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #19801: <==negation-removal== 66315 (pos)
                    (not (Pc_not_checked_p1))

                    ; #33561: <==uncertain_firing== 26764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #36531: <==uncertain_firing== 97863 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #36942: <==negation-removal== 31240 (pos)
                    (not (Bc_not_checked_p1))

                    ; #39743: <==negation-removal== 52546 (pos)
                    (not (not_checked_p1))

                    ; #49298: <==negation-removal== 48627 (pos)
                    (not (Pa_not_checked_p1))

                    ; #51308: <==uncertain_firing== 42092 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #62648: <==negation-removal== 50293 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73445: <==negation-removal== 54943 (pos)
                    (not (Pb_not_checked_p1))

                    ; #74440: <==negation-removal== 42092 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #85409: <==negation-removal== 98926 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #87592: <==uncertain_firing== 98926 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20644: <==commonly_known== 20413 (neg)
                    (Pa_checked_p2)

                    ; #20754: <==commonly_known== 20413 (neg)
                    (Pb_checked_p2)

                    ; #25636: <==commonly_known== 50161 (pos)
                    (Bb_checked_p2)

                    ; #25802: <==commonly_known== 50161 (pos)
                    (Ba_checked_p2)

                    ; #32409: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #35309: <==closure== 47258 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #47258: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #50161: origin
                    (checked_p2)

                    ; #63244: <==closure== 32409 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #77347: <==commonly_known== 20413 (neg)
                    (Pc_checked_p2)

                    ; #87140: <==commonly_known== 50161 (pos)
                    (Bc_checked_p2)

                    ; #20413: <==negation-removal== 50161 (pos)
                    (not (not_checked_p2))

                    ; #21988: <==negation-removal== 25802 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24954: <==negation-removal== 32409 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #27832: <==negation-removal== 87140 (pos)
                    (not (Pc_not_checked_p2))

                    ; #32282: <==uncertain_firing== 63244 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #32360: <==uncertain_firing== 32409 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #37539: <==negation-removal== 20644 (pos)
                    (not (Ba_not_checked_p2))

                    ; #38626: <==negation-removal== 47258 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #47923: <==negation-removal== 25636 (pos)
                    (not (Pb_not_checked_p2))

                    ; #51955: <==negation-removal== 20754 (pos)
                    (not (Bb_not_checked_p2))

                    ; #69195: <==uncertain_firing== 47258 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70641: <==negation-removal== 63244 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #75389: <==negation-removal== 35309 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83635: <==negation-removal== 77347 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90710: <==uncertain_firing== 35309 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12960: <==commonly_known== 45179 (neg)
                    (Pc_checked_p3)

                    ; #19929: origin
                    (checked_p3)

                    ; #35447: <==closure== 52715 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #39953: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #49929: <==closure== 39953 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #50732: <==commonly_known== 19929 (pos)
                    (Ba_checked_p3)

                    ; #52715: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #53326: <==commonly_known== 45179 (neg)
                    (Pb_checked_p3)

                    ; #68089: <==commonly_known== 19929 (pos)
                    (Bb_checked_p3)

                    ; #82241: <==commonly_known== 19929 (pos)
                    (Bc_checked_p3)

                    ; #92878: <==commonly_known== 45179 (neg)
                    (Pa_checked_p3)

                    ; #14449: <==negation-removal== 50732 (pos)
                    (not (Pa_not_checked_p3))

                    ; #18268: <==negation-removal== 12960 (pos)
                    (not (Bc_not_checked_p3))

                    ; #23079: <==negation-removal== 52715 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #27165: <==negation-removal== 35447 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #36623: <==negation-removal== 82241 (pos)
                    (not (Pc_not_checked_p3))

                    ; #45179: <==negation-removal== 19929 (pos)
                    (not (not_checked_p3))

                    ; #51961: <==uncertain_firing== 49929 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #54125: <==negation-removal== 49929 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #56389: <==uncertain_firing== 52715 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #62817: <==negation-removal== 53326 (pos)
                    (not (Bb_not_checked_p3))

                    ; #63039: <==negation-removal== 39953 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #65122: <==uncertain_firing== 35447 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #84522: <==uncertain_firing== 39953 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #84702: <==negation-removal== 92878 (pos)
                    (not (Ba_not_checked_p3))

                    ; #88250: <==negation-removal== 68089 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #27782: <==closure== 80251 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #27942: <==commonly_known== 67009 (pos)
                    (Bb_checked_p4)

                    ; #29309: <==commonly_known== 22468 (neg)
                    (Pc_checked_p4)

                    ; #31420: <==commonly_known== 67009 (pos)
                    (Ba_checked_p4)

                    ; #44754: <==commonly_known== 22468 (neg)
                    (Pb_checked_p4)

                    ; #59564: <==closure== 81497 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #67009: origin
                    (checked_p4)

                    ; #75007: <==commonly_known== 22468 (neg)
                    (Pa_checked_p4)

                    ; #79596: <==commonly_known== 67009 (pos)
                    (Bc_checked_p4)

                    ; #80251: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #81497: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #11855: <==negation-removal== 31420 (pos)
                    (not (Pa_not_checked_p4))

                    ; #12516: <==negation-removal== 80251 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #16462: <==uncertain_firing== 59564 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #22468: <==negation-removal== 67009 (pos)
                    (not (not_checked_p4))

                    ; #23756: <==negation-removal== 75007 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32581: <==negation-removal== 44754 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37209: <==negation-removal== 27942 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37562: <==negation-removal== 81497 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #52389: <==negation-removal== 29309 (pos)
                    (not (Bc_not_checked_p4))

                    ; #57949: <==negation-removal== 59564 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #66127: <==negation-removal== 79596 (pos)
                    (not (Pc_not_checked_p4))

                    ; #73970: <==negation-removal== 27782 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #78404: <==uncertain_firing== 80251 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #80789: <==uncertain_firing== 81497 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #85874: <==uncertain_firing== 27782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11788: <==commonly_known== 28458 (pos)
                    (Bc_checked_p5)

                    ; #14584: <==closure== 27820 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #27820: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #28458: origin
                    (checked_p5)

                    ; #38966: <==closure== 67988 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #41284: <==commonly_known== 42331 (neg)
                    (Pb_checked_p5)

                    ; #54127: <==commonly_known== 42331 (neg)
                    (Pa_checked_p5)

                    ; #60418: <==commonly_known== 28458 (pos)
                    (Ba_checked_p5)

                    ; #67988: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #79303: <==commonly_known== 42331 (neg)
                    (Pc_checked_p5)

                    ; #88673: <==commonly_known== 28458 (pos)
                    (Bb_checked_p5)

                    ; #18335: <==negation-removal== 38966 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18791: <==uncertain_firing== 67988 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #21029: <==uncertain_firing== 14584 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #32560: <==negation-removal== 54127 (pos)
                    (not (Ba_not_checked_p5))

                    ; #34165: <==negation-removal== 11788 (pos)
                    (not (Pc_not_checked_p5))

                    ; #35942: <==negation-removal== 14584 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #38162: <==negation-removal== 67988 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #39983: <==negation-removal== 88673 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42331: <==negation-removal== 28458 (pos)
                    (not (not_checked_p5))

                    ; #52191: <==negation-removal== 41284 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62577: <==negation-removal== 60418 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67536: <==negation-removal== 79303 (pos)
                    (not (Bc_not_checked_p5))

                    ; #68083: <==negation-removal== 27820 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #78796: <==uncertain_firing== 38966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #79033: <==uncertain_firing== 27820 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14613: origin
                    (checked_p6)

                    ; #20411: <==commonly_known== 14613 (pos)
                    (Bb_checked_p6)

                    ; #31736: <==closure== 43803 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #32370: <==commonly_known== 82579 (neg)
                    (Pc_checked_p6)

                    ; #39790: <==commonly_known== 14613 (pos)
                    (Bc_checked_p6)

                    ; #43803: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #51050: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #51169: <==closure== 51050 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #51807: <==commonly_known== 14613 (pos)
                    (Ba_checked_p6)

                    ; #53184: <==commonly_known== 82579 (neg)
                    (Pb_checked_p6)

                    ; #54554: <==commonly_known== 82579 (neg)
                    (Pa_checked_p6)

                    ; #10545: <==negation-removal== 51050 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14961: <==negation-removal== 51169 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #19684: <==negation-removal== 54554 (pos)
                    (not (Ba_not_checked_p6))

                    ; #20757: <==uncertain_firing== 31736 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #26377: <==negation-removal== 32370 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43952: <==negation-removal== 20411 (pos)
                    (not (Pb_not_checked_p6))

                    ; #49633: <==uncertain_firing== 51050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51392: <==negation-removal== 31736 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #52374: <==uncertain_firing== 51169 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #55797: <==uncertain_firing== 43803 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #57079: <==negation-removal== 51807 (pos)
                    (not (Pa_not_checked_p6))

                    ; #77643: <==negation-removal== 53184 (pos)
                    (not (Bb_not_checked_p6))

                    ; #79331: <==negation-removal== 43803 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #82579: <==negation-removal== 14613 (pos)
                    (not (not_checked_p6))

                    ; #85790: <==negation-removal== 39790 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16891: <==commonly_known== 85410 (pos)
                    (Bb_checked_p7)

                    ; #16930: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #22237: <==commonly_known== 10458 (neg)
                    (Pa_checked_p7)

                    ; #22410: <==closure== 76778 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #47477: <==closure== 16930 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #57267: <==commonly_known== 85410 (pos)
                    (Bc_checked_p7)

                    ; #65038: <==commonly_known== 85410 (pos)
                    (Ba_checked_p7)

                    ; #76778: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #78977: <==commonly_known== 10458 (neg)
                    (Pb_checked_p7)

                    ; #85410: origin
                    (checked_p7)

                    ; #90826: <==commonly_known== 10458 (neg)
                    (Pc_checked_p7)

                    ; #10458: <==negation-removal== 85410 (pos)
                    (not (not_checked_p7))

                    ; #17187: <==negation-removal== 22237 (pos)
                    (not (Ba_not_checked_p7))

                    ; #22528: <==negation-removal== 47477 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #31415: <==uncertain_firing== 22410 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #33789: <==negation-removal== 78977 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34405: <==negation-removal== 22410 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #41953: <==negation-removal== 57267 (pos)
                    (not (Pc_not_checked_p7))

                    ; #43215: <==uncertain_firing== 16930 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47232: <==negation-removal== 76778 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #57337: <==negation-removal== 16891 (pos)
                    (not (Pb_not_checked_p7))

                    ; #67082: <==uncertain_firing== 76778 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #69635: <==negation-removal== 90826 (pos)
                    (not (Bc_not_checked_p7))

                    ; #81342: <==uncertain_firing== 47477 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #85049: <==negation-removal== 16930 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #88585: <==negation-removal== 65038 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14538: <==commonly_known== 41262 (neg)
                    (Pc_checked_p8)

                    ; #32220: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #36442: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #45793: <==commonly_known== 54725 (pos)
                    (Bc_checked_p8)

                    ; #54725: origin
                    (checked_p8)

                    ; #57195: <==closure== 36442 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #59511: <==commonly_known== 41262 (neg)
                    (Pa_checked_p8)

                    ; #68575: <==closure== 32220 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #82461: <==commonly_known== 54725 (pos)
                    (Bb_checked_p8)

                    ; #83627: <==commonly_known== 41262 (neg)
                    (Pb_checked_p8)

                    ; #85277: <==commonly_known== 54725 (pos)
                    (Ba_checked_p8)

                    ; #16269: <==negation-removal== 36442 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #17902: <==uncertain_firing== 68575 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #31498: <==negation-removal== 82461 (pos)
                    (not (Pb_not_checked_p8))

                    ; #39790: <==negation-removal== 68575 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #41262: <==negation-removal== 54725 (pos)
                    (not (not_checked_p8))

                    ; #60517: <==negation-removal== 14538 (pos)
                    (not (Bc_not_checked_p8))

                    ; #61919: <==negation-removal== 85277 (pos)
                    (not (Pa_not_checked_p8))

                    ; #70098: <==negation-removal== 57195 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #72658: <==uncertain_firing== 36442 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77362: <==negation-removal== 32220 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #78230: <==uncertain_firing== 57195 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #80783: <==negation-removal== 83627 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89046: <==negation-removal== 45793 (pos)
                    (not (Pc_not_checked_p8))

                    ; #91282: <==uncertain_firing== 32220 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #91299: <==negation-removal== 59511 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10062: origin
                    (checked_p9)

                    ; #19090: <==commonly_known== 10062 (pos)
                    (Bb_checked_p9)

                    ; #19892: <==commonly_known== 10062 (pos)
                    (Bc_checked_p9)

                    ; #22352: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #31428: <==commonly_known== 41164 (neg)
                    (Pc_checked_p9)

                    ; #39781: <==closure== 65077 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #41936: <==commonly_known== 41164 (neg)
                    (Pb_checked_p9)

                    ; #53979: <==closure== 22352 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #64163: <==commonly_known== 41164 (neg)
                    (Pa_checked_p9)

                    ; #65077: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #71258: <==commonly_known== 10062 (pos)
                    (Ba_checked_p9)

                    ; #21284: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22465: <==negation-removal== 64163 (pos)
                    (not (Ba_not_checked_p9))

                    ; #36714: <==negation-removal== 31428 (pos)
                    (not (Bc_not_checked_p9))

                    ; #37220: <==negation-removal== 19090 (pos)
                    (not (Pb_not_checked_p9))

                    ; #41164: <==negation-removal== 10062 (pos)
                    (not (not_checked_p9))

                    ; #46998: <==negation-removal== 39781 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #48042: <==negation-removal== 22352 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #52321: <==uncertain_firing== 22352 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #52896: <==negation-removal== 53979 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #70048: <==negation-removal== 71258 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77549: <==negation-removal== 65077 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #79123: <==uncertain_firing== 53979 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #79761: <==uncertain_firing== 39781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #86482: <==uncertain_firing== 65077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #86515: <==negation-removal== 19892 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #27767: <==closure== 48566 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #31240: <==commonly_known== 39743 (neg)
                    (Pc_checked_p1)

                    ; #42504: <==closure== 50554 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #48566: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #48627: <==commonly_known== 52546 (pos)
                    (Ba_checked_p1)

                    ; #50293: <==commonly_known== 39743 (neg)
                    (Pa_checked_p1)

                    ; #50554: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #52546: origin
                    (checked_p1)

                    ; #54943: <==commonly_known== 52546 (pos)
                    (Bb_checked_p1)

                    ; #54967: <==commonly_known== 39743 (neg)
                    (Pb_checked_p1)

                    ; #66315: <==commonly_known== 52546 (pos)
                    (Bc_checked_p1)

                    ; #13597: <==negation-removal== 54967 (pos)
                    (not (Bb_not_checked_p1))

                    ; #18535: <==negation-removal== 27767 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #19801: <==negation-removal== 66315 (pos)
                    (not (Pc_not_checked_p1))

                    ; #36655: <==uncertain_firing== 50554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #36942: <==negation-removal== 31240 (pos)
                    (not (Bc_not_checked_p1))

                    ; #37348: <==uncertain_firing== 48566 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #39743: <==negation-removal== 52546 (pos)
                    (not (not_checked_p1))

                    ; #49056: <==negation-removal== 50554 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #49298: <==negation-removal== 48627 (pos)
                    (not (Pa_not_checked_p1))

                    ; #62648: <==negation-removal== 50293 (pos)
                    (not (Ba_not_checked_p1))

                    ; #64980: <==negation-removal== 48566 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #66690: <==uncertain_firing== 27767 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #73445: <==negation-removal== 54943 (pos)
                    (not (Pb_not_checked_p1))

                    ; #77393: <==uncertain_firing== 42504 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #86054: <==negation-removal== 42504 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20644: <==commonly_known== 20413 (neg)
                    (Pa_checked_p2)

                    ; #20754: <==commonly_known== 20413 (neg)
                    (Pb_checked_p2)

                    ; #25636: <==commonly_known== 50161 (pos)
                    (Bb_checked_p2)

                    ; #25802: <==commonly_known== 50161 (pos)
                    (Ba_checked_p2)

                    ; #33699: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #50161: origin
                    (checked_p2)

                    ; #64477: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #75478: <==closure== 64477 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #76807: <==closure== 33699 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #77347: <==commonly_known== 20413 (neg)
                    (Pc_checked_p2)

                    ; #87140: <==commonly_known== 50161 (pos)
                    (Bc_checked_p2)

                    ; #12397: <==uncertain_firing== 33699 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #14336: <==negation-removal== 64477 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #20413: <==negation-removal== 50161 (pos)
                    (not (not_checked_p2))

                    ; #21988: <==negation-removal== 25802 (pos)
                    (not (Pa_not_checked_p2))

                    ; #27832: <==negation-removal== 87140 (pos)
                    (not (Pc_not_checked_p2))

                    ; #37539: <==negation-removal== 20644 (pos)
                    (not (Ba_not_checked_p2))

                    ; #47923: <==negation-removal== 25636 (pos)
                    (not (Pb_not_checked_p2))

                    ; #51955: <==negation-removal== 20754 (pos)
                    (not (Bb_not_checked_p2))

                    ; #54471: <==uncertain_firing== 76807 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #76148: <==uncertain_firing== 64477 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #77498: <==uncertain_firing== 75478 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #82617: <==negation-removal== 33699 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #83635: <==negation-removal== 77347 (pos)
                    (not (Bc_not_checked_p2))

                    ; #83649: <==negation-removal== 76807 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #87859: <==negation-removal== 75478 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12960: <==commonly_known== 45179 (neg)
                    (Pc_checked_p3)

                    ; #19929: origin
                    (checked_p3)

                    ; #43248: <==closure== 90394 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #50732: <==commonly_known== 19929 (pos)
                    (Ba_checked_p3)

                    ; #51969: <==closure== 94568 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #53326: <==commonly_known== 45179 (neg)
                    (Pb_checked_p3)

                    ; #68089: <==commonly_known== 19929 (pos)
                    (Bb_checked_p3)

                    ; #82241: <==commonly_known== 19929 (pos)
                    (Bc_checked_p3)

                    ; #90394: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #92878: <==commonly_known== 45179 (neg)
                    (Pa_checked_p3)

                    ; #94568: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #14449: <==negation-removal== 50732 (pos)
                    (not (Pa_not_checked_p3))

                    ; #18268: <==negation-removal== 12960 (pos)
                    (not (Bc_not_checked_p3))

                    ; #18542: <==negation-removal== 90394 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #27344: <==uncertain_firing== 94568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #27677: <==uncertain_firing== 90394 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #36623: <==negation-removal== 82241 (pos)
                    (not (Pc_not_checked_p3))

                    ; #38665: <==uncertain_firing== 43248 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #43494: <==uncertain_firing== 51969 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #43516: <==negation-removal== 51969 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45179: <==negation-removal== 19929 (pos)
                    (not (not_checked_p3))

                    ; #51718: <==negation-removal== 43248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #62817: <==negation-removal== 53326 (pos)
                    (not (Bb_not_checked_p3))

                    ; #69666: <==negation-removal== 94568 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84702: <==negation-removal== 92878 (pos)
                    (not (Ba_not_checked_p3))

                    ; #88250: <==negation-removal== 68089 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16691: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #27942: <==commonly_known== 67009 (pos)
                    (Bb_checked_p4)

                    ; #29309: <==commonly_known== 22468 (neg)
                    (Pc_checked_p4)

                    ; #31420: <==commonly_known== 67009 (pos)
                    (Ba_checked_p4)

                    ; #44754: <==commonly_known== 22468 (neg)
                    (Pb_checked_p4)

                    ; #67009: origin
                    (checked_p4)

                    ; #68439: <==closure== 16691 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #75007: <==commonly_known== 22468 (neg)
                    (Pa_checked_p4)

                    ; #79596: <==commonly_known== 67009 (pos)
                    (Bc_checked_p4)

                    ; #81877: <==closure== 87185 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #87185: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #11431: <==uncertain_firing== 68439 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #11855: <==negation-removal== 31420 (pos)
                    (not (Pa_not_checked_p4))

                    ; #22468: <==negation-removal== 67009 (pos)
                    (not (not_checked_p4))

                    ; #23559: <==uncertain_firing== 87185 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #23756: <==negation-removal== 75007 (pos)
                    (not (Ba_not_checked_p4))

                    ; #29562: <==negation-removal== 16691 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #29946: <==negation-removal== 68439 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #32581: <==negation-removal== 44754 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37209: <==negation-removal== 27942 (pos)
                    (not (Pb_not_checked_p4))

                    ; #52389: <==negation-removal== 29309 (pos)
                    (not (Bc_not_checked_p4))

                    ; #54895: <==negation-removal== 87185 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66067: <==uncertain_firing== 16691 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #66127: <==negation-removal== 79596 (pos)
                    (not (Pc_not_checked_p4))

                    ; #76328: <==negation-removal== 81877 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91964: <==uncertain_firing== 81877 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11788: <==commonly_known== 28458 (pos)
                    (Bc_checked_p5)

                    ; #28458: origin
                    (checked_p5)

                    ; #41284: <==commonly_known== 42331 (neg)
                    (Pb_checked_p5)

                    ; #42659: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #53979: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #54127: <==commonly_known== 42331 (neg)
                    (Pa_checked_p5)

                    ; #60418: <==commonly_known== 28458 (pos)
                    (Ba_checked_p5)

                    ; #78446: <==closure== 53979 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #79303: <==commonly_known== 42331 (neg)
                    (Pc_checked_p5)

                    ; #81634: <==closure== 42659 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #88673: <==commonly_known== 28458 (pos)
                    (Bb_checked_p5)

                    ; #15127: <==negation-removal== 53979 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22868: <==negation-removal== 42659 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27983: <==uncertain_firing== 78446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #32560: <==negation-removal== 54127 (pos)
                    (not (Ba_not_checked_p5))

                    ; #34165: <==negation-removal== 11788 (pos)
                    (not (Pc_not_checked_p5))

                    ; #35955: <==uncertain_firing== 81634 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #39983: <==negation-removal== 88673 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42331: <==negation-removal== 28458 (pos)
                    (not (not_checked_p5))

                    ; #42985: <==uncertain_firing== 53979 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46553: <==negation-removal== 81634 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #52191: <==negation-removal== 41284 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62577: <==negation-removal== 60418 (pos)
                    (not (Pa_not_checked_p5))

                    ; #67536: <==negation-removal== 79303 (pos)
                    (not (Bc_not_checked_p5))

                    ; #70513: <==negation-removal== 78446 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #77948: <==uncertain_firing== 42659 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14613: origin
                    (checked_p6)

                    ; #20411: <==commonly_known== 14613 (pos)
                    (Bb_checked_p6)

                    ; #21152: <==closure== 22344 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #22344: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #30518: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #32370: <==commonly_known== 82579 (neg)
                    (Pc_checked_p6)

                    ; #39790: <==commonly_known== 14613 (pos)
                    (Bc_checked_p6)

                    ; #51807: <==commonly_known== 14613 (pos)
                    (Ba_checked_p6)

                    ; #53184: <==commonly_known== 82579 (neg)
                    (Pb_checked_p6)

                    ; #54554: <==commonly_known== 82579 (neg)
                    (Pa_checked_p6)

                    ; #66038: <==closure== 30518 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #10772: <==uncertain_firing== 22344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #11306: <==negation-removal== 21152 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #19684: <==negation-removal== 54554 (pos)
                    (not (Ba_not_checked_p6))

                    ; #26377: <==negation-removal== 32370 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29825: <==uncertain_firing== 66038 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #43952: <==negation-removal== 20411 (pos)
                    (not (Pb_not_checked_p6))

                    ; #44721: <==negation-removal== 30518 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #51660: <==negation-removal== 66038 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #57079: <==negation-removal== 51807 (pos)
                    (not (Pa_not_checked_p6))

                    ; #71429: <==uncertain_firing== 21152 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77643: <==negation-removal== 53184 (pos)
                    (not (Bb_not_checked_p6))

                    ; #82579: <==negation-removal== 14613 (pos)
                    (not (not_checked_p6))

                    ; #85790: <==negation-removal== 39790 (pos)
                    (not (Pc_not_checked_p6))

                    ; #91319: <==uncertain_firing== 30518 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #91477: <==negation-removal== 22344 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10427: <==closure== 55041 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #16891: <==commonly_known== 85410 (pos)
                    (Bb_checked_p7)

                    ; #22237: <==commonly_known== 10458 (neg)
                    (Pa_checked_p7)

                    ; #48253: <==closure== 63548 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #55041: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #57267: <==commonly_known== 85410 (pos)
                    (Bc_checked_p7)

                    ; #63548: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #65038: <==commonly_known== 85410 (pos)
                    (Ba_checked_p7)

                    ; #78977: <==commonly_known== 10458 (neg)
                    (Pb_checked_p7)

                    ; #85410: origin
                    (checked_p7)

                    ; #90826: <==commonly_known== 10458 (neg)
                    (Pc_checked_p7)

                    ; #10458: <==negation-removal== 85410 (pos)
                    (not (not_checked_p7))

                    ; #17187: <==negation-removal== 22237 (pos)
                    (not (Ba_not_checked_p7))

                    ; #33603: <==negation-removal== 63548 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #33789: <==negation-removal== 78977 (pos)
                    (not (Bb_not_checked_p7))

                    ; #34906: <==uncertain_firing== 55041 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #37876: <==negation-removal== 10427 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #41953: <==negation-removal== 57267 (pos)
                    (not (Pc_not_checked_p7))

                    ; #44940: <==uncertain_firing== 63548 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #56472: <==uncertain_firing== 48253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56736: <==uncertain_firing== 10427 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57337: <==negation-removal== 16891 (pos)
                    (not (Pb_not_checked_p7))

                    ; #69635: <==negation-removal== 90826 (pos)
                    (not (Bc_not_checked_p7))

                    ; #76287: <==negation-removal== 55041 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #79535: <==negation-removal== 48253 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88585: <==negation-removal== 65038 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14538: <==commonly_known== 41262 (neg)
                    (Pc_checked_p8)

                    ; #26446: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #45793: <==commonly_known== 54725 (pos)
                    (Bc_checked_p8)

                    ; #54725: origin
                    (checked_p8)

                    ; #59511: <==commonly_known== 41262 (neg)
                    (Pa_checked_p8)

                    ; #62517: <==closure== 64407 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #64355: <==closure== 26446 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64407: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #82461: <==commonly_known== 54725 (pos)
                    (Bb_checked_p8)

                    ; #83627: <==commonly_known== 41262 (neg)
                    (Pb_checked_p8)

                    ; #85277: <==commonly_known== 54725 (pos)
                    (Ba_checked_p8)

                    ; #11846: <==negation-removal== 64407 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #30287: <==negation-removal== 26446 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #31498: <==negation-removal== 82461 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41262: <==negation-removal== 54725 (pos)
                    (not (not_checked_p8))

                    ; #44634: <==uncertain_firing== 64355 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #44667: <==negation-removal== 62517 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #52064: <==uncertain_firing== 26446 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #59354: <==uncertain_firing== 62517 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #60517: <==negation-removal== 14538 (pos)
                    (not (Bc_not_checked_p8))

                    ; #61919: <==negation-removal== 85277 (pos)
                    (not (Pa_not_checked_p8))

                    ; #68651: <==negation-removal== 64355 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #76518: <==uncertain_firing== 64407 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #80783: <==negation-removal== 83627 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89046: <==negation-removal== 45793 (pos)
                    (not (Pc_not_checked_p8))

                    ; #91299: <==negation-removal== 59511 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10062: origin
                    (checked_p9)

                    ; #15637: <==closure== 76950 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #19090: <==commonly_known== 10062 (pos)
                    (Bb_checked_p9)

                    ; #19292: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #19892: <==commonly_known== 10062 (pos)
                    (Bc_checked_p9)

                    ; #20114: <==closure== 19292 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #31428: <==commonly_known== 41164 (neg)
                    (Pc_checked_p9)

                    ; #41936: <==commonly_known== 41164 (neg)
                    (Pb_checked_p9)

                    ; #64163: <==commonly_known== 41164 (neg)
                    (Pa_checked_p9)

                    ; #71258: <==commonly_known== 10062 (pos)
                    (Ba_checked_p9)

                    ; #76950: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #15273: <==negation-removal== 20114 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #18087: <==uncertain_firing== 15637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #21085: <==uncertain_firing== 20114 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #21284: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22465: <==negation-removal== 64163 (pos)
                    (not (Ba_not_checked_p9))

                    ; #28901: <==negation-removal== 19292 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #36714: <==negation-removal== 31428 (pos)
                    (not (Bc_not_checked_p9))

                    ; #37220: <==negation-removal== 19090 (pos)
                    (not (Pb_not_checked_p9))

                    ; #41164: <==negation-removal== 10062 (pos)
                    (not (not_checked_p9))

                    ; #66174: <==uncertain_firing== 19292 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #70048: <==negation-removal== 71258 (pos)
                    (not (Pa_not_checked_p9))

                    ; #74248: <==negation-removal== 15637 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85789: <==uncertain_firing== 76950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86515: <==negation-removal== 19892 (pos)
                    (not (Pc_not_checked_p9))

                    ; #92135: <==negation-removal== 76950 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13917: <==closure== 90142 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #31240: <==commonly_known== 39743 (neg)
                    (Pc_checked_p1)

                    ; #48627: <==commonly_known== 52546 (pos)
                    (Ba_checked_p1)

                    ; #50293: <==commonly_known== 39743 (neg)
                    (Pa_checked_p1)

                    ; #52546: origin
                    (checked_p1)

                    ; #54943: <==commonly_known== 52546 (pos)
                    (Bb_checked_p1)

                    ; #54967: <==commonly_known== 39743 (neg)
                    (Pb_checked_p1)

                    ; #58965: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #65571: <==closure== 58965 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #66315: <==commonly_known== 52546 (pos)
                    (Bc_checked_p1)

                    ; #90142: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #13597: <==negation-removal== 54967 (pos)
                    (not (Bb_not_checked_p1))

                    ; #19095: <==uncertain_firing== 65571 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #19801: <==negation-removal== 66315 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24475: <==uncertain_firing== 58965 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #32364: <==negation-removal== 58965 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #36942: <==negation-removal== 31240 (pos)
                    (not (Bc_not_checked_p1))

                    ; #37316: <==uncertain_firing== 90142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #39743: <==negation-removal== 52546 (pos)
                    (not (not_checked_p1))

                    ; #49298: <==negation-removal== 48627 (pos)
                    (not (Pa_not_checked_p1))

                    ; #57950: <==negation-removal== 13917 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #62648: <==negation-removal== 50293 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66462: <==negation-removal== 90142 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #68879: <==uncertain_firing== 13917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73445: <==negation-removal== 54943 (pos)
                    (not (Pb_not_checked_p1))

                    ; #86097: <==negation-removal== 65571 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #20644: <==commonly_known== 20413 (neg)
                    (Pa_checked_p2)

                    ; #20754: <==commonly_known== 20413 (neg)
                    (Pb_checked_p2)

                    ; #25636: <==commonly_known== 50161 (pos)
                    (Bb_checked_p2)

                    ; #25802: <==commonly_known== 50161 (pos)
                    (Ba_checked_p2)

                    ; #46435: <==closure== 79994 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #50161: origin
                    (checked_p2)

                    ; #58288: <==closure== 90471 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #77347: <==commonly_known== 20413 (neg)
                    (Pc_checked_p2)

                    ; #79994: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #87140: <==commonly_known== 50161 (pos)
                    (Bc_checked_p2)

                    ; #90471: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12550: <==uncertain_firing== 46435 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #20413: <==negation-removal== 50161 (pos)
                    (not (not_checked_p2))

                    ; #20554: <==negation-removal== 46435 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #21988: <==negation-removal== 25802 (pos)
                    (not (Pa_not_checked_p2))

                    ; #22669: <==uncertain_firing== 90471 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #27832: <==negation-removal== 87140 (pos)
                    (not (Pc_not_checked_p2))

                    ; #30855: <==uncertain_firing== 58288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37539: <==negation-removal== 20644 (pos)
                    (not (Ba_not_checked_p2))

                    ; #47923: <==negation-removal== 25636 (pos)
                    (not (Pb_not_checked_p2))

                    ; #51955: <==negation-removal== 20754 (pos)
                    (not (Bb_not_checked_p2))

                    ; #79675: <==negation-removal== 58288 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #79772: <==negation-removal== 90471 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #81942: <==uncertain_firing== 79994 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #83635: <==negation-removal== 77347 (pos)
                    (not (Bc_not_checked_p2))

                    ; #91006: <==negation-removal== 79994 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12960: <==commonly_known== 45179 (neg)
                    (Pc_checked_p3)

                    ; #19929: origin
                    (checked_p3)

                    ; #45507: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #50732: <==commonly_known== 19929 (pos)
                    (Ba_checked_p3)

                    ; #53326: <==commonly_known== 45179 (neg)
                    (Pb_checked_p3)

                    ; #63131: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #65816: <==closure== 63131 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #68089: <==commonly_known== 19929 (pos)
                    (Bb_checked_p3)

                    ; #77929: <==closure== 45507 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #82241: <==commonly_known== 19929 (pos)
                    (Bc_checked_p3)

                    ; #92878: <==commonly_known== 45179 (neg)
                    (Pa_checked_p3)

                    ; #14449: <==negation-removal== 50732 (pos)
                    (not (Pa_not_checked_p3))

                    ; #18268: <==negation-removal== 12960 (pos)
                    (not (Bc_not_checked_p3))

                    ; #33156: <==negation-removal== 63131 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #36623: <==negation-removal== 82241 (pos)
                    (not (Pc_not_checked_p3))

                    ; #38825: <==uncertain_firing== 45507 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #41836: <==uncertain_firing== 63131 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #42191: <==negation-removal== 77929 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #45179: <==negation-removal== 19929 (pos)
                    (not (not_checked_p3))

                    ; #62817: <==negation-removal== 53326 (pos)
                    (not (Bb_not_checked_p3))

                    ; #77468: <==negation-removal== 45507 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #80869: <==negation-removal== 65816 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #84702: <==negation-removal== 92878 (pos)
                    (not (Ba_not_checked_p3))

                    ; #86133: <==uncertain_firing== 77929 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #88250: <==negation-removal== 68089 (pos)
                    (not (Pb_not_checked_p3))

                    ; #91255: <==uncertain_firing== 65816 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10485: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #22690: <==closure== 10485 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #27942: <==commonly_known== 67009 (pos)
                    (Bb_checked_p4)

                    ; #29309: <==commonly_known== 22468 (neg)
                    (Pc_checked_p4)

                    ; #31420: <==commonly_known== 67009 (pos)
                    (Ba_checked_p4)

                    ; #44754: <==commonly_known== 22468 (neg)
                    (Pb_checked_p4)

                    ; #49501: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #66049: <==closure== 49501 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #67009: origin
                    (checked_p4)

                    ; #75007: <==commonly_known== 22468 (neg)
                    (Pa_checked_p4)

                    ; #79596: <==commonly_known== 67009 (pos)
                    (Bc_checked_p4)

                    ; #11080: <==negation-removal== 22690 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #11855: <==negation-removal== 31420 (pos)
                    (not (Pa_not_checked_p4))

                    ; #22468: <==negation-removal== 67009 (pos)
                    (not (not_checked_p4))

                    ; #23756: <==negation-removal== 75007 (pos)
                    (not (Ba_not_checked_p4))

                    ; #27294: <==uncertain_firing== 66049 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32581: <==negation-removal== 44754 (pos)
                    (not (Bb_not_checked_p4))

                    ; #37209: <==negation-removal== 27942 (pos)
                    (not (Pb_not_checked_p4))

                    ; #39160: <==uncertain_firing== 22690 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #41309: <==uncertain_firing== 49501 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #47717: <==negation-removal== 49501 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #52389: <==negation-removal== 29309 (pos)
                    (not (Bc_not_checked_p4))

                    ; #58423: <==negation-removal== 10485 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #64806: <==uncertain_firing== 10485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66127: <==negation-removal== 79596 (pos)
                    (not (Pc_not_checked_p4))

                    ; #90959: <==negation-removal== 66049 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10838: <==closure== 11637 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #11637: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #11788: <==commonly_known== 28458 (pos)
                    (Bc_checked_p5)

                    ; #28458: origin
                    (checked_p5)

                    ; #37871: <==closure== 58015 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #41284: <==commonly_known== 42331 (neg)
                    (Pb_checked_p5)

                    ; #54127: <==commonly_known== 42331 (neg)
                    (Pa_checked_p5)

                    ; #58015: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #60418: <==commonly_known== 28458 (pos)
                    (Ba_checked_p5)

                    ; #79303: <==commonly_known== 42331 (neg)
                    (Pc_checked_p5)

                    ; #88673: <==commonly_known== 28458 (pos)
                    (Bb_checked_p5)

                    ; #11632: <==negation-removal== 10838 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #21874: <==negation-removal== 11637 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #24153: <==uncertain_firing== 10838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #25162: <==uncertain_firing== 37871 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #32560: <==negation-removal== 54127 (pos)
                    (not (Ba_not_checked_p5))

                    ; #34165: <==negation-removal== 11788 (pos)
                    (not (Pc_not_checked_p5))

                    ; #39983: <==negation-removal== 88673 (pos)
                    (not (Pb_not_checked_p5))

                    ; #42331: <==negation-removal== 28458 (pos)
                    (not (not_checked_p5))

                    ; #52191: <==negation-removal== 41284 (pos)
                    (not (Bb_not_checked_p5))

                    ; #60203: <==uncertain_firing== 58015 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #62577: <==negation-removal== 60418 (pos)
                    (not (Pa_not_checked_p5))

                    ; #66574: <==negation-removal== 37871 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #67536: <==negation-removal== 79303 (pos)
                    (not (Bc_not_checked_p5))

                    ; #82341: <==negation-removal== 58015 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #83767: <==uncertain_firing== 11637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11838: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #14613: origin
                    (checked_p6)

                    ; #20411: <==commonly_known== 14613 (pos)
                    (Bb_checked_p6)

                    ; #31352: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32370: <==commonly_known== 82579 (neg)
                    (Pc_checked_p6)

                    ; #34046: <==closure== 31352 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #39790: <==commonly_known== 14613 (pos)
                    (Bc_checked_p6)

                    ; #51807: <==commonly_known== 14613 (pos)
                    (Ba_checked_p6)

                    ; #53184: <==commonly_known== 82579 (neg)
                    (Pb_checked_p6)

                    ; #54554: <==commonly_known== 82579 (neg)
                    (Pa_checked_p6)

                    ; #80088: <==closure== 11838 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #17491: <==negation-removal== 11838 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #19684: <==negation-removal== 54554 (pos)
                    (not (Ba_not_checked_p6))

                    ; #21154: <==uncertain_firing== 31352 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #25137: <==uncertain_firing== 34046 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #26216: <==uncertain_firing== 11838 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #26377: <==negation-removal== 32370 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43952: <==negation-removal== 20411 (pos)
                    (not (Pb_not_checked_p6))

                    ; #57079: <==negation-removal== 51807 (pos)
                    (not (Pa_not_checked_p6))

                    ; #71824: <==negation-removal== 34046 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75875: <==uncertain_firing== 80088 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #77643: <==negation-removal== 53184 (pos)
                    (not (Bb_not_checked_p6))

                    ; #82579: <==negation-removal== 14613 (pos)
                    (not (not_checked_p6))

                    ; #85790: <==negation-removal== 39790 (pos)
                    (not (Pc_not_checked_p6))

                    ; #89033: <==negation-removal== 31352 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #91984: <==negation-removal== 80088 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15487: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #16891: <==commonly_known== 85410 (pos)
                    (Bb_checked_p7)

                    ; #22237: <==commonly_known== 10458 (neg)
                    (Pa_checked_p7)

                    ; #49834: <==closure== 15487 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #57267: <==commonly_known== 85410 (pos)
                    (Bc_checked_p7)

                    ; #65038: <==commonly_known== 85410 (pos)
                    (Ba_checked_p7)

                    ; #69047: <==closure== 77811 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #77811: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #78977: <==commonly_known== 10458 (neg)
                    (Pb_checked_p7)

                    ; #85410: origin
                    (checked_p7)

                    ; #90826: <==commonly_known== 10458 (neg)
                    (Pc_checked_p7)

                    ; #10458: <==negation-removal== 85410 (pos)
                    (not (not_checked_p7))

                    ; #16925: <==uncertain_firing== 69047 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #17187: <==negation-removal== 22237 (pos)
                    (not (Ba_not_checked_p7))

                    ; #31222: <==negation-removal== 15487 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #31881: <==uncertain_firing== 15487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #33789: <==negation-removal== 78977 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41953: <==negation-removal== 57267 (pos)
                    (not (Pc_not_checked_p7))

                    ; #42751: <==negation-removal== 49834 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57337: <==negation-removal== 16891 (pos)
                    (not (Pb_not_checked_p7))

                    ; #63334: <==uncertain_firing== 77811 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #69635: <==negation-removal== 90826 (pos)
                    (not (Bc_not_checked_p7))

                    ; #77509: <==negation-removal== 77811 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #80528: <==uncertain_firing== 49834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #88585: <==negation-removal== 65038 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91895: <==negation-removal== 69047 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14538: <==commonly_known== 41262 (neg)
                    (Pc_checked_p8)

                    ; #14754: <==closure== 59541 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #39800: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #45793: <==commonly_known== 54725 (pos)
                    (Bc_checked_p8)

                    ; #54725: origin
                    (checked_p8)

                    ; #59511: <==commonly_known== 41262 (neg)
                    (Pa_checked_p8)

                    ; #59541: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #70812: <==closure== 39800 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #82461: <==commonly_known== 54725 (pos)
                    (Bb_checked_p8)

                    ; #83627: <==commonly_known== 41262 (neg)
                    (Pb_checked_p8)

                    ; #85277: <==commonly_known== 54725 (pos)
                    (Ba_checked_p8)

                    ; #20678: <==negation-removal== 70812 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29079: <==uncertain_firing== 70812 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29859: <==uncertain_firing== 39800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #31498: <==negation-removal== 82461 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40026: <==uncertain_firing== 59541 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #41262: <==negation-removal== 54725 (pos)
                    (not (not_checked_p8))

                    ; #51937: <==negation-removal== 14754 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #60517: <==negation-removal== 14538 (pos)
                    (not (Bc_not_checked_p8))

                    ; #60959: <==negation-removal== 59541 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #61919: <==negation-removal== 85277 (pos)
                    (not (Pa_not_checked_p8))

                    ; #63608: <==uncertain_firing== 14754 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #76916: <==negation-removal== 39800 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #80783: <==negation-removal== 83627 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89046: <==negation-removal== 45793 (pos)
                    (not (Pc_not_checked_p8))

                    ; #91299: <==negation-removal== 59511 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10062: origin
                    (checked_p9)

                    ; #19090: <==commonly_known== 10062 (pos)
                    (Bb_checked_p9)

                    ; #19892: <==commonly_known== 10062 (pos)
                    (Bc_checked_p9)

                    ; #20882: <==closure== 30080 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #23335: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #30080: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #31428: <==commonly_known== 41164 (neg)
                    (Pc_checked_p9)

                    ; #41936: <==commonly_known== 41164 (neg)
                    (Pb_checked_p9)

                    ; #64163: <==commonly_known== 41164 (neg)
                    (Pa_checked_p9)

                    ; #71258: <==commonly_known== 10062 (pos)
                    (Ba_checked_p9)

                    ; #76729: <==closure== 23335 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #12937: <==negation-removal== 23335 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #21284: <==negation-removal== 41936 (pos)
                    (not (Bb_not_checked_p9))

                    ; #22465: <==negation-removal== 64163 (pos)
                    (not (Ba_not_checked_p9))

                    ; #23388: <==uncertain_firing== 30080 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #36714: <==negation-removal== 31428 (pos)
                    (not (Bc_not_checked_p9))

                    ; #37220: <==negation-removal== 19090 (pos)
                    (not (Pb_not_checked_p9))

                    ; #41164: <==negation-removal== 10062 (pos)
                    (not (not_checked_p9))

                    ; #49466: <==uncertain_firing== 23335 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #51094: <==uncertain_firing== 20882 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #53512: <==negation-removal== 30080 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #56424: <==negation-removal== 20882 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #70048: <==negation-removal== 71258 (pos)
                    (not (Pa_not_checked_p9))

                    ; #70817: <==uncertain_firing== 76729 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #83060: <==negation-removal== 76729 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #86515: <==negation-removal== 19892 (pos)
                    (not (Pc_not_checked_p9))))

)