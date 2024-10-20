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

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #15245: origin
                    (Bb_survivorat_s_p1)

                    ; #18484: origin
                    (Ba_survivorat_s_p1)

                    ; #24943: <==closure== 25208 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25208: origin
                    (Bc_survivorat_s_p1)

                    ; #28857: <==closure== 15245 (pos)
                    (Pb_survivorat_s_p1)

                    ; #67412: <==closure== 18484 (pos)
                    (Pa_survivorat_s_p1)

                    ; #30870: <==negation-removal== 15245 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #31294: <==negation-removal== 25208 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #43561: <==negation-removal== 24943 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64090: <==negation-removal== 67412 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #71964: <==negation-removal== 28857 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75307: <==negation-removal== 18484 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #15245: origin
                    (Bb_survivorat_s_p1)

                    ; #18484: origin
                    (Ba_survivorat_s_p1)

                    ; #24943: <==closure== 25208 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25208: origin
                    (Bc_survivorat_s_p1)

                    ; #28857: <==closure== 15245 (pos)
                    (Pb_survivorat_s_p1)

                    ; #67412: <==closure== 18484 (pos)
                    (Pa_survivorat_s_p1)

                    ; #30870: <==negation-removal== 15245 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #31294: <==negation-removal== 25208 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #43561: <==negation-removal== 24943 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64090: <==negation-removal== 67412 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #71964: <==negation-removal== 28857 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75307: <==negation-removal== 18484 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #15245: origin
                    (Bb_survivorat_s_p1)

                    ; #18484: origin
                    (Ba_survivorat_s_p1)

                    ; #24943: <==closure== 25208 (pos)
                    (Pc_survivorat_s_p1)

                    ; #25208: origin
                    (Bc_survivorat_s_p1)

                    ; #28857: <==closure== 15245 (pos)
                    (Pb_survivorat_s_p1)

                    ; #67412: <==closure== 18484 (pos)
                    (Pa_survivorat_s_p1)

                    ; #30870: <==negation-removal== 15245 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #31294: <==negation-removal== 25208 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #43561: <==negation-removal== 24943 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64090: <==negation-removal== 67412 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #71964: <==negation-removal== 28857 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75307: <==negation-removal== 18484 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #23863: origin
                    (Bb_survivorat_s_p2)

                    ; #32838: <==closure== 23863 (pos)
                    (Pb_survivorat_s_p2)

                    ; #66736: <==closure== 85686 (pos)
                    (Pa_survivorat_s_p2)

                    ; #67614: <==closure== 88903 (pos)
                    (Pc_survivorat_s_p2)

                    ; #85686: origin
                    (Ba_survivorat_s_p2)

                    ; #88903: origin
                    (Bc_survivorat_s_p2)

                    ; #14109: <==negation-removal== 85686 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #58236: <==negation-removal== 67614 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #69648: <==negation-removal== 32838 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84760: <==negation-removal== 88903 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85381: <==negation-removal== 66736 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #90743: <==negation-removal== 23863 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #23863: origin
                    (Bb_survivorat_s_p2)

                    ; #32838: <==closure== 23863 (pos)
                    (Pb_survivorat_s_p2)

                    ; #66736: <==closure== 85686 (pos)
                    (Pa_survivorat_s_p2)

                    ; #67614: <==closure== 88903 (pos)
                    (Pc_survivorat_s_p2)

                    ; #85686: origin
                    (Ba_survivorat_s_p2)

                    ; #88903: origin
                    (Bc_survivorat_s_p2)

                    ; #14109: <==negation-removal== 85686 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #58236: <==negation-removal== 67614 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #69648: <==negation-removal== 32838 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84760: <==negation-removal== 88903 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85381: <==negation-removal== 66736 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #90743: <==negation-removal== 23863 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #23863: origin
                    (Bb_survivorat_s_p2)

                    ; #32838: <==closure== 23863 (pos)
                    (Pb_survivorat_s_p2)

                    ; #66736: <==closure== 85686 (pos)
                    (Pa_survivorat_s_p2)

                    ; #67614: <==closure== 88903 (pos)
                    (Pc_survivorat_s_p2)

                    ; #85686: origin
                    (Ba_survivorat_s_p2)

                    ; #88903: origin
                    (Bc_survivorat_s_p2)

                    ; #14109: <==negation-removal== 85686 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #58236: <==negation-removal== 67614 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #69648: <==negation-removal== 32838 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84760: <==negation-removal== 88903 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85381: <==negation-removal== 66736 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #90743: <==negation-removal== 23863 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #38121: origin
                    (Ba_survivorat_s_p3)

                    ; #60220: origin
                    (Bb_survivorat_s_p3)

                    ; #61455: origin
                    (Bc_survivorat_s_p3)

                    ; #65889: <==closure== 61455 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68177: <==closure== 60220 (pos)
                    (Pb_survivorat_s_p3)

                    ; #85614: <==closure== 38121 (pos)
                    (Pa_survivorat_s_p3)

                    ; #34696: <==negation-removal== 65889 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #35240: <==negation-removal== 85614 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #61236: <==negation-removal== 38121 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79338: <==negation-removal== 61455 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80905: <==negation-removal== 68177 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #83160: <==negation-removal== 60220 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #38121: origin
                    (Ba_survivorat_s_p3)

                    ; #60220: origin
                    (Bb_survivorat_s_p3)

                    ; #61455: origin
                    (Bc_survivorat_s_p3)

                    ; #65889: <==closure== 61455 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68177: <==closure== 60220 (pos)
                    (Pb_survivorat_s_p3)

                    ; #85614: <==closure== 38121 (pos)
                    (Pa_survivorat_s_p3)

                    ; #34696: <==negation-removal== 65889 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #35240: <==negation-removal== 85614 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #61236: <==negation-removal== 38121 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79338: <==negation-removal== 61455 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80905: <==negation-removal== 68177 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #83160: <==negation-removal== 60220 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #38121: origin
                    (Ba_survivorat_s_p3)

                    ; #60220: origin
                    (Bb_survivorat_s_p3)

                    ; #61455: origin
                    (Bc_survivorat_s_p3)

                    ; #65889: <==closure== 61455 (pos)
                    (Pc_survivorat_s_p3)

                    ; #68177: <==closure== 60220 (pos)
                    (Pb_survivorat_s_p3)

                    ; #85614: <==closure== 38121 (pos)
                    (Pa_survivorat_s_p3)

                    ; #34696: <==negation-removal== 65889 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #35240: <==negation-removal== 85614 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #61236: <==negation-removal== 38121 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #79338: <==negation-removal== 61455 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #80905: <==negation-removal== 68177 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #83160: <==negation-removal== 60220 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #13638: <==closure== 46314 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46314: origin
                    (Bb_survivorat_s_p4)

                    ; #48009: origin
                    (Bc_survivorat_s_p4)

                    ; #49395: origin
                    (Ba_survivorat_s_p4)

                    ; #53649: <==closure== 48009 (pos)
                    (Pc_survivorat_s_p4)

                    ; #81971: <==closure== 49395 (pos)
                    (Pa_survivorat_s_p4)

                    ; #17551: <==negation-removal== 48009 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20060: <==negation-removal== 49395 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60453: <==negation-removal== 13638 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60706: <==negation-removal== 46314 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61194: <==negation-removal== 53649 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84562: <==negation-removal== 81971 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #13638: <==closure== 46314 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46314: origin
                    (Bb_survivorat_s_p4)

                    ; #48009: origin
                    (Bc_survivorat_s_p4)

                    ; #49395: origin
                    (Ba_survivorat_s_p4)

                    ; #53649: <==closure== 48009 (pos)
                    (Pc_survivorat_s_p4)

                    ; #81971: <==closure== 49395 (pos)
                    (Pa_survivorat_s_p4)

                    ; #17551: <==negation-removal== 48009 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20060: <==negation-removal== 49395 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60453: <==negation-removal== 13638 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60706: <==negation-removal== 46314 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61194: <==negation-removal== 53649 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84562: <==negation-removal== 81971 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #13638: <==closure== 46314 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46314: origin
                    (Bb_survivorat_s_p4)

                    ; #48009: origin
                    (Bc_survivorat_s_p4)

                    ; #49395: origin
                    (Ba_survivorat_s_p4)

                    ; #53649: <==closure== 48009 (pos)
                    (Pc_survivorat_s_p4)

                    ; #81971: <==closure== 49395 (pos)
                    (Pa_survivorat_s_p4)

                    ; #17551: <==negation-removal== 48009 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20060: <==negation-removal== 49395 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #60453: <==negation-removal== 13638 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #60706: <==negation-removal== 46314 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61194: <==negation-removal== 53649 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #84562: <==negation-removal== 81971 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #13027: origin
                    (Bc_survivorat_s_p5)

                    ; #14585: <==closure== 13027 (pos)
                    (Pc_survivorat_s_p5)

                    ; #25886: <==closure== 50229 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42621: <==closure== 71393 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50229: origin
                    (Ba_survivorat_s_p5)

                    ; #71393: origin
                    (Bb_survivorat_s_p5)

                    ; #35141: <==negation-removal== 25886 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #59821: <==negation-removal== 42621 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73306: <==negation-removal== 50229 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #82036: <==negation-removal== 13027 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #83585: <==negation-removal== 14585 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85810: <==negation-removal== 71393 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #13027: origin
                    (Bc_survivorat_s_p5)

                    ; #14585: <==closure== 13027 (pos)
                    (Pc_survivorat_s_p5)

                    ; #25886: <==closure== 50229 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42621: <==closure== 71393 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50229: origin
                    (Ba_survivorat_s_p5)

                    ; #71393: origin
                    (Bb_survivorat_s_p5)

                    ; #35141: <==negation-removal== 25886 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #59821: <==negation-removal== 42621 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73306: <==negation-removal== 50229 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #82036: <==negation-removal== 13027 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #83585: <==negation-removal== 14585 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85810: <==negation-removal== 71393 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #13027: origin
                    (Bc_survivorat_s_p5)

                    ; #14585: <==closure== 13027 (pos)
                    (Pc_survivorat_s_p5)

                    ; #25886: <==closure== 50229 (pos)
                    (Pa_survivorat_s_p5)

                    ; #42621: <==closure== 71393 (pos)
                    (Pb_survivorat_s_p5)

                    ; #50229: origin
                    (Ba_survivorat_s_p5)

                    ; #71393: origin
                    (Bb_survivorat_s_p5)

                    ; #35141: <==negation-removal== 25886 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #59821: <==negation-removal== 42621 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73306: <==negation-removal== 50229 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #82036: <==negation-removal== 13027 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #83585: <==negation-removal== 14585 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #85810: <==negation-removal== 71393 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #25591: <==closure== 48842 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34731: <==closure== 41984 (pos)
                    (Pc_survivorat_s_p6)

                    ; #41984: origin
                    (Bc_survivorat_s_p6)

                    ; #48842: origin
                    (Bb_survivorat_s_p6)

                    ; #51794: origin
                    (Ba_survivorat_s_p6)

                    ; #83047: <==closure== 51794 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19700: <==negation-removal== 51794 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24634: <==negation-removal== 41984 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #55564: <==negation-removal== 83047 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68373: <==negation-removal== 48842 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72667: <==negation-removal== 25591 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #91808: <==negation-removal== 34731 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #25591: <==closure== 48842 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34731: <==closure== 41984 (pos)
                    (Pc_survivorat_s_p6)

                    ; #41984: origin
                    (Bc_survivorat_s_p6)

                    ; #48842: origin
                    (Bb_survivorat_s_p6)

                    ; #51794: origin
                    (Ba_survivorat_s_p6)

                    ; #83047: <==closure== 51794 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19700: <==negation-removal== 51794 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24634: <==negation-removal== 41984 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #55564: <==negation-removal== 83047 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68373: <==negation-removal== 48842 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72667: <==negation-removal== 25591 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #91808: <==negation-removal== 34731 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #25591: <==closure== 48842 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34731: <==closure== 41984 (pos)
                    (Pc_survivorat_s_p6)

                    ; #41984: origin
                    (Bc_survivorat_s_p6)

                    ; #48842: origin
                    (Bb_survivorat_s_p6)

                    ; #51794: origin
                    (Ba_survivorat_s_p6)

                    ; #83047: <==closure== 51794 (pos)
                    (Pa_survivorat_s_p6)

                    ; #19700: <==negation-removal== 51794 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24634: <==negation-removal== 41984 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #55564: <==negation-removal== 83047 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #68373: <==negation-removal== 48842 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72667: <==negation-removal== 25591 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #91808: <==negation-removal== 34731 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #38199: <==closure== 56421 (pos)
                    (Pb_survivorat_s_p7)

                    ; #39562: origin
                    (Ba_survivorat_s_p7)

                    ; #56421: origin
                    (Bb_survivorat_s_p7)

                    ; #67364: <==closure== 39562 (pos)
                    (Pa_survivorat_s_p7)

                    ; #67431: origin
                    (Bc_survivorat_s_p7)

                    ; #86779: <==closure== 67431 (pos)
                    (Pc_survivorat_s_p7)

                    ; #11630: <==negation-removal== 86779 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #28398: <==negation-removal== 38199 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #35707: <==negation-removal== 67431 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #37732: <==negation-removal== 67364 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #88395: <==negation-removal== 56421 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #97026: <==negation-removal== 39562 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #38199: <==closure== 56421 (pos)
                    (Pb_survivorat_s_p7)

                    ; #39562: origin
                    (Ba_survivorat_s_p7)

                    ; #56421: origin
                    (Bb_survivorat_s_p7)

                    ; #67364: <==closure== 39562 (pos)
                    (Pa_survivorat_s_p7)

                    ; #67431: origin
                    (Bc_survivorat_s_p7)

                    ; #86779: <==closure== 67431 (pos)
                    (Pc_survivorat_s_p7)

                    ; #11630: <==negation-removal== 86779 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #28398: <==negation-removal== 38199 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #35707: <==negation-removal== 67431 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #37732: <==negation-removal== 67364 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #88395: <==negation-removal== 56421 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #97026: <==negation-removal== 39562 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #38199: <==closure== 56421 (pos)
                    (Pb_survivorat_s_p7)

                    ; #39562: origin
                    (Ba_survivorat_s_p7)

                    ; #56421: origin
                    (Bb_survivorat_s_p7)

                    ; #67364: <==closure== 39562 (pos)
                    (Pa_survivorat_s_p7)

                    ; #67431: origin
                    (Bc_survivorat_s_p7)

                    ; #86779: <==closure== 67431 (pos)
                    (Pc_survivorat_s_p7)

                    ; #11630: <==negation-removal== 86779 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #28398: <==negation-removal== 38199 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #35707: <==negation-removal== 67431 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #37732: <==negation-removal== 67364 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #88395: <==negation-removal== 56421 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #97026: <==negation-removal== 39562 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #43960: origin
                    (Bb_survivorat_s_p8)

                    ; #51327: origin
                    (Bc_survivorat_s_p8)

                    ; #57051: <==closure== 43960 (pos)
                    (Pb_survivorat_s_p8)

                    ; #75199: <==closure== 51327 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80015: origin
                    (Ba_survivorat_s_p8)

                    ; #88037: <==closure== 80015 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15996: <==negation-removal== 75199 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #20473: <==negation-removal== 88037 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37038: <==negation-removal== 57051 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43621: <==negation-removal== 43960 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #74882: <==negation-removal== 51327 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #84970: <==negation-removal== 80015 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #43960: origin
                    (Bb_survivorat_s_p8)

                    ; #51327: origin
                    (Bc_survivorat_s_p8)

                    ; #57051: <==closure== 43960 (pos)
                    (Pb_survivorat_s_p8)

                    ; #75199: <==closure== 51327 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80015: origin
                    (Ba_survivorat_s_p8)

                    ; #88037: <==closure== 80015 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15996: <==negation-removal== 75199 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #20473: <==negation-removal== 88037 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37038: <==negation-removal== 57051 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43621: <==negation-removal== 43960 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #74882: <==negation-removal== 51327 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #84970: <==negation-removal== 80015 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #43960: origin
                    (Bb_survivorat_s_p8)

                    ; #51327: origin
                    (Bc_survivorat_s_p8)

                    ; #57051: <==closure== 43960 (pos)
                    (Pb_survivorat_s_p8)

                    ; #75199: <==closure== 51327 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80015: origin
                    (Ba_survivorat_s_p8)

                    ; #88037: <==closure== 80015 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15996: <==negation-removal== 75199 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #20473: <==negation-removal== 88037 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37038: <==negation-removal== 57051 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #43621: <==negation-removal== 43960 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #74882: <==negation-removal== 51327 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #84970: <==negation-removal== 80015 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #14217: origin
                    (Ba_survivorat_s_p9)

                    ; #23132: <==closure== 90856 (pos)
                    (Pc_survivorat_s_p9)

                    ; #50339: origin
                    (Bb_survivorat_s_p9)

                    ; #80797: <==closure== 50339 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90856: origin
                    (Bc_survivorat_s_p9)

                    ; #97424: <==closure== 14217 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25069: <==negation-removal== 14217 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64316: <==negation-removal== 90856 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74388: <==negation-removal== 80797 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #83003: <==negation-removal== 23132 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85327: <==negation-removal== 50339 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87326: <==negation-removal== 97424 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #14217: origin
                    (Ba_survivorat_s_p9)

                    ; #23132: <==closure== 90856 (pos)
                    (Pc_survivorat_s_p9)

                    ; #50339: origin
                    (Bb_survivorat_s_p9)

                    ; #80797: <==closure== 50339 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90856: origin
                    (Bc_survivorat_s_p9)

                    ; #97424: <==closure== 14217 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25069: <==negation-removal== 14217 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64316: <==negation-removal== 90856 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74388: <==negation-removal== 80797 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #83003: <==negation-removal== 23132 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85327: <==negation-removal== 50339 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87326: <==negation-removal== 97424 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #14217: origin
                    (Ba_survivorat_s_p9)

                    ; #23132: <==closure== 90856 (pos)
                    (Pc_survivorat_s_p9)

                    ; #50339: origin
                    (Bb_survivorat_s_p9)

                    ; #80797: <==closure== 50339 (pos)
                    (Pb_survivorat_s_p9)

                    ; #90856: origin
                    (Bc_survivorat_s_p9)

                    ; #97424: <==closure== 14217 (pos)
                    (Pa_survivorat_s_p9)

                    ; #25069: <==negation-removal== 14217 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64316: <==negation-removal== 90856 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #74388: <==negation-removal== 80797 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #83003: <==negation-removal== 23132 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85327: <==negation-removal== 50339 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #87326: <==negation-removal== 97424 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #71739: origin
                    (not_at_a_p1)

                    ; #84841: origin
                    (at_a_p1)

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #71739: origin
                    (not_at_a_p1)

                    ; #74262: origin
                    (at_a_p2)

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #71739: origin
                    (not_at_a_p1)

                    ; #74405: origin
                    (at_a_p3)

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #66812: origin
                    (at_a_p4)

                    ; #71739: origin
                    (not_at_a_p1)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #71739: origin
                    (not_at_a_p1)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #71739: origin
                    (not_at_a_p1)

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #54558: origin
                    (at_a_p7)

                    ; #71739: origin
                    (not_at_a_p1)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #51097: origin
                    (at_a_p8)

                    ; #71739: origin
                    (not_at_a_p1)

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #32291: origin
                    (at_a_p9)

                    ; #71739: origin
                    (not_at_a_p1)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #84841: <==negation-removal== 71739 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #51638: origin
                    (not_at_a_p2)

                    ; #84841: origin
                    (at_a_p1)

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #51638: origin
                    (not_at_a_p2)

                    ; #74262: origin
                    (at_a_p2)

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #51638: origin
                    (not_at_a_p2)

                    ; #74405: origin
                    (at_a_p3)

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #51638: origin
                    (not_at_a_p2)

                    ; #66812: origin
                    (at_a_p4)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #51638: origin
                    (not_at_a_p2)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #51638: origin
                    (not_at_a_p2)

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #51638: origin
                    (not_at_a_p2)

                    ; #54558: origin
                    (at_a_p7)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #51097: origin
                    (at_a_p8)

                    ; #51638: origin
                    (not_at_a_p2)

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #32291: origin
                    (at_a_p9)

                    ; #51638: origin
                    (not_at_a_p2)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #74262: <==negation-removal== 51638 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #78333: origin
                    (not_at_a_p3)

                    ; #84841: origin
                    (at_a_p1)

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #74262: origin
                    (at_a_p2)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #74405: origin
                    (at_a_p3)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #66812: origin
                    (at_a_p4)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #76813: origin
                    (at_a_p5)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #54558: origin
                    (at_a_p7)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #51097: origin
                    (at_a_p8)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #32291: origin
                    (at_a_p9)

                    ; #78333: origin
                    (not_at_a_p3)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #74405: <==negation-removal== 78333 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #84841: origin
                    (at_a_p1)

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #74262: origin
                    (at_a_p2)

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #74405: origin
                    (at_a_p3)

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #66812: origin
                    (at_a_p4)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #27693: origin
                    (at_a_p6)

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #54558: origin
                    (at_a_p7)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #51097: origin
                    (at_a_p8)

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #15785: origin
                    (not_at_a_p4)

                    ; #32291: origin
                    (at_a_p9)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #66812: <==negation-removal== 15785 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #84841: origin
                    (at_a_p1)

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #74262: origin
                    (at_a_p2)

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #74405: origin
                    (at_a_p3)

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #66812: origin
                    (at_a_p4)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #27693: origin
                    (at_a_p6)

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #54558: origin
                    (at_a_p7)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #51097: origin
                    (at_a_p8)

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #19681: origin
                    (not_at_a_p5)

                    ; #32291: origin
                    (at_a_p9)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #76813: <==negation-removal== 19681 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #78354: origin
                    (not_at_a_p6)

                    ; #84841: origin
                    (at_a_p1)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #74262: origin
                    (at_a_p2)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #74405: origin
                    (at_a_p3)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #66812: origin
                    (at_a_p4)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #76813: origin
                    (at_a_p5)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #54558: origin
                    (at_a_p7)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #51097: origin
                    (at_a_p8)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #32291: origin
                    (at_a_p9)

                    ; #78354: origin
                    (not_at_a_p6)

                    ; #27693: <==negation-removal== 78354 (pos)
                    (not (at_a_p6))

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #84841: origin
                    (at_a_p1)

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #74262: origin
                    (at_a_p2)

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #74405: origin
                    (at_a_p3)

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #66812: origin
                    (at_a_p4)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #50627: origin
                    (not_at_a_p7)

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #54558: origin
                    (at_a_p7)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #50627: origin
                    (not_at_a_p7)

                    ; #51097: origin
                    (at_a_p8)

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #32291: origin
                    (at_a_p9)

                    ; #50627: origin
                    (not_at_a_p7)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #54558: <==negation-removal== 50627 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #52741: origin
                    (not_at_a_p8)

                    ; #84841: origin
                    (at_a_p1)

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #52741: origin
                    (not_at_a_p8)

                    ; #74262: origin
                    (at_a_p2)

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #52741: origin
                    (not_at_a_p8)

                    ; #74405: origin
                    (at_a_p3)

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #52741: origin
                    (not_at_a_p8)

                    ; #66812: origin
                    (at_a_p4)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #52741: origin
                    (not_at_a_p8)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #52741: origin
                    (not_at_a_p8)

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #52741: origin
                    (not_at_a_p8)

                    ; #54558: origin
                    (at_a_p7)

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #51097: origin
                    (at_a_p8)

                    ; #52741: origin
                    (not_at_a_p8)

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #32291: origin
                    (at_a_p9)

                    ; #52741: origin
                    (not_at_a_p8)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #51097: <==negation-removal== 52741 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #84841: origin
                    (at_a_p1)

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))

                    ; #71739: <==negation-removal== 84841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #74262: origin
                    (at_a_p2)

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))

                    ; #51638: <==negation-removal== 74262 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #74405: origin
                    (at_a_p3)

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))

                    ; #78333: <==negation-removal== 74405 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #66812: origin
                    (at_a_p4)

                    ; #15785: <==negation-removal== 66812 (pos)
                    (not (not_at_a_p4))

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #76813: origin
                    (at_a_p5)

                    ; #19681: <==negation-removal== 76813 (pos)
                    (not (not_at_a_p5))

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #27693: origin
                    (at_a_p6)

                    ; #30860: origin
                    (not_at_a_p9)

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))

                    ; #78354: <==negation-removal== 27693 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #54558: origin
                    (at_a_p7)

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))

                    ; #50627: <==negation-removal== 54558 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #51097: origin
                    (at_a_p8)

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))

                    ; #52741: <==negation-removal== 51097 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #30860: origin
                    (not_at_a_p9)

                    ; #32291: origin
                    (at_a_p9)

                    ; #30860: <==negation-removal== 32291 (pos)
                    (not (not_at_a_p9))

                    ; #32291: <==negation-removal== 30860 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #69239: origin
                    (at_b_p2)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #41165: origin
                    (at_b_p3)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #77210: origin
                    (not_at_b_p1)

                    ; #80174: origin
                    (at_b_p6)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #62578: origin
                    (at_b_p7)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #38082: origin
                    (at_b_p8)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #69592: origin
                    (at_b_p9)

                    ; #77210: origin
                    (not_at_b_p1)

                    ; #22454: <==negation-removal== 77210 (pos)
                    (not (at_b_p1))

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #69239: origin
                    (at_b_p2)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #41165: origin
                    (at_b_p3)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #78894: origin
                    (not_at_b_p2)

                    ; #80174: origin
                    (at_b_p6)

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #62578: origin
                    (at_b_p7)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #38082: origin
                    (at_b_p8)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #69592: origin
                    (at_b_p9)

                    ; #78894: origin
                    (not_at_b_p2)

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))

                    ; #69239: <==negation-removal== 78894 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #69239: origin
                    (at_b_p2)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #41165: origin
                    (at_b_p3)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #80174: origin
                    (at_b_p6)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #62578: origin
                    (at_b_p7)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #38082: origin
                    (at_b_p8)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #69592: origin
                    (at_b_p9)

                    ; #85682: origin
                    (not_at_b_p3)

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))

                    ; #41165: <==negation-removal== 85682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #36955: origin
                    (not_at_b_p4)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #36955: origin
                    (not_at_b_p4)

                    ; #69239: origin
                    (at_b_p2)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #36955: origin
                    (not_at_b_p4)

                    ; #41165: origin
                    (at_b_p3)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #36955: origin
                    (not_at_b_p4)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #36955: origin
                    (not_at_b_p4)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #36955: origin
                    (not_at_b_p4)

                    ; #80174: origin
                    (at_b_p6)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #36955: origin
                    (not_at_b_p4)

                    ; #62578: origin
                    (at_b_p7)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #36955: origin
                    (not_at_b_p4)

                    ; #38082: origin
                    (at_b_p8)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #36955: origin
                    (not_at_b_p4)

                    ; #69592: origin
                    (at_b_p9)

                    ; #19294: <==negation-removal== 36955 (pos)
                    (not (at_b_p4))

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #25924: origin
                    (not_at_b_p5)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #25924: origin
                    (not_at_b_p5)

                    ; #69239: origin
                    (at_b_p2)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #25924: origin
                    (not_at_b_p5)

                    ; #41165: origin
                    (at_b_p3)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #25924: origin
                    (not_at_b_p5)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #25924: origin
                    (not_at_b_p5)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #25924: origin
                    (not_at_b_p5)

                    ; #80174: origin
                    (at_b_p6)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #25924: origin
                    (not_at_b_p5)

                    ; #62578: origin
                    (at_b_p7)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #25924: origin
                    (not_at_b_p5)

                    ; #38082: origin
                    (at_b_p8)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #25924: origin
                    (not_at_b_p5)

                    ; #69592: origin
                    (at_b_p9)

                    ; #13459: <==negation-removal== 25924 (pos)
                    (not (at_b_p5))

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #52855: origin
                    (not_at_b_p6)

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #52855: origin
                    (not_at_b_p6)

                    ; #69239: origin
                    (at_b_p2)

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #41165: origin
                    (at_b_p3)

                    ; #52855: origin
                    (not_at_b_p6)

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #52855: origin
                    (not_at_b_p6)

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #52855: origin
                    (not_at_b_p6)

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #52855: origin
                    (not_at_b_p6)

                    ; #80174: origin
                    (at_b_p6)

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #52855: origin
                    (not_at_b_p6)

                    ; #62578: origin
                    (at_b_p7)

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #38082: origin
                    (at_b_p8)

                    ; #52855: origin
                    (not_at_b_p6)

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #52855: origin
                    (not_at_b_p6)

                    ; #69592: origin
                    (at_b_p9)

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))

                    ; #80174: <==negation-removal== 52855 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #59390: origin
                    (not_at_b_p7)

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #59390: origin
                    (not_at_b_p7)

                    ; #69239: origin
                    (at_b_p2)

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #41165: origin
                    (at_b_p3)

                    ; #59390: origin
                    (not_at_b_p7)

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #59390: origin
                    (not_at_b_p7)

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #59390: origin
                    (not_at_b_p7)

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #59390: origin
                    (not_at_b_p7)

                    ; #80174: origin
                    (at_b_p6)

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #59390: origin
                    (not_at_b_p7)

                    ; #62578: origin
                    (at_b_p7)

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #38082: origin
                    (at_b_p8)

                    ; #59390: origin
                    (not_at_b_p7)

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #59390: origin
                    (not_at_b_p7)

                    ; #69592: origin
                    (at_b_p9)

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))

                    ; #62578: <==negation-removal== 59390 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #61958: origin
                    (not_at_b_p8)

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #61958: origin
                    (not_at_b_p8)

                    ; #69239: origin
                    (at_b_p2)

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #41165: origin
                    (at_b_p3)

                    ; #61958: origin
                    (not_at_b_p8)

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #61958: origin
                    (not_at_b_p8)

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #61958: origin
                    (not_at_b_p8)

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #61958: origin
                    (not_at_b_p8)

                    ; #80174: origin
                    (at_b_p6)

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #61958: origin
                    (not_at_b_p8)

                    ; #62578: origin
                    (at_b_p7)

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #38082: origin
                    (at_b_p8)

                    ; #61958: origin
                    (not_at_b_p8)

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #61958: origin
                    (not_at_b_p8)

                    ; #69592: origin
                    (at_b_p9)

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))

                    ; #38082: <==negation-removal== 61958 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #22454: origin
                    (at_b_p1)

                    ; #27252: origin
                    (not_at_b_p9)

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))

                    ; #77210: <==negation-removal== 22454 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #27252: origin
                    (not_at_b_p9)

                    ; #69239: origin
                    (at_b_p2)

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))

                    ; #78894: <==negation-removal== 69239 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #27252: origin
                    (not_at_b_p9)

                    ; #41165: origin
                    (at_b_p3)

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))

                    ; #85682: <==negation-removal== 41165 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #19294: origin
                    (at_b_p4)

                    ; #27252: origin
                    (not_at_b_p9)

                    ; #36955: <==negation-removal== 19294 (pos)
                    (not (not_at_b_p4))

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #13459: origin
                    (at_b_p5)

                    ; #27252: origin
                    (not_at_b_p9)

                    ; #25924: <==negation-removal== 13459 (pos)
                    (not (not_at_b_p5))

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #27252: origin
                    (not_at_b_p9)

                    ; #80174: origin
                    (at_b_p6)

                    ; #52855: <==negation-removal== 80174 (pos)
                    (not (not_at_b_p6))

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #27252: origin
                    (not_at_b_p9)

                    ; #62578: origin
                    (at_b_p7)

                    ; #59390: <==negation-removal== 62578 (pos)
                    (not (not_at_b_p7))

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #27252: origin
                    (not_at_b_p9)

                    ; #38082: origin
                    (at_b_p8)

                    ; #61958: <==negation-removal== 38082 (pos)
                    (not (not_at_b_p8))

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #27252: origin
                    (not_at_b_p9)

                    ; #69592: origin
                    (at_b_p9)

                    ; #27252: <==negation-removal== 69592 (pos)
                    (not (not_at_b_p9))

                    ; #69592: <==negation-removal== 27252 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #57889: origin
                    (at_c_p3)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #57447: origin
                    (at_c_p4)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #60790: origin
                    (not_at_c_p1)

                    ; #66813: origin
                    (at_c_p6)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #60706: origin
                    (at_c_p7)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #57276: origin
                    (at_c_p9)

                    ; #60790: origin
                    (not_at_c_p1)

                    ; #12852: <==negation-removal== 60790 (pos)
                    (not (at_c_p1))

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #48285: origin
                    (not_at_c_p2)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #48285: origin
                    (not_at_c_p2)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #48285: origin
                    (not_at_c_p2)

                    ; #57889: origin
                    (at_c_p3)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #48285: origin
                    (not_at_c_p2)

                    ; #57447: origin
                    (at_c_p4)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #48285: origin
                    (not_at_c_p2)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #48285: origin
                    (not_at_c_p2)

                    ; #66813: origin
                    (at_c_p6)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #48285: origin
                    (not_at_c_p2)

                    ; #60706: origin
                    (at_c_p7)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #48285: origin
                    (not_at_c_p2)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #48285: origin
                    (not_at_c_p2)

                    ; #57276: origin
                    (at_c_p9)

                    ; #25154: <==negation-removal== 48285 (pos)
                    (not (at_c_p2))

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #57889: origin
                    (at_c_p3)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #57447: origin
                    (at_c_p4)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #66813: origin
                    (at_c_p6)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #60706: origin
                    (at_c_p7)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #57276: origin
                    (at_c_p9)

                    ; #89857: origin
                    (not_at_c_p3)

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))

                    ; #57889: <==negation-removal== 89857 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #42624: origin
                    (not_at_c_p4)

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #42624: origin
                    (not_at_c_p4)

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #42624: origin
                    (not_at_c_p4)

                    ; #57889: origin
                    (at_c_p3)

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #42624: origin
                    (not_at_c_p4)

                    ; #57447: origin
                    (at_c_p4)

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #42624: origin
                    (not_at_c_p4)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #42624: origin
                    (not_at_c_p4)

                    ; #66813: origin
                    (at_c_p6)

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #42624: origin
                    (not_at_c_p4)

                    ; #60706: origin
                    (at_c_p7)

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #42624: origin
                    (not_at_c_p4)

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #42624: origin
                    (not_at_c_p4)

                    ; #57276: origin
                    (at_c_p9)

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))

                    ; #57447: <==negation-removal== 42624 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #19861: origin
                    (not_at_c_p5)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #25154: origin
                    (at_c_p2)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #57889: origin
                    (at_c_p3)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #57447: origin
                    (at_c_p4)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #20916: origin
                    (at_c_p5)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #66813: origin
                    (at_c_p6)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #60706: origin
                    (at_c_p7)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #19861: origin
                    (not_at_c_p5)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #19861: origin
                    (not_at_c_p5)

                    ; #57276: origin
                    (at_c_p9)

                    ; #20916: <==negation-removal== 19861 (pos)
                    (not (at_c_p5))

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #57889: origin
                    (at_c_p3)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #57447: origin
                    (at_c_p4)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #66813: origin
                    (at_c_p6)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #60706: origin
                    (at_c_p7)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #57276: origin
                    (at_c_p9)

                    ; #86368: origin
                    (not_at_c_p6)

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))

                    ; #66813: <==negation-removal== 86368 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #26665: origin
                    (not_at_c_p7)

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #26665: origin
                    (not_at_c_p7)

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #26665: origin
                    (not_at_c_p7)

                    ; #57889: origin
                    (at_c_p3)

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #26665: origin
                    (not_at_c_p7)

                    ; #57447: origin
                    (at_c_p4)

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #26665: origin
                    (not_at_c_p7)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26665: origin
                    (not_at_c_p7)

                    ; #66813: origin
                    (at_c_p6)

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #26665: origin
                    (not_at_c_p7)

                    ; #60706: origin
                    (at_c_p7)

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #26665: origin
                    (not_at_c_p7)

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #26665: origin
                    (not_at_c_p7)

                    ; #57276: origin
                    (at_c_p9)

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))

                    ; #60706: <==negation-removal== 26665 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #57889: origin
                    (at_c_p3)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #57447: origin
                    (at_c_p4)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #63567: origin
                    (not_at_c_p8)

                    ; #66813: origin
                    (at_c_p6)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #60706: origin
                    (at_c_p7)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #57276: origin
                    (at_c_p9)

                    ; #63567: origin
                    (not_at_c_p8)

                    ; #12771: <==negation-removal== 63567 (pos)
                    (not (at_c_p8))

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #12852: origin
                    (at_c_p1)

                    ; #35483: origin
                    (not_at_c_p9)

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))

                    ; #60790: <==negation-removal== 12852 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #25154: origin
                    (at_c_p2)

                    ; #35483: origin
                    (not_at_c_p9)

                    ; #48285: <==negation-removal== 25154 (pos)
                    (not (not_at_c_p2))

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #35483: origin
                    (not_at_c_p9)

                    ; #57889: origin
                    (at_c_p3)

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))

                    ; #89857: <==negation-removal== 57889 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #35483: origin
                    (not_at_c_p9)

                    ; #57447: origin
                    (at_c_p4)

                    ; #42624: <==negation-removal== 57447 (pos)
                    (not (not_at_c_p4))

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #20916: origin
                    (at_c_p5)

                    ; #35483: origin
                    (not_at_c_p9)

                    ; #19861: <==negation-removal== 20916 (pos)
                    (not (not_at_c_p5))

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #35483: origin
                    (not_at_c_p9)

                    ; #66813: origin
                    (at_c_p6)

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))

                    ; #86368: <==negation-removal== 66813 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #35483: origin
                    (not_at_c_p9)

                    ; #60706: origin
                    (at_c_p7)

                    ; #26665: <==negation-removal== 60706 (pos)
                    (not (not_at_c_p7))

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #12771: origin
                    (at_c_p8)

                    ; #35483: origin
                    (not_at_c_p9)

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))

                    ; #63567: <==negation-removal== 12771 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #35483: origin
                    (not_at_c_p9)

                    ; #57276: origin
                    (at_c_p9)

                    ; #35483: <==negation-removal== 57276 (pos)
                    (not (not_at_c_p9))

                    ; #57276: <==negation-removal== 35483 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12197: <==closure== 16555 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #16555: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #27111: origin
                    (checked_p1)

                    ; #42144: <==commonly_known== 27111 (pos)
                    (Bb_checked_p1)

                    ; #47804: <==commonly_known== 27111 (pos)
                    (Ba_checked_p1)

                    ; #59261: <==commonly_known== 80979 (neg)
                    (Pa_checked_p1)

                    ; #64002: <==commonly_known== 80979 (neg)
                    (Pc_checked_p1)

                    ; #65779: <==commonly_known== 80979 (neg)
                    (Pb_checked_p1)

                    ; #82083: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #83853: <==commonly_known== 27111 (pos)
                    (Bc_checked_p1)

                    ; #88226: <==closure== 82083 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #19443: <==negation-removal== 42144 (pos)
                    (not (Pb_not_checked_p1))

                    ; #25754: <==uncertain_firing== 88226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #40098: <==negation-removal== 83853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58260: <==uncertain_firing== 16555 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #59950: <==uncertain_firing== 82083 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #61738: <==negation-removal== 47804 (pos)
                    (not (Pa_not_checked_p1))

                    ; #63964: <==negation-removal== 65779 (pos)
                    (not (Bb_not_checked_p1))

                    ; #65409: <==negation-removal== 82083 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #66127: <==uncertain_firing== 12197 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #68692: <==negation-removal== 64002 (pos)
                    (not (Bc_not_checked_p1))

                    ; #70946: <==negation-removal== 88226 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #75066: <==negation-removal== 12197 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #79350: <==negation-removal== 59261 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80979: <==negation-removal== 27111 (pos)
                    (not (not_checked_p1))

                    ; #88157: <==negation-removal== 16555 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12844: <==commonly_known== 68868 (pos)
                    (Ba_checked_p2)

                    ; #21391: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #32500: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #38119: <==commonly_known== 15369 (neg)
                    (Pc_checked_p2)

                    ; #46165: <==closure== 32500 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #49113: <==commonly_known== 15369 (neg)
                    (Pa_checked_p2)

                    ; #53435: <==commonly_known== 68868 (pos)
                    (Bc_checked_p2)

                    ; #61155: <==closure== 21391 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #68868: origin
                    (checked_p2)

                    ; #71835: <==commonly_known== 15369 (neg)
                    (Pb_checked_p2)

                    ; #82969: <==commonly_known== 68868 (pos)
                    (Bb_checked_p2)

                    ; #10352: <==negation-removal== 32500 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #10957: <==uncertain_firing== 32500 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #12502: <==negation-removal== 21391 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #15369: <==negation-removal== 68868 (pos)
                    (not (not_checked_p2))

                    ; #17405: <==negation-removal== 12844 (pos)
                    (not (Pa_not_checked_p2))

                    ; #37756: <==negation-removal== 71835 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42478: <==negation-removal== 38119 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44946: <==negation-removal== 49113 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48678: <==uncertain_firing== 46165 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #50557: <==negation-removal== 61155 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #55369: <==negation-removal== 46165 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #57422: <==uncertain_firing== 21391 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #64526: <==negation-removal== 53435 (pos)
                    (not (Pc_not_checked_p2))

                    ; #85978: <==uncertain_firing== 61155 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #86112: <==negation-removal== 82969 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #26207: <==closure== 56012 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #34604: <==closure== 37205 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #37205: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54725: <==commonly_known== 35357 (neg)
                    (Pb_checked_p3)

                    ; #56012: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #58794: origin
                    (checked_p3)

                    ; #60357: <==commonly_known== 58794 (pos)
                    (Bc_checked_p3)

                    ; #64241: <==commonly_known== 35357 (neg)
                    (Pa_checked_p3)

                    ; #75768: <==commonly_known== 35357 (neg)
                    (Pc_checked_p3)

                    ; #78129: <==commonly_known== 58794 (pos)
                    (Ba_checked_p3)

                    ; #87348: <==commonly_known== 58794 (pos)
                    (Bb_checked_p3)

                    ; #11404: <==negation-removal== 37205 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #15224: <==negation-removal== 87348 (pos)
                    (not (Pb_not_checked_p3))

                    ; #19849: <==negation-removal== 75768 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24607: <==negation-removal== 60357 (pos)
                    (not (Pc_not_checked_p3))

                    ; #35357: <==negation-removal== 58794 (pos)
                    (not (not_checked_p3))

                    ; #42529: <==uncertain_firing== 37205 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #43692: <==negation-removal== 26207 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #47926: <==uncertain_firing== 56012 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #51376: <==negation-removal== 78129 (pos)
                    (not (Pa_not_checked_p3))

                    ; #58310: <==negation-removal== 56012 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73579: <==negation-removal== 64241 (pos)
                    (not (Ba_not_checked_p3))

                    ; #80317: <==negation-removal== 34604 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #81127: <==uncertain_firing== 26207 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #90150: <==uncertain_firing== 34604 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #91963: <==negation-removal== 54725 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19378: origin
                    (checked_p4)

                    ; #27030: <==commonly_known== 68551 (neg)
                    (Pb_checked_p4)

                    ; #29587: <==commonly_known== 19378 (pos)
                    (Bc_checked_p4)

                    ; #31103: <==commonly_known== 68551 (neg)
                    (Pa_checked_p4)

                    ; #55945: <==closure== 59856 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #59856: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #62720: <==commonly_known== 19378 (pos)
                    (Ba_checked_p4)

                    ; #67338: <==commonly_known== 68551 (neg)
                    (Pc_checked_p4)

                    ; #76037: <==commonly_known== 19378 (pos)
                    (Bb_checked_p4)

                    ; #80084: <==closure== 87595 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #87595: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #11019: <==negation-removal== 55945 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #16715: <==negation-removal== 27030 (pos)
                    (not (Bb_not_checked_p4))

                    ; #20700: <==negation-removal== 31103 (pos)
                    (not (Ba_not_checked_p4))

                    ; #39479: <==uncertain_firing== 59856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #44362: <==negation-removal== 29587 (pos)
                    (not (Pc_not_checked_p4))

                    ; #46255: <==negation-removal== 67338 (pos)
                    (not (Bc_not_checked_p4))

                    ; #55420: <==uncertain_firing== 80084 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #57188: <==negation-removal== 59856 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #57717: <==negation-removal== 87595 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #64113: <==negation-removal== 76037 (pos)
                    (not (Pb_not_checked_p4))

                    ; #66571: <==uncertain_firing== 87595 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68551: <==negation-removal== 19378 (pos)
                    (not (not_checked_p4))

                    ; #68883: <==negation-removal== 80084 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #76771: <==negation-removal== 62720 (pos)
                    (not (Pa_not_checked_p4))

                    ; #89781: <==uncertain_firing== 55945 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #21487: <==commonly_known== 39846 (pos)
                    (Bc_checked_p5)

                    ; #34789: <==commonly_known== 48015 (neg)
                    (Pc_checked_p5)

                    ; #35666: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #37949: <==commonly_known== 39846 (pos)
                    (Ba_checked_p5)

                    ; #39846: origin
                    (checked_p5)

                    ; #49477: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #55590: <==commonly_known== 48015 (neg)
                    (Pb_checked_p5)

                    ; #56462: <==commonly_known== 48015 (neg)
                    (Pa_checked_p5)

                    ; #71010: <==closure== 35666 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #73254: <==commonly_known== 39846 (pos)
                    (Bb_checked_p5)

                    ; #88899: <==closure== 49477 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #10686: <==negation-removal== 55590 (pos)
                    (not (Bb_not_checked_p5))

                    ; #12401: <==negation-removal== 56462 (pos)
                    (not (Ba_not_checked_p5))

                    ; #22859: <==negation-removal== 35666 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #32278: <==negation-removal== 88899 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #35112: <==uncertain_firing== 88899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #44625: <==negation-removal== 73254 (pos)
                    (not (Pb_not_checked_p5))

                    ; #46715: <==negation-removal== 49477 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48015: <==negation-removal== 39846 (pos)
                    (not (not_checked_p5))

                    ; #52071: <==negation-removal== 34789 (pos)
                    (not (Bc_not_checked_p5))

                    ; #64764: <==negation-removal== 71010 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #72209: <==uncertain_firing== 71010 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #72509: <==uncertain_firing== 35666 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #75119: <==negation-removal== 21487 (pos)
                    (not (Pc_not_checked_p5))

                    ; #77137: <==uncertain_firing== 49477 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #85206: <==negation-removal== 37949 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12338: <==commonly_known== 33587 (neg)
                    (Pb_checked_p6)

                    ; #17098: <==commonly_known== 57703 (pos)
                    (Bb_checked_p6)

                    ; #19884: <==commonly_known== 57703 (pos)
                    (Ba_checked_p6)

                    ; #31288: <==closure== 80261 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #36464: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #57703: origin
                    (checked_p6)

                    ; #61968: <==commonly_known== 57703 (pos)
                    (Bc_checked_p6)

                    ; #69467: <==commonly_known== 33587 (neg)
                    (Pa_checked_p6)

                    ; #74489: <==commonly_known== 33587 (neg)
                    (Pc_checked_p6)

                    ; #80261: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #81647: <==closure== 36464 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #29814: <==negation-removal== 74489 (pos)
                    (not (Bc_not_checked_p6))

                    ; #33587: <==negation-removal== 57703 (pos)
                    (not (not_checked_p6))

                    ; #39345: <==uncertain_firing== 80261 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #40283: <==uncertain_firing== 81647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #42880: <==negation-removal== 80261 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #43127: <==negation-removal== 69467 (pos)
                    (not (Ba_not_checked_p6))

                    ; #51538: <==negation-removal== 36464 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51952: <==negation-removal== 19884 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67925: <==uncertain_firing== 36464 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #70451: <==uncertain_firing== 31288 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #71627: <==negation-removal== 61968 (pos)
                    (not (Pc_not_checked_p6))

                    ; #74484: <==negation-removal== 31288 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #77701: <==negation-removal== 12338 (pos)
                    (not (Bb_not_checked_p6))

                    ; #83313: <==negation-removal== 17098 (pos)
                    (not (Pb_not_checked_p6))

                    ; #83561: <==negation-removal== 81647 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10618: <==commonly_known== 92559 (pos)
                    (Bb_checked_p7)

                    ; #23402: <==commonly_known== 92559 (pos)
                    (Bc_checked_p7)

                    ; #33868: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #39901: <==commonly_known== 92559 (pos)
                    (Ba_checked_p7)

                    ; #45716: <==commonly_known== 26281 (neg)
                    (Pb_checked_p7)

                    ; #46399: <==closure== 33868 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #52791: <==commonly_known== 26281 (neg)
                    (Pc_checked_p7)

                    ; #72047: <==commonly_known== 26281 (neg)
                    (Pa_checked_p7)

                    ; #72828: <==closure== 77597 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #77597: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #92559: origin
                    (checked_p7)

                    ; #10586: <==negation-removal== 46399 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #12541: <==uncertain_firing== 77597 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #13943: <==uncertain_firing== 33868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23087: <==negation-removal== 52791 (pos)
                    (not (Bc_not_checked_p7))

                    ; #26281: <==negation-removal== 92559 (pos)
                    (not (not_checked_p7))

                    ; #29765: <==negation-removal== 72828 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #30916: <==negation-removal== 33868 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #32282: <==negation-removal== 45716 (pos)
                    (not (Bb_not_checked_p7))

                    ; #39648: <==negation-removal== 39901 (pos)
                    (not (Pa_not_checked_p7))

                    ; #43815: <==uncertain_firing== 46399 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #53313: <==negation-removal== 77597 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #54695: <==uncertain_firing== 72828 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #57913: <==negation-removal== 72047 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60127: <==negation-removal== 23402 (pos)
                    (not (Pc_not_checked_p7))

                    ; #65515: <==negation-removal== 10618 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #24903: <==closure== 89389 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #25849: <==commonly_known== 79912 (neg)
                    (Pb_checked_p8)

                    ; #40242: <==commonly_known== 81962 (pos)
                    (Bb_checked_p8)

                    ; #48356: <==commonly_known== 81962 (pos)
                    (Ba_checked_p8)

                    ; #54546: <==commonly_known== 79912 (neg)
                    (Pc_checked_p8)

                    ; #54837: <==closure== 81725 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #62488: <==commonly_known== 81962 (pos)
                    (Bc_checked_p8)

                    ; #81725: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #81962: origin
                    (checked_p8)

                    ; #82870: <==commonly_known== 79912 (neg)
                    (Pa_checked_p8)

                    ; #89389: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #11314: <==negation-removal== 25849 (pos)
                    (not (Bb_not_checked_p8))

                    ; #16424: <==negation-removal== 24903 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34270: <==negation-removal== 62488 (pos)
                    (not (Pc_not_checked_p8))

                    ; #34270: <==uncertain_firing== 89389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #39747: <==uncertain_firing== 81725 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #40711: <==negation-removal== 40242 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51126: <==negation-removal== 54546 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54063: <==negation-removal== 48356 (pos)
                    (not (Pa_not_checked_p8))

                    ; #61854: <==negation-removal== 54837 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #68668: <==negation-removal== 81725 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #70366: <==uncertain_firing== 54837 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #73940: <==uncertain_firing== 24903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #74737: <==negation-removal== 82870 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79912: <==negation-removal== 81962 (pos)
                    (not (not_checked_p8))

                    ; #79980: <==negation-removal== 89389 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12092: <==commonly_known== 39978 (pos)
                    (Ba_checked_p9)

                    ; #25962: <==commonly_known== 39978 (pos)
                    (Bb_checked_p9)

                    ; #37354: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #39216: <==commonly_known== 39978 (pos)
                    (Bc_checked_p9)

                    ; #39978: origin
                    (checked_p9)

                    ; #51489: <==closure== 57694 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #57694: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #59953: <==closure== 37354 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #67599: <==commonly_known== 90579 (neg)
                    (Pa_checked_p9)

                    ; #78025: <==commonly_known== 90579 (neg)
                    (Pb_checked_p9)

                    ; #91405: <==commonly_known== 90579 (neg)
                    (Pc_checked_p9)

                    ; #10361: <==negation-removal== 25962 (pos)
                    (not (Pb_not_checked_p9))

                    ; #13308: <==negation-removal== 39216 (pos)
                    (not (Pc_not_checked_p9))

                    ; #13941: <==uncertain_firing== 59953 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #17853: <==negation-removal== 59953 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #23431: <==negation-removal== 37354 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #25409: <==negation-removal== 57694 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #31072: <==negation-removal== 78025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #34718: <==negation-removal== 12092 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36528: <==negation-removal== 67599 (pos)
                    (not (Ba_not_checked_p9))

                    ; #46159: <==uncertain_firing== 37354 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #59161: <==uncertain_firing== 57694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #59878: <==uncertain_firing== 51489 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #80009: <==negation-removal== 91405 (pos)
                    (not (Bc_not_checked_p9))

                    ; #84651: <==negation-removal== 51489 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #90579: <==negation-removal== 39978 (pos)
                    (not (not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12640: <==closure== 64525 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #27111: origin
                    (checked_p1)

                    ; #42144: <==commonly_known== 27111 (pos)
                    (Bb_checked_p1)

                    ; #42898: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #47804: <==commonly_known== 27111 (pos)
                    (Ba_checked_p1)

                    ; #59261: <==commonly_known== 80979 (neg)
                    (Pa_checked_p1)

                    ; #64002: <==commonly_known== 80979 (neg)
                    (Pc_checked_p1)

                    ; #64525: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #65779: <==commonly_known== 80979 (neg)
                    (Pb_checked_p1)

                    ; #74242: <==closure== 42898 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #83853: <==commonly_known== 27111 (pos)
                    (Bc_checked_p1)

                    ; #19443: <==negation-removal== 42144 (pos)
                    (not (Pb_not_checked_p1))

                    ; #33915: <==uncertain_firing== 74242 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #40098: <==negation-removal== 83853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #42079: <==negation-removal== 74242 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #42803: <==uncertain_firing== 42898 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #48141: <==negation-removal== 42898 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #56664: <==uncertain_firing== 64525 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #56889: <==negation-removal== 64525 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61738: <==negation-removal== 47804 (pos)
                    (not (Pa_not_checked_p1))

                    ; #63964: <==negation-removal== 65779 (pos)
                    (not (Bb_not_checked_p1))

                    ; #67599: <==negation-removal== 12640 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #68692: <==negation-removal== 64002 (pos)
                    (not (Bc_not_checked_p1))

                    ; #78926: <==uncertain_firing== 12640 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #79350: <==negation-removal== 59261 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80979: <==negation-removal== 27111 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12844: <==commonly_known== 68868 (pos)
                    (Ba_checked_p2)

                    ; #14551: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #38119: <==commonly_known== 15369 (neg)
                    (Pc_checked_p2)

                    ; #49113: <==commonly_known== 15369 (neg)
                    (Pa_checked_p2)

                    ; #53435: <==commonly_known== 68868 (pos)
                    (Bc_checked_p2)

                    ; #54066: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #56513: <==closure== 14551 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #68868: origin
                    (checked_p2)

                    ; #71835: <==commonly_known== 15369 (neg)
                    (Pb_checked_p2)

                    ; #82969: <==commonly_known== 68868 (pos)
                    (Bb_checked_p2)

                    ; #88470: <==closure== 54066 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #15369: <==negation-removal== 68868 (pos)
                    (not (not_checked_p2))

                    ; #16614: <==uncertain_firing== 56513 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #16855: <==negation-removal== 14551 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #17405: <==negation-removal== 12844 (pos)
                    (not (Pa_not_checked_p2))

                    ; #30963: <==negation-removal== 88470 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #37529: <==uncertain_firing== 54066 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #37756: <==negation-removal== 71835 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42478: <==negation-removal== 38119 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44946: <==negation-removal== 49113 (pos)
                    (not (Ba_not_checked_p2))

                    ; #50468: <==negation-removal== 56513 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #52845: <==uncertain_firing== 88470 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #61517: <==uncertain_firing== 14551 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #64526: <==negation-removal== 53435 (pos)
                    (not (Pc_not_checked_p2))

                    ; #82190: <==negation-removal== 54066 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #86112: <==negation-removal== 82969 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #31159: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #31348: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #39872: <==closure== 31348 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #44765: <==closure== 31159 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #54725: <==commonly_known== 35357 (neg)
                    (Pb_checked_p3)

                    ; #58794: origin
                    (checked_p3)

                    ; #60357: <==commonly_known== 58794 (pos)
                    (Bc_checked_p3)

                    ; #64241: <==commonly_known== 35357 (neg)
                    (Pa_checked_p3)

                    ; #75768: <==commonly_known== 35357 (neg)
                    (Pc_checked_p3)

                    ; #78129: <==commonly_known== 58794 (pos)
                    (Ba_checked_p3)

                    ; #87348: <==commonly_known== 58794 (pos)
                    (Bb_checked_p3)

                    ; #15214: <==uncertain_firing== 44765 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15224: <==negation-removal== 87348 (pos)
                    (not (Pb_not_checked_p3))

                    ; #17185: <==negation-removal== 44765 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #19849: <==negation-removal== 75768 (pos)
                    (not (Bc_not_checked_p3))

                    ; #22322: <==negation-removal== 31159 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #24607: <==negation-removal== 60357 (pos)
                    (not (Pc_not_checked_p3))

                    ; #27531: <==negation-removal== 39872 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #35357: <==negation-removal== 58794 (pos)
                    (not (not_checked_p3))

                    ; #51376: <==negation-removal== 78129 (pos)
                    (not (Pa_not_checked_p3))

                    ; #67999: <==uncertain_firing== 39872 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #73579: <==negation-removal== 64241 (pos)
                    (not (Ba_not_checked_p3))

                    ; #81457: <==uncertain_firing== 31159 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #83900: <==negation-removal== 31348 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #86126: <==uncertain_firing== 31348 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #91963: <==negation-removal== 54725 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15068: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #19378: origin
                    (checked_p4)

                    ; #27030: <==commonly_known== 68551 (neg)
                    (Pb_checked_p4)

                    ; #29587: <==commonly_known== 19378 (pos)
                    (Bc_checked_p4)

                    ; #31103: <==commonly_known== 68551 (neg)
                    (Pa_checked_p4)

                    ; #62720: <==commonly_known== 19378 (pos)
                    (Ba_checked_p4)

                    ; #67338: <==commonly_known== 68551 (neg)
                    (Pc_checked_p4)

                    ; #73256: <==closure== 15068 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #76037: <==commonly_known== 19378 (pos)
                    (Bb_checked_p4)

                    ; #82971: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #85492: <==closure== 82971 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #16715: <==negation-removal== 27030 (pos)
                    (not (Bb_not_checked_p4))

                    ; #20700: <==negation-removal== 31103 (pos)
                    (not (Ba_not_checked_p4))

                    ; #25922: <==negation-removal== 15068 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #37796: <==uncertain_firing== 85492 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #44362: <==negation-removal== 29587 (pos)
                    (not (Pc_not_checked_p4))

                    ; #46255: <==negation-removal== 67338 (pos)
                    (not (Bc_not_checked_p4))

                    ; #58449: <==negation-removal== 85492 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #63447: <==negation-removal== 73256 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #64113: <==negation-removal== 76037 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68551: <==negation-removal== 19378 (pos)
                    (not (not_checked_p4))

                    ; #69112: <==uncertain_firing== 15068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #76771: <==negation-removal== 62720 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77677: <==uncertain_firing== 73256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #79367: <==negation-removal== 82971 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #91110: <==uncertain_firing== 82971 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14930: <==closure== 31429 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #21487: <==commonly_known== 39846 (pos)
                    (Bc_checked_p5)

                    ; #31429: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #34789: <==commonly_known== 48015 (neg)
                    (Pc_checked_p5)

                    ; #37949: <==commonly_known== 39846 (pos)
                    (Ba_checked_p5)

                    ; #39846: origin
                    (checked_p5)

                    ; #46723: <==closure== 58786 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #55590: <==commonly_known== 48015 (neg)
                    (Pb_checked_p5)

                    ; #56462: <==commonly_known== 48015 (neg)
                    (Pa_checked_p5)

                    ; #58786: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #73254: <==commonly_known== 39846 (pos)
                    (Bb_checked_p5)

                    ; #10686: <==negation-removal== 55590 (pos)
                    (not (Bb_not_checked_p5))

                    ; #12401: <==negation-removal== 56462 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15401: <==negation-removal== 14930 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #20536: <==uncertain_firing== 58786 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #35392: <==negation-removal== 46723 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #44625: <==negation-removal== 73254 (pos)
                    (not (Pb_not_checked_p5))

                    ; #48015: <==negation-removal== 39846 (pos)
                    (not (not_checked_p5))

                    ; #52071: <==negation-removal== 34789 (pos)
                    (not (Bc_not_checked_p5))

                    ; #54134: <==negation-removal== 31429 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #54425: <==uncertain_firing== 31429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #57409: <==negation-removal== 58786 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #60455: <==uncertain_firing== 46723 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #68682: <==uncertain_firing== 14930 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #75119: <==negation-removal== 21487 (pos)
                    (not (Pc_not_checked_p5))

                    ; #85206: <==negation-removal== 37949 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12338: <==commonly_known== 33587 (neg)
                    (Pb_checked_p6)

                    ; #15428: <==closure== 17039 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #17039: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #17098: <==commonly_known== 57703 (pos)
                    (Bb_checked_p6)

                    ; #19021: <==closure== 29198 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #19884: <==commonly_known== 57703 (pos)
                    (Ba_checked_p6)

                    ; #29198: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #57703: origin
                    (checked_p6)

                    ; #61968: <==commonly_known== 57703 (pos)
                    (Bc_checked_p6)

                    ; #69467: <==commonly_known== 33587 (neg)
                    (Pa_checked_p6)

                    ; #74489: <==commonly_known== 33587 (neg)
                    (Pc_checked_p6)

                    ; #12179: <==negation-removal== 19021 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #15417: <==negation-removal== 17039 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #16320: <==negation-removal== 15428 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #29814: <==negation-removal== 74489 (pos)
                    (not (Bc_not_checked_p6))

                    ; #33587: <==negation-removal== 57703 (pos)
                    (not (not_checked_p6))

                    ; #35078: <==uncertain_firing== 29198 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #36353: <==uncertain_firing== 15428 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #40051: <==uncertain_firing== 19021 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #41408: <==uncertain_firing== 17039 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #43127: <==negation-removal== 69467 (pos)
                    (not (Ba_not_checked_p6))

                    ; #51952: <==negation-removal== 19884 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51979: <==negation-removal== 29198 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #71627: <==negation-removal== 61968 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77701: <==negation-removal== 12338 (pos)
                    (not (Bb_not_checked_p6))

                    ; #83313: <==negation-removal== 17098 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10033: <==closure== 17018 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #10618: <==commonly_known== 92559 (pos)
                    (Bb_checked_p7)

                    ; #17018: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #23402: <==commonly_known== 92559 (pos)
                    (Bc_checked_p7)

                    ; #30020: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #33333: <==closure== 30020 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #39901: <==commonly_known== 92559 (pos)
                    (Ba_checked_p7)

                    ; #45716: <==commonly_known== 26281 (neg)
                    (Pb_checked_p7)

                    ; #52791: <==commonly_known== 26281 (neg)
                    (Pc_checked_p7)

                    ; #72047: <==commonly_known== 26281 (neg)
                    (Pa_checked_p7)

                    ; #92559: origin
                    (checked_p7)

                    ; #10276: <==uncertain_firing== 10033 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #11846: <==negation-removal== 17018 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #18098: <==uncertain_firing== 33333 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #23087: <==negation-removal== 52791 (pos)
                    (not (Bc_not_checked_p7))

                    ; #26281: <==negation-removal== 92559 (pos)
                    (not (not_checked_p7))

                    ; #32282: <==negation-removal== 45716 (pos)
                    (not (Bb_not_checked_p7))

                    ; #32794: <==negation-removal== 33333 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #39648: <==negation-removal== 39901 (pos)
                    (not (Pa_not_checked_p7))

                    ; #57913: <==negation-removal== 72047 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60127: <==negation-removal== 23402 (pos)
                    (not (Pc_not_checked_p7))

                    ; #60222: <==uncertain_firing== 17018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #63086: <==negation-removal== 10033 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #65515: <==negation-removal== 10618 (pos)
                    (not (Pb_not_checked_p7))

                    ; #77488: <==negation-removal== 30020 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #77880: <==uncertain_firing== 30020 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25849: <==commonly_known== 79912 (neg)
                    (Pb_checked_p8)

                    ; #40242: <==commonly_known== 81962 (pos)
                    (Bb_checked_p8)

                    ; #42110: <==closure== 47901 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #47577: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #47901: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #48356: <==commonly_known== 81962 (pos)
                    (Ba_checked_p8)

                    ; #54546: <==commonly_known== 79912 (neg)
                    (Pc_checked_p8)

                    ; #62488: <==commonly_known== 81962 (pos)
                    (Bc_checked_p8)

                    ; #69380: <==closure== 47577 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #81962: origin
                    (checked_p8)

                    ; #82870: <==commonly_known== 79912 (neg)
                    (Pa_checked_p8)

                    ; #11314: <==negation-removal== 25849 (pos)
                    (not (Bb_not_checked_p8))

                    ; #24833: <==negation-removal== 47901 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29002: <==uncertain_firing== 47901 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #34270: <==negation-removal== 62488 (pos)
                    (not (Pc_not_checked_p8))

                    ; #38103: <==uncertain_firing== 42110 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #40711: <==negation-removal== 40242 (pos)
                    (not (Pb_not_checked_p8))

                    ; #51126: <==negation-removal== 54546 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54063: <==negation-removal== 48356 (pos)
                    (not (Pa_not_checked_p8))

                    ; #55340: <==uncertain_firing== 47577 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #57095: <==negation-removal== 42110 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #61346: <==negation-removal== 69380 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #74737: <==negation-removal== 82870 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79912: <==negation-removal== 81962 (pos)
                    (not (not_checked_p8))

                    ; #83591: <==uncertain_firing== 69380 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #87239: <==negation-removal== 47577 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12092: <==commonly_known== 39978 (pos)
                    (Ba_checked_p9)

                    ; #25962: <==commonly_known== 39978 (pos)
                    (Bb_checked_p9)

                    ; #36850: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #39216: <==commonly_known== 39978 (pos)
                    (Bc_checked_p9)

                    ; #39978: origin
                    (checked_p9)

                    ; #45171: <==closure== 48898 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #48898: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #67599: <==commonly_known== 90579 (neg)
                    (Pa_checked_p9)

                    ; #78025: <==commonly_known== 90579 (neg)
                    (Pb_checked_p9)

                    ; #83623: <==closure== 36850 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #91405: <==commonly_known== 90579 (neg)
                    (Pc_checked_p9)

                    ; #10361: <==negation-removal== 25962 (pos)
                    (not (Pb_not_checked_p9))

                    ; #13308: <==negation-removal== 39216 (pos)
                    (not (Pc_not_checked_p9))

                    ; #18973: <==uncertain_firing== 36850 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #19209: <==negation-removal== 36850 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #21540: <==uncertain_firing== 83623 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #26125: <==negation-removal== 48898 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #29482: <==negation-removal== 83623 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #31072: <==negation-removal== 78025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #34718: <==negation-removal== 12092 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36528: <==negation-removal== 67599 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39848: <==uncertain_firing== 45171 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #65019: <==uncertain_firing== 48898 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #65581: <==negation-removal== 45171 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #80009: <==negation-removal== 91405 (pos)
                    (not (Bc_not_checked_p9))

                    ; #90579: <==negation-removal== 39978 (pos)
                    (not (not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #26250: <==closure== 83947 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #27111: origin
                    (checked_p1)

                    ; #42144: <==commonly_known== 27111 (pos)
                    (Bb_checked_p1)

                    ; #44577: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #47804: <==commonly_known== 27111 (pos)
                    (Ba_checked_p1)

                    ; #59261: <==commonly_known== 80979 (neg)
                    (Pa_checked_p1)

                    ; #64002: <==commonly_known== 80979 (neg)
                    (Pc_checked_p1)

                    ; #65779: <==commonly_known== 80979 (neg)
                    (Pb_checked_p1)

                    ; #79539: <==closure== 44577 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #83853: <==commonly_known== 27111 (pos)
                    (Bc_checked_p1)

                    ; #83947: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #11888: <==negation-removal== 26250 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19443: <==negation-removal== 42144 (pos)
                    (not (Pb_not_checked_p1))

                    ; #19916: <==uncertain_firing== 79539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #39057: <==uncertain_firing== 26250 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #40098: <==negation-removal== 83853 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46501: <==negation-removal== 83947 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #52425: <==negation-removal== 79539 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #55837: <==negation-removal== 44577 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #57674: <==uncertain_firing== 83947 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #61076: <==uncertain_firing== 44577 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #61738: <==negation-removal== 47804 (pos)
                    (not (Pa_not_checked_p1))

                    ; #63964: <==negation-removal== 65779 (pos)
                    (not (Bb_not_checked_p1))

                    ; #68692: <==negation-removal== 64002 (pos)
                    (not (Bc_not_checked_p1))

                    ; #79350: <==negation-removal== 59261 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80979: <==negation-removal== 27111 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11278: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12844: <==commonly_known== 68868 (pos)
                    (Ba_checked_p2)

                    ; #17719: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #35212: <==closure== 11278 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #38119: <==commonly_known== 15369 (neg)
                    (Pc_checked_p2)

                    ; #49113: <==commonly_known== 15369 (neg)
                    (Pa_checked_p2)

                    ; #53435: <==commonly_known== 68868 (pos)
                    (Bc_checked_p2)

                    ; #68868: origin
                    (checked_p2)

                    ; #71835: <==commonly_known== 15369 (neg)
                    (Pb_checked_p2)

                    ; #82969: <==commonly_known== 68868 (pos)
                    (Bb_checked_p2)

                    ; #85248: <==closure== 17719 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #14736: <==negation-removal== 85248 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #15369: <==negation-removal== 68868 (pos)
                    (not (not_checked_p2))

                    ; #17405: <==negation-removal== 12844 (pos)
                    (not (Pa_not_checked_p2))

                    ; #30300: <==negation-removal== 35212 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36108: <==uncertain_firing== 17719 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #37756: <==negation-removal== 71835 (pos)
                    (not (Bb_not_checked_p2))

                    ; #42478: <==negation-removal== 38119 (pos)
                    (not (Bc_not_checked_p2))

                    ; #43568: <==negation-removal== 11278 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #44946: <==negation-removal== 49113 (pos)
                    (not (Ba_not_checked_p2))

                    ; #51206: <==uncertain_firing== 35212 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #53459: <==negation-removal== 17719 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #54069: <==uncertain_firing== 85248 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #64526: <==negation-removal== 53435 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79764: <==uncertain_firing== 11278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #86112: <==negation-removal== 82969 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #54725: <==commonly_known== 35357 (neg)
                    (Pb_checked_p3)

                    ; #57333: <==closure== 66854 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #58794: origin
                    (checked_p3)

                    ; #60357: <==commonly_known== 58794 (pos)
                    (Bc_checked_p3)

                    ; #64241: <==commonly_known== 35357 (neg)
                    (Pa_checked_p3)

                    ; #66854: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #69414: <==closure== 84152 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #75768: <==commonly_known== 35357 (neg)
                    (Pc_checked_p3)

                    ; #78129: <==commonly_known== 58794 (pos)
                    (Ba_checked_p3)

                    ; #84152: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #87348: <==commonly_known== 58794 (pos)
                    (Bb_checked_p3)

                    ; #13648: <==negation-removal== 66854 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #15068: <==negation-removal== 69414 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #15224: <==negation-removal== 87348 (pos)
                    (not (Pb_not_checked_p3))

                    ; #19849: <==negation-removal== 75768 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24607: <==negation-removal== 60357 (pos)
                    (not (Pc_not_checked_p3))

                    ; #30156: <==uncertain_firing== 57333 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #35357: <==negation-removal== 58794 (pos)
                    (not (not_checked_p3))

                    ; #51376: <==negation-removal== 78129 (pos)
                    (not (Pa_not_checked_p3))

                    ; #52202: <==uncertain_firing== 69414 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #52571: <==negation-removal== 57333 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #66561: <==uncertain_firing== 66854 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #73579: <==negation-removal== 64241 (pos)
                    (not (Ba_not_checked_p3))

                    ; #81770: <==uncertain_firing== 84152 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #83144: <==negation-removal== 84152 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #91963: <==negation-removal== 54725 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12611: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #19378: origin
                    (checked_p4)

                    ; #25459: <==closure== 12611 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #27030: <==commonly_known== 68551 (neg)
                    (Pb_checked_p4)

                    ; #29587: <==commonly_known== 19378 (pos)
                    (Bc_checked_p4)

                    ; #31103: <==commonly_known== 68551 (neg)
                    (Pa_checked_p4)

                    ; #62720: <==commonly_known== 19378 (pos)
                    (Ba_checked_p4)

                    ; #67338: <==commonly_known== 68551 (neg)
                    (Pc_checked_p4)

                    ; #76037: <==commonly_known== 19378 (pos)
                    (Bb_checked_p4)

                    ; #80172: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #81140: <==closure== 80172 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #16307: <==uncertain_firing== 25459 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #16531: <==uncertain_firing== 80172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #16715: <==negation-removal== 27030 (pos)
                    (not (Bb_not_checked_p4))

                    ; #20700: <==negation-removal== 31103 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32163: <==uncertain_firing== 81140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38029: <==negation-removal== 12611 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #44362: <==negation-removal== 29587 (pos)
                    (not (Pc_not_checked_p4))

                    ; #46255: <==negation-removal== 67338 (pos)
                    (not (Bc_not_checked_p4))

                    ; #48558: <==negation-removal== 80172 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #64113: <==negation-removal== 76037 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68551: <==negation-removal== 19378 (pos)
                    (not (not_checked_p4))

                    ; #76771: <==negation-removal== 62720 (pos)
                    (not (Pa_not_checked_p4))

                    ; #82511: <==negation-removal== 25459 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #84876: <==uncertain_firing== 12611 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #86759: <==negation-removal== 81140 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14199: <==closure== 28670 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #21487: <==commonly_known== 39846 (pos)
                    (Bc_checked_p5)

                    ; #28670: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #34789: <==commonly_known== 48015 (neg)
                    (Pc_checked_p5)

                    ; #35772: <==closure== 82915 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #37949: <==commonly_known== 39846 (pos)
                    (Ba_checked_p5)

                    ; #39846: origin
                    (checked_p5)

                    ; #55590: <==commonly_known== 48015 (neg)
                    (Pb_checked_p5)

                    ; #56462: <==commonly_known== 48015 (neg)
                    (Pa_checked_p5)

                    ; #73254: <==commonly_known== 39846 (pos)
                    (Bb_checked_p5)

                    ; #82915: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #10686: <==negation-removal== 55590 (pos)
                    (not (Bb_not_checked_p5))

                    ; #12401: <==negation-removal== 56462 (pos)
                    (not (Ba_not_checked_p5))

                    ; #17326: <==negation-removal== 28670 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #27263: <==uncertain_firing== 82915 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #32141: <==uncertain_firing== 35772 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #44109: <==uncertain_firing== 28670 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #44625: <==negation-removal== 73254 (pos)
                    (not (Pb_not_checked_p5))

                    ; #48015: <==negation-removal== 39846 (pos)
                    (not (not_checked_p5))

                    ; #52071: <==negation-removal== 34789 (pos)
                    (not (Bc_not_checked_p5))

                    ; #53927: <==negation-removal== 82915 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #59485: <==uncertain_firing== 14199 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #67684: <==negation-removal== 14199 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #74914: <==negation-removal== 35772 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #75119: <==negation-removal== 21487 (pos)
                    (not (Pc_not_checked_p5))

                    ; #85206: <==negation-removal== 37949 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11508: <==closure== 28090 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #12338: <==commonly_known== 33587 (neg)
                    (Pb_checked_p6)

                    ; #17098: <==commonly_known== 57703 (pos)
                    (Bb_checked_p6)

                    ; #19884: <==commonly_known== 57703 (pos)
                    (Ba_checked_p6)

                    ; #28090: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #57418: <==closure== 83178 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #57703: origin
                    (checked_p6)

                    ; #61968: <==commonly_known== 57703 (pos)
                    (Bc_checked_p6)

                    ; #69467: <==commonly_known== 33587 (neg)
                    (Pa_checked_p6)

                    ; #74489: <==commonly_known== 33587 (neg)
                    (Pc_checked_p6)

                    ; #83178: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #26865: <==negation-removal== 83178 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #29814: <==negation-removal== 74489 (pos)
                    (not (Bc_not_checked_p6))

                    ; #32159: <==negation-removal== 11508 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #33587: <==negation-removal== 57703 (pos)
                    (not (not_checked_p6))

                    ; #33766: <==uncertain_firing== 83178 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #41880: <==uncertain_firing== 11508 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #43127: <==negation-removal== 69467 (pos)
                    (not (Ba_not_checked_p6))

                    ; #43246: <==uncertain_firing== 28090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #44163: <==negation-removal== 28090 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #51952: <==negation-removal== 19884 (pos)
                    (not (Pa_not_checked_p6))

                    ; #71627: <==negation-removal== 61968 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77701: <==negation-removal== 12338 (pos)
                    (not (Bb_not_checked_p6))

                    ; #78631: <==negation-removal== 57418 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #83313: <==negation-removal== 17098 (pos)
                    (not (Pb_not_checked_p6))

                    ; #85797: <==uncertain_firing== 57418 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10618: <==commonly_known== 92559 (pos)
                    (Bb_checked_p7)

                    ; #20578: <==closure== 62718 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #21071: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #23402: <==commonly_known== 92559 (pos)
                    (Bc_checked_p7)

                    ; #35743: <==closure== 21071 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #39901: <==commonly_known== 92559 (pos)
                    (Ba_checked_p7)

                    ; #45716: <==commonly_known== 26281 (neg)
                    (Pb_checked_p7)

                    ; #52791: <==commonly_known== 26281 (neg)
                    (Pc_checked_p7)

                    ; #62718: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #72047: <==commonly_known== 26281 (neg)
                    (Pa_checked_p7)

                    ; #92559: origin
                    (checked_p7)

                    ; #16246: <==uncertain_firing== 21071 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #19281: <==negation-removal== 20578 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #22160: <==uncertain_firing== 62718 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #23087: <==negation-removal== 52791 (pos)
                    (not (Bc_not_checked_p7))

                    ; #26281: <==negation-removal== 92559 (pos)
                    (not (not_checked_p7))

                    ; #32282: <==negation-removal== 45716 (pos)
                    (not (Bb_not_checked_p7))

                    ; #35008: <==negation-removal== 62718 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #39648: <==negation-removal== 39901 (pos)
                    (not (Pa_not_checked_p7))

                    ; #44701: <==uncertain_firing== 35743 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #45397: <==uncertain_firing== 20578 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #57913: <==negation-removal== 72047 (pos)
                    (not (Ba_not_checked_p7))

                    ; #59208: <==negation-removal== 35743 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #60127: <==negation-removal== 23402 (pos)
                    (not (Pc_not_checked_p7))

                    ; #65515: <==negation-removal== 10618 (pos)
                    (not (Pb_not_checked_p7))

                    ; #73021: <==negation-removal== 21071 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25849: <==commonly_known== 79912 (neg)
                    (Pb_checked_p8)

                    ; #32558: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #40242: <==commonly_known== 81962 (pos)
                    (Bb_checked_p8)

                    ; #47065: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #48356: <==commonly_known== 81962 (pos)
                    (Ba_checked_p8)

                    ; #52448: <==closure== 47065 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #54546: <==commonly_known== 79912 (neg)
                    (Pc_checked_p8)

                    ; #62488: <==commonly_known== 81962 (pos)
                    (Bc_checked_p8)

                    ; #77936: <==closure== 32558 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #81962: origin
                    (checked_p8)

                    ; #82870: <==commonly_known== 79912 (neg)
                    (Pa_checked_p8)

                    ; #11314: <==negation-removal== 25849 (pos)
                    (not (Bb_not_checked_p8))

                    ; #13914: <==negation-removal== 47065 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #34270: <==negation-removal== 62488 (pos)
                    (not (Pc_not_checked_p8))

                    ; #36326: <==negation-removal== 32558 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #40711: <==negation-removal== 40242 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41292: <==negation-removal== 77936 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #51126: <==negation-removal== 54546 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54063: <==negation-removal== 48356 (pos)
                    (not (Pa_not_checked_p8))

                    ; #54981: <==uncertain_firing== 47065 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #69428: <==uncertain_firing== 77936 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74737: <==negation-removal== 82870 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79912: <==negation-removal== 81962 (pos)
                    (not (not_checked_p8))

                    ; #81592: <==uncertain_firing== 32558 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83873: <==negation-removal== 52448 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #86962: <==uncertain_firing== 52448 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11584: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #12092: <==commonly_known== 39978 (pos)
                    (Ba_checked_p9)

                    ; #17002: <==closure== 11584 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #17963: <==closure== 26874 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #25962: <==commonly_known== 39978 (pos)
                    (Bb_checked_p9)

                    ; #26874: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #39216: <==commonly_known== 39978 (pos)
                    (Bc_checked_p9)

                    ; #39978: origin
                    (checked_p9)

                    ; #67599: <==commonly_known== 90579 (neg)
                    (Pa_checked_p9)

                    ; #78025: <==commonly_known== 90579 (neg)
                    (Pb_checked_p9)

                    ; #91405: <==commonly_known== 90579 (neg)
                    (Pc_checked_p9)

                    ; #10361: <==negation-removal== 25962 (pos)
                    (not (Pb_not_checked_p9))

                    ; #13308: <==negation-removal== 39216 (pos)
                    (not (Pc_not_checked_p9))

                    ; #18828: <==negation-removal== 17963 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #30720: <==uncertain_firing== 17002 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #31072: <==negation-removal== 78025 (pos)
                    (not (Bb_not_checked_p9))

                    ; #34718: <==negation-removal== 12092 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36528: <==negation-removal== 67599 (pos)
                    (not (Ba_not_checked_p9))

                    ; #57408: <==negation-removal== 17002 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #70929: <==negation-removal== 26874 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #79556: <==negation-removal== 11584 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #80009: <==negation-removal== 91405 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82081: <==uncertain_firing== 26874 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #86976: <==uncertain_firing== 17963 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #87309: <==uncertain_firing== 11584 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #90579: <==negation-removal== 39978 (pos)
                    (not (not_checked_p9))))

)