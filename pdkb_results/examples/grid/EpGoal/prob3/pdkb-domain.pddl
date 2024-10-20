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
                    ; #25701: origin
                    (Bb_survivorat_s_p1)

                    ; #60121: <==closure== 82098 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77185: <==closure== 25701 (pos)
                    (Pb_survivorat_s_p1)

                    ; #82098: origin
                    (Ba_survivorat_s_p1)

                    ; #83739: <==closure== 89987 (pos)
                    (Pc_survivorat_s_p1)

                    ; #89987: origin
                    (Bc_survivorat_s_p1)

                    ; #21655: <==negation-removal== 77185 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #42266: <==negation-removal== 82098 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #50547: <==negation-removal== 89987 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #60512: <==negation-removal== 25701 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81020: <==negation-removal== 83739 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #88282: <==negation-removal== 60121 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #25701: origin
                    (Bb_survivorat_s_p1)

                    ; #60121: <==closure== 82098 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77185: <==closure== 25701 (pos)
                    (Pb_survivorat_s_p1)

                    ; #82098: origin
                    (Ba_survivorat_s_p1)

                    ; #83739: <==closure== 89987 (pos)
                    (Pc_survivorat_s_p1)

                    ; #89987: origin
                    (Bc_survivorat_s_p1)

                    ; #21655: <==negation-removal== 77185 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #42266: <==negation-removal== 82098 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #50547: <==negation-removal== 89987 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #60512: <==negation-removal== 25701 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81020: <==negation-removal== 83739 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #88282: <==negation-removal== 60121 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #25701: origin
                    (Bb_survivorat_s_p1)

                    ; #60121: <==closure== 82098 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77185: <==closure== 25701 (pos)
                    (Pb_survivorat_s_p1)

                    ; #82098: origin
                    (Ba_survivorat_s_p1)

                    ; #83739: <==closure== 89987 (pos)
                    (Pc_survivorat_s_p1)

                    ; #89987: origin
                    (Bc_survivorat_s_p1)

                    ; #21655: <==negation-removal== 77185 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #42266: <==negation-removal== 82098 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #50547: <==negation-removal== 89987 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #60512: <==negation-removal== 25701 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81020: <==negation-removal== 83739 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #88282: <==negation-removal== 60121 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #32347: <==closure== 64220 (pos)
                    (Pb_survivorat_s_p2)

                    ; #35738: origin
                    (Ba_survivorat_s_p2)

                    ; #43486: <==closure== 35738 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56144: <==closure== 59335 (pos)
                    (Pc_survivorat_s_p2)

                    ; #59335: origin
                    (Bc_survivorat_s_p2)

                    ; #64220: origin
                    (Bb_survivorat_s_p2)

                    ; #19852: <==negation-removal== 56144 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41739: <==negation-removal== 32347 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #44056: <==negation-removal== 43486 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #47985: <==negation-removal== 64220 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #64036: <==negation-removal== 35738 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #80195: <==negation-removal== 59335 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #32347: <==closure== 64220 (pos)
                    (Pb_survivorat_s_p2)

                    ; #35738: origin
                    (Ba_survivorat_s_p2)

                    ; #43486: <==closure== 35738 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56144: <==closure== 59335 (pos)
                    (Pc_survivorat_s_p2)

                    ; #59335: origin
                    (Bc_survivorat_s_p2)

                    ; #64220: origin
                    (Bb_survivorat_s_p2)

                    ; #19852: <==negation-removal== 56144 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41739: <==negation-removal== 32347 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #44056: <==negation-removal== 43486 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #47985: <==negation-removal== 64220 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #64036: <==negation-removal== 35738 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #80195: <==negation-removal== 59335 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #32347: <==closure== 64220 (pos)
                    (Pb_survivorat_s_p2)

                    ; #35738: origin
                    (Ba_survivorat_s_p2)

                    ; #43486: <==closure== 35738 (pos)
                    (Pa_survivorat_s_p2)

                    ; #56144: <==closure== 59335 (pos)
                    (Pc_survivorat_s_p2)

                    ; #59335: origin
                    (Bc_survivorat_s_p2)

                    ; #64220: origin
                    (Bb_survivorat_s_p2)

                    ; #19852: <==negation-removal== 56144 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41739: <==negation-removal== 32347 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #44056: <==negation-removal== 43486 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #47985: <==negation-removal== 64220 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #64036: <==negation-removal== 35738 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #80195: <==negation-removal== 59335 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #12320: <==closure== 12704 (pos)
                    (Pa_survivorat_s_p3)

                    ; #12704: origin
                    (Ba_survivorat_s_p3)

                    ; #54754: <==closure== 55534 (pos)
                    (Pc_survivorat_s_p3)

                    ; #55534: origin
                    (Bc_survivorat_s_p3)

                    ; #77979: origin
                    (Bb_survivorat_s_p3)

                    ; #94309: <==closure== 77979 (pos)
                    (Pb_survivorat_s_p3)

                    ; #10194: <==negation-removal== 54754 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #22005: <==negation-removal== 12704 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #40838: <==negation-removal== 94309 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #41422: <==negation-removal== 12320 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59721: <==negation-removal== 55534 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #76626: <==negation-removal== 77979 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12320: <==closure== 12704 (pos)
                    (Pa_survivorat_s_p3)

                    ; #12704: origin
                    (Ba_survivorat_s_p3)

                    ; #54754: <==closure== 55534 (pos)
                    (Pc_survivorat_s_p3)

                    ; #55534: origin
                    (Bc_survivorat_s_p3)

                    ; #77979: origin
                    (Bb_survivorat_s_p3)

                    ; #94309: <==closure== 77979 (pos)
                    (Pb_survivorat_s_p3)

                    ; #10194: <==negation-removal== 54754 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #22005: <==negation-removal== 12704 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #40838: <==negation-removal== 94309 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #41422: <==negation-removal== 12320 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59721: <==negation-removal== 55534 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #76626: <==negation-removal== 77979 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #12320: <==closure== 12704 (pos)
                    (Pa_survivorat_s_p3)

                    ; #12704: origin
                    (Ba_survivorat_s_p3)

                    ; #54754: <==closure== 55534 (pos)
                    (Pc_survivorat_s_p3)

                    ; #55534: origin
                    (Bc_survivorat_s_p3)

                    ; #77979: origin
                    (Bb_survivorat_s_p3)

                    ; #94309: <==closure== 77979 (pos)
                    (Pb_survivorat_s_p3)

                    ; #10194: <==negation-removal== 54754 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #22005: <==negation-removal== 12704 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #40838: <==negation-removal== 94309 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #41422: <==negation-removal== 12320 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59721: <==negation-removal== 55534 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #76626: <==negation-removal== 77979 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #11557: <==closure== 16937 (pos)
                    (Pb_survivorat_s_p4)

                    ; #16937: origin
                    (Bb_survivorat_s_p4)

                    ; #17865: <==closure== 25537 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25537: origin
                    (Bc_survivorat_s_p4)

                    ; #38756: <==closure== 78456 (pos)
                    (Pa_survivorat_s_p4)

                    ; #78456: origin
                    (Ba_survivorat_s_p4)

                    ; #10709: <==negation-removal== 38756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #23705: <==negation-removal== 17865 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #23906: <==negation-removal== 25537 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #47868: <==negation-removal== 16937 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #57126: <==negation-removal== 78456 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #82803: <==negation-removal== 11557 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #11557: <==closure== 16937 (pos)
                    (Pb_survivorat_s_p4)

                    ; #16937: origin
                    (Bb_survivorat_s_p4)

                    ; #17865: <==closure== 25537 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25537: origin
                    (Bc_survivorat_s_p4)

                    ; #38756: <==closure== 78456 (pos)
                    (Pa_survivorat_s_p4)

                    ; #78456: origin
                    (Ba_survivorat_s_p4)

                    ; #10709: <==negation-removal== 38756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #23705: <==negation-removal== 17865 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #23906: <==negation-removal== 25537 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #47868: <==negation-removal== 16937 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #57126: <==negation-removal== 78456 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #82803: <==negation-removal== 11557 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #11557: <==closure== 16937 (pos)
                    (Pb_survivorat_s_p4)

                    ; #16937: origin
                    (Bb_survivorat_s_p4)

                    ; #17865: <==closure== 25537 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25537: origin
                    (Bc_survivorat_s_p4)

                    ; #38756: <==closure== 78456 (pos)
                    (Pa_survivorat_s_p4)

                    ; #78456: origin
                    (Ba_survivorat_s_p4)

                    ; #10709: <==negation-removal== 38756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #23705: <==negation-removal== 17865 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #23906: <==negation-removal== 25537 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #47868: <==negation-removal== 16937 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #57126: <==negation-removal== 78456 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #82803: <==negation-removal== 11557 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #21017: origin
                    (Bb_survivorat_s_p5)

                    ; #25305: origin
                    (Ba_survivorat_s_p5)

                    ; #26368: <==closure== 25305 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28965: <==closure== 21017 (pos)
                    (Pb_survivorat_s_p5)

                    ; #57321: origin
                    (Bc_survivorat_s_p5)

                    ; #70595: <==closure== 57321 (pos)
                    (Pc_survivorat_s_p5)

                    ; #24718: <==negation-removal== 70595 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #39067: <==negation-removal== 57321 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #54770: <==negation-removal== 28965 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61795: <==negation-removal== 21017 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #62051: <==negation-removal== 25305 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #80021: <==negation-removal== 26368 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #21017: origin
                    (Bb_survivorat_s_p5)

                    ; #25305: origin
                    (Ba_survivorat_s_p5)

                    ; #26368: <==closure== 25305 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28965: <==closure== 21017 (pos)
                    (Pb_survivorat_s_p5)

                    ; #57321: origin
                    (Bc_survivorat_s_p5)

                    ; #70595: <==closure== 57321 (pos)
                    (Pc_survivorat_s_p5)

                    ; #24718: <==negation-removal== 70595 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #39067: <==negation-removal== 57321 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #54770: <==negation-removal== 28965 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61795: <==negation-removal== 21017 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #62051: <==negation-removal== 25305 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #80021: <==negation-removal== 26368 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #21017: origin
                    (Bb_survivorat_s_p5)

                    ; #25305: origin
                    (Ba_survivorat_s_p5)

                    ; #26368: <==closure== 25305 (pos)
                    (Pa_survivorat_s_p5)

                    ; #28965: <==closure== 21017 (pos)
                    (Pb_survivorat_s_p5)

                    ; #57321: origin
                    (Bc_survivorat_s_p5)

                    ; #70595: <==closure== 57321 (pos)
                    (Pc_survivorat_s_p5)

                    ; #24718: <==negation-removal== 70595 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #39067: <==negation-removal== 57321 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #54770: <==negation-removal== 28965 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #61795: <==negation-removal== 21017 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #62051: <==negation-removal== 25305 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #80021: <==negation-removal== 26368 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #32974: <==closure== 69590 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39616: <==closure== 53832 (pos)
                    (Pc_survivorat_s_p6)

                    ; #41688: origin
                    (Ba_survivorat_s_p6)

                    ; #53832: origin
                    (Bc_survivorat_s_p6)

                    ; #69590: origin
                    (Bb_survivorat_s_p6)

                    ; #72184: <==closure== 41688 (pos)
                    (Pa_survivorat_s_p6)

                    ; #11300: <==negation-removal== 72184 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39267: <==negation-removal== 32974 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #58078: <==negation-removal== 41688 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #72528: <==negation-removal== 39616 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #83106: <==negation-removal== 53832 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90499: <==negation-removal== 69590 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #32974: <==closure== 69590 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39616: <==closure== 53832 (pos)
                    (Pc_survivorat_s_p6)

                    ; #41688: origin
                    (Ba_survivorat_s_p6)

                    ; #53832: origin
                    (Bc_survivorat_s_p6)

                    ; #69590: origin
                    (Bb_survivorat_s_p6)

                    ; #72184: <==closure== 41688 (pos)
                    (Pa_survivorat_s_p6)

                    ; #11300: <==negation-removal== 72184 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39267: <==negation-removal== 32974 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #58078: <==negation-removal== 41688 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #72528: <==negation-removal== 39616 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #83106: <==negation-removal== 53832 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90499: <==negation-removal== 69590 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #32974: <==closure== 69590 (pos)
                    (Pb_survivorat_s_p6)

                    ; #39616: <==closure== 53832 (pos)
                    (Pc_survivorat_s_p6)

                    ; #41688: origin
                    (Ba_survivorat_s_p6)

                    ; #53832: origin
                    (Bc_survivorat_s_p6)

                    ; #69590: origin
                    (Bb_survivorat_s_p6)

                    ; #72184: <==closure== 41688 (pos)
                    (Pa_survivorat_s_p6)

                    ; #11300: <==negation-removal== 72184 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #39267: <==negation-removal== 32974 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #58078: <==negation-removal== 41688 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #72528: <==negation-removal== 39616 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #83106: <==negation-removal== 53832 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90499: <==negation-removal== 69590 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #12708: origin
                    (Bb_survivorat_s_p7)

                    ; #27476: <==closure== 83226 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58744: <==closure== 83351 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83226: origin
                    (Ba_survivorat_s_p7)

                    ; #83351: origin
                    (Bc_survivorat_s_p7)

                    ; #83659: <==closure== 12708 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32563: <==negation-removal== 83351 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #53397: <==negation-removal== 83659 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #59075: <==negation-removal== 12708 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60684: <==negation-removal== 58744 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #71811: <==negation-removal== 83226 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72927: <==negation-removal== 27476 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #12708: origin
                    (Bb_survivorat_s_p7)

                    ; #27476: <==closure== 83226 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58744: <==closure== 83351 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83226: origin
                    (Ba_survivorat_s_p7)

                    ; #83351: origin
                    (Bc_survivorat_s_p7)

                    ; #83659: <==closure== 12708 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32563: <==negation-removal== 83351 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #53397: <==negation-removal== 83659 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #59075: <==negation-removal== 12708 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60684: <==negation-removal== 58744 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #71811: <==negation-removal== 83226 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72927: <==negation-removal== 27476 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #12708: origin
                    (Bb_survivorat_s_p7)

                    ; #27476: <==closure== 83226 (pos)
                    (Pa_survivorat_s_p7)

                    ; #58744: <==closure== 83351 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83226: origin
                    (Ba_survivorat_s_p7)

                    ; #83351: origin
                    (Bc_survivorat_s_p7)

                    ; #83659: <==closure== 12708 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32563: <==negation-removal== 83351 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #53397: <==negation-removal== 83659 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #59075: <==negation-removal== 12708 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #60684: <==negation-removal== 58744 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #71811: <==negation-removal== 83226 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72927: <==negation-removal== 27476 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #19657: origin
                    (Bb_survivorat_s_p8)

                    ; #49007: origin
                    (Bc_survivorat_s_p8)

                    ; #51496: <==closure== 19657 (pos)
                    (Pb_survivorat_s_p8)

                    ; #76343: <==closure== 49007 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80188: origin
                    (Ba_survivorat_s_p8)

                    ; #91933: <==closure== 80188 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15381: <==negation-removal== 91933 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #20953: <==negation-removal== 80188 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #26159: <==negation-removal== 19657 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #32199: <==negation-removal== 51496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34335: <==negation-removal== 76343 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #59793: <==negation-removal== 49007 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #19657: origin
                    (Bb_survivorat_s_p8)

                    ; #49007: origin
                    (Bc_survivorat_s_p8)

                    ; #51496: <==closure== 19657 (pos)
                    (Pb_survivorat_s_p8)

                    ; #76343: <==closure== 49007 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80188: origin
                    (Ba_survivorat_s_p8)

                    ; #91933: <==closure== 80188 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15381: <==negation-removal== 91933 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #20953: <==negation-removal== 80188 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #26159: <==negation-removal== 19657 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #32199: <==negation-removal== 51496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34335: <==negation-removal== 76343 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #59793: <==negation-removal== 49007 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #19657: origin
                    (Bb_survivorat_s_p8)

                    ; #49007: origin
                    (Bc_survivorat_s_p8)

                    ; #51496: <==closure== 19657 (pos)
                    (Pb_survivorat_s_p8)

                    ; #76343: <==closure== 49007 (pos)
                    (Pc_survivorat_s_p8)

                    ; #80188: origin
                    (Ba_survivorat_s_p8)

                    ; #91933: <==closure== 80188 (pos)
                    (Pa_survivorat_s_p8)

                    ; #15381: <==negation-removal== 91933 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #20953: <==negation-removal== 80188 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #26159: <==negation-removal== 19657 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #32199: <==negation-removal== 51496 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #34335: <==negation-removal== 76343 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #59793: <==negation-removal== 49007 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #48555: <==closure== 53803 (pos)
                    (Pc_survivorat_s_p9)

                    ; #53803: origin
                    (Bc_survivorat_s_p9)

                    ; #64490: <==closure== 88003 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71372: origin
                    (Ba_survivorat_s_p9)

                    ; #88003: origin
                    (Bb_survivorat_s_p9)

                    ; #94266: <==closure== 71372 (pos)
                    (Pa_survivorat_s_p9)

                    ; #12124: <==negation-removal== 94266 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #30173: <==negation-removal== 53803 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #38997: <==negation-removal== 64490 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 48555 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60917: <==negation-removal== 71372 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #89512: <==negation-removal== 88003 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #48555: <==closure== 53803 (pos)
                    (Pc_survivorat_s_p9)

                    ; #53803: origin
                    (Bc_survivorat_s_p9)

                    ; #64490: <==closure== 88003 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71372: origin
                    (Ba_survivorat_s_p9)

                    ; #88003: origin
                    (Bb_survivorat_s_p9)

                    ; #94266: <==closure== 71372 (pos)
                    (Pa_survivorat_s_p9)

                    ; #12124: <==negation-removal== 94266 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #30173: <==negation-removal== 53803 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #38997: <==negation-removal== 64490 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 48555 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60917: <==negation-removal== 71372 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #89512: <==negation-removal== 88003 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #48555: <==closure== 53803 (pos)
                    (Pc_survivorat_s_p9)

                    ; #53803: origin
                    (Bc_survivorat_s_p9)

                    ; #64490: <==closure== 88003 (pos)
                    (Pb_survivorat_s_p9)

                    ; #71372: origin
                    (Ba_survivorat_s_p9)

                    ; #88003: origin
                    (Bb_survivorat_s_p9)

                    ; #94266: <==closure== 71372 (pos)
                    (Pa_survivorat_s_p9)

                    ; #12124: <==negation-removal== 94266 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #30173: <==negation-removal== 53803 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #38997: <==negation-removal== 64490 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 48555 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #60917: <==negation-removal== 71372 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #89512: <==negation-removal== 88003 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #56064: origin
                    (not_at_a_p1)

                    ; #56949: origin
                    (at_a_p1)

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #37379: origin
                    (at_a_p2)

                    ; #56064: origin
                    (not_at_a_p1)

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #56064: origin
                    (not_at_a_p1)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #56064: origin
                    (not_at_a_p1)

                    ; #71918: origin
                    (at_a_p4)

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #56064: origin
                    (not_at_a_p1)

                    ; #91827: origin
                    (at_a_p5)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #56064: origin
                    (not_at_a_p1)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #30000: origin
                    (at_a_p7)

                    ; #56064: origin
                    (not_at_a_p1)

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #56064: origin
                    (not_at_a_p1)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #56064: origin
                    (not_at_a_p1)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #56949: <==negation-removal== 56064 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #41690: origin
                    (not_at_a_p2)

                    ; #56949: origin
                    (at_a_p1)

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #37379: origin
                    (at_a_p2)

                    ; #41690: origin
                    (not_at_a_p2)

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #41690: origin
                    (not_at_a_p2)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #41690: origin
                    (not_at_a_p2)

                    ; #71918: origin
                    (at_a_p4)

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #41690: origin
                    (not_at_a_p2)

                    ; #91827: origin
                    (at_a_p5)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #41690: origin
                    (not_at_a_p2)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #30000: origin
                    (at_a_p7)

                    ; #41690: origin
                    (not_at_a_p2)

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #41690: origin
                    (not_at_a_p2)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #41690: origin
                    (not_at_a_p2)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #37379: <==negation-removal== 41690 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #56949: origin
                    (at_a_p1)

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #37379: origin
                    (at_a_p2)

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #71918: origin
                    (at_a_p4)

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #91827: origin
                    (at_a_p5)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #26606: origin
                    (not_at_a_p3)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #30000: origin
                    (at_a_p7)

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #26606: origin
                    (not_at_a_p3)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #81257: <==negation-removal== 26606 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #56949: origin
                    (at_a_p1)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #37379: origin
                    (at_a_p2)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #81257: origin
                    (at_a_p3)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #71918: origin
                    (at_a_p4)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #91827: origin
                    (at_a_p5)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #30000: origin
                    (at_a_p7)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #87432: origin
                    (at_a_p8)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #72964: origin
                    (at_a_p9)

                    ; #98750: origin
                    (not_at_a_p4)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #71918: <==negation-removal== 98750 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #56949: origin
                    (at_a_p1)

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #37379: origin
                    (at_a_p2)

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #71918: origin
                    (at_a_p4)

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #91827: origin
                    (at_a_p5)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #35896: origin
                    (not_at_a_p5)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #30000: origin
                    (at_a_p7)

                    ; #35896: origin
                    (not_at_a_p5)

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #35896: origin
                    (not_at_a_p5)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #91827: <==negation-removal== 35896 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #56949: origin
                    (at_a_p1)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #37379: origin
                    (at_a_p2)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #81257: origin
                    (at_a_p3)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #71918: origin
                    (at_a_p4)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #91827: origin
                    (at_a_p5)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #36520: origin
                    (not_at_a_p6)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #30000: origin
                    (at_a_p7)

                    ; #36520: origin
                    (not_at_a_p6)

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #36520: origin
                    (not_at_a_p6)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #21628: <==negation-removal== 36520 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #56949: origin
                    (at_a_p1)

                    ; #59593: origin
                    (not_at_a_p7)

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #37379: origin
                    (at_a_p2)

                    ; #59593: origin
                    (not_at_a_p7)

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #59593: origin
                    (not_at_a_p7)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #59593: origin
                    (not_at_a_p7)

                    ; #71918: origin
                    (at_a_p4)

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #59593: origin
                    (not_at_a_p7)

                    ; #91827: origin
                    (at_a_p5)

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #21628: origin
                    (at_a_p6)

                    ; #59593: origin
                    (not_at_a_p7)

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #30000: origin
                    (at_a_p7)

                    ; #59593: origin
                    (not_at_a_p7)

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #59593: origin
                    (not_at_a_p7)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #59593: origin
                    (not_at_a_p7)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #30000: <==negation-removal== 59593 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #56949: origin
                    (at_a_p1)

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #37379: origin
                    (at_a_p2)

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #71918: origin
                    (at_a_p4)

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #91827: origin
                    (at_a_p5)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #21628: origin
                    (at_a_p6)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #30000: origin
                    (at_a_p7)

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #11333: origin
                    (not_at_a_p8)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #87432: <==negation-removal== 11333 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #56949: origin
                    (at_a_p1)

                    ; #56064: <==negation-removal== 56949 (pos)
                    (not (not_at_a_p1))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #37379: origin
                    (at_a_p2)

                    ; #41690: <==negation-removal== 37379 (pos)
                    (not (not_at_a_p2))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #81257: origin
                    (at_a_p3)

                    ; #26606: <==negation-removal== 81257 (pos)
                    (not (not_at_a_p3))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #71918: origin
                    (at_a_p4)

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))

                    ; #98750: <==negation-removal== 71918 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #91827: origin
                    (at_a_p5)

                    ; #35896: <==negation-removal== 91827 (pos)
                    (not (not_at_a_p5))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #21628: origin
                    (at_a_p6)

                    ; #36520: <==negation-removal== 21628 (pos)
                    (not (not_at_a_p6))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #30000: origin
                    (at_a_p7)

                    ; #59593: <==negation-removal== 30000 (pos)
                    (not (not_at_a_p7))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #87432: origin
                    (at_a_p8)

                    ; #11333: <==negation-removal== 87432 (pos)
                    (not (not_at_a_p8))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10808: origin
                    (not_at_a_p9)

                    ; #72964: origin
                    (at_a_p9)

                    ; #10808: <==negation-removal== 72964 (pos)
                    (not (not_at_a_p9))

                    ; #72964: <==negation-removal== 10808 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #58632: origin
                    (not_at_b_p1)

                    ; #86864: origin
                    (at_b_p1)

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #58632: origin
                    (not_at_b_p1)

                    ; #77763: origin
                    (at_b_p3)

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #30465: origin
                    (at_b_p4)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #52739: origin
                    (at_b_p5)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #57725: origin
                    (at_b_p6)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #26732: origin
                    (at_b_p7)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #26496: origin
                    (at_b_p9)

                    ; #58632: origin
                    (not_at_b_p1)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #86864: <==negation-removal== 58632 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #86864: origin
                    (at_b_p1)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #19064: origin
                    (at_b_p2)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #77763: origin
                    (at_b_p3)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #30465: origin
                    (at_b_p4)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #52739: origin
                    (at_b_p5)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #57725: origin
                    (at_b_p6)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #26732: origin
                    (at_b_p7)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #16952: origin
                    (not_at_b_p2)

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #16952: origin
                    (not_at_b_p2)

                    ; #26496: origin
                    (at_b_p9)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #19064: <==negation-removal== 16952 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #85820: origin
                    (not_at_b_p3)

                    ; #86864: origin
                    (at_b_p1)

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #77763: origin
                    (at_b_p3)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #30465: origin
                    (at_b_p4)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #52739: origin
                    (at_b_p5)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #57725: origin
                    (at_b_p6)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #26732: origin
                    (at_b_p7)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #26496: origin
                    (at_b_p9)

                    ; #85820: origin
                    (not_at_b_p3)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #77763: <==negation-removal== 85820 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #76952: origin
                    (not_at_b_p4)

                    ; #86864: origin
                    (at_b_p1)

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #76952: origin
                    (not_at_b_p4)

                    ; #77763: origin
                    (at_b_p3)

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #30465: origin
                    (at_b_p4)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #52739: origin
                    (at_b_p5)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #57725: origin
                    (at_b_p6)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #26732: origin
                    (at_b_p7)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #26496: origin
                    (at_b_p9)

                    ; #76952: origin
                    (not_at_b_p4)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #30465: <==negation-removal== 76952 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #86864: origin
                    (at_b_p1)

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #25735: origin
                    (not_at_b_p5)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #77763: origin
                    (at_b_p3)

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #30465: origin
                    (at_b_p4)

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #52739: origin
                    (at_b_p5)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #57725: origin
                    (at_b_p6)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #26732: origin
                    (at_b_p7)

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #25735: origin
                    (not_at_b_p5)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #25735: origin
                    (not_at_b_p5)

                    ; #26496: origin
                    (at_b_p9)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #52739: <==negation-removal== 25735 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #86864: origin
                    (at_b_p1)

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #25519: origin
                    (not_at_b_p6)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #77763: origin
                    (at_b_p3)

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #30465: origin
                    (at_b_p4)

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #52739: origin
                    (at_b_p5)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #57725: origin
                    (at_b_p6)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #26732: origin
                    (at_b_p7)

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #25519: origin
                    (not_at_b_p6)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #25519: origin
                    (not_at_b_p6)

                    ; #26496: origin
                    (at_b_p9)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #57725: <==negation-removal== 25519 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #84575: origin
                    (not_at_b_p7)

                    ; #86864: origin
                    (at_b_p1)

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #77763: origin
                    (at_b_p3)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #30465: origin
                    (at_b_p4)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #52739: origin
                    (at_b_p5)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #57725: origin
                    (at_b_p6)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #26732: origin
                    (at_b_p7)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #26496: origin
                    (at_b_p9)

                    ; #84575: origin
                    (not_at_b_p7)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #26732: <==negation-removal== 84575 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #86864: origin
                    (at_b_p1)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #19064: origin
                    (at_b_p2)

                    ; #25274: origin
                    (not_at_b_p8)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #77763: origin
                    (at_b_p3)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #30465: origin
                    (at_b_p4)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #52739: origin
                    (at_b_p5)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #57725: origin
                    (at_b_p6)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #26732: origin
                    (at_b_p7)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #25274: origin
                    (not_at_b_p8)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #25274: origin
                    (not_at_b_p8)

                    ; #26496: origin
                    (at_b_p9)

                    ; #13239: <==negation-removal== 25274 (pos)
                    (not (at_b_p8))

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #86864: origin
                    (at_b_p1)

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))

                    ; #58632: <==negation-removal== 86864 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #19064: origin
                    (at_b_p2)

                    ; #16952: <==negation-removal== 19064 (pos)
                    (not (not_at_b_p2))

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #77763: origin
                    (at_b_p3)

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))

                    ; #85820: <==negation-removal== 77763 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #30465: origin
                    (at_b_p4)

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))

                    ; #76952: <==negation-removal== 30465 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #52739: origin
                    (at_b_p5)

                    ; #25735: <==negation-removal== 52739 (pos)
                    (not (not_at_b_p5))

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #57725: origin
                    (at_b_p6)

                    ; #25519: <==negation-removal== 57725 (pos)
                    (not (not_at_b_p6))

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #26732: origin
                    (at_b_p7)

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))

                    ; #84575: <==negation-removal== 26732 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #13239: origin
                    (at_b_p8)

                    ; #16396: origin
                    (not_at_b_p9)

                    ; #25274: <==negation-removal== 13239 (pos)
                    (not (not_at_b_p8))

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #16396: origin
                    (not_at_b_p9)

                    ; #26496: origin
                    (at_b_p9)

                    ; #16396: <==negation-removal== 26496 (pos)
                    (not (not_at_b_p9))

                    ; #26496: <==negation-removal== 16396 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #38502: origin
                    (not_at_c_p1)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #38502: origin
                    (not_at_c_p1)

                    ; #72344: origin
                    (at_c_p2)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #38502: origin
                    (not_at_c_p1)

                    ; #49648: origin
                    (at_c_p3)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #34576: origin
                    (at_c_p4)

                    ; #38502: origin
                    (not_at_c_p1)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #38502: origin
                    (not_at_c_p1)

                    ; #65000: origin
                    (at_c_p5)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #27064: origin
                    (at_c_p6)

                    ; #38502: origin
                    (not_at_c_p1)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #38502: origin
                    (not_at_c_p1)

                    ; #84652: origin
                    (at_c_p7)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #38502: origin
                    (not_at_c_p1)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #38502: origin
                    (not_at_c_p1)

                    ; #93127: origin
                    (at_c_p9)

                    ; #18295: <==negation-removal== 38502 (pos)
                    (not (at_c_p1))

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #25337: origin
                    (not_at_c_p2)

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #72344: origin
                    (at_c_p2)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #49648: origin
                    (at_c_p3)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #34576: origin
                    (at_c_p4)

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #65000: origin
                    (at_c_p5)

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #27064: origin
                    (at_c_p6)

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #25337: origin
                    (not_at_c_p2)

                    ; #93127: origin
                    (at_c_p9)

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))

                    ; #72344: <==negation-removal== 25337 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #20618: origin
                    (not_at_c_p3)

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #72344: origin
                    (at_c_p2)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #49648: origin
                    (at_c_p3)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #34576: origin
                    (at_c_p4)

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #65000: origin
                    (at_c_p5)

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #27064: origin
                    (at_c_p6)

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #20618: origin
                    (not_at_c_p3)

                    ; #93127: origin
                    (at_c_p9)

                    ; #49648: <==negation-removal== 20618 (pos)
                    (not (at_c_p3))

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #51678: origin
                    (not_at_c_p4)

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #51678: origin
                    (not_at_c_p4)

                    ; #72344: origin
                    (at_c_p2)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #49648: origin
                    (at_c_p3)

                    ; #51678: origin
                    (not_at_c_p4)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #34576: origin
                    (at_c_p4)

                    ; #51678: origin
                    (not_at_c_p4)

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #51678: origin
                    (not_at_c_p4)

                    ; #65000: origin
                    (at_c_p5)

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #27064: origin
                    (at_c_p6)

                    ; #51678: origin
                    (not_at_c_p4)

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #51678: origin
                    (not_at_c_p4)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #51678: origin
                    (not_at_c_p4)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #51678: origin
                    (not_at_c_p4)

                    ; #93127: origin
                    (at_c_p9)

                    ; #34576: <==negation-removal== 51678 (pos)
                    (not (at_c_p4))

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #72344: origin
                    (at_c_p2)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #49648: origin
                    (at_c_p3)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #34576: origin
                    (at_c_p4)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #65000: origin
                    (at_c_p5)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27064: origin
                    (at_c_p6)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #79068: origin
                    (not_at_c_p5)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #53871: origin
                    (at_c_p8)

                    ; #79068: origin
                    (not_at_c_p5)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #79068: origin
                    (not_at_c_p5)

                    ; #93127: origin
                    (at_c_p9)

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))

                    ; #65000: <==negation-removal== 79068 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #72344: origin
                    (at_c_p2)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #49648: origin
                    (at_c_p3)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #34576: origin
                    (at_c_p4)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #65000: origin
                    (at_c_p5)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #27064: origin
                    (at_c_p6)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #84652: origin
                    (at_c_p7)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #53871: origin
                    (at_c_p8)

                    ; #90116: origin
                    (not_at_c_p6)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #90116: origin
                    (not_at_c_p6)

                    ; #93127: origin
                    (at_c_p9)

                    ; #27064: <==negation-removal== 90116 (pos)
                    (not (at_c_p6))

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #28378: origin
                    (not_at_c_p7)

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #72344: origin
                    (at_c_p2)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #49648: origin
                    (at_c_p3)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #34576: origin
                    (at_c_p4)

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #65000: origin
                    (at_c_p5)

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #27064: origin
                    (at_c_p6)

                    ; #28378: origin
                    (not_at_c_p7)

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #28378: origin
                    (not_at_c_p7)

                    ; #93127: origin
                    (at_c_p9)

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))

                    ; #84652: <==negation-removal== 28378 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #18295: origin
                    (at_c_p1)

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #72344: origin
                    (at_c_p2)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #49648: origin
                    (at_c_p3)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #34576: origin
                    (at_c_p4)

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #65000: origin
                    (at_c_p5)

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #27064: origin
                    (at_c_p6)

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #15590: origin
                    (not_at_c_p8)

                    ; #93127: origin
                    (at_c_p9)

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))

                    ; #53871: <==negation-removal== 15590 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #18295: origin
                    (at_c_p1)

                    ; #50052: origin
                    (not_at_c_p9)

                    ; #38502: <==negation-removal== 18295 (pos)
                    (not (not_at_c_p1))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #50052: origin
                    (not_at_c_p9)

                    ; #72344: origin
                    (at_c_p2)

                    ; #25337: <==negation-removal== 72344 (pos)
                    (not (not_at_c_p2))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #49648: origin
                    (at_c_p3)

                    ; #50052: origin
                    (not_at_c_p9)

                    ; #20618: <==negation-removal== 49648 (pos)
                    (not (not_at_c_p3))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #34576: origin
                    (at_c_p4)

                    ; #50052: origin
                    (not_at_c_p9)

                    ; #51678: <==negation-removal== 34576 (pos)
                    (not (not_at_c_p4))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #50052: origin
                    (not_at_c_p9)

                    ; #65000: origin
                    (at_c_p5)

                    ; #79068: <==negation-removal== 65000 (pos)
                    (not (not_at_c_p5))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #27064: origin
                    (at_c_p6)

                    ; #50052: origin
                    (not_at_c_p9)

                    ; #90116: <==negation-removal== 27064 (pos)
                    (not (not_at_c_p6))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #50052: origin
                    (not_at_c_p9)

                    ; #84652: origin
                    (at_c_p7)

                    ; #28378: <==negation-removal== 84652 (pos)
                    (not (not_at_c_p7))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #50052: origin
                    (not_at_c_p9)

                    ; #53871: origin
                    (at_c_p8)

                    ; #15590: <==negation-removal== 53871 (pos)
                    (not (not_at_c_p8))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #50052: origin
                    (not_at_c_p9)

                    ; #93127: origin
                    (at_c_p9)

                    ; #50052: <==negation-removal== 93127 (pos)
                    (not (not_at_c_p9))

                    ; #93127: <==negation-removal== 50052 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10868: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #17957: <==commonly_known== 73846 (neg)
                    (Pc_checked_p1)

                    ; #24263: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28408: <==commonly_known== 67407 (pos)
                    (Ba_checked_p1)

                    ; #28706: <==commonly_known== 73846 (neg)
                    (Pa_checked_p1)

                    ; #45531: <==commonly_known== 67407 (pos)
                    (Bb_checked_p1)

                    ; #58585: <==closure== 24263 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #67407: origin
                    (checked_p1)

                    ; #68194: <==commonly_known== 73846 (neg)
                    (Pb_checked_p1)

                    ; #68407: <==closure== 10868 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #83212: <==commonly_known== 67407 (pos)
                    (Bc_checked_p1)

                    ; #10407: <==negation-removal== 17957 (pos)
                    (not (Bc_not_checked_p1))

                    ; #11827: <==negation-removal== 68194 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13399: <==negation-removal== 45531 (pos)
                    (not (Pb_not_checked_p1))

                    ; #19348: <==negation-removal== 58585 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #27192: <==negation-removal== 83212 (pos)
                    (not (Pc_not_checked_p1))

                    ; #27742: <==negation-removal== 24263 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #52886: <==negation-removal== 28706 (pos)
                    (not (Ba_not_checked_p1))

                    ; #54423: <==uncertain_firing== 58585 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #69170: <==negation-removal== 28408 (pos)
                    (not (Pa_not_checked_p1))

                    ; #73846: <==negation-removal== 67407 (pos)
                    (not (not_checked_p1))

                    ; #74210: <==negation-removal== 10868 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #79283: <==uncertain_firing== 10868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #80826: <==uncertain_firing== 24263 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #82443: <==negation-removal== 68407 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #91221: <==uncertain_firing== 68407 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12602: <==commonly_known== 74050 (pos)
                    (Bc_checked_p2)

                    ; #15423: <==commonly_known== 65633 (neg)
                    (Pc_checked_p2)

                    ; #42223: <==commonly_known== 74050 (pos)
                    (Ba_checked_p2)

                    ; #43653: <==commonly_known== 65633 (neg)
                    (Pb_checked_p2)

                    ; #55378: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #57201: <==commonly_known== 74050 (pos)
                    (Bb_checked_p2)

                    ; #66024: <==closure== 87921 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #66028: <==closure== 55378 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #74050: origin
                    (checked_p2)

                    ; #74994: <==commonly_known== 65633 (neg)
                    (Pa_checked_p2)

                    ; #87921: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #14535: <==uncertain_firing== 87921 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19272: <==negation-removal== 55378 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #24546: <==negation-removal== 57201 (pos)
                    (not (Pb_not_checked_p2))

                    ; #25482: <==negation-removal== 66024 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #35184: <==negation-removal== 12602 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38413: <==negation-removal== 15423 (pos)
                    (not (Bc_not_checked_p2))

                    ; #47309: <==negation-removal== 42223 (pos)
                    (not (Pa_not_checked_p2))

                    ; #49322: <==uncertain_firing== 55378 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #53274: <==uncertain_firing== 66024 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #64316: <==negation-removal== 74994 (pos)
                    (not (Ba_not_checked_p2))

                    ; #65633: <==negation-removal== 74050 (pos)
                    (not (not_checked_p2))

                    ; #74706: <==negation-removal== 87921 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #78906: <==negation-removal== 66028 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #82494: <==uncertain_firing== 66028 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #83342: <==negation-removal== 43653 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17304: <==commonly_known== 13597 (neg)
                    (Pc_checked_p3)

                    ; #19509: <==commonly_known== 13597 (neg)
                    (Pb_checked_p3)

                    ; #23072: <==commonly_known== 13597 (neg)
                    (Pa_checked_p3)

                    ; #41011: origin
                    (checked_p3)

                    ; #49663: <==closure== 70722 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #55100: <==closure== 68209 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #56235: <==commonly_known== 41011 (pos)
                    (Bc_checked_p3)

                    ; #61963: <==commonly_known== 41011 (pos)
                    (Bb_checked_p3)

                    ; #68209: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #70722: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #82922: <==commonly_known== 41011 (pos)
                    (Ba_checked_p3)

                    ; #13597: <==negation-removal== 41011 (pos)
                    (not (not_checked_p3))

                    ; #22173: <==negation-removal== 82922 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23019: <==negation-removal== 56235 (pos)
                    (not (Pc_not_checked_p3))

                    ; #26646: <==uncertain_firing== 68209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #27837: <==negation-removal== 55100 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #30382: <==negation-removal== 19509 (pos)
                    (not (Bb_not_checked_p3))

                    ; #43857: <==negation-removal== 17304 (pos)
                    (not (Bc_not_checked_p3))

                    ; #48837: <==negation-removal== 23072 (pos)
                    (not (Ba_not_checked_p3))

                    ; #55545: <==negation-removal== 70722 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #55991: <==uncertain_firing== 70722 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #67826: <==negation-removal== 49663 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #79012: <==negation-removal== 61963 (pos)
                    (not (Pb_not_checked_p3))

                    ; #83756: <==uncertain_firing== 55100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #84375: <==uncertain_firing== 49663 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #87869: <==negation-removal== 68209 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #20637: <==commonly_known== 26331 (pos)
                    (Ba_checked_p4)

                    ; #25420: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #26169: <==commonly_known== 26331 (pos)
                    (Bb_checked_p4)

                    ; #26331: origin
                    (checked_p4)

                    ; #34732: <==commonly_known== 85641 (neg)
                    (Pa_checked_p4)

                    ; #42353: <==closure== 92101 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #47944: <==commonly_known== 85641 (neg)
                    (Pb_checked_p4)

                    ; #64221: <==closure== 25420 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #75242: <==commonly_known== 26331 (pos)
                    (Bc_checked_p4)

                    ; #88524: <==commonly_known== 85641 (neg)
                    (Pc_checked_p4)

                    ; #92101: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #10808: <==uncertain_firing== 92101 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #13000: <==uncertain_firing== 64221 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #16907: <==uncertain_firing== 42353 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #28594: <==negation-removal== 25420 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #37101: <==negation-removal== 75242 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38083: <==uncertain_firing== 25420 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #40502: <==negation-removal== 34732 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51661: <==negation-removal== 42353 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #61126: <==negation-removal== 64221 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #61220: <==negation-removal== 47944 (pos)
                    (not (Bb_not_checked_p4))

                    ; #69771: <==negation-removal== 20637 (pos)
                    (not (Pa_not_checked_p4))

                    ; #72992: <==negation-removal== 92101 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #80241: <==negation-removal== 88524 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85641: <==negation-removal== 26331 (pos)
                    (not (not_checked_p4))

                    ; #91406: <==negation-removal== 26169 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10832: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #18751: <==closure== 44321 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #29480: <==commonly_known== 32323 (neg)
                    (Pc_checked_p5)

                    ; #37286: origin
                    (checked_p5)

                    ; #43935: <==commonly_known== 32323 (neg)
                    (Pa_checked_p5)

                    ; #44321: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #48742: <==commonly_known== 37286 (pos)
                    (Bc_checked_p5)

                    ; #56943: <==commonly_known== 37286 (pos)
                    (Ba_checked_p5)

                    ; #67945: <==closure== 10832 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #86516: <==commonly_known== 37286 (pos)
                    (Bb_checked_p5)

                    ; #91321: <==commonly_known== 32323 (neg)
                    (Pb_checked_p5)

                    ; #11863: <==negation-removal== 10832 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #13402: <==uncertain_firing== 10832 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #27550: <==uncertain_firing== 44321 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #28245: <==uncertain_firing== 67945 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #32323: <==negation-removal== 37286 (pos)
                    (not (not_checked_p5))

                    ; #33011: <==negation-removal== 43935 (pos)
                    (not (Ba_not_checked_p5))

                    ; #41197: <==negation-removal== 56943 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41881: <==negation-removal== 48742 (pos)
                    (not (Pc_not_checked_p5))

                    ; #46890: <==uncertain_firing== 18751 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #47025: <==negation-removal== 67945 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #58927: <==negation-removal== 44321 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #63012: <==negation-removal== 91321 (pos)
                    (not (Bb_not_checked_p5))

                    ; #73424: <==negation-removal== 29480 (pos)
                    (not (Bc_not_checked_p5))

                    ; #76958: <==negation-removal== 18751 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #81699: <==negation-removal== 86516 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10911: <==commonly_known== 44812 (neg)
                    (Pb_checked_p6)

                    ; #12948: <==closure== 81756 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #19161: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #19317: <==commonly_known== 53807 (pos)
                    (Bc_checked_p6)

                    ; #19570: <==closure== 19161 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #53807: origin
                    (checked_p6)

                    ; #63929: <==commonly_known== 53807 (pos)
                    (Ba_checked_p6)

                    ; #64449: <==commonly_known== 53807 (pos)
                    (Bb_checked_p6)

                    ; #68795: <==commonly_known== 44812 (neg)
                    (Pc_checked_p6)

                    ; #81756: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #85221: <==commonly_known== 44812 (neg)
                    (Pa_checked_p6)

                    ; #10963: <==negation-removal== 81756 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #20000: <==uncertain_firing== 12948 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #21768: <==uncertain_firing== 81756 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #32501: <==negation-removal== 85221 (pos)
                    (not (Ba_not_checked_p6))

                    ; #44812: <==negation-removal== 53807 (pos)
                    (not (not_checked_p6))

                    ; #59158: <==negation-removal== 10911 (pos)
                    (not (Bb_not_checked_p6))

                    ; #60796: <==uncertain_firing== 19570 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #65651: <==negation-removal== 12948 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #69190: <==negation-removal== 68795 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72637: <==negation-removal== 19317 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73980: <==negation-removal== 64449 (pos)
                    (not (Pb_not_checked_p6))

                    ; #76076: <==negation-removal== 19161 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #86186: <==uncertain_firing== 19161 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #88104: <==negation-removal== 19570 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #88533: <==negation-removal== 63929 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10089: <==commonly_known== 32150 (pos)
                    (Ba_checked_p7)

                    ; #11943: <==commonly_known== 88603 (neg)
                    (Pb_checked_p7)

                    ; #15078: <==commonly_known== 32150 (pos)
                    (Bb_checked_p7)

                    ; #26233: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #28485: <==commonly_known== 88603 (neg)
                    (Pc_checked_p7)

                    ; #32150: origin
                    (checked_p7)

                    ; #44152: <==commonly_known== 88603 (neg)
                    (Pa_checked_p7)

                    ; #45672: <==closure== 92090 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #55896: <==commonly_known== 32150 (pos)
                    (Bc_checked_p7)

                    ; #70023: <==closure== 26233 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #92090: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #16440: <==negation-removal== 15078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #22733: <==negation-removal== 28485 (pos)
                    (not (Bc_not_checked_p7))

                    ; #29338: <==negation-removal== 44152 (pos)
                    (not (Ba_not_checked_p7))

                    ; #37761: <==uncertain_firing== 70023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #38184: <==negation-removal== 70023 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44084: <==negation-removal== 26233 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #47093: <==negation-removal== 11943 (pos)
                    (not (Bb_not_checked_p7))

                    ; #47612: <==negation-removal== 92090 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #60504: <==negation-removal== 45672 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #71752: <==uncertain_firing== 45672 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #76824: <==negation-removal== 10089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #78628: <==negation-removal== 55896 (pos)
                    (not (Pc_not_checked_p7))

                    ; #87626: <==uncertain_firing== 26233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #88603: <==negation-removal== 32150 (pos)
                    (not (not_checked_p7))

                    ; #99570: <==uncertain_firing== 92090 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19537: origin
                    (checked_p8)

                    ; #21561: <==commonly_known== 13777 (neg)
                    (Pa_checked_p8)

                    ; #27087: <==commonly_known== 19537 (pos)
                    (Bc_checked_p8)

                    ; #37953: <==commonly_known== 13777 (neg)
                    (Pb_checked_p8)

                    ; #46760: <==commonly_known== 19537 (pos)
                    (Bb_checked_p8)

                    ; #46871: <==commonly_known== 13777 (neg)
                    (Pc_checked_p8)

                    ; #52251: <==commonly_known== 19537 (pos)
                    (Ba_checked_p8)

                    ; #56190: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #63315: <==closure== 56190 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #78234: <==closure== 89338 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #89338: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #10971: <==uncertain_firing== 56190 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #13777: <==negation-removal== 19537 (pos)
                    (not (not_checked_p8))

                    ; #23574: <==negation-removal== 78234 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #23879: <==uncertain_firing== 78234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #24389: <==negation-removal== 63315 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #25859: <==negation-removal== 56190 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #36540: <==uncertain_firing== 63315 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #41135: <==negation-removal== 46760 (pos)
                    (not (Pb_not_checked_p8))

                    ; #45232: <==negation-removal== 46871 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54109: <==negation-removal== 89338 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #57185: <==negation-removal== 21561 (pos)
                    (not (Ba_not_checked_p8))

                    ; #60403: <==uncertain_firing== 89338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #74568: <==negation-removal== 52251 (pos)
                    (not (Pa_not_checked_p8))

                    ; #80096: <==negation-removal== 27087 (pos)
                    (not (Pc_not_checked_p8))

                    ; #90955: <==negation-removal== 37953 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18451: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #23250: <==commonly_known== 46479 (pos)
                    (Bc_checked_p9)

                    ; #37350: <==commonly_known== 76768 (neg)
                    (Pc_checked_p9)

                    ; #38133: <==closure== 18451 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #46112: <==commonly_known== 46479 (pos)
                    (Ba_checked_p9)

                    ; #46479: origin
                    (checked_p9)

                    ; #50755: <==closure== 51745 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #50931: <==commonly_known== 76768 (neg)
                    (Pa_checked_p9)

                    ; #51745: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #65202: <==commonly_known== 76768 (neg)
                    (Pb_checked_p9)

                    ; #70225: <==commonly_known== 46479 (pos)
                    (Bb_checked_p9)

                    ; #13268: <==negation-removal== 51745 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #31379: <==uncertain_firing== 38133 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #36353: <==uncertain_firing== 50755 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #39221: <==uncertain_firing== 18451 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #39984: <==negation-removal== 46112 (pos)
                    (not (Pa_not_checked_p9))

                    ; #40164: <==negation-removal== 18451 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #42368: <==uncertain_firing== 51745 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #45375: <==negation-removal== 38133 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #50613: <==negation-removal== 37350 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57697: <==negation-removal== 23250 (pos)
                    (not (Pc_not_checked_p9))

                    ; #60760: <==negation-removal== 70225 (pos)
                    (not (Pb_not_checked_p9))

                    ; #72787: <==negation-removal== 65202 (pos)
                    (not (Bb_not_checked_p9))

                    ; #76768: <==negation-removal== 46479 (pos)
                    (not (not_checked_p9))

                    ; #85562: <==negation-removal== 50755 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #87214: <==negation-removal== 50931 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17957: <==commonly_known== 73846 (neg)
                    (Pc_checked_p1)

                    ; #28408: <==commonly_known== 67407 (pos)
                    (Ba_checked_p1)

                    ; #28706: <==commonly_known== 73846 (neg)
                    (Pa_checked_p1)

                    ; #33331: <==closure== 51320 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #45531: <==commonly_known== 67407 (pos)
                    (Bb_checked_p1)

                    ; #46026: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #51320: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #53491: <==closure== 46026 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #67407: origin
                    (checked_p1)

                    ; #68194: <==commonly_known== 73846 (neg)
                    (Pb_checked_p1)

                    ; #83212: <==commonly_known== 67407 (pos)
                    (Bc_checked_p1)

                    ; #10407: <==negation-removal== 17957 (pos)
                    (not (Bc_not_checked_p1))

                    ; #11827: <==negation-removal== 68194 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13399: <==negation-removal== 45531 (pos)
                    (not (Pb_not_checked_p1))

                    ; #15111: <==uncertain_firing== 53491 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #27192: <==negation-removal== 83212 (pos)
                    (not (Pc_not_checked_p1))

                    ; #28154: <==negation-removal== 51320 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #44781: <==negation-removal== 46026 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #52886: <==negation-removal== 28706 (pos)
                    (not (Ba_not_checked_p1))

                    ; #53541: <==negation-removal== 33331 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #53707: <==negation-removal== 53491 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60303: <==uncertain_firing== 51320 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #69170: <==negation-removal== 28408 (pos)
                    (not (Pa_not_checked_p1))

                    ; #71943: <==uncertain_firing== 46026 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #73672: <==uncertain_firing== 33331 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #73846: <==negation-removal== 67407 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12602: <==commonly_known== 74050 (pos)
                    (Bc_checked_p2)

                    ; #15423: <==commonly_known== 65633 (neg)
                    (Pc_checked_p2)

                    ; #20050: <==closure== 52609 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #42223: <==commonly_known== 74050 (pos)
                    (Ba_checked_p2)

                    ; #43653: <==commonly_known== 65633 (neg)
                    (Pb_checked_p2)

                    ; #52609: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #57201: <==commonly_known== 74050 (pos)
                    (Bb_checked_p2)

                    ; #60202: <==closure== 84437 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #74050: origin
                    (checked_p2)

                    ; #74994: <==commonly_known== 65633 (neg)
                    (Pa_checked_p2)

                    ; #84437: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #12077: <==uncertain_firing== 60202 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #21641: <==negation-removal== 20050 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #24546: <==negation-removal== 57201 (pos)
                    (not (Pb_not_checked_p2))

                    ; #34464: <==uncertain_firing== 20050 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #35184: <==negation-removal== 12602 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38329: <==uncertain_firing== 52609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #38413: <==negation-removal== 15423 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41079: <==negation-removal== 52609 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #47309: <==negation-removal== 42223 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64316: <==negation-removal== 74994 (pos)
                    (not (Ba_not_checked_p2))

                    ; #65633: <==negation-removal== 74050 (pos)
                    (not (not_checked_p2))

                    ; #67259: <==negation-removal== 84437 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #73846: <==uncertain_firing== 84437 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #83342: <==negation-removal== 43653 (pos)
                    (not (Bb_not_checked_p2))

                    ; #91362: <==negation-removal== 60202 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #10833: <==closure== 29088 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #17304: <==commonly_known== 13597 (neg)
                    (Pc_checked_p3)

                    ; #19509: <==commonly_known== 13597 (neg)
                    (Pb_checked_p3)

                    ; #23072: <==commonly_known== 13597 (neg)
                    (Pa_checked_p3)

                    ; #29088: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #41011: origin
                    (checked_p3)

                    ; #56235: <==commonly_known== 41011 (pos)
                    (Bc_checked_p3)

                    ; #61963: <==commonly_known== 41011 (pos)
                    (Bb_checked_p3)

                    ; #67693: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #77619: <==closure== 67693 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #82922: <==commonly_known== 41011 (pos)
                    (Ba_checked_p3)

                    ; #13597: <==negation-removal== 41011 (pos)
                    (not (not_checked_p3))

                    ; #15036: <==negation-removal== 77619 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #21934: <==negation-removal== 29088 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22173: <==negation-removal== 82922 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23019: <==negation-removal== 56235 (pos)
                    (not (Pc_not_checked_p3))

                    ; #30382: <==negation-removal== 19509 (pos)
                    (not (Bb_not_checked_p3))

                    ; #30883: <==negation-removal== 67693 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #32050: <==negation-removal== 10833 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #43857: <==negation-removal== 17304 (pos)
                    (not (Bc_not_checked_p3))

                    ; #48837: <==negation-removal== 23072 (pos)
                    (not (Ba_not_checked_p3))

                    ; #51409: <==uncertain_firing== 10833 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #61037: <==uncertain_firing== 29088 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #79012: <==negation-removal== 61963 (pos)
                    (not (Pb_not_checked_p3))

                    ; #82985: <==uncertain_firing== 77619 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #94050: <==uncertain_firing== 67693 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11245: <==closure== 62310 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #20637: <==commonly_known== 26331 (pos)
                    (Ba_checked_p4)

                    ; #26169: <==commonly_known== 26331 (pos)
                    (Bb_checked_p4)

                    ; #26331: origin
                    (checked_p4)

                    ; #34732: <==commonly_known== 85641 (neg)
                    (Pa_checked_p4)

                    ; #47944: <==commonly_known== 85641 (neg)
                    (Pb_checked_p4)

                    ; #62310: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #62324: <==closure== 68097 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #68097: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #75242: <==commonly_known== 26331 (pos)
                    (Bc_checked_p4)

                    ; #88524: <==commonly_known== 85641 (neg)
                    (Pc_checked_p4)

                    ; #14776: <==negation-removal== 11245 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #16777: <==negation-removal== 62310 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #23973: <==uncertain_firing== 62310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #26879: <==uncertain_firing== 62324 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #30689: <==uncertain_firing== 11245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #37101: <==negation-removal== 75242 (pos)
                    (not (Pc_not_checked_p4))

                    ; #40502: <==negation-removal== 34732 (pos)
                    (not (Ba_not_checked_p4))

                    ; #47587: <==negation-removal== 68097 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #61220: <==negation-removal== 47944 (pos)
                    (not (Bb_not_checked_p4))

                    ; #69771: <==negation-removal== 20637 (pos)
                    (not (Pa_not_checked_p4))

                    ; #80241: <==negation-removal== 88524 (pos)
                    (not (Bc_not_checked_p4))

                    ; #83660: <==negation-removal== 62324 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #85641: <==negation-removal== 26331 (pos)
                    (not (not_checked_p4))

                    ; #90672: <==uncertain_firing== 68097 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #91406: <==negation-removal== 26169 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #29480: <==commonly_known== 32323 (neg)
                    (Pc_checked_p5)

                    ; #37286: origin
                    (checked_p5)

                    ; #41205: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #43888: <==closure== 90875 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #43935: <==commonly_known== 32323 (neg)
                    (Pa_checked_p5)

                    ; #48742: <==commonly_known== 37286 (pos)
                    (Bc_checked_p5)

                    ; #56943: <==commonly_known== 37286 (pos)
                    (Ba_checked_p5)

                    ; #86075: <==closure== 41205 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #86516: <==commonly_known== 37286 (pos)
                    (Bb_checked_p5)

                    ; #90875: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #91321: <==commonly_known== 32323 (neg)
                    (Pb_checked_p5)

                    ; #19263: <==negation-removal== 90875 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #25674: <==negation-removal== 86075 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #26916: <==uncertain_firing== 86075 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #32323: <==negation-removal== 37286 (pos)
                    (not (not_checked_p5))

                    ; #33011: <==negation-removal== 43935 (pos)
                    (not (Ba_not_checked_p5))

                    ; #41197: <==negation-removal== 56943 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41881: <==negation-removal== 48742 (pos)
                    (not (Pc_not_checked_p5))

                    ; #60555: <==uncertain_firing== 43888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #63012: <==negation-removal== 91321 (pos)
                    (not (Bb_not_checked_p5))

                    ; #73424: <==negation-removal== 29480 (pos)
                    (not (Bc_not_checked_p5))

                    ; #78712: <==negation-removal== 41205 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #78805: <==uncertain_firing== 90875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #79906: <==uncertain_firing== 41205 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #81699: <==negation-removal== 86516 (pos)
                    (not (Pb_not_checked_p5))

                    ; #93357: <==negation-removal== 43888 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10911: <==commonly_known== 44812 (neg)
                    (Pb_checked_p6)

                    ; #19317: <==commonly_known== 53807 (pos)
                    (Bc_checked_p6)

                    ; #20878: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #35931: <==closure== 87324 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #53807: origin
                    (checked_p6)

                    ; #63929: <==commonly_known== 53807 (pos)
                    (Ba_checked_p6)

                    ; #64449: <==commonly_known== 53807 (pos)
                    (Bb_checked_p6)

                    ; #68795: <==commonly_known== 44812 (neg)
                    (Pc_checked_p6)

                    ; #85221: <==commonly_known== 44812 (neg)
                    (Pa_checked_p6)

                    ; #87324: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #91752: <==closure== 20878 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #32501: <==negation-removal== 85221 (pos)
                    (not (Ba_not_checked_p6))

                    ; #38885: <==negation-removal== 91752 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #44812: <==negation-removal== 53807 (pos)
                    (not (not_checked_p6))

                    ; #46411: <==negation-removal== 20878 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #54527: <==uncertain_firing== 20878 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #58963: <==negation-removal== 87324 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #59158: <==negation-removal== 10911 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63319: <==uncertain_firing== 35931 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #69057: <==negation-removal== 35931 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #69190: <==negation-removal== 68795 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72637: <==negation-removal== 19317 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73807: <==uncertain_firing== 87324 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #73980: <==negation-removal== 64449 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88533: <==negation-removal== 63929 (pos)
                    (not (Pa_not_checked_p6))

                    ; #89824: <==uncertain_firing== 91752 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10089: <==commonly_known== 32150 (pos)
                    (Ba_checked_p7)

                    ; #11943: <==commonly_known== 88603 (neg)
                    (Pb_checked_p7)

                    ; #15078: <==commonly_known== 32150 (pos)
                    (Bb_checked_p7)

                    ; #16781: <==closure== 72416 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #28485: <==commonly_known== 88603 (neg)
                    (Pc_checked_p7)

                    ; #32150: origin
                    (checked_p7)

                    ; #44152: <==commonly_known== 88603 (neg)
                    (Pa_checked_p7)

                    ; #55896: <==commonly_known== 32150 (pos)
                    (Bc_checked_p7)

                    ; #63066: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #72416: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #86004: <==closure== 63066 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #16440: <==negation-removal== 15078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #18961: <==negation-removal== 86004 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #19960: <==negation-removal== 63066 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22733: <==negation-removal== 28485 (pos)
                    (not (Bc_not_checked_p7))

                    ; #27395: <==negation-removal== 72416 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #29338: <==negation-removal== 44152 (pos)
                    (not (Ba_not_checked_p7))

                    ; #44364: <==negation-removal== 16781 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #47093: <==negation-removal== 11943 (pos)
                    (not (Bb_not_checked_p7))

                    ; #60878: <==uncertain_firing== 16781 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #68014: <==uncertain_firing== 63066 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #76348: <==uncertain_firing== 72416 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #76824: <==negation-removal== 10089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #78628: <==negation-removal== 55896 (pos)
                    (not (Pc_not_checked_p7))

                    ; #81858: <==uncertain_firing== 86004 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88603: <==negation-removal== 32150 (pos)
                    (not (not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19537: origin
                    (checked_p8)

                    ; #21561: <==commonly_known== 13777 (neg)
                    (Pa_checked_p8)

                    ; #27087: <==commonly_known== 19537 (pos)
                    (Bc_checked_p8)

                    ; #29423: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #37953: <==commonly_known== 13777 (neg)
                    (Pb_checked_p8)

                    ; #46760: <==commonly_known== 19537 (pos)
                    (Bb_checked_p8)

                    ; #46871: <==commonly_known== 13777 (neg)
                    (Pc_checked_p8)

                    ; #52251: <==commonly_known== 19537 (pos)
                    (Ba_checked_p8)

                    ; #72156: <==closure== 92555 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #74274: <==closure== 29423 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #92555: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #11624: <==uncertain_firing== 74274 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #12549: <==uncertain_firing== 29423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #13777: <==negation-removal== 19537 (pos)
                    (not (not_checked_p8))

                    ; #37664: <==negation-removal== 74274 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #41135: <==negation-removal== 46760 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41837: <==uncertain_firing== 72156 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #43382: <==negation-removal== 29423 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45232: <==negation-removal== 46871 (pos)
                    (not (Bc_not_checked_p8))

                    ; #45744: <==negation-removal== 72156 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #57185: <==negation-removal== 21561 (pos)
                    (not (Ba_not_checked_p8))

                    ; #62886: <==negation-removal== 92555 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #74568: <==negation-removal== 52251 (pos)
                    (not (Pa_not_checked_p8))

                    ; #80096: <==negation-removal== 27087 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82280: <==uncertain_firing== 92555 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #90955: <==negation-removal== 37953 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #23250: <==commonly_known== 46479 (pos)
                    (Bc_checked_p9)

                    ; #37350: <==commonly_known== 76768 (neg)
                    (Pc_checked_p9)

                    ; #45315: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #46112: <==commonly_known== 46479 (pos)
                    (Ba_checked_p9)

                    ; #46479: origin
                    (checked_p9)

                    ; #49533: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #50931: <==commonly_known== 76768 (neg)
                    (Pa_checked_p9)

                    ; #65202: <==commonly_known== 76768 (neg)
                    (Pb_checked_p9)

                    ; #68473: <==closure== 45315 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #70225: <==commonly_known== 46479 (pos)
                    (Bb_checked_p9)

                    ; #77425: <==closure== 49533 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #11824: <==uncertain_firing== 68473 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #19599: <==negation-removal== 45315 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #20234: <==negation-removal== 68473 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #39025: <==negation-removal== 49533 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39984: <==negation-removal== 46112 (pos)
                    (not (Pa_not_checked_p9))

                    ; #41943: <==uncertain_firing== 49533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50613: <==negation-removal== 37350 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57697: <==negation-removal== 23250 (pos)
                    (not (Pc_not_checked_p9))

                    ; #60760: <==negation-removal== 70225 (pos)
                    (not (Pb_not_checked_p9))

                    ; #62632: <==negation-removal== 77425 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #63115: <==uncertain_firing== 77425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #72787: <==negation-removal== 65202 (pos)
                    (not (Bb_not_checked_p9))

                    ; #76768: <==negation-removal== 46479 (pos)
                    (not (not_checked_p9))

                    ; #81262: <==uncertain_firing== 45315 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #87214: <==negation-removal== 50931 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16837: <==closure== 25262 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #17957: <==commonly_known== 73846 (neg)
                    (Pc_checked_p1)

                    ; #25262: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #27042: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #28408: <==commonly_known== 67407 (pos)
                    (Ba_checked_p1)

                    ; #28706: <==commonly_known== 73846 (neg)
                    (Pa_checked_p1)

                    ; #45531: <==commonly_known== 67407 (pos)
                    (Bb_checked_p1)

                    ; #67407: origin
                    (checked_p1)

                    ; #68194: <==commonly_known== 73846 (neg)
                    (Pb_checked_p1)

                    ; #69586: <==closure== 27042 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #83212: <==commonly_known== 67407 (pos)
                    (Bc_checked_p1)

                    ; #10407: <==negation-removal== 17957 (pos)
                    (not (Bc_not_checked_p1))

                    ; #11827: <==negation-removal== 68194 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13399: <==negation-removal== 45531 (pos)
                    (not (Pb_not_checked_p1))

                    ; #23117: <==negation-removal== 25262 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #27192: <==negation-removal== 83212 (pos)
                    (not (Pc_not_checked_p1))

                    ; #43202: <==negation-removal== 69586 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #51053: <==uncertain_firing== 16837 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #52886: <==negation-removal== 28706 (pos)
                    (not (Ba_not_checked_p1))

                    ; #56693: <==uncertain_firing== 25262 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69170: <==negation-removal== 28408 (pos)
                    (not (Pa_not_checked_p1))

                    ; #73846: <==negation-removal== 67407 (pos)
                    (not (not_checked_p1))

                    ; #75365: <==uncertain_firing== 69586 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #75550: <==negation-removal== 27042 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #91954: <==negation-removal== 16837 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #93025: <==uncertain_firing== 27042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12602: <==commonly_known== 74050 (pos)
                    (Bc_checked_p2)

                    ; #13712: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #15423: <==commonly_known== 65633 (neg)
                    (Pc_checked_p2)

                    ; #41140: <==closure== 13712 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #42223: <==commonly_known== 74050 (pos)
                    (Ba_checked_p2)

                    ; #43653: <==commonly_known== 65633 (neg)
                    (Pb_checked_p2)

                    ; #57201: <==commonly_known== 74050 (pos)
                    (Bb_checked_p2)

                    ; #74050: origin
                    (checked_p2)

                    ; #74994: <==commonly_known== 65633 (neg)
                    (Pa_checked_p2)

                    ; #80374: <==closure== 86856 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #86856: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #15963: <==uncertain_firing== 86856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #19822: <==uncertain_firing== 80374 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #23863: <==negation-removal== 86856 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24546: <==negation-removal== 57201 (pos)
                    (not (Pb_not_checked_p2))

                    ; #35184: <==negation-removal== 12602 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38413: <==negation-removal== 15423 (pos)
                    (not (Bc_not_checked_p2))

                    ; #47309: <==negation-removal== 42223 (pos)
                    (not (Pa_not_checked_p2))

                    ; #58711: <==negation-removal== 13712 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #64316: <==negation-removal== 74994 (pos)
                    (not (Ba_not_checked_p2))

                    ; #65633: <==negation-removal== 74050 (pos)
                    (not (not_checked_p2))

                    ; #68594: <==negation-removal== 41140 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #71898: <==negation-removal== 80374 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #72707: <==uncertain_firing== 41140 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #77334: <==uncertain_firing== 13712 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #83342: <==negation-removal== 43653 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17304: <==commonly_known== 13597 (neg)
                    (Pc_checked_p3)

                    ; #19509: <==commonly_known== 13597 (neg)
                    (Pb_checked_p3)

                    ; #23072: <==commonly_known== 13597 (neg)
                    (Pa_checked_p3)

                    ; #41011: origin
                    (checked_p3)

                    ; #41657: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #56235: <==commonly_known== 41011 (pos)
                    (Bc_checked_p3)

                    ; #61963: <==commonly_known== 41011 (pos)
                    (Bb_checked_p3)

                    ; #63226: <==closure== 41657 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #75682: <==closure== 84613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82922: <==commonly_known== 41011 (pos)
                    (Ba_checked_p3)

                    ; #84613: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #13597: <==negation-removal== 41011 (pos)
                    (not (not_checked_p3))

                    ; #22173: <==negation-removal== 82922 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23019: <==negation-removal== 56235 (pos)
                    (not (Pc_not_checked_p3))

                    ; #23704: <==uncertain_firing== 84613 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #26458: <==uncertain_firing== 63226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #27022: <==uncertain_firing== 75682 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #30382: <==negation-removal== 19509 (pos)
                    (not (Bb_not_checked_p3))

                    ; #31792: <==uncertain_firing== 41657 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #33605: <==negation-removal== 84613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #43857: <==negation-removal== 17304 (pos)
                    (not (Bc_not_checked_p3))

                    ; #48837: <==negation-removal== 23072 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57573: <==negation-removal== 41657 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #64681: <==negation-removal== 75682 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #79012: <==negation-removal== 61963 (pos)
                    (not (Pb_not_checked_p3))

                    ; #79321: <==negation-removal== 63226 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #20637: <==commonly_known== 26331 (pos)
                    (Ba_checked_p4)

                    ; #26169: <==commonly_known== 26331 (pos)
                    (Bb_checked_p4)

                    ; #26331: origin
                    (checked_p4)

                    ; #34732: <==commonly_known== 85641 (neg)
                    (Pa_checked_p4)

                    ; #43118: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #47944: <==commonly_known== 85641 (neg)
                    (Pb_checked_p4)

                    ; #50947: <==closure== 58224 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #58224: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #64423: <==closure== 43118 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #75242: <==commonly_known== 26331 (pos)
                    (Bc_checked_p4)

                    ; #88524: <==commonly_known== 85641 (neg)
                    (Pc_checked_p4)

                    ; #20666: <==negation-removal== 50947 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #25213: <==uncertain_firing== 58224 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31986: <==negation-removal== 43118 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #36840: <==negation-removal== 64423 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #37101: <==negation-removal== 75242 (pos)
                    (not (Pc_not_checked_p4))

                    ; #40502: <==negation-removal== 34732 (pos)
                    (not (Ba_not_checked_p4))

                    ; #47644: <==uncertain_firing== 50947 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #59808: <==uncertain_firing== 43118 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #61220: <==negation-removal== 47944 (pos)
                    (not (Bb_not_checked_p4))

                    ; #69771: <==negation-removal== 20637 (pos)
                    (not (Pa_not_checked_p4))

                    ; #78507: <==uncertain_firing== 64423 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80241: <==negation-removal== 88524 (pos)
                    (not (Bc_not_checked_p4))

                    ; #82462: <==negation-removal== 58224 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #85641: <==negation-removal== 26331 (pos)
                    (not (not_checked_p4))

                    ; #91406: <==negation-removal== 26169 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #29480: <==commonly_known== 32323 (neg)
                    (Pc_checked_p5)

                    ; #37286: origin
                    (checked_p5)

                    ; #43935: <==commonly_known== 32323 (neg)
                    (Pa_checked_p5)

                    ; #48742: <==commonly_known== 37286 (pos)
                    (Bc_checked_p5)

                    ; #49225: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #54769: <==closure== 67643 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #56943: <==commonly_known== 37286 (pos)
                    (Ba_checked_p5)

                    ; #67115: <==closure== 49225 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #67643: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #86516: <==commonly_known== 37286 (pos)
                    (Bb_checked_p5)

                    ; #91321: <==commonly_known== 32323 (neg)
                    (Pb_checked_p5)

                    ; #13159: <==uncertain_firing== 54769 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #13898: <==negation-removal== 54769 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16992: <==uncertain_firing== 67643 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #32323: <==negation-removal== 37286 (pos)
                    (not (not_checked_p5))

                    ; #33011: <==negation-removal== 43935 (pos)
                    (not (Ba_not_checked_p5))

                    ; #41197: <==negation-removal== 56943 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41881: <==negation-removal== 48742 (pos)
                    (not (Pc_not_checked_p5))

                    ; #42311: <==uncertain_firing== 67115 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #48299: <==negation-removal== 49225 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #48861: <==negation-removal== 67115 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #56795: <==uncertain_firing== 49225 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #63012: <==negation-removal== 91321 (pos)
                    (not (Bb_not_checked_p5))

                    ; #73424: <==negation-removal== 29480 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75807: <==negation-removal== 67643 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #81699: <==negation-removal== 86516 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10911: <==commonly_known== 44812 (neg)
                    (Pb_checked_p6)

                    ; #16407: <==closure== 41241 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #18130: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #19317: <==commonly_known== 53807 (pos)
                    (Bc_checked_p6)

                    ; #41241: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #53807: origin
                    (checked_p6)

                    ; #63929: <==commonly_known== 53807 (pos)
                    (Ba_checked_p6)

                    ; #64449: <==commonly_known== 53807 (pos)
                    (Bb_checked_p6)

                    ; #68795: <==commonly_known== 44812 (neg)
                    (Pc_checked_p6)

                    ; #68872: <==closure== 18130 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #85221: <==commonly_known== 44812 (neg)
                    (Pa_checked_p6)

                    ; #16680: <==uncertain_firing== 16407 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #17510: <==uncertain_firing== 68872 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #21279: <==negation-removal== 41241 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #31922: <==negation-removal== 68872 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #32501: <==negation-removal== 85221 (pos)
                    (not (Ba_not_checked_p6))

                    ; #44812: <==negation-removal== 53807 (pos)
                    (not (not_checked_p6))

                    ; #44814: <==negation-removal== 18130 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #54752: <==uncertain_firing== 18130 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #55163: <==uncertain_firing== 41241 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #59158: <==negation-removal== 10911 (pos)
                    (not (Bb_not_checked_p6))

                    ; #62563: <==negation-removal== 16407 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #69190: <==negation-removal== 68795 (pos)
                    (not (Bc_not_checked_p6))

                    ; #72637: <==negation-removal== 19317 (pos)
                    (not (Pc_not_checked_p6))

                    ; #73980: <==negation-removal== 64449 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88533: <==negation-removal== 63929 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10089: <==commonly_known== 32150 (pos)
                    (Ba_checked_p7)

                    ; #11943: <==commonly_known== 88603 (neg)
                    (Pb_checked_p7)

                    ; #15078: <==commonly_known== 32150 (pos)
                    (Bb_checked_p7)

                    ; #28485: <==commonly_known== 88603 (neg)
                    (Pc_checked_p7)

                    ; #32150: origin
                    (checked_p7)

                    ; #36837: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #39381: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #44152: <==commonly_known== 88603 (neg)
                    (Pa_checked_p7)

                    ; #55896: <==commonly_known== 32150 (pos)
                    (Bc_checked_p7)

                    ; #64103: <==closure== 39381 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #90962: <==closure== 36837 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #13807: <==negation-removal== 64103 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #16100: <==uncertain_firing== 64103 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #16440: <==negation-removal== 15078 (pos)
                    (not (Pb_not_checked_p7))

                    ; #19140: <==negation-removal== 36837 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #22359: <==uncertain_firing== 36837 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #22733: <==negation-removal== 28485 (pos)
                    (not (Bc_not_checked_p7))

                    ; #29338: <==negation-removal== 44152 (pos)
                    (not (Ba_not_checked_p7))

                    ; #45017: <==uncertain_firing== 90962 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #47093: <==negation-removal== 11943 (pos)
                    (not (Bb_not_checked_p7))

                    ; #56629: <==uncertain_firing== 39381 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #56976: <==negation-removal== 39381 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #75029: <==negation-removal== 90962 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #76824: <==negation-removal== 10089 (pos)
                    (not (Pa_not_checked_p7))

                    ; #78628: <==negation-removal== 55896 (pos)
                    (not (Pc_not_checked_p7))

                    ; #88603: <==negation-removal== 32150 (pos)
                    (not (not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19537: origin
                    (checked_p8)

                    ; #21561: <==commonly_known== 13777 (neg)
                    (Pa_checked_p8)

                    ; #27087: <==commonly_known== 19537 (pos)
                    (Bc_checked_p8)

                    ; #27492: <==closure== 35322 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #35322: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #37953: <==commonly_known== 13777 (neg)
                    (Pb_checked_p8)

                    ; #46760: <==commonly_known== 19537 (pos)
                    (Bb_checked_p8)

                    ; #46871: <==commonly_known== 13777 (neg)
                    (Pc_checked_p8)

                    ; #52251: <==commonly_known== 19537 (pos)
                    (Ba_checked_p8)

                    ; #58967: <==closure== 67367 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #67367: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #13777: <==negation-removal== 19537 (pos)
                    (not (not_checked_p8))

                    ; #22670: <==negation-removal== 58967 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #41135: <==negation-removal== 46760 (pos)
                    (not (Pb_not_checked_p8))

                    ; #45232: <==negation-removal== 46871 (pos)
                    (not (Bc_not_checked_p8))

                    ; #56424: <==uncertain_firing== 27492 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #57185: <==negation-removal== 21561 (pos)
                    (not (Ba_not_checked_p8))

                    ; #63278: <==negation-removal== 27492 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #74568: <==negation-removal== 52251 (pos)
                    (not (Pa_not_checked_p8))

                    ; #78621: <==uncertain_firing== 67367 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #80096: <==negation-removal== 27087 (pos)
                    (not (Pc_not_checked_p8))

                    ; #85300: <==negation-removal== 35322 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #87258: <==uncertain_firing== 35322 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #88607: <==negation-removal== 67367 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90955: <==negation-removal== 37953 (pos)
                    (not (Bb_not_checked_p8))

                    ; #91363: <==uncertain_firing== 58967 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #23250: <==commonly_known== 46479 (pos)
                    (Bc_checked_p9)

                    ; #37350: <==commonly_known== 76768 (neg)
                    (Pc_checked_p9)

                    ; #40438: <==closure== 80535 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #44825: <==closure== 76695 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #46112: <==commonly_known== 46479 (pos)
                    (Ba_checked_p9)

                    ; #46479: origin
                    (checked_p9)

                    ; #50931: <==commonly_known== 76768 (neg)
                    (Pa_checked_p9)

                    ; #65202: <==commonly_known== 76768 (neg)
                    (Pb_checked_p9)

                    ; #70225: <==commonly_known== 46479 (pos)
                    (Bb_checked_p9)

                    ; #76695: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #80535: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #26268: <==uncertain_firing== 80535 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #36915: <==negation-removal== 44825 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39984: <==negation-removal== 46112 (pos)
                    (not (Pa_not_checked_p9))

                    ; #42372: <==uncertain_firing== 44825 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #44990: <==uncertain_firing== 40438 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #50613: <==negation-removal== 37350 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57697: <==negation-removal== 23250 (pos)
                    (not (Pc_not_checked_p9))

                    ; #58030: <==negation-removal== 76695 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #60760: <==negation-removal== 70225 (pos)
                    (not (Pb_not_checked_p9))

                    ; #72787: <==negation-removal== 65202 (pos)
                    (not (Bb_not_checked_p9))

                    ; #74283: <==uncertain_firing== 76695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #76768: <==negation-removal== 46479 (pos)
                    (not (not_checked_p9))

                    ; #77012: <==negation-removal== 80535 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #87214: <==negation-removal== 50931 (pos)
                    (not (Ba_not_checked_p9))

                    ; #97146: <==negation-removal== 40438 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)