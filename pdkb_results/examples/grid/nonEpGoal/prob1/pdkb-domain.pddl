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
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #10411: origin
                    (Bb_survivorat_s_p1)

                    ; #10605: <==closure== 63497 (pos)
                    (Pa_survivorat_s_p1)

                    ; #63497: origin
                    (Ba_survivorat_s_p1)

                    ; #69449: <==closure== 10411 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72556: origin
                    (Bc_survivorat_s_p1)

                    ; #89588: <==closure== 72556 (pos)
                    (Pc_survivorat_s_p1)

                    ; #38139: <==negation-removal== 69449 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47222: <==negation-removal== 10605 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50860: <==negation-removal== 89588 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66709: <==negation-removal== 72556 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85026: <==negation-removal== 10411 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97867: <==negation-removal== 63497 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #10411: origin
                    (Bb_survivorat_s_p1)

                    ; #10605: <==closure== 63497 (pos)
                    (Pa_survivorat_s_p1)

                    ; #63497: origin
                    (Ba_survivorat_s_p1)

                    ; #69449: <==closure== 10411 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72556: origin
                    (Bc_survivorat_s_p1)

                    ; #89588: <==closure== 72556 (pos)
                    (Pc_survivorat_s_p1)

                    ; #38139: <==negation-removal== 69449 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47222: <==negation-removal== 10605 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50860: <==negation-removal== 89588 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66709: <==negation-removal== 72556 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85026: <==negation-removal== 10411 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97867: <==negation-removal== 63497 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #10411: origin
                    (Bb_survivorat_s_p1)

                    ; #10605: <==closure== 63497 (pos)
                    (Pa_survivorat_s_p1)

                    ; #63497: origin
                    (Ba_survivorat_s_p1)

                    ; #69449: <==closure== 10411 (pos)
                    (Pb_survivorat_s_p1)

                    ; #72556: origin
                    (Bc_survivorat_s_p1)

                    ; #89588: <==closure== 72556 (pos)
                    (Pc_survivorat_s_p1)

                    ; #38139: <==negation-removal== 69449 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #47222: <==negation-removal== 10605 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50860: <==negation-removal== 89588 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #66709: <==negation-removal== 72556 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #85026: <==negation-removal== 10411 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #97867: <==negation-removal== 63497 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #17698: origin
                    (Ba_survivorat_s_p2)

                    ; #40449: origin
                    (Bc_survivorat_s_p2)

                    ; #48372: <==closure== 40449 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78298: <==closure== 17698 (pos)
                    (Pa_survivorat_s_p2)

                    ; #78939: origin
                    (Bb_survivorat_s_p2)

                    ; #91762: <==closure== 78939 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24896: <==negation-removal== 78939 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #51864: <==negation-removal== 91762 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #63706: <==negation-removal== 40449 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #67279: <==negation-removal== 48372 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68303: <==negation-removal== 17698 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87148: <==negation-removal== 78298 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #17698: origin
                    (Ba_survivorat_s_p2)

                    ; #40449: origin
                    (Bc_survivorat_s_p2)

                    ; #48372: <==closure== 40449 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78298: <==closure== 17698 (pos)
                    (Pa_survivorat_s_p2)

                    ; #78939: origin
                    (Bb_survivorat_s_p2)

                    ; #91762: <==closure== 78939 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24896: <==negation-removal== 78939 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #51864: <==negation-removal== 91762 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #63706: <==negation-removal== 40449 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #67279: <==negation-removal== 48372 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68303: <==negation-removal== 17698 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87148: <==negation-removal== 78298 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #17698: origin
                    (Ba_survivorat_s_p2)

                    ; #40449: origin
                    (Bc_survivorat_s_p2)

                    ; #48372: <==closure== 40449 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78298: <==closure== 17698 (pos)
                    (Pa_survivorat_s_p2)

                    ; #78939: origin
                    (Bb_survivorat_s_p2)

                    ; #91762: <==closure== 78939 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24896: <==negation-removal== 78939 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #51864: <==negation-removal== 91762 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #63706: <==negation-removal== 40449 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #67279: <==negation-removal== 48372 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #68303: <==negation-removal== 17698 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87148: <==negation-removal== 78298 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #21588: <==closure== 53238 (pos)
                    (Pb_survivorat_s_p3)

                    ; #22816: <==closure== 36715 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30953: origin
                    (Bc_survivorat_s_p3)

                    ; #36715: origin
                    (Ba_survivorat_s_p3)

                    ; #53238: origin
                    (Bb_survivorat_s_p3)

                    ; #53928: <==closure== 30953 (pos)
                    (Pc_survivorat_s_p3)

                    ; #24412: <==negation-removal== 53238 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #36153: <==negation-removal== 21588 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60417: <==negation-removal== 22816 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #63349: <==negation-removal== 53928 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #65683: <==negation-removal== 36715 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #83733: <==negation-removal== 30953 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #21588: <==closure== 53238 (pos)
                    (Pb_survivorat_s_p3)

                    ; #22816: <==closure== 36715 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30953: origin
                    (Bc_survivorat_s_p3)

                    ; #36715: origin
                    (Ba_survivorat_s_p3)

                    ; #53238: origin
                    (Bb_survivorat_s_p3)

                    ; #53928: <==closure== 30953 (pos)
                    (Pc_survivorat_s_p3)

                    ; #24412: <==negation-removal== 53238 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #36153: <==negation-removal== 21588 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60417: <==negation-removal== 22816 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #63349: <==negation-removal== 53928 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #65683: <==negation-removal== 36715 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #83733: <==negation-removal== 30953 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #21588: <==closure== 53238 (pos)
                    (Pb_survivorat_s_p3)

                    ; #22816: <==closure== 36715 (pos)
                    (Pa_survivorat_s_p3)

                    ; #30953: origin
                    (Bc_survivorat_s_p3)

                    ; #36715: origin
                    (Ba_survivorat_s_p3)

                    ; #53238: origin
                    (Bb_survivorat_s_p3)

                    ; #53928: <==closure== 30953 (pos)
                    (Pc_survivorat_s_p3)

                    ; #24412: <==negation-removal== 53238 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #36153: <==negation-removal== 21588 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #60417: <==negation-removal== 22816 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #63349: <==negation-removal== 53928 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #65683: <==negation-removal== 36715 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #83733: <==negation-removal== 30953 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #20165: <==closure== 69920 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28302: origin
                    (Bc_survivorat_s_p4)

                    ; #32126: origin
                    (Ba_survivorat_s_p4)

                    ; #35877: <==closure== 28302 (pos)
                    (Pc_survivorat_s_p4)

                    ; #69920: origin
                    (Bb_survivorat_s_p4)

                    ; #81875: <==closure== 32126 (pos)
                    (Pa_survivorat_s_p4)

                    ; #22187: <==negation-removal== 35877 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25979: <==negation-removal== 81875 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #26601: <==negation-removal== 32126 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #31519: <==negation-removal== 28302 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #45880: <==negation-removal== 69920 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #51695: <==negation-removal== 20165 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #20165: <==closure== 69920 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28302: origin
                    (Bc_survivorat_s_p4)

                    ; #32126: origin
                    (Ba_survivorat_s_p4)

                    ; #35877: <==closure== 28302 (pos)
                    (Pc_survivorat_s_p4)

                    ; #69920: origin
                    (Bb_survivorat_s_p4)

                    ; #81875: <==closure== 32126 (pos)
                    (Pa_survivorat_s_p4)

                    ; #22187: <==negation-removal== 35877 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25979: <==negation-removal== 81875 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #26601: <==negation-removal== 32126 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #31519: <==negation-removal== 28302 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #45880: <==negation-removal== 69920 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #51695: <==negation-removal== 20165 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #20165: <==closure== 69920 (pos)
                    (Pb_survivorat_s_p4)

                    ; #28302: origin
                    (Bc_survivorat_s_p4)

                    ; #32126: origin
                    (Ba_survivorat_s_p4)

                    ; #35877: <==closure== 28302 (pos)
                    (Pc_survivorat_s_p4)

                    ; #69920: origin
                    (Bb_survivorat_s_p4)

                    ; #81875: <==closure== 32126 (pos)
                    (Pa_survivorat_s_p4)

                    ; #22187: <==negation-removal== 35877 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #25979: <==negation-removal== 81875 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #26601: <==negation-removal== 32126 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #31519: <==negation-removal== 28302 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #45880: <==negation-removal== 69920 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #51695: <==negation-removal== 20165 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #23594: <==closure== 77733 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29220: <==closure== 60899 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52855: <==closure== 62045 (pos)
                    (Pb_survivorat_s_p5)

                    ; #60899: origin
                    (Ba_survivorat_s_p5)

                    ; #62045: origin
                    (Bb_survivorat_s_p5)

                    ; #77733: origin
                    (Bc_survivorat_s_p5)

                    ; #28169: <==negation-removal== 23594 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #62357: <==negation-removal== 52855 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #67798: <==negation-removal== 29220 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76466: <==negation-removal== 77733 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #83114: <==negation-removal== 60899 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91563: <==negation-removal== 62045 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #23594: <==closure== 77733 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29220: <==closure== 60899 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52855: <==closure== 62045 (pos)
                    (Pb_survivorat_s_p5)

                    ; #60899: origin
                    (Ba_survivorat_s_p5)

                    ; #62045: origin
                    (Bb_survivorat_s_p5)

                    ; #77733: origin
                    (Bc_survivorat_s_p5)

                    ; #28169: <==negation-removal== 23594 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #62357: <==negation-removal== 52855 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #67798: <==negation-removal== 29220 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76466: <==negation-removal== 77733 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #83114: <==negation-removal== 60899 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91563: <==negation-removal== 62045 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #23594: <==closure== 77733 (pos)
                    (Pc_survivorat_s_p5)

                    ; #29220: <==closure== 60899 (pos)
                    (Pa_survivorat_s_p5)

                    ; #52855: <==closure== 62045 (pos)
                    (Pb_survivorat_s_p5)

                    ; #60899: origin
                    (Ba_survivorat_s_p5)

                    ; #62045: origin
                    (Bb_survivorat_s_p5)

                    ; #77733: origin
                    (Bc_survivorat_s_p5)

                    ; #28169: <==negation-removal== 23594 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #62357: <==negation-removal== 52855 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #67798: <==negation-removal== 29220 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #76466: <==negation-removal== 77733 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #83114: <==negation-removal== 60899 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #91563: <==negation-removal== 62045 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #29635: origin
                    (Bc_survivorat_s_p6)

                    ; #37134: origin
                    (Bb_survivorat_s_p6)

                    ; #42657: origin
                    (Ba_survivorat_s_p6)

                    ; #57421: <==closure== 37134 (pos)
                    (Pb_survivorat_s_p6)

                    ; #59811: <==closure== 29635 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83590: <==closure== 42657 (pos)
                    (Pa_survivorat_s_p6)

                    ; #17446: <==negation-removal== 83590 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #37278: <==negation-removal== 37134 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #42986: <==negation-removal== 59811 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74211: <==negation-removal== 57421 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #82453: <==negation-removal== 29635 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89153: <==negation-removal== 42657 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #29635: origin
                    (Bc_survivorat_s_p6)

                    ; #37134: origin
                    (Bb_survivorat_s_p6)

                    ; #42657: origin
                    (Ba_survivorat_s_p6)

                    ; #57421: <==closure== 37134 (pos)
                    (Pb_survivorat_s_p6)

                    ; #59811: <==closure== 29635 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83590: <==closure== 42657 (pos)
                    (Pa_survivorat_s_p6)

                    ; #17446: <==negation-removal== 83590 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #37278: <==negation-removal== 37134 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #42986: <==negation-removal== 59811 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74211: <==negation-removal== 57421 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #82453: <==negation-removal== 29635 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89153: <==negation-removal== 42657 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #29635: origin
                    (Bc_survivorat_s_p6)

                    ; #37134: origin
                    (Bb_survivorat_s_p6)

                    ; #42657: origin
                    (Ba_survivorat_s_p6)

                    ; #57421: <==closure== 37134 (pos)
                    (Pb_survivorat_s_p6)

                    ; #59811: <==closure== 29635 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83590: <==closure== 42657 (pos)
                    (Pa_survivorat_s_p6)

                    ; #17446: <==negation-removal== 83590 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #37278: <==negation-removal== 37134 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #42986: <==negation-removal== 59811 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #74211: <==negation-removal== 57421 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #82453: <==negation-removal== 29635 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89153: <==negation-removal== 42657 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #20960: <==closure== 82660 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21470: <==closure== 68821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #52008: origin
                    (Ba_survivorat_s_p7)

                    ; #68821: origin
                    (Bb_survivorat_s_p7)

                    ; #80475: <==closure== 52008 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82660: origin
                    (Bc_survivorat_s_p7)

                    ; #13332: <==negation-removal== 82660 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #41032: <==negation-removal== 52008 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #42542: <==negation-removal== 20960 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49487: <==negation-removal== 80475 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #65479: <==negation-removal== 21470 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #82907: <==negation-removal== 68821 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #20960: <==closure== 82660 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21470: <==closure== 68821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #52008: origin
                    (Ba_survivorat_s_p7)

                    ; #68821: origin
                    (Bb_survivorat_s_p7)

                    ; #80475: <==closure== 52008 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82660: origin
                    (Bc_survivorat_s_p7)

                    ; #13332: <==negation-removal== 82660 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #41032: <==negation-removal== 52008 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #42542: <==negation-removal== 20960 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49487: <==negation-removal== 80475 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #65479: <==negation-removal== 21470 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #82907: <==negation-removal== 68821 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #20960: <==closure== 82660 (pos)
                    (Pc_survivorat_s_p7)

                    ; #21470: <==closure== 68821 (pos)
                    (Pb_survivorat_s_p7)

                    ; #52008: origin
                    (Ba_survivorat_s_p7)

                    ; #68821: origin
                    (Bb_survivorat_s_p7)

                    ; #80475: <==closure== 52008 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82660: origin
                    (Bc_survivorat_s_p7)

                    ; #13332: <==negation-removal== 82660 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #41032: <==negation-removal== 52008 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #42542: <==negation-removal== 20960 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #49487: <==negation-removal== 80475 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #65479: <==negation-removal== 21470 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #82907: <==negation-removal== 68821 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #30939: <==closure== 35135 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35135: origin
                    (Bb_survivorat_s_p8)

                    ; #46114: <==closure== 61891 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61891: origin
                    (Bc_survivorat_s_p8)

                    ; #74475: <==closure== 90085 (pos)
                    (Pa_survivorat_s_p8)

                    ; #90085: origin
                    (Ba_survivorat_s_p8)

                    ; #28127: <==negation-removal== 30939 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #36976: <==negation-removal== 46114 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #43605: <==negation-removal== 74475 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #71843: <==negation-removal== 61891 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #80766: <==negation-removal== 35135 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #84420: <==negation-removal== 90085 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #30939: <==closure== 35135 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35135: origin
                    (Bb_survivorat_s_p8)

                    ; #46114: <==closure== 61891 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61891: origin
                    (Bc_survivorat_s_p8)

                    ; #74475: <==closure== 90085 (pos)
                    (Pa_survivorat_s_p8)

                    ; #90085: origin
                    (Ba_survivorat_s_p8)

                    ; #28127: <==negation-removal== 30939 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #36976: <==negation-removal== 46114 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #43605: <==negation-removal== 74475 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #71843: <==negation-removal== 61891 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #80766: <==negation-removal== 35135 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #84420: <==negation-removal== 90085 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #30939: <==closure== 35135 (pos)
                    (Pb_survivorat_s_p8)

                    ; #35135: origin
                    (Bb_survivorat_s_p8)

                    ; #46114: <==closure== 61891 (pos)
                    (Pc_survivorat_s_p8)

                    ; #61891: origin
                    (Bc_survivorat_s_p8)

                    ; #74475: <==closure== 90085 (pos)
                    (Pa_survivorat_s_p8)

                    ; #90085: origin
                    (Ba_survivorat_s_p8)

                    ; #28127: <==negation-removal== 30939 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #36976: <==negation-removal== 46114 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #43605: <==negation-removal== 74475 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #71843: <==negation-removal== 61891 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #80766: <==negation-removal== 35135 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #84420: <==negation-removal== 90085 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #37229: <==closure== 58260 (pos)
                    (Pc_survivorat_s_p9)

                    ; #38425: origin
                    (Ba_survivorat_s_p9)

                    ; #58260: origin
                    (Bc_survivorat_s_p9)

                    ; #65737: <==closure== 38425 (pos)
                    (Pa_survivorat_s_p9)

                    ; #79770: origin
                    (Bb_survivorat_s_p9)

                    ; #81819: <==closure== 79770 (pos)
                    (Pb_survivorat_s_p9)

                    ; #11742: <==negation-removal== 37229 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #13709: <==negation-removal== 65737 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16745: <==negation-removal== 58260 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #39308: <==negation-removal== 81819 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #61884: <==negation-removal== 38425 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63735: <==negation-removal== 79770 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #37229: <==closure== 58260 (pos)
                    (Pc_survivorat_s_p9)

                    ; #38425: origin
                    (Ba_survivorat_s_p9)

                    ; #58260: origin
                    (Bc_survivorat_s_p9)

                    ; #65737: <==closure== 38425 (pos)
                    (Pa_survivorat_s_p9)

                    ; #79770: origin
                    (Bb_survivorat_s_p9)

                    ; #81819: <==closure== 79770 (pos)
                    (Pb_survivorat_s_p9)

                    ; #11742: <==negation-removal== 37229 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #13709: <==negation-removal== 65737 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16745: <==negation-removal== 58260 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #39308: <==negation-removal== 81819 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #61884: <==negation-removal== 38425 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63735: <==negation-removal== 79770 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #37229: <==closure== 58260 (pos)
                    (Pc_survivorat_s_p9)

                    ; #38425: origin
                    (Ba_survivorat_s_p9)

                    ; #58260: origin
                    (Bc_survivorat_s_p9)

                    ; #65737: <==closure== 38425 (pos)
                    (Pa_survivorat_s_p9)

                    ; #79770: origin
                    (Bb_survivorat_s_p9)

                    ; #81819: <==closure== 79770 (pos)
                    (Pb_survivorat_s_p9)

                    ; #11742: <==negation-removal== 37229 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #13709: <==negation-removal== 65737 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #16745: <==negation-removal== 58260 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #39308: <==negation-removal== 81819 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #61884: <==negation-removal== 38425 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #63735: <==negation-removal== 79770 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #60068: origin
                    (not_at_a_p1)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #60068: origin
                    (not_at_a_p1)

                    ; #66103: origin
                    (at_a_p2)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #60068: origin
                    (not_at_a_p1)

                    ; #87248: origin
                    (at_a_p3)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #36699: origin
                    (at_a_p4)

                    ; #60068: origin
                    (not_at_a_p1)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #60068: origin
                    (not_at_a_p1)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #60068: origin
                    (not_at_a_p1)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #60068: origin
                    (not_at_a_p1)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #55161: origin
                    (at_a_p8)

                    ; #60068: origin
                    (not_at_a_p1)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #60068: origin
                    (not_at_a_p1)

                    ; #68514: origin
                    (at_a_p9)

                    ; #18934: <==negation-removal== 60068 (pos)
                    (not (at_a_p1))

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #18934: origin
                    (at_a_p1)

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #66103: origin
                    (at_a_p2)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #87248: origin
                    (at_a_p3)

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #36699: origin
                    (at_a_p4)

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #18758: origin
                    (not_at_a_p2)

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #18758: origin
                    (not_at_a_p2)

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #55161: origin
                    (at_a_p8)

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #18758: origin
                    (not_at_a_p2)

                    ; #68514: origin
                    (at_a_p9)

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))

                    ; #66103: <==negation-removal== 18758 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #22213: origin
                    (not_at_a_p3)

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #22213: origin
                    (not_at_a_p3)

                    ; #66103: origin
                    (at_a_p2)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #22213: origin
                    (not_at_a_p3)

                    ; #87248: origin
                    (at_a_p3)

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #22213: origin
                    (not_at_a_p3)

                    ; #36699: origin
                    (at_a_p4)

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #22213: origin
                    (not_at_a_p3)

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #22213: origin
                    (not_at_a_p3)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #22213: origin
                    (not_at_a_p3)

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #22213: origin
                    (not_at_a_p3)

                    ; #55161: origin
                    (at_a_p8)

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #22213: origin
                    (not_at_a_p3)

                    ; #68514: origin
                    (at_a_p9)

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))

                    ; #87248: <==negation-removal== 22213 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #66103: origin
                    (at_a_p2)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #87248: origin
                    (at_a_p3)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #36699: origin
                    (at_a_p4)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #84775: origin
                    (at_a_p6)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #55161: origin
                    (at_a_p8)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #68514: origin
                    (at_a_p9)

                    ; #90705: origin
                    (not_at_a_p4)

                    ; #36699: <==negation-removal== 90705 (pos)
                    (not (at_a_p4))

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #66103: origin
                    (at_a_p2)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #74018: origin
                    (not_at_a_p5)

                    ; #87248: origin
                    (at_a_p3)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #36699: origin
                    (at_a_p4)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #74018: origin
                    (not_at_a_p5)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #55161: origin
                    (at_a_p8)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #68514: origin
                    (at_a_p9)

                    ; #74018: origin
                    (not_at_a_p5)

                    ; #18308: <==negation-removal== 74018 (pos)
                    (not (at_a_p5))

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #18934: origin
                    (at_a_p1)

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #66103: origin
                    (at_a_p2)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #87248: origin
                    (at_a_p3)

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #36699: origin
                    (at_a_p4)

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #18308: origin
                    (at_a_p5)

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #17979: origin
                    (at_a_p7)

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #55161: origin
                    (at_a_p8)

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #13292: origin
                    (not_at_a_p6)

                    ; #68514: origin
                    (at_a_p9)

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))

                    ; #84775: <==negation-removal== 13292 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #66103: origin
                    (at_a_p2)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #72124: origin
                    (not_at_a_p7)

                    ; #87248: origin
                    (at_a_p3)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #36699: origin
                    (at_a_p4)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #72124: origin
                    (not_at_a_p7)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #55161: origin
                    (at_a_p8)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #68514: origin
                    (at_a_p9)

                    ; #72124: origin
                    (not_at_a_p7)

                    ; #17979: <==negation-removal== 72124 (pos)
                    (not (at_a_p7))

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #61110: origin
                    (not_at_a_p8)

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #61110: origin
                    (not_at_a_p8)

                    ; #66103: origin
                    (at_a_p2)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #61110: origin
                    (not_at_a_p8)

                    ; #87248: origin
                    (at_a_p3)

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #36699: origin
                    (at_a_p4)

                    ; #61110: origin
                    (not_at_a_p8)

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #61110: origin
                    (not_at_a_p8)

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #61110: origin
                    (not_at_a_p8)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #61110: origin
                    (not_at_a_p8)

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #55161: origin
                    (at_a_p8)

                    ; #61110: origin
                    (not_at_a_p8)

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #61110: origin
                    (not_at_a_p8)

                    ; #68514: origin
                    (at_a_p9)

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))

                    ; #55161: <==negation-removal== 61110 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #18934: origin
                    (at_a_p1)

                    ; #42196: origin
                    (not_at_a_p9)

                    ; #60068: <==negation-removal== 18934 (pos)
                    (not (not_at_a_p1))

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #42196: origin
                    (not_at_a_p9)

                    ; #66103: origin
                    (at_a_p2)

                    ; #18758: <==negation-removal== 66103 (pos)
                    (not (not_at_a_p2))

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #42196: origin
                    (not_at_a_p9)

                    ; #87248: origin
                    (at_a_p3)

                    ; #22213: <==negation-removal== 87248 (pos)
                    (not (not_at_a_p3))

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #36699: origin
                    (at_a_p4)

                    ; #42196: origin
                    (not_at_a_p9)

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))

                    ; #90705: <==negation-removal== 36699 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #18308: origin
                    (at_a_p5)

                    ; #42196: origin
                    (not_at_a_p9)

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))

                    ; #74018: <==negation-removal== 18308 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #42196: origin
                    (not_at_a_p9)

                    ; #84775: origin
                    (at_a_p6)

                    ; #13292: <==negation-removal== 84775 (pos)
                    (not (not_at_a_p6))

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #17979: origin
                    (at_a_p7)

                    ; #42196: origin
                    (not_at_a_p9)

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))

                    ; #72124: <==negation-removal== 17979 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #42196: origin
                    (not_at_a_p9)

                    ; #55161: origin
                    (at_a_p8)

                    ; #61110: <==negation-removal== 55161 (pos)
                    (not (not_at_a_p8))

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #42196: origin
                    (not_at_a_p9)

                    ; #68514: origin
                    (at_a_p9)

                    ; #42196: <==negation-removal== 68514 (pos)
                    (not (not_at_a_p9))

                    ; #68514: <==negation-removal== 42196 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #61623: origin
                    (at_b_p1)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #63611: origin
                    (at_b_p2)

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #62990: origin
                    (at_b_p3)

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #51062: origin
                    (at_b_p5)

                    ; #58301: origin
                    (not_at_b_p1)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #80235: origin
                    (at_b_p6)

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #58301: origin
                    (not_at_b_p1)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #58301: origin
                    (not_at_b_p1)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #61623: <==negation-removal== 58301 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #61623: origin
                    (at_b_p1)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #63611: origin
                    (at_b_p2)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #62990: origin
                    (at_b_p3)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #81858: origin
                    (not_at_b_p2)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #51062: origin
                    (at_b_p5)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #80235: origin
                    (at_b_p6)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #78905: origin
                    (at_b_p7)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #81858: origin
                    (not_at_b_p2)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #81858: origin
                    (not_at_b_p2)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #63611: <==negation-removal== 81858 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #61623: origin
                    (at_b_p1)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #63611: origin
                    (at_b_p2)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #62990: origin
                    (at_b_p3)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #83752: origin
                    (not_at_b_p3)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #51062: origin
                    (at_b_p5)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #80235: origin
                    (at_b_p6)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #78905: origin
                    (at_b_p7)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #83752: origin
                    (not_at_b_p3)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #83752: origin
                    (not_at_b_p3)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #62990: <==negation-removal== 83752 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #61623: origin
                    (at_b_p1)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #63611: origin
                    (at_b_p2)

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #62990: origin
                    (at_b_p3)

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #51062: origin
                    (at_b_p5)

                    ; #57323: origin
                    (not_at_b_p4)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #80235: origin
                    (at_b_p6)

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #57323: origin
                    (not_at_b_p4)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #57323: origin
                    (not_at_b_p4)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #96630: <==negation-removal== 57323 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #61623: origin
                    (at_b_p1)

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #63611: origin
                    (at_b_p2)

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #62990: origin
                    (at_b_p3)

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #96630: origin
                    (at_b_p4)

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #51062: origin
                    (at_b_p5)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #80235: origin
                    (at_b_p6)

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #43215: origin
                    (at_b_p8)

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #17075: origin
                    (not_at_b_p5)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #51062: <==negation-removal== 17075 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #61623: origin
                    (at_b_p1)

                    ; #69107: origin
                    (not_at_b_p6)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #63611: origin
                    (at_b_p2)

                    ; #69107: origin
                    (not_at_b_p6)

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #62990: origin
                    (at_b_p3)

                    ; #69107: origin
                    (not_at_b_p6)

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #69107: origin
                    (not_at_b_p6)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #51062: origin
                    (at_b_p5)

                    ; #69107: origin
                    (not_at_b_p6)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #69107: origin
                    (not_at_b_p6)

                    ; #80235: origin
                    (at_b_p6)

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #69107: origin
                    (not_at_b_p6)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #69107: origin
                    (not_at_b_p6)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #69107: origin
                    (not_at_b_p6)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #80235: <==negation-removal== 69107 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #61623: origin
                    (at_b_p1)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #63611: origin
                    (at_b_p2)

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #62990: origin
                    (at_b_p3)

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #51062: origin
                    (at_b_p5)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #80235: origin
                    (at_b_p6)

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #43215: origin
                    (at_b_p8)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #11412: origin
                    (not_at_b_p7)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #78905: <==negation-removal== 11412 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #61623: origin
                    (at_b_p1)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #63611: origin
                    (at_b_p2)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #62990: origin
                    (at_b_p3)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #96630: origin
                    (at_b_p4)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #51062: origin
                    (at_b_p5)

                    ; #60720: origin
                    (not_at_b_p8)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #80235: origin
                    (at_b_p6)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #60720: origin
                    (not_at_b_p8)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #60720: origin
                    (not_at_b_p8)

                    ; #87788: origin
                    (at_b_p9)

                    ; #43215: <==negation-removal== 60720 (pos)
                    (not (at_b_p8))

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #61623: origin
                    (at_b_p1)

                    ; #58301: <==negation-removal== 61623 (pos)
                    (not (not_at_b_p1))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #63611: origin
                    (at_b_p2)

                    ; #81858: <==negation-removal== 63611 (pos)
                    (not (not_at_b_p2))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #62990: origin
                    (at_b_p3)

                    ; #83752: <==negation-removal== 62990 (pos)
                    (not (not_at_b_p3))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #96630: origin
                    (at_b_p4)

                    ; #57323: <==negation-removal== 96630 (pos)
                    (not (not_at_b_p4))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #51062: origin
                    (at_b_p5)

                    ; #17075: <==negation-removal== 51062 (pos)
                    (not (not_at_b_p5))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #80235: origin
                    (at_b_p6)

                    ; #69107: <==negation-removal== 80235 (pos)
                    (not (not_at_b_p6))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #78905: origin
                    (at_b_p7)

                    ; #11412: <==negation-removal== 78905 (pos)
                    (not (not_at_b_p7))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #43215: origin
                    (at_b_p8)

                    ; #47704: origin
                    (not_at_b_p9)

                    ; #60720: <==negation-removal== 43215 (pos)
                    (not (not_at_b_p8))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #47704: origin
                    (not_at_b_p9)

                    ; #87788: origin
                    (at_b_p9)

                    ; #47704: <==negation-removal== 87788 (pos)
                    (not (not_at_b_p9))

                    ; #87788: <==negation-removal== 47704 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #58279: origin
                    (at_c_p1)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #35600: origin
                    (not_at_c_p1)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #35600: origin
                    (not_at_c_p1)

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #68074: origin
                    (at_c_p5)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #88401: origin
                    (at_c_p6)

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #84165: origin
                    (at_c_p7)

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #35600: origin
                    (not_at_c_p1)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #58279: <==negation-removal== 35600 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #58279: origin
                    (at_c_p1)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #32704: origin
                    (not_at_c_p2)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #32704: origin
                    (not_at_c_p2)

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #68074: origin
                    (at_c_p5)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #88401: origin
                    (at_c_p6)

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #84165: origin
                    (at_c_p7)

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #32704: origin
                    (not_at_c_p2)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #86601: <==negation-removal== 32704 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #58279: origin
                    (at_c_p1)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #49084: origin
                    (not_at_c_p3)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #49084: origin
                    (not_at_c_p3)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #68074: origin
                    (at_c_p5)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #88401: origin
                    (at_c_p6)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #84165: origin
                    (at_c_p7)

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #49084: origin
                    (not_at_c_p3)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #32179: <==negation-removal== 49084 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #58279: origin
                    (at_c_p1)

                    ; #59581: origin
                    (not_at_c_p4)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #59581: origin
                    (not_at_c_p4)

                    ; #86601: origin
                    (at_c_p2)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #59581: origin
                    (not_at_c_p4)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #59581: origin
                    (not_at_c_p4)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #59581: origin
                    (not_at_c_p4)

                    ; #68074: origin
                    (at_c_p5)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #59581: origin
                    (not_at_c_p4)

                    ; #88401: origin
                    (at_c_p6)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #59581: origin
                    (not_at_c_p4)

                    ; #84165: origin
                    (at_c_p7)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #59581: origin
                    (not_at_c_p4)

                    ; #81613: origin
                    (at_c_p8)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #59581: origin
                    (not_at_c_p4)

                    ; #86175: origin
                    (at_c_p9)

                    ; #12679: <==negation-removal== 59581 (pos)
                    (not (at_c_p4))

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #58279: origin
                    (at_c_p1)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #54735: origin
                    (not_at_c_p5)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #54735: origin
                    (not_at_c_p5)

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #68074: origin
                    (at_c_p5)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #88401: origin
                    (at_c_p6)

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #84165: origin
                    (at_c_p7)

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #54735: origin
                    (not_at_c_p5)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #68074: <==negation-removal== 54735 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #58279: origin
                    (at_c_p1)

                    ; #61464: origin
                    (not_at_c_p6)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #61464: origin
                    (not_at_c_p6)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #61464: origin
                    (not_at_c_p6)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #61464: origin
                    (not_at_c_p6)

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #61464: origin
                    (not_at_c_p6)

                    ; #68074: origin
                    (at_c_p5)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #61464: origin
                    (not_at_c_p6)

                    ; #88401: origin
                    (at_c_p6)

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #61464: origin
                    (not_at_c_p6)

                    ; #84165: origin
                    (at_c_p7)

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #61464: origin
                    (not_at_c_p6)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #61464: origin
                    (not_at_c_p6)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #88401: <==negation-removal== 61464 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #58279: origin
                    (at_c_p1)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #86601: origin
                    (at_c_p2)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #32179: origin
                    (at_c_p3)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #68074: origin
                    (at_c_p5)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #88379: origin
                    (not_at_c_p7)

                    ; #88401: origin
                    (at_c_p6)

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #84165: origin
                    (at_c_p7)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #81613: origin
                    (at_c_p8)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #86175: origin
                    (at_c_p9)

                    ; #88379: origin
                    (not_at_c_p7)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #84165: <==negation-removal== 88379 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #58279: origin
                    (at_c_p1)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #32179: origin
                    (at_c_p3)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #14552: origin
                    (not_at_c_p8)

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #68074: origin
                    (at_c_p5)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #88401: origin
                    (at_c_p6)

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #84165: origin
                    (at_c_p7)

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #14552: origin
                    (not_at_c_p8)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #81613: <==negation-removal== 14552 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #58279: origin
                    (at_c_p1)

                    ; #35600: <==negation-removal== 58279 (pos)
                    (not (not_at_c_p1))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #86601: origin
                    (at_c_p2)

                    ; #32704: <==negation-removal== 86601 (pos)
                    (not (not_at_c_p2))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #32179: origin
                    (at_c_p3)

                    ; #49084: <==negation-removal== 32179 (pos)
                    (not (not_at_c_p3))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #12679: origin
                    (at_c_p4)

                    ; #21027: origin
                    (not_at_c_p9)

                    ; #59581: <==negation-removal== 12679 (pos)
                    (not (not_at_c_p4))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #68074: origin
                    (at_c_p5)

                    ; #54735: <==negation-removal== 68074 (pos)
                    (not (not_at_c_p5))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #88401: origin
                    (at_c_p6)

                    ; #61464: <==negation-removal== 88401 (pos)
                    (not (not_at_c_p6))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #84165: origin
                    (at_c_p7)

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))

                    ; #88379: <==negation-removal== 84165 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #81613: origin
                    (at_c_p8)

                    ; #14552: <==negation-removal== 81613 (pos)
                    (not (not_at_c_p8))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #21027: origin
                    (not_at_c_p9)

                    ; #86175: origin
                    (at_c_p9)

                    ; #21027: <==negation-removal== 86175 (pos)
                    (not (not_at_c_p9))

                    ; #86175: <==negation-removal== 21027 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #21690: <==commonly_known== 47345 (pos)
                    (Bc_checked_p1)

                    ; #22921: <==commonly_known== 10279 (neg)
                    (Pb_checked_p1)

                    ; #26471: <==commonly_known== 47345 (pos)
                    (Ba_checked_p1)

                    ; #39463: <==closure== 97017 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #43150: <==commonly_known== 47345 (pos)
                    (Bb_checked_p1)

                    ; #47345: origin
                    (checked_p1)

                    ; #68382: <==commonly_known== 10279 (neg)
                    (Pc_checked_p1)

                    ; #79612: <==commonly_known== 10279 (neg)
                    (Pa_checked_p1)

                    ; #81577: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #90741: <==closure== 81577 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #97017: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #10279: <==negation-removal== 47345 (pos)
                    (not (not_checked_p1))

                    ; #17949: <==negation-removal== 22921 (pos)
                    (not (Bb_not_checked_p1))

                    ; #19136: <==uncertain_firing== 90741 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #32028: <==negation-removal== 79612 (pos)
                    (not (Ba_not_checked_p1))

                    ; #33701: <==negation-removal== 81577 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #33972: <==negation-removal== 97017 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #41520: <==negation-removal== 68382 (pos)
                    (not (Bc_not_checked_p1))

                    ; #47345: <==negation-removal== 43150 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47922: <==negation-removal== 26471 (pos)
                    (not (Pa_not_checked_p1))

                    ; #49618: <==uncertain_firing== 81577 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #56831: <==negation-removal== 21690 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73196: <==uncertain_firing== 39463 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #77629: <==negation-removal== 39463 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #80517: <==uncertain_firing== 97017 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #83447: <==negation-removal== 90741 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11161: <==commonly_known== 26767 (neg)
                    (Pc_checked_p2)

                    ; #24919: <==commonly_known== 26767 (neg)
                    (Pa_checked_p2)

                    ; #33776: <==commonly_known== 62799 (pos)
                    (Ba_checked_p2)

                    ; #37698: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #59412: <==commonly_known== 26767 (neg)
                    (Pb_checked_p2)

                    ; #59956: <==commonly_known== 62799 (pos)
                    (Bc_checked_p2)

                    ; #62799: origin
                    (checked_p2)

                    ; #63151: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #68068: <==closure== 63151 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #76637: <==commonly_known== 62799 (pos)
                    (Bb_checked_p2)

                    ; #89007: <==closure== 37698 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #16046: <==negation-removal== 89007 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #23130: <==uncertain_firing== 63151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #26767: <==negation-removal== 62799 (pos)
                    (not (not_checked_p2))

                    ; #29634: <==negation-removal== 76637 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57125: <==negation-removal== 68068 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61913: <==negation-removal== 59412 (pos)
                    (not (Bb_not_checked_p2))

                    ; #67461: <==negation-removal== 63151 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #67531: <==uncertain_firing== 37698 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #73376: <==negation-removal== 37698 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #79616: <==negation-removal== 24919 (pos)
                    (not (Ba_not_checked_p2))

                    ; #81281: <==negation-removal== 59956 (pos)
                    (not (Pc_not_checked_p2))

                    ; #82105: <==negation-removal== 33776 (pos)
                    (not (Pa_not_checked_p2))

                    ; #86062: <==uncertain_firing== 68068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #87485: <==uncertain_firing== 89007 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #96096: <==negation-removal== 11161 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15810: <==commonly_known== 59373 (neg)
                    (Pa_checked_p3)

                    ; #43153: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #47106: <==commonly_known== 73697 (pos)
                    (Bc_checked_p3)

                    ; #52187: <==commonly_known== 73697 (pos)
                    (Ba_checked_p3)

                    ; #54747: <==closure== 80323 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #55927: <==commonly_known== 59373 (neg)
                    (Pb_checked_p3)

                    ; #62856: <==commonly_known== 73697 (pos)
                    (Bb_checked_p3)

                    ; #65384: <==commonly_known== 59373 (neg)
                    (Pc_checked_p3)

                    ; #73697: origin
                    (checked_p3)

                    ; #78033: <==closure== 43153 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #80323: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22788: <==uncertain_firing== 80323 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #36988: <==negation-removal== 52187 (pos)
                    (not (Pa_not_checked_p3))

                    ; #37657: <==negation-removal== 78033 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #44197: <==negation-removal== 80323 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #49509: <==negation-removal== 54747 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #49581: <==uncertain_firing== 54747 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #50340: <==negation-removal== 15810 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57806: <==uncertain_firing== 43153 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #59373: <==negation-removal== 73697 (pos)
                    (not (not_checked_p3))

                    ; #61456: <==negation-removal== 43153 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #62072: <==negation-removal== 62856 (pos)
                    (not (Pb_not_checked_p3))

                    ; #63011: <==uncertain_firing== 78033 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #85435: <==negation-removal== 65384 (pos)
                    (not (Bc_not_checked_p3))

                    ; #88030: <==negation-removal== 47106 (pos)
                    (not (Pc_not_checked_p3))

                    ; #88260: <==negation-removal== 55927 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #30255: <==commonly_known== 12786 (neg)
                    (Pb_checked_p4)

                    ; #30984: <==commonly_known== 89052 (pos)
                    (Bb_checked_p4)

                    ; #33254: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #40687: <==commonly_known== 89052 (pos)
                    (Ba_checked_p4)

                    ; #49199: <==commonly_known== 89052 (pos)
                    (Bc_checked_p4)

                    ; #56570: <==closure== 33254 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #58775: <==closure== 65460 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #65460: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #78323: <==commonly_known== 12786 (neg)
                    (Pc_checked_p4)

                    ; #89052: origin
                    (checked_p4)

                    ; #91850: <==commonly_known== 12786 (neg)
                    (Pa_checked_p4)

                    ; #12786: <==negation-removal== 89052 (pos)
                    (not (not_checked_p4))

                    ; #16736: <==negation-removal== 40687 (pos)
                    (not (Pa_not_checked_p4))

                    ; #26789: <==negation-removal== 30984 (pos)
                    (not (Pb_not_checked_p4))

                    ; #29619: <==uncertain_firing== 56570 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31761: <==negation-removal== 33254 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #36639: <==negation-removal== 49199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #36904: <==uncertain_firing== 65460 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #43158: <==negation-removal== 30255 (pos)
                    (not (Bb_not_checked_p4))

                    ; #44015: <==negation-removal== 58775 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #45258: <==negation-removal== 56570 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55373: <==uncertain_firing== 33254 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #65175: <==uncertain_firing== 58775 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #71012: <==negation-removal== 78323 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77895: <==negation-removal== 91850 (pos)
                    (not (Ba_not_checked_p4))

                    ; #79422: <==negation-removal== 65460 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11666: <==commonly_known== 32111 (pos)
                    (Bb_checked_p5)

                    ; #14732: <==commonly_known== 40813 (neg)
                    (Pb_checked_p5)

                    ; #21385: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #26213: <==commonly_known== 40813 (neg)
                    (Pc_checked_p5)

                    ; #32111: origin
                    (checked_p5)

                    ; #40493: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #42574: <==closure== 21385 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #46304: <==commonly_known== 40813 (neg)
                    (Pa_checked_p5)

                    ; #67762: <==commonly_known== 32111 (pos)
                    (Bc_checked_p5)

                    ; #89955: <==closure== 40493 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #99927: <==commonly_known== 32111 (pos)
                    (Ba_checked_p5)

                    ; #27220: <==negation-removal== 11666 (pos)
                    (not (Pb_not_checked_p5))

                    ; #38361: <==uncertain_firing== 40493 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #40813: <==negation-removal== 32111 (pos)
                    (not (not_checked_p5))

                    ; #46282: <==negation-removal== 42574 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #50245: <==negation-removal== 46304 (pos)
                    (not (Ba_not_checked_p5))

                    ; #52522: <==negation-removal== 21385 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #53852: <==uncertain_firing== 42574 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #56608: <==negation-removal== 89955 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #57484: <==negation-removal== 26213 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57670: <==negation-removal== 40493 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #62892: <==negation-removal== 14732 (pos)
                    (not (Bb_not_checked_p5))

                    ; #66188: <==uncertain_firing== 21385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #74521: <==negation-removal== 67762 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75655: <==negation-removal== 99927 (pos)
                    (not (Pa_not_checked_p5))

                    ; #85169: <==uncertain_firing== 89955 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12940: <==commonly_known== 21740 (pos)
                    (Bb_checked_p6)

                    ; #13891: <==commonly_known== 46733 (neg)
                    (Pc_checked_p6)

                    ; #21740: origin
                    (checked_p6)

                    ; #39424: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #45812: <==commonly_known== 21740 (pos)
                    (Ba_checked_p6)

                    ; #46666: <==commonly_known== 21740 (pos)
                    (Bc_checked_p6)

                    ; #62043: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #66329: <==commonly_known== 46733 (neg)
                    (Pa_checked_p6)

                    ; #70705: <==commonly_known== 46733 (neg)
                    (Pb_checked_p6)

                    ; #84706: <==closure== 62043 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #86141: <==closure== 39424 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #21094: <==negation-removal== 62043 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #25263: <==negation-removal== 13891 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29592: <==uncertain_firing== 62043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33582: <==negation-removal== 86141 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #39075: <==negation-removal== 46666 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43211: <==negation-removal== 12940 (pos)
                    (not (Pb_not_checked_p6))

                    ; #46733: <==negation-removal== 21740 (pos)
                    (not (not_checked_p6))

                    ; #49828: <==negation-removal== 70705 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51323: <==negation-removal== 66329 (pos)
                    (not (Ba_not_checked_p6))

                    ; #51827: <==negation-removal== 45812 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55117: <==negation-removal== 39424 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #72965: <==uncertain_firing== 39424 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #75159: <==uncertain_firing== 84706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77243: <==negation-removal== 84706 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #88463: <==uncertain_firing== 86141 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18717: <==commonly_known== 32001 (pos)
                    (Bb_checked_p7)

                    ; #19091: <==commonly_known== 32001 (pos)
                    (Ba_checked_p7)

                    ; #21278: <==commonly_known== 17888 (neg)
                    (Pb_checked_p7)

                    ; #30187: <==closure== 32614 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #32001: origin
                    (checked_p7)

                    ; #32614: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #51509: <==commonly_known== 17888 (neg)
                    (Pa_checked_p7)

                    ; #60355: <==closure== 60470 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #60470: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #79238: <==commonly_known== 17888 (neg)
                    (Pc_checked_p7)

                    ; #89783: <==commonly_known== 32001 (pos)
                    (Bc_checked_p7)

                    ; #10979: <==uncertain_firing== 60470 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #14350: <==negation-removal== 51509 (pos)
                    (not (Ba_not_checked_p7))

                    ; #17888: <==negation-removal== 32001 (pos)
                    (not (not_checked_p7))

                    ; #23538: <==uncertain_firing== 30187 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #25278: <==uncertain_firing== 32614 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #30764: <==negation-removal== 32614 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #45299: <==negation-removal== 89783 (pos)
                    (not (Pc_not_checked_p7))

                    ; #50913: <==negation-removal== 21278 (pos)
                    (not (Bb_not_checked_p7))

                    ; #54326: <==negation-removal== 79238 (pos)
                    (not (Bc_not_checked_p7))

                    ; #67885: <==negation-removal== 60355 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #70298: <==negation-removal== 30187 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #80828: <==negation-removal== 19091 (pos)
                    (not (Pa_not_checked_p7))

                    ; #82669: <==negation-removal== 18717 (pos)
                    (not (Pb_not_checked_p7))

                    ; #86583: <==negation-removal== 60470 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #87443: <==uncertain_firing== 60355 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15281: <==commonly_known== 75135 (pos)
                    (Ba_checked_p8)

                    ; #16840: <==closure== 27420 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #26651: <==commonly_known== 67223 (neg)
                    (Pa_checked_p8)

                    ; #27420: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #28551: <==commonly_known== 67223 (neg)
                    (Pc_checked_p8)

                    ; #42507: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #47796: <==commonly_known== 75135 (pos)
                    (Bb_checked_p8)

                    ; #48189: <==commonly_known== 67223 (neg)
                    (Pb_checked_p8)

                    ; #65589: <==closure== 42507 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #66990: <==commonly_known== 75135 (pos)
                    (Bc_checked_p8)

                    ; #75135: origin
                    (checked_p8)

                    ; #15143: <==negation-removal== 16840 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #18195: <==negation-removal== 26651 (pos)
                    (not (Ba_not_checked_p8))

                    ; #22078: <==negation-removal== 65589 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29621: <==uncertain_firing== 27420 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #42512: <==negation-removal== 28551 (pos)
                    (not (Bc_not_checked_p8))

                    ; #46471: <==negation-removal== 47796 (pos)
                    (not (Pb_not_checked_p8))

                    ; #47760: <==negation-removal== 15281 (pos)
                    (not (Pa_not_checked_p8))

                    ; #57175: <==negation-removal== 48189 (pos)
                    (not (Bb_not_checked_p8))

                    ; #64164: <==negation-removal== 27420 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #66067: <==negation-removal== 66990 (pos)
                    (not (Pc_not_checked_p8))

                    ; #66924: <==uncertain_firing== 65589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #67223: <==negation-removal== 75135 (pos)
                    (not (not_checked_p8))

                    ; #69042: <==negation-removal== 42507 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #77103: <==uncertain_firing== 16840 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #88513: <==uncertain_firing== 42507 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14295: <==commonly_known== 51452 (neg)
                    (Pc_checked_p9)

                    ; #14662: <==closure== 37623 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #33846: <==commonly_known== 50711 (pos)
                    (Ba_checked_p9)

                    ; #37623: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #43830: <==commonly_known== 51452 (neg)
                    (Pa_checked_p9)

                    ; #47975: <==commonly_known== 51452 (neg)
                    (Pb_checked_p9)

                    ; #50711: origin
                    (checked_p9)

                    ; #68411: <==closure== 72788 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #70006: <==commonly_known== 50711 (pos)
                    (Bb_checked_p9)

                    ; #72788: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #74623: <==commonly_known== 50711 (pos)
                    (Bc_checked_p9)

                    ; #12278: <==negation-removal== 14662 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14665: <==uncertain_firing== 14662 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #16562: <==uncertain_firing== 68411 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25066: <==negation-removal== 70006 (pos)
                    (not (Pb_not_checked_p9))

                    ; #28943: <==negation-removal== 74623 (pos)
                    (not (Pc_not_checked_p9))

                    ; #51165: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p9))

                    ; #51452: <==negation-removal== 50711 (pos)
                    (not (not_checked_p9))

                    ; #54034: <==negation-removal== 68411 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #59415: <==negation-removal== 72788 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #63705: <==negation-removal== 47975 (pos)
                    (not (Bb_not_checked_p9))

                    ; #65351: <==negation-removal== 33846 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73664: <==negation-removal== 37623 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #77144: <==negation-removal== 14295 (pos)
                    (not (Bc_not_checked_p9))

                    ; #82655: <==uncertain_firing== 37623 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #87117: <==uncertain_firing== 72788 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #21212: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #21690: <==commonly_known== 47345 (pos)
                    (Bc_checked_p1)

                    ; #22921: <==commonly_known== 10279 (neg)
                    (Pb_checked_p1)

                    ; #26471: <==commonly_known== 47345 (pos)
                    (Ba_checked_p1)

                    ; #38062: <==closure== 73327 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #43150: <==commonly_known== 47345 (pos)
                    (Bb_checked_p1)

                    ; #47345: origin
                    (checked_p1)

                    ; #68382: <==commonly_known== 10279 (neg)
                    (Pc_checked_p1)

                    ; #73327: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #75160: <==closure== 21212 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #79612: <==commonly_known== 10279 (neg)
                    (Pa_checked_p1)

                    ; #10279: <==negation-removal== 47345 (pos)
                    (not (not_checked_p1))

                    ; #12181: <==uncertain_firing== 73327 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #17949: <==negation-removal== 22921 (pos)
                    (not (Bb_not_checked_p1))

                    ; #26033: <==negation-removal== 73327 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27326: <==negation-removal== 75160 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32028: <==negation-removal== 79612 (pos)
                    (not (Ba_not_checked_p1))

                    ; #41520: <==negation-removal== 68382 (pos)
                    (not (Bc_not_checked_p1))

                    ; #45715: <==uncertain_firing== 21212 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47345: <==negation-removal== 43150 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47922: <==negation-removal== 26471 (pos)
                    (not (Pa_not_checked_p1))

                    ; #49787: <==uncertain_firing== 38062 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #53208: <==uncertain_firing== 75160 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #56831: <==negation-removal== 21690 (pos)
                    (not (Pc_not_checked_p1))

                    ; #60787: <==negation-removal== 21212 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #77774: <==negation-removal== 38062 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11161: <==commonly_known== 26767 (neg)
                    (Pc_checked_p2)

                    ; #14475: <==closure== 15209 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #15209: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #24919: <==commonly_known== 26767 (neg)
                    (Pa_checked_p2)

                    ; #33776: <==commonly_known== 62799 (pos)
                    (Ba_checked_p2)

                    ; #38739: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #59412: <==commonly_known== 26767 (neg)
                    (Pb_checked_p2)

                    ; #59956: <==commonly_known== 62799 (pos)
                    (Bc_checked_p2)

                    ; #62799: origin
                    (checked_p2)

                    ; #76637: <==commonly_known== 62799 (pos)
                    (Bb_checked_p2)

                    ; #82218: <==closure== 38739 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #26767: <==negation-removal== 62799 (pos)
                    (not (not_checked_p2))

                    ; #29634: <==negation-removal== 76637 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31719: <==negation-removal== 82218 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #39289: <==uncertain_firing== 14475 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #55641: <==uncertain_firing== 15209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #57500: <==negation-removal== 38739 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #61902: <==negation-removal== 14475 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #61913: <==negation-removal== 59412 (pos)
                    (not (Bb_not_checked_p2))

                    ; #74737: <==uncertain_firing== 82218 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #79277: <==negation-removal== 15209 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #79616: <==negation-removal== 24919 (pos)
                    (not (Ba_not_checked_p2))

                    ; #81281: <==negation-removal== 59956 (pos)
                    (not (Pc_not_checked_p2))

                    ; #82105: <==negation-removal== 33776 (pos)
                    (not (Pa_not_checked_p2))

                    ; #87836: <==uncertain_firing== 38739 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #96096: <==negation-removal== 11161 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15810: <==commonly_known== 59373 (neg)
                    (Pa_checked_p3)

                    ; #30009: <==closure== 52919 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #43778: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #46442: <==closure== 43778 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #47106: <==commonly_known== 73697 (pos)
                    (Bc_checked_p3)

                    ; #52187: <==commonly_known== 73697 (pos)
                    (Ba_checked_p3)

                    ; #52919: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #55927: <==commonly_known== 59373 (neg)
                    (Pb_checked_p3)

                    ; #62856: <==commonly_known== 73697 (pos)
                    (Bb_checked_p3)

                    ; #65384: <==commonly_known== 59373 (neg)
                    (Pc_checked_p3)

                    ; #73697: origin
                    (checked_p3)

                    ; #36988: <==negation-removal== 52187 (pos)
                    (not (Pa_not_checked_p3))

                    ; #41047: <==uncertain_firing== 52919 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #49899: <==uncertain_firing== 43778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #50340: <==negation-removal== 15810 (pos)
                    (not (Ba_not_checked_p3))

                    ; #59373: <==negation-removal== 73697 (pos)
                    (not (not_checked_p3))

                    ; #61006: <==negation-removal== 30009 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #62072: <==negation-removal== 62856 (pos)
                    (not (Pb_not_checked_p3))

                    ; #79012: <==uncertain_firing== 46442 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #79088: <==negation-removal== 52919 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #81907: <==uncertain_firing== 30009 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #85435: <==negation-removal== 65384 (pos)
                    (not (Bc_not_checked_p3))

                    ; #87801: <==negation-removal== 43778 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #88030: <==negation-removal== 47106 (pos)
                    (not (Pc_not_checked_p3))

                    ; #88260: <==negation-removal== 55927 (pos)
                    (not (Bb_not_checked_p3))

                    ; #89056: <==negation-removal== 46442 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #20157: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #29487: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #30255: <==commonly_known== 12786 (neg)
                    (Pb_checked_p4)

                    ; #30984: <==commonly_known== 89052 (pos)
                    (Bb_checked_p4)

                    ; #32848: <==closure== 29487 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #40687: <==commonly_known== 89052 (pos)
                    (Ba_checked_p4)

                    ; #49199: <==commonly_known== 89052 (pos)
                    (Bc_checked_p4)

                    ; #67585: <==closure== 20157 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #78323: <==commonly_known== 12786 (neg)
                    (Pc_checked_p4)

                    ; #89052: origin
                    (checked_p4)

                    ; #91850: <==commonly_known== 12786 (neg)
                    (Pa_checked_p4)

                    ; #12786: <==negation-removal== 89052 (pos)
                    (not (not_checked_p4))

                    ; #16736: <==negation-removal== 40687 (pos)
                    (not (Pa_not_checked_p4))

                    ; #26789: <==negation-removal== 30984 (pos)
                    (not (Pb_not_checked_p4))

                    ; #33602: <==uncertain_firing== 29487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #36639: <==negation-removal== 49199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #41103: <==negation-removal== 67585 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #43158: <==negation-removal== 30255 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48968: <==negation-removal== 20157 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #58321: <==negation-removal== 32848 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #61858: <==uncertain_firing== 20157 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #70716: <==negation-removal== 29487 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #71012: <==negation-removal== 78323 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77686: <==uncertain_firing== 67585 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #77895: <==negation-removal== 91850 (pos)
                    (not (Ba_not_checked_p4))

                    ; #81019: <==uncertain_firing== 32848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11666: <==commonly_known== 32111 (pos)
                    (Bb_checked_p5)

                    ; #12479: <==closure== 38927 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #14732: <==commonly_known== 40813 (neg)
                    (Pb_checked_p5)

                    ; #26213: <==commonly_known== 40813 (neg)
                    (Pc_checked_p5)

                    ; #32111: origin
                    (checked_p5)

                    ; #38927: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #46304: <==commonly_known== 40813 (neg)
                    (Pa_checked_p5)

                    ; #49657: <==closure== 72452 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #67762: <==commonly_known== 32111 (pos)
                    (Bc_checked_p5)

                    ; #72452: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #99927: <==commonly_known== 32111 (pos)
                    (Ba_checked_p5)

                    ; #15720: <==negation-removal== 72452 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #21338: <==uncertain_firing== 72452 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #26412: <==negation-removal== 12479 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #27220: <==negation-removal== 11666 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40813: <==negation-removal== 32111 (pos)
                    (not (not_checked_p5))

                    ; #46951: <==negation-removal== 38927 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #50245: <==negation-removal== 46304 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57484: <==negation-removal== 26213 (pos)
                    (not (Bc_not_checked_p5))

                    ; #61383: <==uncertain_firing== 49657 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62892: <==negation-removal== 14732 (pos)
                    (not (Bb_not_checked_p5))

                    ; #65915: <==uncertain_firing== 38927 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #66252: <==uncertain_firing== 12479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74436: <==negation-removal== 49657 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #74521: <==negation-removal== 67762 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75655: <==negation-removal== 99927 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12940: <==commonly_known== 21740 (pos)
                    (Bb_checked_p6)

                    ; #13891: <==commonly_known== 46733 (neg)
                    (Pc_checked_p6)

                    ; #21740: origin
                    (checked_p6)

                    ; #24598: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #45812: <==commonly_known== 21740 (pos)
                    (Ba_checked_p6)

                    ; #46666: <==commonly_known== 21740 (pos)
                    (Bc_checked_p6)

                    ; #56917: <==closure== 76455 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #66329: <==commonly_known== 46733 (neg)
                    (Pa_checked_p6)

                    ; #70705: <==commonly_known== 46733 (neg)
                    (Pb_checked_p6)

                    ; #76455: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #81072: <==closure== 24598 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #10588: <==negation-removal== 56917 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #14334: <==negation-removal== 76455 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25263: <==negation-removal== 13891 (pos)
                    (not (Bc_not_checked_p6))

                    ; #28092: <==negation-removal== 24598 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #35044: <==uncertain_firing== 81072 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #39075: <==negation-removal== 46666 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43211: <==negation-removal== 12940 (pos)
                    (not (Pb_not_checked_p6))

                    ; #46733: <==negation-removal== 21740 (pos)
                    (not (not_checked_p6))

                    ; #49828: <==negation-removal== 70705 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51323: <==negation-removal== 66329 (pos)
                    (not (Ba_not_checked_p6))

                    ; #51827: <==negation-removal== 45812 (pos)
                    (not (Pa_not_checked_p6))

                    ; #63835: <==uncertain_firing== 76455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #74759: <==uncertain_firing== 24598 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #81945: <==uncertain_firing== 56917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #82231: <==negation-removal== 81072 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18717: <==commonly_known== 32001 (pos)
                    (Bb_checked_p7)

                    ; #19091: <==commonly_known== 32001 (pos)
                    (Ba_checked_p7)

                    ; #21278: <==commonly_known== 17888 (neg)
                    (Pb_checked_p7)

                    ; #32001: origin
                    (checked_p7)

                    ; #51509: <==commonly_known== 17888 (neg)
                    (Pa_checked_p7)

                    ; #73724: <==closure== 79620 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #77661: <==closure== 94680 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #79238: <==commonly_known== 17888 (neg)
                    (Pc_checked_p7)

                    ; #79620: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #89783: <==commonly_known== 32001 (pos)
                    (Bc_checked_p7)

                    ; #94680: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #10107: <==uncertain_firing== 73724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #14350: <==negation-removal== 51509 (pos)
                    (not (Ba_not_checked_p7))

                    ; #17888: <==negation-removal== 32001 (pos)
                    (not (not_checked_p7))

                    ; #21848: <==uncertain_firing== 79620 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #30286: <==uncertain_firing== 77661 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #38082: <==negation-removal== 77661 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #40773: <==negation-removal== 94680 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #43282: <==negation-removal== 73724 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45299: <==negation-removal== 89783 (pos)
                    (not (Pc_not_checked_p7))

                    ; #50913: <==negation-removal== 21278 (pos)
                    (not (Bb_not_checked_p7))

                    ; #54326: <==negation-removal== 79238 (pos)
                    (not (Bc_not_checked_p7))

                    ; #58897: <==uncertain_firing== 94680 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #80828: <==negation-removal== 19091 (pos)
                    (not (Pa_not_checked_p7))

                    ; #82669: <==negation-removal== 18717 (pos)
                    (not (Pb_not_checked_p7))

                    ; #85681: <==negation-removal== 79620 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15281: <==commonly_known== 75135 (pos)
                    (Ba_checked_p8)

                    ; #22000: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #26651: <==commonly_known== 67223 (neg)
                    (Pa_checked_p8)

                    ; #28427: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #28551: <==commonly_known== 67223 (neg)
                    (Pc_checked_p8)

                    ; #28792: <==closure== 28427 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #47796: <==commonly_known== 75135 (pos)
                    (Bb_checked_p8)

                    ; #48189: <==commonly_known== 67223 (neg)
                    (Pb_checked_p8)

                    ; #66990: <==commonly_known== 75135 (pos)
                    (Bc_checked_p8)

                    ; #75135: origin
                    (checked_p8)

                    ; #84566: <==closure== 22000 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18195: <==negation-removal== 26651 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40686: <==uncertain_firing== 28427 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #41402: <==negation-removal== 22000 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #42512: <==negation-removal== 28551 (pos)
                    (not (Bc_not_checked_p8))

                    ; #46210: <==uncertain_firing== 84566 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #46471: <==negation-removal== 47796 (pos)
                    (not (Pb_not_checked_p8))

                    ; #47760: <==negation-removal== 15281 (pos)
                    (not (Pa_not_checked_p8))

                    ; #53593: <==negation-removal== 28427 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #56790: <==uncertain_firing== 28792 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #57175: <==negation-removal== 48189 (pos)
                    (not (Bb_not_checked_p8))

                    ; #66067: <==negation-removal== 66990 (pos)
                    (not (Pc_not_checked_p8))

                    ; #67223: <==negation-removal== 75135 (pos)
                    (not (not_checked_p8))

                    ; #74367: <==negation-removal== 84566 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #82762: <==uncertain_firing== 22000 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #84970: <==negation-removal== 28792 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14295: <==commonly_known== 51452 (neg)
                    (Pc_checked_p9)

                    ; #22504: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #22983: <==closure== 22504 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #33846: <==commonly_known== 50711 (pos)
                    (Ba_checked_p9)

                    ; #39144: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #43830: <==commonly_known== 51452 (neg)
                    (Pa_checked_p9)

                    ; #47975: <==commonly_known== 51452 (neg)
                    (Pb_checked_p9)

                    ; #50711: origin
                    (checked_p9)

                    ; #60785: <==closure== 39144 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #70006: <==commonly_known== 50711 (pos)
                    (Bb_checked_p9)

                    ; #74623: <==commonly_known== 50711 (pos)
                    (Bc_checked_p9)

                    ; #10325: <==uncertain_firing== 22983 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #11087: <==uncertain_firing== 22504 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #11106: <==negation-removal== 22983 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #12912: <==negation-removal== 39144 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #20074: <==negation-removal== 22504 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #25066: <==negation-removal== 70006 (pos)
                    (not (Pb_not_checked_p9))

                    ; #28943: <==negation-removal== 74623 (pos)
                    (not (Pc_not_checked_p9))

                    ; #41320: <==uncertain_firing== 39144 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #51165: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p9))

                    ; #51452: <==negation-removal== 50711 (pos)
                    (not (not_checked_p9))

                    ; #62611: <==uncertain_firing== 60785 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #63705: <==negation-removal== 47975 (pos)
                    (not (Bb_not_checked_p9))

                    ; #65351: <==negation-removal== 33846 (pos)
                    (not (Pa_not_checked_p9))

                    ; #70036: <==negation-removal== 60785 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #77144: <==negation-removal== 14295 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #21690: <==commonly_known== 47345 (pos)
                    (Bc_checked_p1)

                    ; #22921: <==commonly_known== 10279 (neg)
                    (Pb_checked_p1)

                    ; #26471: <==commonly_known== 47345 (pos)
                    (Ba_checked_p1)

                    ; #30783: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #32271: <==closure== 61412 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #43150: <==commonly_known== 47345 (pos)
                    (Bb_checked_p1)

                    ; #44137: <==closure== 30783 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #47345: origin
                    (checked_p1)

                    ; #61412: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #68382: <==commonly_known== 10279 (neg)
                    (Pc_checked_p1)

                    ; #79612: <==commonly_known== 10279 (neg)
                    (Pa_checked_p1)

                    ; #10279: <==negation-removal== 47345 (pos)
                    (not (not_checked_p1))

                    ; #12695: <==negation-removal== 61412 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #17949: <==negation-removal== 22921 (pos)
                    (not (Bb_not_checked_p1))

                    ; #32028: <==negation-removal== 79612 (pos)
                    (not (Ba_not_checked_p1))

                    ; #41457: <==uncertain_firing== 61412 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #41520: <==negation-removal== 68382 (pos)
                    (not (Bc_not_checked_p1))

                    ; #43706: <==negation-removal== 30783 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #47345: <==negation-removal== 43150 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47922: <==negation-removal== 26471 (pos)
                    (not (Pa_not_checked_p1))

                    ; #51508: <==uncertain_firing== 44137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #56066: <==uncertain_firing== 30783 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #56831: <==negation-removal== 21690 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62654: <==uncertain_firing== 32271 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #90047: <==negation-removal== 32271 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #91622: <==negation-removal== 44137 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11161: <==commonly_known== 26767 (neg)
                    (Pc_checked_p2)

                    ; #12841: <==closure== 25245 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #21035: <==closure== 51423 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #24919: <==commonly_known== 26767 (neg)
                    (Pa_checked_p2)

                    ; #25245: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #33776: <==commonly_known== 62799 (pos)
                    (Ba_checked_p2)

                    ; #51423: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #59412: <==commonly_known== 26767 (neg)
                    (Pb_checked_p2)

                    ; #59956: <==commonly_known== 62799 (pos)
                    (Bc_checked_p2)

                    ; #62799: origin
                    (checked_p2)

                    ; #76637: <==commonly_known== 62799 (pos)
                    (Bb_checked_p2)

                    ; #18955: <==negation-removal== 51423 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #25413: <==uncertain_firing== 12841 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #26767: <==negation-removal== 62799 (pos)
                    (not (not_checked_p2))

                    ; #29634: <==negation-removal== 76637 (pos)
                    (not (Pb_not_checked_p2))

                    ; #40422: <==uncertain_firing== 21035 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54427: <==negation-removal== 21035 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #55888: <==negation-removal== 25245 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #58642: <==uncertain_firing== 25245 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #61913: <==negation-removal== 59412 (pos)
                    (not (Bb_not_checked_p2))

                    ; #72905: <==negation-removal== 12841 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #79616: <==negation-removal== 24919 (pos)
                    (not (Ba_not_checked_p2))

                    ; #81281: <==negation-removal== 59956 (pos)
                    (not (Pc_not_checked_p2))

                    ; #82105: <==negation-removal== 33776 (pos)
                    (not (Pa_not_checked_p2))

                    ; #96096: <==negation-removal== 11161 (pos)
                    (not (Bc_not_checked_p2))

                    ; #99920: <==uncertain_firing== 51423 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #15810: <==commonly_known== 59373 (neg)
                    (Pa_checked_p3)

                    ; #38324: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #47106: <==commonly_known== 73697 (pos)
                    (Bc_checked_p3)

                    ; #52187: <==commonly_known== 73697 (pos)
                    (Ba_checked_p3)

                    ; #55927: <==commonly_known== 59373 (neg)
                    (Pb_checked_p3)

                    ; #62856: <==commonly_known== 73697 (pos)
                    (Bb_checked_p3)

                    ; #65384: <==commonly_known== 59373 (neg)
                    (Pc_checked_p3)

                    ; #73697: origin
                    (checked_p3)

                    ; #76311: <==closure== 83993 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #83885: <==closure== 38324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #83993: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #22141: <==negation-removal== 83885 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #36988: <==negation-removal== 52187 (pos)
                    (not (Pa_not_checked_p3))

                    ; #49395: <==uncertain_firing== 38324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #50340: <==negation-removal== 15810 (pos)
                    (not (Ba_not_checked_p3))

                    ; #56096: <==uncertain_firing== 83993 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59373: <==negation-removal== 73697 (pos)
                    (not (not_checked_p3))

                    ; #62072: <==negation-removal== 62856 (pos)
                    (not (Pb_not_checked_p3))

                    ; #77455: <==negation-removal== 76311 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #80524: <==uncertain_firing== 76311 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #81924: <==uncertain_firing== 83885 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #85435: <==negation-removal== 65384 (pos)
                    (not (Bc_not_checked_p3))

                    ; #85667: <==negation-removal== 38324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #88030: <==negation-removal== 47106 (pos)
                    (not (Pc_not_checked_p3))

                    ; #88260: <==negation-removal== 55927 (pos)
                    (not (Bb_not_checked_p3))

                    ; #91551: <==negation-removal== 83993 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #30255: <==commonly_known== 12786 (neg)
                    (Pb_checked_p4)

                    ; #30984: <==commonly_known== 89052 (pos)
                    (Bb_checked_p4)

                    ; #40687: <==commonly_known== 89052 (pos)
                    (Ba_checked_p4)

                    ; #47925: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #49199: <==commonly_known== 89052 (pos)
                    (Bc_checked_p4)

                    ; #65493: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #66959: <==closure== 47925 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #72717: <==closure== 65493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78323: <==commonly_known== 12786 (neg)
                    (Pc_checked_p4)

                    ; #89052: origin
                    (checked_p4)

                    ; #91850: <==commonly_known== 12786 (neg)
                    (Pa_checked_p4)

                    ; #12786: <==negation-removal== 89052 (pos)
                    (not (not_checked_p4))

                    ; #16736: <==negation-removal== 40687 (pos)
                    (not (Pa_not_checked_p4))

                    ; #18227: <==uncertain_firing== 66959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #24840: <==negation-removal== 72717 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #25124: <==negation-removal== 65493 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #26789: <==negation-removal== 30984 (pos)
                    (not (Pb_not_checked_p4))

                    ; #36639: <==negation-removal== 49199 (pos)
                    (not (Pc_not_checked_p4))

                    ; #43158: <==negation-removal== 30255 (pos)
                    (not (Bb_not_checked_p4))

                    ; #46837: <==negation-removal== 66959 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #52597: <==uncertain_firing== 47925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #71012: <==negation-removal== 78323 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72792: <==negation-removal== 47925 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #77895: <==negation-removal== 91850 (pos)
                    (not (Ba_not_checked_p4))

                    ; #88510: <==uncertain_firing== 65493 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #89360: <==uncertain_firing== 72717 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11666: <==commonly_known== 32111 (pos)
                    (Bb_checked_p5)

                    ; #14732: <==commonly_known== 40813 (neg)
                    (Pb_checked_p5)

                    ; #26213: <==commonly_known== 40813 (neg)
                    (Pc_checked_p5)

                    ; #31307: <==closure== 32703 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #31790: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #32030: <==closure== 31790 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #32111: origin
                    (checked_p5)

                    ; #32703: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #46304: <==commonly_known== 40813 (neg)
                    (Pa_checked_p5)

                    ; #67762: <==commonly_known== 32111 (pos)
                    (Bc_checked_p5)

                    ; #99927: <==commonly_known== 32111 (pos)
                    (Ba_checked_p5)

                    ; #21321: <==uncertain_firing== 31307 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #26032: <==negation-removal== 32703 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #26447: <==negation-removal== 31307 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27220: <==negation-removal== 11666 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40813: <==negation-removal== 32111 (pos)
                    (not (not_checked_p5))

                    ; #50245: <==negation-removal== 46304 (pos)
                    (not (Ba_not_checked_p5))

                    ; #57484: <==negation-removal== 26213 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62892: <==negation-removal== 14732 (pos)
                    (not (Bb_not_checked_p5))

                    ; #63995: <==uncertain_firing== 31790 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #65184: <==uncertain_firing== 32030 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #68471: <==negation-removal== 31790 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #69645: <==uncertain_firing== 32703 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74148: <==negation-removal== 32030 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #74521: <==negation-removal== 67762 (pos)
                    (not (Pc_not_checked_p5))

                    ; #75655: <==negation-removal== 99927 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12940: <==commonly_known== 21740 (pos)
                    (Bb_checked_p6)

                    ; #13891: <==commonly_known== 46733 (neg)
                    (Pc_checked_p6)

                    ; #21740: origin
                    (checked_p6)

                    ; #25767: <==closure== 89800 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #45812: <==commonly_known== 21740 (pos)
                    (Ba_checked_p6)

                    ; #46666: <==commonly_known== 21740 (pos)
                    (Bc_checked_p6)

                    ; #49647: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #55086: <==closure== 49647 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #66329: <==commonly_known== 46733 (neg)
                    (Pa_checked_p6)

                    ; #70705: <==commonly_known== 46733 (neg)
                    (Pb_checked_p6)

                    ; #89800: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #11896: <==negation-removal== 89800 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #21676: <==uncertain_firing== 49647 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #24693: <==uncertain_firing== 55086 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #25263: <==negation-removal== 13891 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39075: <==negation-removal== 46666 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43211: <==negation-removal== 12940 (pos)
                    (not (Pb_not_checked_p6))

                    ; #46733: <==negation-removal== 21740 (pos)
                    (not (not_checked_p6))

                    ; #49828: <==negation-removal== 70705 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51323: <==negation-removal== 66329 (pos)
                    (not (Ba_not_checked_p6))

                    ; #51827: <==negation-removal== 45812 (pos)
                    (not (Pa_not_checked_p6))

                    ; #52939: <==uncertain_firing== 89800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #54511: <==negation-removal== 55086 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #66410: <==negation-removal== 25767 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #83161: <==negation-removal== 49647 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #91258: <==uncertain_firing== 25767 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #18717: <==commonly_known== 32001 (pos)
                    (Bb_checked_p7)

                    ; #19016: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #19091: <==commonly_known== 32001 (pos)
                    (Ba_checked_p7)

                    ; #21278: <==commonly_known== 17888 (neg)
                    (Pb_checked_p7)

                    ; #26790: <==closure== 73950 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #32001: origin
                    (checked_p7)

                    ; #43170: <==closure== 19016 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #51509: <==commonly_known== 17888 (neg)
                    (Pa_checked_p7)

                    ; #73950: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #79238: <==commonly_known== 17888 (neg)
                    (Pc_checked_p7)

                    ; #89783: <==commonly_known== 32001 (pos)
                    (Bc_checked_p7)

                    ; #14350: <==negation-removal== 51509 (pos)
                    (not (Ba_not_checked_p7))

                    ; #17888: <==negation-removal== 32001 (pos)
                    (not (not_checked_p7))

                    ; #30005: <==uncertain_firing== 26790 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #31235: <==uncertain_firing== 19016 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #45299: <==negation-removal== 89783 (pos)
                    (not (Pc_not_checked_p7))

                    ; #50913: <==negation-removal== 21278 (pos)
                    (not (Bb_not_checked_p7))

                    ; #54326: <==negation-removal== 79238 (pos)
                    (not (Bc_not_checked_p7))

                    ; #59243: <==negation-removal== 19016 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #65189: <==negation-removal== 73950 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68888: <==uncertain_firing== 43170 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #80828: <==negation-removal== 19091 (pos)
                    (not (Pa_not_checked_p7))

                    ; #82669: <==negation-removal== 18717 (pos)
                    (not (Pb_not_checked_p7))

                    ; #83228: <==negation-removal== 26790 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #91434: <==uncertain_firing== 73950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #97161: <==negation-removal== 43170 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #15281: <==commonly_known== 75135 (pos)
                    (Ba_checked_p8)

                    ; #26651: <==commonly_known== 67223 (neg)
                    (Pa_checked_p8)

                    ; #28551: <==commonly_known== 67223 (neg)
                    (Pc_checked_p8)

                    ; #34366: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #37053: <==closure== 44140 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #44140: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #47796: <==commonly_known== 75135 (pos)
                    (Bb_checked_p8)

                    ; #48189: <==commonly_known== 67223 (neg)
                    (Pb_checked_p8)

                    ; #66990: <==commonly_known== 75135 (pos)
                    (Bc_checked_p8)

                    ; #75135: origin
                    (checked_p8)

                    ; #76830: <==closure== 34366 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #11093: <==uncertain_firing== 34366 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #18195: <==negation-removal== 26651 (pos)
                    (not (Ba_not_checked_p8))

                    ; #19104: <==uncertain_firing== 37053 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #42512: <==negation-removal== 28551 (pos)
                    (not (Bc_not_checked_p8))

                    ; #46471: <==negation-removal== 47796 (pos)
                    (not (Pb_not_checked_p8))

                    ; #47760: <==negation-removal== 15281 (pos)
                    (not (Pa_not_checked_p8))

                    ; #57175: <==negation-removal== 48189 (pos)
                    (not (Bb_not_checked_p8))

                    ; #57261: <==negation-removal== 76830 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #57725: <==negation-removal== 34366 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #63575: <==negation-removal== 44140 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #65734: <==uncertain_firing== 44140 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #66067: <==negation-removal== 66990 (pos)
                    (not (Pc_not_checked_p8))

                    ; #67223: <==negation-removal== 75135 (pos)
                    (not (not_checked_p8))

                    ; #87259: <==uncertain_firing== 76830 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #90381: <==negation-removal== 37053 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12777: <==closure== 76151 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #14295: <==commonly_known== 51452 (neg)
                    (Pc_checked_p9)

                    ; #33846: <==commonly_known== 50711 (pos)
                    (Ba_checked_p9)

                    ; #43830: <==commonly_known== 51452 (neg)
                    (Pa_checked_p9)

                    ; #47975: <==commonly_known== 51452 (neg)
                    (Pb_checked_p9)

                    ; #50711: origin
                    (checked_p9)

                    ; #70006: <==commonly_known== 50711 (pos)
                    (Bb_checked_p9)

                    ; #70602: <==closure== 74250 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #74250: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #74623: <==commonly_known== 50711 (pos)
                    (Bc_checked_p9)

                    ; #76151: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #25066: <==negation-removal== 70006 (pos)
                    (not (Pb_not_checked_p9))

                    ; #28943: <==negation-removal== 74623 (pos)
                    (not (Pc_not_checked_p9))

                    ; #35424: <==uncertain_firing== 74250 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #40429: <==uncertain_firing== 70602 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #51165: <==negation-removal== 43830 (pos)
                    (not (Ba_not_checked_p9))

                    ; #51452: <==negation-removal== 50711 (pos)
                    (not (not_checked_p9))

                    ; #59135: <==negation-removal== 12777 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63705: <==negation-removal== 47975 (pos)
                    (not (Bb_not_checked_p9))

                    ; #65351: <==negation-removal== 33846 (pos)
                    (not (Pa_not_checked_p9))

                    ; #66623: <==uncertain_firing== 76151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67451: <==negation-removal== 76151 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #71622: <==uncertain_firing== 12777 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #76968: <==negation-removal== 74250 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #77144: <==negation-removal== 14295 (pos)
                    (not (Bc_not_checked_p9))

                    ; #86887: <==negation-removal== 70602 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))))

)